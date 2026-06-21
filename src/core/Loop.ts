/**
 * Fixed-step update loop. Physics/flight runs at a fixed timestep for stability;
 * rendering happens once per animation frame. Driven by
 * `renderer.setAnimationLoop` (required for WebXR — do NOT use requestAnimationFrame
 * directly in an XR session).
 */

export type FixedUpdate = (fixedDt: number) => void;
export type FrameUpdate = (dt: number, alpha: number) => void;

export class Loop {
  private readonly fixedDt: number;
  private accumulator = 0;
  private lastTime = 0;
  private readonly maxFrame = 0.25; // clamp huge stalls (tab switch, GC)

  private readonly fixedUpdates: FixedUpdate[] = [];
  private readonly frameUpdates: FrameUpdate[] = [];

  constructor(fixedHz = 90) {
    this.fixedDt = 1 / fixedHz;
  }

  /** Called at a fixed timestep — use for flight dynamics / wind integration. */
  onFixed(fn: FixedUpdate): void {
    this.fixedUpdates.push(fn);
  }

  /** Called once per rendered frame — use for input sampling, rig, camera, render. */
  onFrame(fn: FrameUpdate): void {
    this.frameUpdates.push(fn);
  }

  /** Advance the simulation. `time` is in seconds (XRFrame/RAF timestamp / 1000). */
  tick(time: number): void {
    if (this.lastTime === 0) this.lastTime = time;
    let frameDt = time - this.lastTime;
    this.lastTime = time;
    if (frameDt > this.maxFrame) frameDt = this.maxFrame;

    this.accumulator += frameDt;
    while (this.accumulator >= this.fixedDt) {
      for (const fn of this.fixedUpdates) fn(this.fixedDt);
      this.accumulator -= this.fixedDt;
    }

    // alpha = interpolation factor for rendering between fixed steps.
    const alpha = this.accumulator / this.fixedDt;
    for (const fn of this.frameUpdates) fn(frameDt, alpha);
  }
}
