/**
 * TailFan — the rectrices, a single fan of feathers radiating from one point at
 * the rear of the body (NOT split). Spreads/closes with a 0..1 amount (tied to
 * wing extension for now; later it can map to a pitch/brake control). Reuses the
 * same procedural feather card as the wings.
 *
 * Bird-local convention: forward -Z, up +Y, right +X. The tail sits behind the
 * body (+Z) and the feathers point backward (+Z), fanning symmetrically in X.
 */
import * as THREE from 'three';
import { makeFeatherCard } from './featherShapes';

interface TailFeather {
  pivot: THREE.Object3D;
  /** fully-spread fan angle about Y (radians), symmetric about center. */
  angleRad: number;
}

export interface TailFanOptions {
  count?: number;
  /** Half-angle (deg) of the fully-fanned tail. */
  halfSpreadDeg?: number;
  /** Feather length (m). */
  length?: number;
}

export class TailFan {
  readonly group = new THREE.Group();
  private readonly feathers: TailFeather[] = [];
  private readonly card = makeFeatherCard();
  private readonly material: THREE.Material;
  private readonly tmp = new THREE.Euler();

  constructor(opts: TailFanOptions = {}) {
    const count = opts.count ?? 12;
    const half = THREE.MathUtils.degToRad(opts.halfSpreadDeg ?? 55);
    const length = opts.length ?? 0.36;

    // Rufous top tone, a nod to the red-tailed hawk.
    this.material = new THREE.MeshStandardMaterial({
      color: 0x8a4a30,
      roughness: 0.8,
      side: THREE.DoubleSide,
    });

    for (let i = 0; i < count; i++) {
      const t = count === 1 ? 0.5 : i / (count - 1); // 0..1 across the fan
      const angle = THREE.MathUtils.lerp(-half, half, t);
      // Outer rectrices a touch shorter -> rounded fan edge.
      const lenScale = 1 - 0.18 * Math.abs(t - 0.5) * 2;

      const pivot = new THREE.Object3D();
      const mesh = new THREE.Mesh(this.card, this.material);
      mesh.scale.set(length * 0.34, 1, length * lenScale);
      pivot.add(mesh);
      this.group.add(pivot);
      this.feathers.push({ pivot, angleRad: angle });
    }

    // Sit at the rear of the body.
    this.group.position.set(0, 0, 0.2);
    this.setSpread(1);
  }

  /** 0 = closed (feathers stacked straight back), 1 = fully fanned. */
  setSpread(spread: number): void {
    const s = THREE.MathUtils.clamp(spread, 0, 1);
    for (const f of this.feathers) {
      this.tmp.set(0, f.angleRad * s, 0);
      f.pivot.quaternion.setFromEuler(this.tmp);
    }
  }

  dispose(): void {
    this.card.dispose();
    this.material.dispose();
  }
}
