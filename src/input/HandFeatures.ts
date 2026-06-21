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

export function computeMediaPipeFeatures(world: LM[]): HandFeatures {
  const W = world[0];
  const idxMcp = world[5];
  const midMcp = world[9];
  const pinkyMcp = world[17];
  const palmWidth = len(sub(idxMcp, pinkyMcp)) || 1e-6;

  // Curl: average of the four non-thumb fingers, remapped to use the full range.
  const rawCurl =
    (fingerCurl(world[5], world[6], world[8]) +
      fingerCurl(world[9], world[10], world[12]) +
      fingerCurl(world[13], world[14], world[16]) +
      fingerCurl(world[17], world[18], world[20])) /
    4;
  const curl = remap(rawCurl, TUNE.curlLo, TUNE.curlHi);

  // Spread: index↔pinky fingertip distance relative to palm width.
  const spread = remap(len(sub(world[8], world[20])) / palmWidth, TUNE.spreadNarrow, TUNE.spreadWide);

  // Thumb abduction: thumbtip↔indexMCP distance relative to palm width.
  const thumb = remap(len(sub(world[4], idxMcp)) / palmWidth, TUNE.thumbTucked, TUNE.thumbOut);

  // Palm frame for pitch/roll.
  const forward = norm(sub(midMcp, W)); // wrist -> fingers
  const side = norm(sub(idxMcp, pinkyMcp)); // across palm
  void cross; // (palm normal available if needed later)

  // y is down: fingers tilted up -> forward.y negative -> positive pitch.
  const pitch = clamp(-forward.y * TUNE.pitchGain, -1, 1);
  // rolling the wrist tilts the across-palm vector vertically.
  const roll = clamp(side.y * TUNE.rollGain, -1, 1);

  return { curl, spread, pitch, roll, thumb };
}
