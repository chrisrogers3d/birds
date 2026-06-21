/**
 * Bird — assembles a body and two WingRigs into one object. For Phase 1 the body
 * is a placeholder capsule; procedural feathers (Task 4) and a real body mesh
 * come next. Includes an optional debug skeleton (joint axes + bone segments)
 * so the rig is visible before feathers exist.
 */
import * as THREE from 'three';
import { WingRig } from './WingRig';
import { FeatherSystem } from './FeatherSystem';
import { TailFan } from './TailFan';
import type { GroupKey } from './featherShapes';

/** Per-wing control inputs (from HandToWing). */
export interface WingControls {
  /** 0 folded .. 1 fully spread. */
  extension: number;
  /** angle of attack (radians). */
  aoaRad: number;
  /** dihedral (radians); opposite sign L/R produces bank. */
  dihedralRad: number;
  /** primary-tip fan 0..1. */
  spread: number;
  /** alula deploy 0..1. */
  alula: number;
}

/** Hand-animated fold clip (from hawk_rig.glb). */
export interface RigInput {
  scene: THREE.Object3D;
  clip: THREE.AnimationClip;
}

/** One driven joint: a code WingRig joint tracks an imported (animated) bone. */
interface FoldPair {
  joint: THREE.Object3D;
  bone: THREE.Object3D;
  /** constant rest-frame correction: Jw_rest * Bw_rest^-1. */
  corr: THREE.Quaternion;
  side: 'L' | 'R';
}

export class Bird {
  readonly group = new THREE.Group();
  readonly leftWing = new WingRig('L');
  readonly rightWing = new WingRig('R');
  readonly tail = new TailFan();
  readonly body: THREE.Mesh;
  /** last applied fold (1 spread .. 0 folded) per wing, for the HUD. */
  extL = 1;
  extR = 1;
  private leftFeathers?: FeatherSystem;
  private rightFeathers?: FeatherSystem;

  // Animation-driven fold.
  private mixer?: THREE.AnimationMixer;
  private rigScene?: THREE.Object3D;
  private clipDur = 0;
  private foldPairs: FoldPair[] = [];
  private get hasRig(): boolean {
    return this.foldPairs.length > 0;
  }
  private readonly _qB = new THREE.Quaternion();
  private readonly _qT = new THREE.Quaternion();
  private readonly _qP = new THREE.Quaternion();
  private readonly _qG = new THREE.Quaternion();

  /** orientation of `obj` relative to bird.group (flight-independent). */
  private relQ(obj: THREE.Object3D, out: THREE.Quaternion): THREE.Quaternion {
    obj.getWorldQuaternion(out);
    return out.premultiply(this._qG); // _qG holds group-world-inverse
  }

  constructor(
    opts: {
      debugSkeleton?: boolean;
      feathers?: boolean;
      /** Optional real feather geometry per group (from hawk_feathers.glb). */
      featherGeometries?: Partial<Record<GroupKey, THREE.BufferGeometry>>;
      /** Optional hand-animated fold rig (from hawk_rig.glb). */
      rig?: RigInput;
    } = {},
  ) {
    this.body = new THREE.Mesh(
      new THREE.CapsuleGeometry(0.06, 0.34, 8, 16),
      new THREE.MeshStandardMaterial({ color: 0x1c1c20, roughness: 0.65 }),
    );
    this.body.rotation.x = Math.PI / 2; // long axis along -Z (forward)
    this.group.add(this.body);

    // Shoulders sit slightly above and to the sides of the body center.
    this.leftWing.root.position.set(-0.05, 0.04, 0);
    this.rightWing.root.position.set(0.05, 0.04, 0);
    this.group.add(this.leftWing.root, this.rightWing.root);
    this.group.add(this.tail.group);

    if (opts.feathers !== false) {
      const g = opts.featherGeometries;
      this.leftFeathers = new FeatherSystem(this.leftWing, { geometries: g });
      this.rightFeathers = new FeatherSystem(this.rightWing, { geometries: g });
    }

    if (opts.rig) this.bindRig(opts.rig);

    if (opts.debugSkeleton) {
      addSkeletonDebug(this.leftWing);
      addSkeletonDebug(this.rightWing);
    }
  }

  /** Bind the hand-animated fold clip; each code joint will track an imported bone. */
  private bindRig(rig: RigInput): void {
    this.rigScene = rig.scene;
    this.group.add(rig.scene);
    rig.scene.traverse((o) => {
      const m = o as THREE.Mesh;
      if (m.isMesh) m.visible = false; // hide the imported body mesh; keep bones
    });
    this.mixer = new THREE.AnimationMixer(rig.scene);
    const action = this.mixer.clipAction(rig.clip);
    action.play(); // not paused — we scrub the pose with mixer.setTime each frame
    this.clipDur = rig.clip.duration;

    const map: Array<[THREE.Object3D, string, 'L' | 'R']> = [
      [this.leftWing.shoulder, 'L_humerus', 'L'],
      [this.leftWing.elbow, 'L_forearm', 'L'],
      [this.leftWing.wrist, 'L_hand', 'L'],
      [this.rightWing.shoulder, 'R_humerus', 'R'],
      [this.rightWing.elbow, 'R_forearm', 'R'],
      [this.rightWing.wrist, 'R_hand', 'R'],
    ];
    // Capture rest (spread) orientations relative to bird.group, build corrections.
    this.mixer.setTime(0);
    this.group.updateMatrixWorld(true);
    this.group.getWorldQuaternion(this._qG).invert();
    for (const [joint, boneName, side] of map) {
      const bone = rig.scene.getObjectByName(boneName);
      if (!bone) continue;
      const bwRestInv = this.relQ(bone, new THREE.Quaternion()).invert();
      const jwRest = this.relQ(joint, new THREE.Quaternion());
      this.foldPairs.push({ joint, bone, corr: jwRest.multiply(bwRestInv), side });
    }
  }

  /** Fold each wing (1 spread .. 0 folded). Uses the clip if bound, else WingRig. */
  setFold(extL: number, extR: number): void {
    this.extL = THREE.MathUtils.clamp(extL, 0, 1);
    this.extR = THREE.MathUtils.clamp(extR, 0, 1);
    if (!this.hasRig || !this.mixer || !this.rigScene) {
      this.leftWing.setExtension(this.extL);
      this.rightWing.setExtension(this.extR);
      return;
    }
    this.driveSide('L', this.extL);
    this.driveSide('R', this.extR);
  }

  /** Sample the clip at one wing's fold time and make its joints track the bones. */
  private driveSide(side: 'L' | 'R', ext: number): void {
    // ext 1 -> t0 (spread); 0 -> end (folded). Stay just under duration so the
    // looping clip doesn't wrap back to the spread keyframe at exactly t=dur.
    this.mixer!.setTime(Math.min((1 - ext) * this.clipDur, this.clipDur * 0.999));
    this.rigScene!.updateMatrixWorld(true);
    this.group.getWorldQuaternion(this._qG).invert(); // group-world-inverse for relQ
    for (const p of this.foldPairs) {
      if (p.side !== side) continue;
      // target (group-rel) = corr * bone(group-rel); convert to local under parent.
      this.relQ(p.bone, this._qB);
      this._qT.copy(p.corr).multiply(this._qB);
      this.relQ(p.joint.parent!, this._qP).invert();
      p.joint.quaternion.copy(this._qP).multiply(this._qT);
      p.joint.updateMatrixWorld(true);
    }
  }

  /** Per-wing feather fan (spread/alula) on top of the fold. */
  updateFeathers(side: 'L' | 'R', ext: number, spread: number, alula: number): void {
    const fs = side === 'L' ? this.leftFeathers : this.rightFeathers;
    fs?.update(ext, spread, alula);
  }

  /** Average fold drives the tail fan. */
  updateTail(): void {
    const e = 0.5 * (this.extL + this.extR);
    this.tail.setSpread(0.35 + 0.65 * e);
  }

  /** Symmetric convenience — used by fallbacks. */
  setExtension(e: number): void {
    this.setFold(e, e);
    this.updateFeathers('L', e, 0.5, 0);
    this.updateFeathers('R', e, 0.5, 0);
    this.updateTail();
  }
}

/** Adds joint markers + bone cylinders as children of the joints (auto-follow). */
function addSkeletonDebug(wing: WingRig): void {
  const jointMat = new THREE.MeshBasicMaterial({ color: 0xffcc33 });
  const boneMat = new THREE.MeshBasicMaterial({ color: 0x66ccff });
  const sign = wing.side === 'R' ? 1 : -1;

  const joints = [wing.shoulder, wing.elbow, wing.wrist, wing.handTip];
  for (const j of joints) {
    const dot = new THREE.Mesh(new THREE.SphereGeometry(0.012, 8, 8), jointMat);
    j.add(dot);
  }
  // Bone segment from each joint to its child (child offset is along local X).
  const segs: Array<[THREE.Object3D, THREE.Object3D]> = [
    [wing.shoulder, wing.elbow],
    [wing.elbow, wing.wrist],
    [wing.wrist, wing.handTip],
  ];
  for (const [a, b] of segs) {
    const len = Math.abs(b.position.x);
    const cyl = new THREE.Mesh(new THREE.CylinderGeometry(0.005, 0.005, len, 6), boneMat);
    cyl.rotation.z = Math.PI / 2; // cylinder long axis -> X
    cyl.position.x = (sign * len) / 2;
    a.add(cyl);
  }
}
