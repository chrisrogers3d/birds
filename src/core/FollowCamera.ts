/**
 * Chase camera for flat (non-XR) mode: trails behind and above the bird, easing
 * smoothly so turns and dives feel weighty. In XR the HMD owns the camera, so
 * this is only used when not presenting.
 */
import * as THREE from 'three';

export class FollowCamera {
  private readonly offset: THREE.Vector3;
  private readonly desired = new THREE.Vector3();
  private readonly lookAt = new THREE.Vector3();
  private readonly fwd = new THREE.Vector3();

  /** offset in the target's local frame: behind (+Z), above (+Y). */
  constructor(offset = new THREE.Vector3(0, 1.4, 5.5)) {
    this.offset = offset;
  }

  update(dt: number, target: THREE.Object3D, camera: THREE.Camera): void {
    this.desired.copy(this.offset).applyQuaternion(target.quaternion).add(target.position);
    const k = 1 - Math.exp(-5 * dt); // critically-ish damped follow
    camera.position.lerp(this.desired, k);

    // Look a little ahead of the bird along its heading.
    this.fwd.set(0, 0, -1).applyQuaternion(target.quaternion);
    this.lookAt.copy(target.position).addScaledVector(this.fwd, 3);
    camera.up.set(0, 1, 0);
    camera.lookAt(this.lookAt);
  }
}
