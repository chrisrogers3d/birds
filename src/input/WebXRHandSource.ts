/**
 * Native WebXR hand tracking (Quest 3 / Android XR). Reads the 25-joint XRHand
 * skeleton each frame and feeds the shared feature core, so it produces the same
 * HandState as the mock/MediaPipe sources — the wing mapping is unchanged.
 *
 * Requires an immersive session started with the 'hand-tracking' feature (the
 * VRButton requests it as optional). When hands aren't present the wings ease to
 * the neutral glide pose via the mapping's `present=false` path.
 *
 * WebXR DOM types aren't fully in the TS lib here, so the XR-specific bits use
 * pragmatic casts; the joint names are the standard XRHand joints.
 */
import * as THREE from 'three';
import {
  type HandSource,
  type HandState,
  type HandUpdateContext,
  type HandPose,
  createHandState,
} from './HandSource';
import { featuresFromAnatomy, type Anatomy, type LM } from './HandFeatures';

// Map Anatomy fields -> XRHand joint names.
const JOINTS: Record<keyof Anatomy, string> = {
  wrist: 'wrist',
  thumbTip: 'thumb-tip',
  idxMcp: 'index-finger-phalanx-proximal',
  idxPip: 'index-finger-phalanx-intermediate',
  idxTip: 'index-finger-tip',
  midMcp: 'middle-finger-phalanx-proximal',
  midPip: 'middle-finger-phalanx-intermediate',
  midTip: 'middle-finger-tip',
  ringMcp: 'ring-finger-phalanx-proximal',
  ringPip: 'ring-finger-phalanx-intermediate',
  ringTip: 'ring-finger-tip',
  pinkyMcp: 'pinky-finger-phalanx-proximal',
  pinkyPip: 'pinky-finger-phalanx-intermediate',
  pinkyTip: 'pinky-finger-tip',
};
const JOINT_KEYS = Object.keys(JOINTS) as (keyof Anatomy)[];

export class WebXRHandSource implements HandSource {
  readonly name = 'webxr';
  readonly state: HandState = createHandState();
  private readonly smooth = 16;

  async init(): Promise<void> {
    // Nothing to load; data comes from the active XR session each frame.
  }

  update(ctx: HandUpdateContext): void {
    const frame = ctx.frame as unknown as XRFrameLike | null;
    const refSpace = ctx.referenceSpace;
    if (!frame?.session?.inputSources || !refSpace || !frame.getJointPose) {
      this.state.left.present = false;
      this.state.right.present = false;
      return;
    }

    const seen = { left: false, right: false };
    for (const src of frame.session.inputSources) {
      const hand = src.hand;
      if (!hand) continue;
      const side = src.handedness === 'right' ? 'right' : 'left';
      const anatomy = this.readAnatomy(frame, refSpace, hand);
      if (!anatomy) continue;
      seen[side] = true;
      this.applyHand(this.state[side], anatomy, src, frame, refSpace, ctx.dt);
    }
    if (!seen.left) this.state.left.present = false;
    if (!seen.right) this.state.right.present = false;
  }

  private readAnatomy(
    frame: XRFrameLike,
    refSpace: XRReferenceSpace,
    hand: XRHandLike,
  ): Anatomy | null {
    const out = {} as Anatomy;
    for (const key of JOINT_KEYS) {
      const space = hand.get(JOINTS[key]);
      if (!space) return null;
      const pose = frame.getJointPose?.(space, refSpace);
      if (!pose) return null;
      out[key] = { x: pose.transform.position.x, y: pose.transform.position.y, z: pose.transform.position.z };
    }
    return out;
  }

  private applyHand(
    pose: HandPose,
    anatomy: Anatomy,
    src: XRInputSourceLike,
    frame: XRFrameLike,
    refSpace: XRReferenceSpace,
    dt: number,
  ): void {
    const f = featuresFromAnatomy(anatomy, +1); // WebXR is y-up
    const t = pose.features;
    const k = this.smooth;
    t.curl = THREE.MathUtils.damp(t.curl, f.curl, k, dt);
    t.spread = THREE.MathUtils.damp(t.spread, f.spread, k, dt);
    t.pitch = THREE.MathUtils.damp(t.pitch, f.pitch, k, dt);
    t.roll = THREE.MathUtils.damp(t.roll, f.roll, k, dt);
    t.thumb = THREE.MathUtils.damp(t.thumb, f.thumb, k, dt);

    // Wrist transform (world) for any consumers that want it.
    const wristSpace = src.hand?.get('wrist');
    const wp = wristSpace ? frame.getJointPose?.(wristSpace, refSpace) : null;
    if (wp) {
      pose.position.set(wp.transform.position.x, wp.transform.position.y, wp.transform.position.z);
      const o = wp.transform.orientation;
      pose.orientation.set(o.x, o.y, o.z, o.w);
    }
    pose.present = true;
  }

  dispose(): void {
    // no resources held
  }
}

// Minimal structural types for the WebXR bits not in the ambient lib here.
interface JointPoseLike {
  transform: { position: LM; orientation: LM & { w: number } };
}
interface XRFrameLike {
  session?: { inputSources?: Iterable<XRInputSourceLike> };
  getJointPose?: (joint: unknown, space: unknown) => JointPoseLike | null;
}
interface XRHandLike {
  get(name: string): unknown;
}
interface XRInputSourceLike {
  handedness?: string;
  hand?: XRHandLike | null;
}
