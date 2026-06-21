/**
 * Webcam hand tracking via MediaPipe Tasks Vision HandLandmarker.
 *
 * Produces the same HandState as the mock/WebXR sources, so the wing mapping is
 * unchanged. WASM + model are pulled from the jsDelivr/Google CDN by default
 * (self-host later for offline/perf). Runs in VIDEO mode at the display refresh.
 *
 * Note: handedness from MediaPipe is reported from the image's point of view. A
 * typical user-facing webcam is mirrored, so MediaPipe "Left" is the user's right
 * hand. We map accordingly (flip with `mirrored: false` if your feed isn't).
 */
import * as THREE from 'three';
import {
  FilesetResolver,
  HandLandmarker,
  DrawingUtils,
  type HandLandmarkerResult,
} from '@mediapipe/tasks-vision';
import {
  type HandSource,
  type HandState,
  type HandUpdateContext,
  type HandPose,
  createHandState,
} from './HandSource';
import { computeMediaPipeFeatures, type LM } from './HandFeatures';

const WASM_CDN = 'https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.35/wasm';
const MODEL_URL =
  'https://storage.googleapis.com/mediapipe-models/hand_landmarker/hand_landmarker/float16/1/hand_landmarker.task';

export interface MediaPipeOptions {
  /** Show a small mirrored video preview in the corner. */
  preview?: boolean;
  /** True if the webcam feed is mirrored (selfie view). Default true. */
  mirrored?: boolean;
}

export class MediaPipeHandSource implements HandSource {
  readonly name = 'mediapipe';
  readonly state: HandState = createHandState();

  private landmarker: HandLandmarker | null = null;
  private video!: HTMLVideoElement;
  private container: HTMLDivElement | null = null;
  private overlay: HTMLCanvasElement | null = null;
  private drawer: DrawingUtils | null = null;
  private lastVideoTime = -1;
  private readonly mirrored: boolean;
  private readonly showPreview: boolean;
  private readonly smooth = 14;
  private readonly previewW = 220;

  constructor(opts: MediaPipeOptions = {}) {
    this.mirrored = opts.mirrored ?? true;
    this.showPreview = opts.preview ?? true;
  }

  async init(): Promise<void> {
    const vision = await FilesetResolver.forVisionTasks(WASM_CDN);
    this.landmarker = await HandLandmarker.createFromOptions(vision, {
      baseOptions: { modelAssetPath: MODEL_URL, delegate: 'GPU' },
      runningMode: 'VIDEO',
      numHands: 2,
    });

    this.video = document.createElement('video');
    this.video.autoplay = true;
    this.video.playsInline = true;
    this.video.muted = true;
    const stream = await navigator.mediaDevices.getUserMedia({
      video: { width: 640, height: 480, facingMode: 'user' },
      audio: false,
    });
    this.video.srcObject = stream;
    await this.video.play();

    if (this.showPreview) {
      const h = Math.round((this.previewW * 480) / 640);
      this.container = document.createElement('div');
      Object.assign(this.container.style, {
        position: 'fixed',
        bottom: '8px',
        right: '8px',
        width: `${this.previewW}px`,
        height: `${h}px`,
        borderRadius: '6px',
        overflow: 'hidden',
        border: '1px solid rgba(120,160,210,0.4)',
        transform: this.mirrored ? 'scaleX(-1)' : 'none',
        zIndex: '9',
        pointerEvents: 'none',
      } satisfies Partial<CSSStyleDeclaration>);

      Object.assign(this.video.style, { width: '100%', height: '100%', objectFit: 'cover' });
      this.overlay = document.createElement('canvas');
      this.overlay.width = this.previewW;
      this.overlay.height = h;
      Object.assign(this.overlay.style, {
        position: 'absolute',
        inset: '0',
        width: '100%',
        height: '100%',
      } satisfies Partial<CSSStyleDeclaration>);

      this.container.append(this.video, this.overlay);
      document.body.appendChild(this.container);
      const ctx = this.overlay.getContext('2d');
      if (ctx) this.drawer = new DrawingUtils(ctx);
    }
  }

  update(ctx: HandUpdateContext): void {
    if (!this.landmarker || this.video.readyState < 2) return;
    if (this.video.currentTime === this.lastVideoTime) return;
    this.lastVideoTime = this.video.currentTime;

    let result: HandLandmarkerResult;
    try {
      result = this.landmarker.detectForVideo(this.video, performance.now());
    } catch {
      return;
    }

    const seen = { left: false, right: false };
    for (let i = 0; i < result.handedness.length; i++) {
      const label = result.handedness[i][0]?.categoryName; // "Left" | "Right" (image POV)
      // mirrored selfie: image "Left" == user's right hand.
      const userRight = this.mirrored ? label === 'Left' : label === 'Right';
      const side = userRight ? 'right' : 'left';
      seen[side] = true;
      this.applyHand(this.state[side], result.worldLandmarks[i] as LM[], ctx.dt);
    }
    if (!seen.left) this.state.left.present = false;
    if (!seen.right) this.state.right.present = false;

    this.drawOverlay(result);
  }

  /** Draw the tracked landmarks + connections on the preview canvas. */
  private drawOverlay(result: HandLandmarkerResult): void {
    if (!this.drawer || !this.overlay) return;
    const c = this.overlay;
    const g = c.getContext('2d')!;
    g.clearRect(0, 0, c.width, c.height);
    for (let i = 0; i < result.landmarks.length; i++) {
      const userRight = this.mirrored
        ? result.handedness[i][0]?.categoryName === 'Left'
        : result.handedness[i][0]?.categoryName === 'Right';
      this.drawer.drawConnectors(result.landmarks[i], HandLandmarker.HAND_CONNECTIONS, {
        color: userRight ? '#ff5a7a' : '#5ad1ff', // right hand pink, left blue (matches rig)
        lineWidth: 3,
      });
      this.drawer.drawLandmarks(result.landmarks[i], {
        color: '#ffffff',
        fillColor: userRight ? '#ff5a7a' : '#5ad1ff',
        lineWidth: 1,
        radius: 3,
      });
    }
  }

  private applyHand(pose: HandPose, world: LM[], dt: number): void {
    const f = computeMediaPipeFeatures(world);
    const t = pose.features;
    const k = this.smooth;
    // Smooth to kill tracking jitter.
    t.curl = THREE.MathUtils.damp(t.curl, f.curl, k, dt);
    t.spread = THREE.MathUtils.damp(t.spread, f.spread, k, dt);
    t.pitch = THREE.MathUtils.damp(t.pitch, f.pitch, k, dt);
    t.roll = THREE.MathUtils.damp(t.roll, f.roll, k, dt);
    t.thumb = THREE.MathUtils.damp(t.thumb, f.thumb, k, dt);
    pose.present = true;
  }

  dispose(): void {
    const stream = this.video?.srcObject as MediaStream | null;
    stream?.getTracks().forEach((tr) => tr.stop());
    this.container?.remove();
    this.video?.remove();
    this.landmarker?.close();
  }
}
