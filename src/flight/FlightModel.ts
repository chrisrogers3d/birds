/**
 * FlightModel — a compact arcade glider.
 *
 * The bird moves along its forward axis at a speed that gravity (dive = faster,
 * climb = slower) and drag govern; there is no thrust — sustained flight comes
 * from updrafts (WindField, added with terrain). Controls:
 *   aoa   (-1..1)  commands flight-path pitch (climb/dive)
 *   bank  (-1..1)  rolls the body; a banked turn yaws the heading
 *   extension (0..1) wing area: more area = more drag + lower stall speed
 *
 * Orientation is Euler (pitch θ, yaw ψ, roll φ) in 'YXZ'. Forward is -Z, so the
 * bird mesh (authored facing -Z) flies nose-first.
 */
import * as THREE from 'three';

const G = 9.81;

export interface FlightInput {
  aoa: number; // -1 dive .. +1 climb
  bank: number; // -1 left .. +1 right
  extension: number; // 0 folded .. 1 spread
}

export interface FlightConfig {
  minSpeed?: number;
  maxSpeed?: number;
  maxClimbRad?: number;
  maxBankRad?: number;
  /** still-air sink with wings fully spread (m/s). */
  minSink?: number;
  /** extra sink as the wings fold (m/s at fully folded). */
  extraSink?: number;
}

export class FlightModel {
  readonly position = new THREE.Vector3(0, 80, 0);
  speed = 16;
  yaw = 0;
  pitch = 0;
  roll = 0;

  private readonly minSpeed: number;
  private readonly maxSpeed: number;
  private readonly maxClimb: number;
  private readonly maxBank: number;
  private readonly minSink: number;
  private readonly extraSink: number;

  private readonly q = new THREE.Quaternion();
  private readonly e = new THREE.Euler(0, 0, 0, 'YXZ');
  private readonly fwd = new THREE.Vector3();

  constructor(cfg: FlightConfig = {}) {
    this.minSpeed = cfg.minSpeed ?? 7;
    this.maxSpeed = cfg.maxSpeed ?? 48;
    this.maxClimb = cfg.maxClimbRad ?? 0.6;
    this.maxBank = cfg.maxBankRad ?? 0.95;
    this.minSink = cfg.minSink ?? 0.8;
    this.extraSink = cfg.extraSink ?? 2.0;
  }

  /** World forward (unit) for the current orientation. */
  forward(out = this.fwd): THREE.Vector3 {
    this.e.set(this.pitch, this.yaw, this.roll);
    this.q.setFromEuler(this.e);
    return out.set(0, 0, -1).applyQuaternion(this.q);
  }

  /**
   * Advance one step.
   * @param windUp vertical air velocity at the bird (m/s) — updraft lift.
   * @param groundY terrain height under the bird; the bird won't sink below it.
   */
  update(dt: number, input: FlightInput, windUp = 0, groundY = 0): void {
    // Smooth attitude toward commanded targets.
    const pitchTarget = input.aoa * this.maxClimb;
    const bankTarget = input.bank * this.maxBank;
    this.pitch = THREE.MathUtils.damp(this.pitch, pitchTarget, 3, dt);
    this.roll = THREE.MathUtils.damp(this.roll, bankTarget, 3, dt);

    // Banked turn: coordinated-turn yaw rate.
    this.yaw -= (G * Math.tan(this.roll)) / Math.max(this.speed, this.minSpeed) * dt;

    const fwd = this.forward();

    // Speed: gravity along the flight path (climb decelerates, dive accelerates)
    // minus parasitic/area drag. Folded wings (low extension) glide faster.
    const drag = (0.0016 + 0.004 * input.extension) * this.speed * this.speed;
    this.speed += (-G * fwd.y - drag) * dt;
    this.speed = THREE.MathUtils.clamp(this.speed, this.minSpeed, this.maxSpeed);

    // Integrate position. Still-air glide sink (more when folded) is what makes
    // updrafts matter; updraft adds vertical air motion that can cancel/beat it.
    const sink = this.minSink + (1 - input.extension) * this.extraSink;
    this.position.addScaledVector(fwd, this.speed * dt);
    this.position.y += (windUp - sink) * dt;

    // Ground: don't sink through terrain; level off and bleed a little speed.
    const floor = groundY + 1.5;
    if (this.position.y < floor) {
      this.position.y = floor;
      if (this.pitch < 0) this.pitch = THREE.MathUtils.damp(this.pitch, 0.15, 8, dt);
    }
  }

  /** Write pose into a scene object (the bird group). */
  applyTo(obj: THREE.Object3D): void {
    obj.position.copy(this.position);
    this.e.set(this.pitch, this.yaw, this.roll);
    obj.quaternion.setFromEuler(this.e);
  }
}
