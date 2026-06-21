/**
 * PoseRig — drives the Maya WingCreator feathers from authored pose clips.
 *
 * The model exports each feather as `{L|R}_{Group}_{n}` parented under animated
 * group nodes (`..._GRP`) + a control hierarchy. The pose/flap clips key those
 * *group/control* nodes (not the feather leaves), so we blend the **driven
 * nodes** the clips target; the feather leaves ride their parents.
 *
 * Each pose is stored as per-driven-node delta from a REST (neutral) capture, and
 * blended continuously: `node.local = rest ∘ Σ weight·delta`. Hand features set
 * the weights → smooth continuous wing-shape control from discrete artist poses.
 *
 * Feather leaves are still classified (read-only) so the flight model can sample
 * spanwise station transforms from the posed wing.
 */
import * as THREE from 'three';

export type WingSide = 'L' | 'R';
export type FeatherGroup =
  | 'Primaries'
  | 'Secondaries'
  | 'PrimaryCoverts'
  | 'SecondaryCoverts'
  | 'MedianCoverts'
  | 'Alula';

const FEATHER_RE =
  /^(L|R)_(Primaries|Secondaries|PrimaryCoverts|SecondaryCoverts|MedianCoverts|Alula)_(\d+)$/;

export interface FeatherNode {
  node: THREE.Object3D;
  side: WingSide;
  group: FeatherGroup;
  index: number;
}

interface DrivenNode {
  node: THREE.Object3D;
  restPos: THREE.Vector3;
  restQuat: THREE.Quaternion;
  restScale: THREE.Vector3;
}

interface PoseDelta {
  dPos: THREE.Vector3;
  dQuat: THREE.Quaternion; // rest^-1 * posed
  dScale: THREE.Vector3;
}

export class PoseRig {
  readonly root: THREE.Object3D;
  readonly feathers: FeatherNode[] = [];
  private driven: DrivenNode[] = [];
  private drivenBuilt = false;
  private readonly poses = new Map<string, PoseDelta[]>();
  private readonly weights = new Map<string, number>();
  private readonly _dq = new THREE.Quaternion();

  constructor(root: THREE.Object3D) {
    this.root = root;
    root.traverse((o) => {
      const m = FEATHER_RE.exec(o.name);
      if (m) {
        this.feathers.push({
          node: o,
          side: m[1] as WingSide,
          group: m[2] as FeatherGroup,
          index: parseInt(m[3], 10),
        });
      }
    });
  }

  /** Build the driven-node set from a clip's tracks; capture current state as rest. */
  private buildDriven(clip: THREE.AnimationClip): void {
    const seen = new Set<THREE.Object3D>();
    for (const t of clip.tracks) {
      const dot = t.name.lastIndexOf('.');
      const name = dot >= 0 ? t.name.slice(0, dot) : t.name;
      const node = this.root.getObjectByName(name);
      if (node && !seen.has(node)) {
        seen.add(node);
        this.driven.push({
          node,
          restPos: node.position.clone(),
          restQuat: node.quaternion.clone(),
          restScale: node.scale.clone(),
        });
      }
    }
    this.drivenBuilt = true;
  }

  private resetDrivenToRest(): void {
    for (const d of this.driven) {
      d.node.position.copy(d.restPos);
      d.node.quaternion.copy(d.restQuat);
      d.node.scale.copy(d.restScale);
    }
  }

  /**
   * Register a pose by sampling a clip at `time` (1-frame pose clips: time 0).
   * The first pose defines the rest/neutral baseline + driven-node set.
   */
  addPose(name: string, clip: THREE.AnimationClip, time = 0): void {
    if (!this.drivenBuilt) this.buildDriven(clip);
    else this.resetDrivenToRest();

    const mixer = new THREE.AnimationMixer(this.root);
    mixer.clipAction(clip).play();
    mixer.setTime(time);

    const deltas: PoseDelta[] = this.driven.map((d) => ({
      dPos: d.node.position.clone().sub(d.restPos),
      dQuat: d.restQuat.clone().invert().multiply(d.node.quaternion),
      dScale: d.node.scale.clone().sub(d.restScale),
    }));

    mixer.stopAllAction();
    this.resetDrivenToRest();
    this.poses.set(name, deltas);
    this.weights.set(name, 0);
  }

  poseNames(): string[] {
    return [...this.poses.keys()];
  }

  setWeight(name: string, w: number): void {
    if (this.poses.has(name)) this.weights.set(name, w);
  }

  /** Apply rest ∘ Σ weight·delta to every driven node. Cheap; call once per frame. */
  apply(): void {
    for (let i = 0; i < this.driven.length; i++) {
      const d = this.driven[i];
      d.node.position.copy(d.restPos);
      d.node.scale.copy(d.restScale);
      d.node.quaternion.copy(d.restQuat);
      for (const [name, list] of this.poses) {
        const w = this.weights.get(name) ?? 0;
        if (w === 0) continue;
        const delta = list[i];
        d.node.position.addScaledVector(delta.dPos, w);
        d.node.scale.addScaledVector(delta.dScale, w);
        this._dq.identity().slerp(delta.dQuat, w);
        d.node.quaternion.multiply(this._dq);
      }
    }
  }

  /** feather counts per side+group, for verifying the load. */
  summary(): Record<string, number> {
    const out: Record<string, number> = {};
    for (const f of this.feathers) {
      const k = `${f.side}_${f.group}`;
      out[k] = (out[k] ?? 0) + 1;
    }
    return out;
  }
}
