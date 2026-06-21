/**
 * Backend-agnostic hand input.
 *
 * Everything downstream (HandToWing -> WingRig) consumes only `HandState`, never
 * raw joints. Backends that produce a HandState:
 *   - WebXRHandSource    (Quest 3 / Android XR native hand tracking)  [later]
 *   - MediaPipeHandSource (phone / desktop webcam)                    [later]
 *   - MockHandSource     (keyboard, for desktop dev without a headset)
 *
 * The derived scalar *features* are the wing-control vocabulary. They are
 * normalized and side-independent so the same mapping works for any backend.
 */
import * as THREE from 'three';

export interface HandFeatures {
  /** 0 = hand open (wing extended), 1 = fist (wing folded to body). */
  curl: number;
  /** 0 = fingers together, 1 = splayed (primary-tip fan / slotting). */
  spread: number;
  /** -1 = wrist pitched down, +1 = up. Drives wing angle of attack. */
  pitch: number;
  /** -1 = rolled one way, +1 the other. Asymmetry L/R drives bank/turn. */
  roll: number;
  /** 0 = thumb tucked, 1 = abducted. Deploys the alula (anti-stall brake). */
  thumb: number;
}

export interface HandPose {
  present: boolean;
  /** Wrist position in world space. */
  position: THREE.Vector3;
  /** Wrist orientation in world space. */
  orientation: THREE.Quaternion;
  features: HandFeatures;
}

export interface HandState {
  left: HandPose;
  right: HandPose;
}

export interface HandUpdateContext {
  dt: number;
  /** Present only inside an active WebXR session. */
  frame: XRFrame | null;
  referenceSpace: XRReferenceSpace | null;
  camera: THREE.Camera;
}

export interface HandSource {
  readonly name: string;
  /** Async setup (e.g. load MediaPipe model). Resolve immediately if none. */
  init(): Promise<void>;
  /** Refresh `state` for this frame. */
  update(ctx: HandUpdateContext): void;
  readonly state: HandState;
  dispose(): void;
}

export function createNeutralFeatures(): HandFeatures {
  return { curl: 0, spread: 0.5, pitch: 0, roll: 0, thumb: 0 };
}

export function createHandPose(): HandPose {
  return {
    present: false,
    position: new THREE.Vector3(),
    orientation: new THREE.Quaternion(),
    features: createNeutralFeatures(),
  };
}

export function createHandState(): HandState {
  return { left: createHandPose(), right: createHandPose() };
}
