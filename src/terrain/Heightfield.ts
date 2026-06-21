/**
 * Heightfield — analytic terrain used for both rendering and wind. A coastal
 * cliff/ridge: low near the sea (−Z side), rising to a plateau (+Z), with a
 * meandering cliff edge along X so it reads like the Presidio bluffs. Same
 * interface a Google-3D-Tiles-derived heightmap would expose, so WindField and
 * FlightModel are source-agnostic.
 */
import * as THREE from 'three';

export interface HeightSample {
  height: number;
  /** terrain gradient (slope) in X and Z. */
  gradX: number;
  gradZ: number;
}

export class Heightfield {
  /** Plateau height (m). */
  readonly plateau = 95;

  height(x: number, z: number): number {
    // Cliff edge meanders gently along X (broad, forgiving lift band).
    const edge = Math.sin(x * 0.006) * 22 + Math.sin(x * 0.017 + 2.1) * 9;
    const t = THREE.MathUtils.smoothstep(z, edge - 35, edge + 50);
    let h = t * this.plateau;
    // Surface texture on the plateau + a little beach relief.
    h += t * (Math.sin(x * 0.05) * 3 + Math.cos(z * 0.045 + x * 0.01) * 2.5);
    return Math.max(0, h);
  }

  sample(x: number, z: number): HeightSample {
    const d = 2;
    const hx1 = this.height(x - d, z);
    const hx2 = this.height(x + d, z);
    const hz1 = this.height(x, z - d);
    const hz2 = this.height(x, z + d);
    return {
      height: this.height(x, z),
      gradX: (hx2 - hx1) / (2 * d),
      gradZ: (hz2 - hz1) / (2 * d),
    };
  }
}
