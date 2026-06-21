/**
 * HandToWing — maps a HandState into per-wing controls.
 *
 * Left hand drives the left wing, right hand the right wing. Each hand's features
 * map 1:1-ish to wing shape:
 *   curl   -> extension (open hand = spread, fist = folded)
 *   pitch  -> angle of attack
 *   roll   -> dihedral (opposite L/R -> bank & turn)
 *   spread -> primary-tip fan
 *   thumb  -> alula deploy
 *
 * When a hand isn't tracked, that wing eases toward a neutral glide pose.
 */
import type { HandState, HandPose } from '../input/HandSource';
import type { Bird, WingControls } from './Bird';

const AOA_MAX = 0.5; // rad at full wrist pitch
const REST_DIHEDRAL = 0.06; // small resting dihedral; banking is done by body roll

const NEUTRAL: WingControls = {
  extension: 1,
  aoaRad: 0.08, // slight positive AoA for a glide
  dihedralRad: REST_DIHEDRAL,
  spread: 0.5,
  alula: 0,
};

function mapHand(pose: HandPose): WingControls {
  if (!pose.present) return NEUTRAL;
  const f = pose.features;
  return {
    extension: 1 - f.curl,
    aoaRad: f.pitch * AOA_MAX,
    // Bank/turn is handled by rolling the whole bird (FlightModel), not the wing.
    dihedralRad: REST_DIHEDRAL,
    spread: f.spread,
    alula: f.thumb,
  };
}

export function applyHandToWing(bird: Bird, hands: HandState): void {
  const l = mapHand(hands.left);
  const r = mapHand(hands.right);
  // Fold is driven by the hand-animated clip (per wing); feather fan rides on top.
  bird.setFold(l.extension, r.extension);
  bird.updateFeathers('L', l.extension, l.spread, l.alula);
  bird.updateFeathers('R', r.extension, r.spread, r.alula);
  bird.updateTail();
}
