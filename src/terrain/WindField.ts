/**
 * WindField — the air the bird flies through. For now: a steady onshore wind plus
 * analytic ridge (orographic) lift derived from the terrain slope:
 *
 *   w_up ∝ (W · ∇h)   — wind blowing up a slope is deflected upward
 *
 * strongest just above the cliff face and decaying with height. Hand-painted
 * thermals can be layered on later (the plan's hybrid model). FlightModel reads
 * `liftAt`; VFX will read `vectorAt`.
 */
import * as THREE from 'three';
import type { Heightfield } from './Heightfield';

export class WindField {
  /** Steady onshore wind (m/s): blowing +Z, in from the sea. */
  readonly wind = new THREE.Vector3(0, 0, 14);
  /** Scales raw (W·∇h) into a sensible vertical speed. */
  liftGain = 0.26;
  /** Lift decays over this height above the terrain (m). */
  liftDepth = 140;
  /** Hard cap on updraft (m/s). */
  maxLift = 6;

  constructor(private readonly hf: Heightfield) {}

  /** Vertical air speed (m/s, ≥0) at a world point. */
  liftAt(x: number, y: number, z: number): number {
    const s = this.hf.sample(x, z);
    const above = y - s.height;
    if (above < 0) return 0;
    const upslope = this.wind.x * s.gradX + this.wind.z * s.gradZ;
    if (upslope <= 0) return 0; // lee side / flat: no ridge lift
    const decay = Math.exp(-above / this.liftDepth);
    return Math.min(this.maxLift, upslope * this.liftGain * decay);
  }

  /** Full air-velocity vector at a point (horizontal wind + ridge lift). */
  vectorAt(x: number, y: number, z: number, out = new THREE.Vector3()): THREE.Vector3 {
    return out.set(this.wind.x, this.liftAt(x, y, z), this.wind.z);
  }
}
