/**
 * Engine: owns the renderer, scene, camera rig, and WebXR session lifecycle.
 * Vanilla Three.js — no React. Keeps a clean separation so gameplay code only
 * touches `scene`, `camera`, and the update loop.
 */
import * as THREE from 'three';
import { VRButton } from 'three/addons/webxr/VRButton.js';
import { Loop } from './Loop';
import type { Settings } from './Settings';

export class Engine {
  readonly renderer: THREE.WebGLRenderer;
  readonly scene: THREE.Scene;
  readonly camera: THREE.PerspectiveCamera;
  /** Camera rig: move this to "fly" the viewer; camera is the head/HMD pose. */
  readonly playerRig: THREE.Group;
  readonly clock = new THREE.Clock();
  readonly loop: Loop;

  constructor(
    private readonly container: HTMLElement,
    readonly settings: Settings,
  ) {
    this.renderer = new THREE.WebGLRenderer({
      antialias: settings.tier !== 'low',
      powerPreference: 'high-performance',
    });
    this.renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
    this.renderer.setSize(window.innerWidth, window.innerHeight);
    this.renderer.xr.enabled = true;
    this.renderer.toneMapping = THREE.ACESFilmicToneMapping;
    this.renderer.outputColorSpace = THREE.SRGBColorSpace;
    container.appendChild(this.renderer.domElement);

    this.scene = new THREE.Scene();

    this.camera = new THREE.PerspectiveCamera(
      70,
      window.innerWidth / window.innerHeight,
      0.1,
      20000,
    );
    this.camera.position.set(0, 1.6, 0); // standing eye height

    this.playerRig = new THREE.Group();
    this.playerRig.add(this.camera);
    this.scene.add(this.playerRig);

    this.loop = new Loop(90);

    // XR entry button. We request hand-tracking; harmless on devices without it.
    const xrButton = VRButton.createButton(this.renderer, {
      optionalFeatures: ['hand-tracking', 'local-floor', 'bounded-floor'],
    });
    document.body.appendChild(xrButton);

    window.addEventListener('resize', this.onResize);
  }

  private onResize = (): void => {
    this.camera.aspect = window.innerWidth / window.innerHeight;
    this.camera.updateProjectionMatrix();
    this.renderer.setSize(window.innerWidth, window.innerHeight);
  };

  /** Start the render/update loop. Uses setAnimationLoop (XR-safe). */
  start(): void {
    this.renderer.setAnimationLoop((time: number) => {
      this.loop.tick(time / 1000);
      this.renderer.render(this.scene, this.camera);
    });
  }

  dispose(): void {
    window.removeEventListener('resize', this.onResize);
    this.renderer.setAnimationLoop(null);
    this.renderer.dispose();
    this.container.removeChild(this.renderer.domElement);
  }
}
