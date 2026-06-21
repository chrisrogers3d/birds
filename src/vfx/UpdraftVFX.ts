/**
 * UpdraftVFX — rising streaks wherever the WindField has strong ridge lift, so
 * the player can *see* where to soar. Columns are sampled once from the (steady)
 * wind field; each element is a short vertical line segment (a streak) scrolled
 * up its column on the GPU and faded along its length and near the column top.
 */
import * as THREE from 'three';
import type { Heightfield } from '../terrain/Heightfield';
import type { WindField } from '../terrain/WindField';

export interface UpdraftVFXOptions {
  area?: number; // half-extent (m) of the sampled region around origin
  step?: number; // grid spacing (m)
  perColumn?: number; // streaks per lifting column
  columnHeight?: number; // how high streaks rise (m)
  streakLength?: number; // length of each streak (m)
  liftThreshold?: number; // min lift (m/s) to show a column
  density?: number; // 0..1 overall scale of perColumn (quality tier)
}

export class UpdraftVFX {
  /** add this to the scene. */
  readonly object: THREE.LineSegments;
  readonly count: number;
  private readonly material: THREE.ShaderMaterial;

  constructor(hf: Heightfield, wind: WindField, opts: UpdraftVFXOptions = {}) {
    const area = opts.area ?? 700;
    const step = opts.step ?? 36;
    const perColumn = Math.max(1, Math.round((opts.perColumn ?? 9) * (opts.density ?? 1)));
    const H = opts.columnHeight ?? 130;
    const streak = opts.streakLength ?? 9;
    const thr = opts.liftThreshold ?? 1.0;

    // Two vertices per streak (bottom, top).
    const pos: number[] = [];
    const lift: number[] = [];
    const phase: number[] = [];
    const top: number[] = [];
    for (let x = -area; x <= area; x += step) {
      for (let z = -area; z <= area; z += step) {
        const g = hf.height(x, z);
        const l = wind.liftAt(x, g + 25, z);
        if (l < thr) continue;
        for (let k = 0; k < perColumn; k++) {
          const ph = Math.random();
          // bottom vertex then top vertex of the streak
          pos.push(x, g, z, x, g, z);
          lift.push(l, l);
          phase.push(ph, ph);
          top.push(0, 1);
        }
      }
    }

    const geo = new THREE.BufferGeometry();
    geo.setAttribute('position', new THREE.Float32BufferAttribute(pos, 3));
    geo.setAttribute('aLift', new THREE.Float32BufferAttribute(lift, 1));
    geo.setAttribute('aPhase', new THREE.Float32BufferAttribute(phase, 1));
    geo.setAttribute('aTop', new THREE.Float32BufferAttribute(top, 1));

    this.material = new THREE.ShaderMaterial({
      uniforms: {
        uTime: { value: 0 },
        uHeight: { value: H },
        uStreak: { value: streak },
        uMaxLift: { value: wind.maxLift },
      },
      transparent: true,
      depthWrite: false,
      blending: THREE.AdditiveBlending,
      vertexShader: /* glsl */ `
        attribute float aLift;
        attribute float aPhase;
        attribute float aTop;
        uniform float uTime;
        uniform float uHeight;
        uniform float uStreak;
        uniform float uMaxLift;
        varying float vAlpha;
        void main() {
          float yfrac = fract(uTime * (0.25 + aLift * 0.06) + aPhase);
          vec3 p = position;
          p.y += yfrac * uHeight + aTop * uStreak; // top vertex leads the streak
          gl_Position = projectionMatrix * modelViewMatrix * vec4(p, 1.0);
          float strength = clamp(aLift / uMaxLift, 0.0, 1.0);
          // bright tail at the bottom, fading to the leading top; whole streak
          // fades out as it nears the top of the column.
          vAlpha = strength * (1.0 - yfrac) * (1.0 - aTop) * 0.9;
        }
      `,
      fragmentShader: /* glsl */ `
        varying float vAlpha;
        void main() {
          gl_FragColor = vec4(vec3(0.55, 0.82, 1.0), vAlpha);
        }
      `,
    });

    this.object = new THREE.LineSegments(geo, this.material);
    this.object.name = 'updraftVFX';
    this.object.frustumCulled = false;
    this.count = pos.length / 6;
  }

  update(elapsed: number): void {
    this.material.uniforms.uTime.value = elapsed;
  }

  dispose(): void {
    this.object.geometry.dispose();
    this.material.dispose();
  }
}
