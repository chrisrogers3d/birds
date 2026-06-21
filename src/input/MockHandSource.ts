/**
 * Keyboard-driven hand source for desktop dev without a headset.
 *
 * Keys (held):
 *   W / S         curl  -> wing open / fold
 *   A / D         spread (primary fan) down / up
 *   ArrowUp/Down  pitch -> angle of attack
 *   ArrowLeft/Right  roll/bank (applied antisymmetrically L vs R)
 *   Space         thumb -> alula deploy
 *
 * Feature targets ramp while keys are held and ease back to neutral on release,
 * smoothed with critically-damped interpolation so values read like real input.
 */
import * as THREE from 'three';
import {
  type HandSource,
  type HandState,
  type HandUpdateContext,
  createHandState,
} from './HandSource';

type Key = string;

export class MockHandSource implements HandSource {
  readonly name = 'mock';
  readonly state: HandState = createHandState();

  private readonly down = new Set<Key>();
  /** Smoothed control axes shared by both hands (roll is split per side). */
  private axes = { curl: 0, spread: 0.5, pitch: 0, roll: 0, thumb: 0 };

  private readonly onKeyDown = (e: KeyboardEvent): void => {
    this.down.add(e.code);
  };
  private readonly onKeyUp = (e: KeyboardEvent): void => {
    this.down.delete(e.code);
  };

  async init(): Promise<void> {
    window.addEventListener('keydown', this.onKeyDown);
    window.addEventListener('keyup', this.onKeyUp);
    // Wrists sit at fixed symmetric points; features carry the real control.
    this.state.left.position.set(-0.25, 1.4, -0.4);
    this.state.right.position.set(0.25, 1.4, -0.4);
    this.state.left.present = true;
    this.state.right.present = true;
  }

  update(ctx: HandUpdateContext): void {
    const dt = ctx.dt;
    const has = (k: Key): boolean => this.down.has(k);
    const axis = (neg: boolean, pos: boolean): number =>
      (pos ? 1 : 0) - (neg ? 1 : 0);

    // Targets from held keys; curl/spread hold their value when nothing is pressed.
    let curlTarget = this.axes.curl;
    if (has('KeyS')) curlTarget = 1;
    else if (has('KeyW')) curlTarget = 0;

    let spreadTarget = this.axes.spread;
    if (has('KeyD')) spreadTarget = 1;
    else if (has('KeyA')) spreadTarget = 0;

    const pitchTarget = axis(has('ArrowDown'), has('ArrowUp'));
    const rollTarget = axis(has('ArrowLeft'), has('ArrowRight'));
    const thumbTarget = has('Space') ? 1 : 0;

    // Critically-damped smoothing.
    const k = 12;
    this.axes.curl = THREE.MathUtils.damp(this.axes.curl, curlTarget, k, dt);
    this.axes.spread = THREE.MathUtils.damp(this.axes.spread, spreadTarget, k, dt);
    this.axes.pitch = THREE.MathUtils.damp(this.axes.pitch, pitchTarget, k, dt);
    this.axes.roll = THREE.MathUtils.damp(this.axes.roll, rollTarget, k, dt);
    this.axes.thumb = THREE.MathUtils.damp(this.axes.thumb, thumbTarget, k, dt);

    // Both hands move together (symmetric). Roll is the same on both hands so the
    // averaged roll banks the bird body (turn), matching the real two-hand scheme.
    const L = this.state.left.features;
    const R = this.state.right.features;
    L.curl = R.curl = this.axes.curl;
    L.spread = R.spread = this.axes.spread;
    L.pitch = R.pitch = this.axes.pitch;
    L.thumb = R.thumb = this.axes.thumb;
    L.roll = R.roll = this.axes.roll;

    // Reflect roll/pitch in wrist orientation too (for any consumers that read it).
    this.state.left.orientation.setFromEuler(
      new THREE.Euler(this.axes.pitch * 0.6, 0, L.roll * 0.6),
    );
    this.state.right.orientation.setFromEuler(
      new THREE.Euler(this.axes.pitch * 0.6, 0, R.roll * 0.6),
    );
  }

  dispose(): void {
    window.removeEventListener('keydown', this.onKeyDown);
    window.removeEventListener('keyup', this.onKeyUp);
  }
}
