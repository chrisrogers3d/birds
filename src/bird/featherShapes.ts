/**
 * Feather group config, the species silhouette polynomials, and feather geometry.
 *
 * The silhouette curves are ported verbatim from the Wing Creator Maya rig
 * (Heather Howard, CC BY-NC; see CREDITS.md), `WingType.hawk()` / `.falcon()`.
 * They return, per feather index `input`, the fan rotation (deg about Y) and the
 * length (Z) / width (X) scale that give a species its wing outline.
 *
 * Geometry source is pluggable: a quick procedural card (default) or the
 * authentic meshes extracted from WingBase_V04.ma into public/models/hawk_feathers.glb.
 */
import * as THREE from 'three';

export type GroupKey =
  | 'Primaries'
  | 'Secondaries'
  | 'PrimaryCoverts'
  | 'SecondaryCoverts'
  | 'MedianCoverts'
  | 'Alula';

export type SpanId = 'hand' | 'forearm';

export interface GroupConfig {
  /** How many feathers to generate. */
  count: number;
  /** Base feather count the silhouette polynomial was fit to (controls `input` step). */
  baseCount: number;
  /** Which bone segment the group is distributed along. */
  span: SpanId;
  /** Fraction of the span the group occupies, from the proximal joint [start,end]. */
  range: [number, number];
  /**
   * Fan sweep (degrees) of the feathers, measured from "straight back" (+Z)
   * toward "outward" (spanwise) — [innermost, outermost]. Always kept in the
   * back→outward quadrant (0..~70) so feathers sweep into one continuous wing
   * surface and never cross inward/forward (which caused the "moth" look).
   */
  fanDeg: [number, number];
  /** Stack height above the flight-feather plane (coverts ride on top). */
  layer: number;
  /** Maya group token used by the silhouette function (length/width only). */
  token: string;
}

/**
 * Default hawk wing. Counts from WingCreator.py; fan ranges authored so the
 * trailing edge (secondaries) points nearly straight back and the wingtip
 * (primaries) splays back-and-out like fingers — matching the red-tailed hawk.
 */
export const HAWK_GROUPS: Record<GroupKey, GroupConfig> = {
  Secondaries: { count: 13, baseCount: 13, span: 'forearm', range: [0.04, 1], fanDeg: [4, 18], layer: 0.0, token: '_Secondaries_' },
  Primaries: { count: 10, baseCount: 10, span: 'hand', range: [0, 1], fanDeg: [20, 60], layer: 0.0, token: '_Primaries_' },
  SecondaryCoverts: { count: 13, baseCount: 13, span: 'forearm', range: [0.04, 1], fanDeg: [4, 16], layer: 0.012, token: '_SecondaryCoverts_' },
  PrimaryCoverts: { count: 10, baseCount: 10, span: 'hand', range: [0, 1], fanDeg: [18, 52], layer: 0.012, token: '_PrimaryCoverts_' },
  MedianCoverts: { count: 13, baseCount: 13, span: 'forearm', range: [0.04, 1], fanDeg: [3, 14], layer: 0.022, token: '_MedianCoverts_' },
  Alula: { count: 3, baseCount: 4, span: 'hand', range: [0.0, 0.22], fanDeg: [40, 58], layer: 0.026, token: '_Alula_' },
};

export interface Silhouette {
  /** Fan angle (degrees) of this feather about the wing-up axis. */
  rotateDeg: number;
  /** Length scale (along the vane). */
  scaleLength: number;
  /** Width scale (across the vane). */
  scaleWidth: number;
}

/** Ported from WingType.hawk(grpName, input) — see WingCreator.py lines 400-438. */
export function hawkSilhouette(token: string, input: number): Silhouette {
  const p2 = input * input;
  const p3 = p2 * input;
  let rotate = 0,
    scaleZ = 1,
    scaleX = 1;
  switch (token) {
    case '_Primaries_':
      rotate = 0.0774 * p2 + 5.4107 * input + 25.612;
      scaleX = -0.0018 * p3 + 0.029 * p2 - 0.1936 * input + 1.3755;
      scaleZ = -0.0036 * p3 + 0.0457 * p2 - 0.1246 * input + 0.9122;
      break;
    case '_Secondaries_':
      rotate = 0.112 * p2 - 5.5211 * input + 28.011;
      scaleX = 0.0002 * p3 - 0.0068 * p2 + 0.0366 * input + 0.8348;
      scaleZ = -0.0042 * p2 + 0.0324 * input + 0.9941;
      break;
    case '_PrimaryCoverts_':
      rotate = 0.0163 * p2 + 6.2671 * input + 25.828;
      scaleX = -0.0008 * p3 + 0.0059 * p2 + 0.0035 * input + 0.5301;
      scaleZ = -0.0028 * p3 + 0.0394 * p2 - 0.1444 * input + 0.7414;
      break;
    case '_SecondaryCoverts_':
      rotate = 0.112 * p2 - 5.5211 * input + 28.011;
      scaleX = -0.0025 * p2 + 0.0193 * input + 0.5925;
      scaleZ = -0.0028 * p2 + 0.0216 * input + 0.6627;
      break;
    case '_MedianCoverts_':
      rotate = -0.0156 * p3 + 0.4273 * p2 - 7.182 * input + 34.361;
      scaleX = -0.0059 * p2 + 0.0806 * input + 0.4978;
      scaleZ = -0.0083 * p2 + 0.1161 * input + 0.4887;
      break;
    case '_Alula_':
      rotate = -0.5378 * p2 + 8.3916 * input + 69.479;
      scaleX = -0.0265 * p2 + 0.1633 * input + 0.4266;
      scaleZ = -0.0307 * p2 + 0.2373 * input + 0.2896;
      break;
  }
  return { rotateDeg: rotate, scaleLength: scaleZ, scaleWidth: scaleX };
}

/** Maya `input` for feather i (1-based) of N: 1 + (i-1) * baseCount/N. */
export function silhouetteInput(i: number, count: number, baseCount: number): number {
  return 1 + (i - 1) * (baseCount / count);
}

/**
 * Procedural feather card: a flat, slightly cambered, asymmetric vane with the
 * quill (rachis tip) at the origin and the vane extending down +Z. Unit-ish
 * length 1, width ~0.25; the per-feather silhouette scale shapes it.
 */
export function makeFeatherCard(): THREE.BufferGeometry {
  const SEG = 8;
  const len = 1.0;
  const leading = 0.07; // narrow leading-edge half-width
  const trailing = 0.16; // wider trailing-edge half-width
  const positions: number[] = [];
  const indices: number[] = [];
  // Center spine vertices (along +Z) + left/right vane edges per segment.
  for (let s = 0; s <= SEG; s++) {
    const t = s / SEG;
    const z = t * len;
    // vane widens then tapers to a point at the tip
    const widthProfile = Math.sin(Math.PI * Math.min(1, t * 1.05)) * 0.9 + 0.1 * t;
    const wL = leading * widthProfile;
    const wR = trailing * widthProfile;
    const camber = Math.sin(Math.PI * t) * 0.03; // slight Y bow
    positions.push(-wL, camber, z); // leading edge
    positions.push(0, camber * 1.2, z); // spine
    positions.push(wR, camber, z); // trailing edge
  }
  for (let s = 0; s < SEG; s++) {
    const a = s * 3;
    const b = (s + 1) * 3;
    // left quad (leading..spine)
    indices.push(a, a + 1, b + 1, a, b + 1, b);
    // right quad (spine..trailing)
    indices.push(a + 1, a + 2, b + 2, a + 1, b + 2, b + 1);
  }
  const geo = new THREE.BufferGeometry();
  geo.setAttribute('position', new THREE.Float32BufferAttribute(positions, 3));
  geo.setIndex(indices);
  geo.computeVertexNormals();
  return geo;
}
