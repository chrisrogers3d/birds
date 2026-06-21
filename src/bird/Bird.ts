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

export class Bird {
  readonly group = new THREE.Group();
  readonly leftWing = new WingRig('L');
  readonly rightWing = new WingRig('R');
  readonly tail = new TailFan();
  readonly body: THREE.Mesh;
  private leftFeathers?: FeatherSystem;
  private rightFeathers?: FeatherSystem;

  constructor(
    opts: {
      debugSkeleton?: boolean;
      feathers?: boolean;
      /** Optional real feather geometry per group (from hawk_feathers.glb). */
      featherGeometries?: Partial<Record<GroupKey, THREE.BufferGeometry>>;
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

    if (opts.debugSkeleton) {
      addSkeletonDebug(this.leftWing);
      addSkeletonDebug(this.rightWing);
    }
  }

  /** Apply full controls to one wing + its feathers. */
  setWing(side: 'L' | 'R', c: WingControls): void {
    const wing = side === 'L' ? this.leftWing : this.rightWing;
    const fs = side === 'L' ? this.leftFeathers : this.rightFeathers;
    wing.setPose(c.extension, c.aoaRad, c.dihedralRad);
    fs?.update(c.extension, c.spread, c.alula);
  }

  /** Average extension of both wings drives the tail fan. */
  updateTail(): void {
    const e = 0.5 * (this.leftWing.getExtension() + this.rightWing.getExtension());
    this.tail.setSpread(0.35 + 0.65 * e);
  }

  /** Symmetric extension convenience (neutral aoa/dihedral) — used by fallbacks. */
  setExtension(e: number): void {
    const c: WingControls = { extension: e, aoaRad: 0, dihedralRad: 0, spread: 0.5, alula: 0 };
    this.setWing('L', c);
    this.setWing('R', c);
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
