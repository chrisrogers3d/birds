/**
 * Derive the normalized wing-control features from a set of hand landmarks.
 *
 * Works on MediaPipe HandLandmarker output (21 points). We prefer the metric
 * `worldLandmarks` (origin at hand center, scale-invariant) for angles/curl and
 * use them for everything here. Feature signs/ranges are heuristic and tunable
 * via the TUNE constants — the goal is a stable, side-independent HandFeatures.
 *
 * MediaPipe landmark indices: 0 wrist; 1-4 thumb; 5-8 index; 9-12 middle;
 * 13-16 ring; 17-20 pinky. World axes: x right, y down, z toward camera.
 */
import type { HandFeatures } from './HandSource';

export interface LM {
  x: number;
  y: number;
  z: number;
}

const sub = (a: LM, b: LM): LM => ({ x: a.x - b.x, y: a.y - b.y, z: a.z - b.z });
const dot = (a: LM, b: LM): number => a.x * b.x + a.y * b.y + a.z * b.z;
const len = (a: LM): number => Math.hypot(a.x, a.y, a.z);
const norm = (a: LM): LM => {
  const l = len(a) || 1e-6;
  return { x: a.x / l, y: a.y / l, z: a.z / l };
};
const cross = (a: LM, b: LM): LM => ({
  x: a.y * b.z - a.z * b.y,
  y: a.z * b.x - a.x * b.z,
  z: a.x * b.y - a.y * b.x,
});
const clamp = (v: number, lo: number, hi: number): number => (v < lo ? lo : v > hi ? hi : v);
const clamp01 = (v: number): number => clamp(v, 0, 1);
const remap = (v: number, lo: number, hi: number): number => clamp01((v - lo) / (hi - lo));

export const TUNE = {
  curlLo: 0.1, // raw avg-curl mapped to extension 0 (open hand)
  curlHi: 0.6, //                          ... 1 (closed fist)
  spreadNarrow: 0.9, // fingertip-spread / palm-width when fingers together
  spreadWide: 2.0, //                              ... when splayed
  thumbTucked: 0.5, // thumbtip-to-indexMCP / palm-width when tucked
  thumbOut: 1.3, //                          ... when abducted
  pitchGain: 2.2, // scales palm-forward vertical tilt
  rollGain: 2.4, // scales palm-side vertical tilt
};

/** Curl of one finger from its mcp/pip/tip: 0 straight, 1 fully bent. */
function fingerCurl(mcp: LM, pip: LM, tip: LM): number {
  const a = norm(sub(pip, mcp));
  const b = norm(sub(tip, pip));
  const cos = clamp(dot(a, b), -1, 1);
  return clamp01((1 - cos) / 2);
}

/** The landmarks the feature math needs, in any coordinate frame. */
export interface Anatomy {
  wrist: LM;
  thumbTip: LM;
  idxMcp: LM;
  idxPip: LM;
  idxTip: LM;
  midMcp: LM;
  midPip: LM;
  midTip: LM;
  ringMcp: LM;
  ringPip: LM;
  ringTip: LM;
  pinkyMcp: LM;
  pinkyPip: LM;
  pinkyTip: LM;
}

/**
 * Shared feature core. `upSign` accounts for the source's vertical axis:
 * MediaPipe world landmarks are y-down (upSign = -1); WebXR/three are y-up (+1).
 */
export function featuresFromAnatomy(a: Anatomy, upSign: number): HandFeatures {
  const palmWidth = len(sub(a.idxMcp, a.pinkyMcp)) || 1e-6;

  const rawCurl =
    (fingerCurl(a.idxMcp, a.idxPip, a.idxTip) +
      fingerCurl(a.midMcp, a.midPip, a.midTip) +
      fingerCurl(a.ringMcp, a.ringPip, a.ringTip) +
      fingerCurl(a.pinkyMcp, a.pinkyPip, a.pinkyTip)) /
    4;
  const curl = remap(rawCurl, TUNE.curlLo, TUNE.curlHi);
  const spread = remap(len(sub(a.idxTip, a.pinkyTip)) / palmWidth, TUNE.spreadNarrow, TUNE.spreadWide);
  const thumb = remap(len(sub(a.thumbTip, a.idxMcp)) / palmWidth, TUNE.thumbTucked, TUNE.thumbOut);

  const forward = norm(sub(a.midMcp, a.wrist)); // wrist -> fingers
  const side = norm(sub(a.idxMcp, a.pinkyMcp)); // across palm
  void cross; // (palm normal available if needed later)

  // fingers tilted up -> positive pitch (sign depends on the source's up axis).
  const pitch = clamp(upSign * forward.y * TUNE.pitchGain, -1, 1);
  const roll = clamp(upSign * side.y * TUNE.rollGain, -1, 1);

  return { curl, spread, pitch, roll, thumb };
}

/** Adapter: MediaPipe 21 world landmarks -> Anatomy (y-down). */
export function computeMediaPipeFeatures(world: LM[]): HandFeatures {
  const a: Anatomy = {
    wrist: world[0],
    thumbTip: world[4],
    idxMcp: world[5], idxPip: world[6], idxTip: world[8],
    midMcp: world[9], midPip: world[10], midTip: world[12],
    ringMcp: world[13], ringPip: world[14], ringTip: world[16],
    pinkyMcp: world[17], pinkyPip: world[18], pinkyTip: world[20],
  };
  return featuresFromAnatomy(a, -1);
}
