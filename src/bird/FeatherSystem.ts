/**
 * FeatherSystem — procedural feather placement + fanning for one wing.
 *
 * Port of the Wing Creator approach (Heather Howard, CC BY-NC; see CREDITS.md):
 *   - feathers are distributed along the bone their tract rides on (primaries on
 *     the hand bone, secondaries on the forearm; coverts layered on top; alula on
 *     the proximal third of the hand);
 *   - per-feather length/width and base fan angle come from the species
 *     silhouette polynomials (featherShapes.hawkSilhouette);
 *   - fanning: each feather's fan angle scales with wing `extension`, so the wing
 *     fans open when extended and the feathers stack/align when folded. (This is
 *     our equivalent of Maya's two-control weighted blend.)
 *
 * Feathers are children of the rig bone nodes, so folding the chain carries them
 * along for free; only their local fan rotation updates per frame — cheap.
 */
import * as THREE from 'three';
import { WingRig, BONE } from './WingRig';
import {
  HAWK_GROUPS,
  hawkSilhouette,
  silhouetteInput,
  makeFeatherCard,
  type GroupKey,
  type GroupConfig,
} from './featherShapes';

/** Visual length (m) of a unit feather card per group (modulated by silhouette). */
const GROUP_LENGTH: Record<GroupKey, number> = {
  Primaries: 0.42,
  Secondaries: 0.40,
  PrimaryCoverts: 0.20,
  SecondaryCoverts: 0.17,
  MedianCoverts: 0.12,
  Alula: 0.11,
};

/** Dorsal hawk tones: dark flight feathers grading to warmer coverts. */
const GROUP_COLOR: Record<GroupKey, number> = {
  Primaries: 0x33291f,
  Secondaries: 0x4d3e2e,
  PrimaryCoverts: 0x6a5641,
  SecondaryCoverts: 0x73604a,
  MedianCoverts: 0x8a745a,
  Alula: 0x2c241b,
};

interface Feather {
  pivot: THREE.Object3D;
  /** base fan angle (radians, already signed for the wing side). */
  fanRad: number;
  isPrimary: boolean;
  isAlula: boolean;
}

export interface FeatherSystemOptions {
  /** Optional swap-in geometry per group (e.g. from hawk_feathers.glb). */
  geometries?: Partial<Record<GroupKey, THREE.BufferGeometry>>;
}

export class FeatherSystem {
  private readonly feathers: Feather[] = [];
  private readonly card = makeFeatherCard();
  private readonly materials = new Map<GroupKey, THREE.Material>();
  private readonly tmpEuler = new THREE.Euler();

  constructor(
    private readonly wing: WingRig,
    opts: FeatherSystemOptions = {},
  ) {
    (Object.keys(HAWK_GROUPS) as GroupKey[]).forEach((key) => {
      this.buildGroup(key, HAWK_GROUPS[key], opts.geometries?.[key]);
    });

    this.update(this.wing.getExtension());
  }

  private materialFor(key: GroupKey): THREE.Material {
    let m = this.materials.get(key);
    if (!m) {
      m = new THREE.MeshStandardMaterial({
        color: GROUP_COLOR[key],
        roughness: 0.78,
        metalness: 0.0,
        side: THREE.DoubleSide,
      });
      this.materials.set(key, m);
    }
    return m;
  }

  private buildGroup(key: GroupKey, cfg: GroupConfig, geo?: THREE.BufferGeometry): void {
    const s = this.wing.sign;
    const parent = cfg.span === 'hand' ? this.wing.wrist : this.wing.elbow;
    const boneLen = cfg.span === 'hand' ? BONE.hand : BONE.forearm;
    const geometry = geo ?? this.card;
    const length = GROUP_LENGTH[key];
    const material = this.materialFor(key);

    for (let i = 1; i <= cfg.count; i++) {
      const tAlong = (i - 0.5) / cfg.count; // 0 innermost .. 1 outermost
      const u = THREE.MathUtils.lerp(cfg.range[0], cfg.range[1], tAlong);
      // Length/width taper from the ported silhouette polynomial (positive scales).
      const sil = hawkSilhouette(cfg.token, silhouetteInput(i, cfg.count, cfg.baseCount));
      // Fan sweep from the explicit, always-backward range.
      const fanDegVal = THREE.MathUtils.lerp(cfg.fanDeg[0], cfg.fanDeg[1], tAlong);

      const pivot = new THREE.Object3D();
      // Base sits along the bone (+X local), lifted by the tract's layer height.
      pivot.position.set(s * boneLen * u, cfg.layer, 0);

      const mesh = new THREE.Mesh(geometry, material);
      // Card: quill at origin, vane down +Z. Scale length (Z) and width (X).
      mesh.scale.set(sil.scaleWidth * length * 0.6, 1, sil.scaleLength * length);
      pivot.add(mesh);

      parent.add(pivot);
      this.feathers.push({
        pivot,
        fanRad: s * THREE.MathUtils.degToRad(fanDegVal),
        isPrimary: key === 'Primaries',
        isAlula: key === 'Alula',
      });
    }
  }

  /**
   * Update from wing controls.
   * @param extension 0 folded .. 1 spread (collapses/fans all feathers)
   * @param spread    primary-tip fan amount 0..1 (slotting at the wingtip)
   * @param alula     alula deploy 0..1 (the thumb air-brake lifts up)
   */
  update(extension: number, spread = 0.5, alula = 0): void {
    const baseFan = THREE.MathUtils.lerp(0.12, 1.0, extension);
    const primaryMul = 0.7 + 0.6 * spread; // spread the fingertips more/less
    const s = this.wing.sign;
    for (const f of this.feathers) {
      const fan = f.isPrimary ? baseFan * primaryMul : baseFan;
      // alula lifts up-and-forward off the leading edge when deployed
      const lift = f.isAlula ? -alula * 0.7 : 0;
      this.tmpEuler.set(lift, f.fanRad * fan, s * lift * 0.5);
      f.pivot.quaternion.setFromEuler(this.tmpEuler);
    }
  }

  dispose(): void {
    this.card.dispose();
    for (const m of this.materials.values()) m.dispose();
  }
}
