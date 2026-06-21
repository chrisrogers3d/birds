/**
 * WingRig — the 4-joint wing chain, ported in spirit from the Wing Creator Maya
 * rig (Heather Howard, CC BY-NC; see CREDITS.md). Joints, distal to proximal:
 *
 *   shoulder (Wing_1) -> elbow (Wing_2) -> wrist (Wing_3) -> handTip (Wing_4)
 *
 * which correspond to humerus / radius-ulna / carpus-metacarpus / phalanges.
 *
 * Instead of Maya's IK/FK + set-driven-key wingfold, we bake two key poses
 * (folded and fully-spread) per joint and blend them with a single scalar
 * `extension` in [0,1] (0 = folded to the body, 1 = fully outstretched). This is
 * cheap, stable, and reads correctly. Feather tracts (Task 4) attach to the
 * exposed `elbow`/`wrist`/`handTip` nodes.
 *
 * Coordinate convention (bird-local): bird faces -Z, +Y up, +X = bird's right.
 * Right wing extends along +X, left along -X. Per-joint angles are authored for
 * the right wing; the left wing negates the Y (sweep) and Z (dihedral) terms,
 * matching the script's `side`/`facingDirection` mirroring.
 */
import * as THREE from 'three';

export type WingSide = 'L' | 'R';

interface JointPose {
  /** local Euler (radians) when fully folded (extension = 0). */
  folded: THREE.Vector3;
  /** local Euler (radians) when fully spread (extension = 1). */
  spread: THREE.Vector3;
}

/** Authored for the RIGHT wing (bone points +X). */
const RIGHT_POSES: Record<'shoulder' | 'elbow' | 'wrist', JointPose> = {
  shoulder: {
    spread: new THREE.Vector3(0, -0.05, 0.06),
    folded: new THREE.Vector3(0, 0.55, -0.25),
  },
  elbow: {
    spread: new THREE.Vector3(0, -0.12, 0),
    folded: new THREE.Vector3(0, 2.25, 0),
  },
  wrist: {
    spread: new THREE.Vector3(0, -0.05, 0),
    folded: new THREE.Vector3(0, 1.5, 0),
  },
};

/** Bone segment lengths (metres, raven/hawk-ish proportions). */
export const BONE = {
  humerus: 0.18, // shoulder -> elbow
  forearm: 0.22, // elbow -> wrist (carries secondaries)
  hand: 0.24, // wrist -> handTip (carries primaries)
};

export class WingRig {
  readonly side: WingSide;
  /** Sign: +1 right, -1 left. */
  private readonly s: number;

  /** Root sits at the shoulder; parent this to the bird body. */
  readonly root = new THREE.Group();
  readonly shoulder = new THREE.Object3D();
  readonly elbow = new THREE.Object3D();
  readonly wrist = new THREE.Object3D();
  readonly handTip = new THREE.Object3D();

  private extension = 1;
  private aoa = 0; // angle of attack (rad), pitches the whole wing about its span
  private dihedral = 0; // raises/lowers the wingtip (rad); asymmetric L/R -> bank

  // scratch
  private readonly qFold = new THREE.Quaternion();
  private readonly qSpread = new THREE.Quaternion();
  private readonly qBlend = new THREE.Quaternion();
  private readonly eTmp = new THREE.Euler();

  constructor(side: WingSide) {
    this.side = side;
    this.s = side === 'R' ? 1 : -1;

    this.shoulder.name = `${side}_Wing_1`;
    this.elbow.name = `${side}_Wing_2`;
    this.wrist.name = `${side}_Wing_3`;
    this.handTip.name = `${side}_Wing_4`;

    // Chain: each child offset along the parent's (rotated) X by its bone length.
    this.elbow.position.set(this.s * BONE.humerus, 0, 0);
    this.wrist.position.set(this.s * BONE.forearm, 0, 0);
    this.handTip.position.set(this.s * BONE.hand, 0, 0);

    this.shoulder.add(this.elbow);
    this.elbow.add(this.wrist);
    this.wrist.add(this.handTip);
    this.root.add(this.shoulder);

    this.setExtension(1);
  }

  /** Total spread length shoulder->tip, used for feather scaling/aero area. */
  get span(): number {
    return BONE.humerus + BONE.forearm + BONE.hand;
  }

  /** +1 for the right wing, -1 for the left (mirrors bone X direction). */
  get sign(): number {
    return this.s;
  }

  /** 0 = folded to body, 1 = fully outstretched. */
  setExtension(e: number): void {
    this.extension = THREE.MathUtils.clamp(e, 0, 1);
    this.applyJoints();
  }

  /**
   * Full per-wing pose.
   * @param e        extension 0..1 (fold)
   * @param aoaRad   angle of attack — pitches the wing about its span axis
   * @param dihedralRad  raises (+) / lowers (-) the wingtip; opposite L/R -> bank
   */
  setPose(e: number, aoaRad: number, dihedralRad: number): void {
    this.extension = THREE.MathUtils.clamp(e, 0, 1);
    this.aoa = aoaRad;
    this.dihedral = dihedralRad;
    this.applyJoints();
    this.applyRoot();
  }

  getExtension(): number {
    return this.extension;
  }

  /** Root rotation carries angle of attack (about span X) and dihedral (about forward Z). */
  private applyRoot(): void {
    this.root.rotation.set(this.aoa, 0, this.s * this.dihedral);
  }

  private applyJoints(): void {
    this.applyJoint(this.shoulder, RIGHT_POSES.shoulder);
    this.applyJoint(this.elbow, RIGHT_POSES.elbow);
    this.applyJoint(this.wrist, RIGHT_POSES.wrist);
  }

  private applyJoint(joint: THREE.Object3D, pose: JointPose): void {
    // Mirror Y (sweep) and Z (dihedral) for the left wing.
    this.eTmp.set(pose.folded.x, pose.folded.y * this.s, pose.folded.z * this.s);
    this.qFold.setFromEuler(this.eTmp);
    this.eTmp.set(pose.spread.x, pose.spread.y * this.s, pose.spread.z * this.s);
    this.qSpread.setFromEuler(this.eTmp);
    this.qBlend.slerpQuaternions(this.qFold, this.qSpread, this.extension);
    joint.quaternion.copy(this.qBlend);
  }
}
