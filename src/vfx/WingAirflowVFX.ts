/**
 * WingAirflowVFX — air streaming over the wings. Chordwise streamlines (front to
 * back) flow across each wing, brighter and tighter near the wingtips to suggest
 * tip vortices. It's a child of the bird, so it banks/pitches with it; intensity
 * scales with airspeed and fades as the wings fold.
 *
 * GPU LineSegments in bird-local space (forward −Z, so air flows toward +Z).
 */
import * as THREE from 'three';

export interface WingAirflowOptions {
  spanLines?: number; // streamlines per wing across the span
  perLine?: number; // streak segments per streamline
  density?: number; // 0..1 quality scale
}

export class WingAirflowVFX {
  readonly object: THREE.LineSegments;
  private readonly material: THREE.ShaderMaterial;

  constructor(opts: WingAirflowOptions = {}) {
    const spanLines = Math.max(3, Math.round((opts.spanLines ?? 8) * (opts.density ?? 1)));
    const perLine = Math.max(2, Math.round((opts.perLine ?? 5) * (opts.density ?? 1)));

    // Wing planform in bird-local metres (matches the rig's rough extent).
    const ROOT = 0.07; // inboard span start
    const TIP = 0.62; // outboard span end
    const LEAD = -0.05; // leading edge (z, forward is −Z)
    const CHORD = 0.42; // chord length (toward +Z / trailing edge)

    const pos: number[] = [];
    const span: number[] = []; // 0 root .. 1 tip
    const phase: number[] = [];
    const end: number[] = []; // 0 tail vertex, 1 leading streak end

    for (const side of [-1, 1]) {
      for (let i = 0; i < spanLines; i++) {
        const tSpan = spanLines === 1 ? 0.5 : i / (spanLines - 1);
        const x = side * THREE.MathUtils.lerp(ROOT, TIP, tSpan);
        // chord shrinks toward the tip (swept planform)
        const chord = CHORD * (1 - 0.45 * tSpan);
        const y = 0.04 + 0.05 * tSpan; // sit just above the wing surface
        for (let k = 0; k < perLine; k++) {
          const ph = (k / perLine + Math.random() * 0.1) % 1;
          const z = LEAD; // base at leading edge; shader scrolls toward trailing
          pos.push(x, y, z, x, y, z + chord * 0.18); // short streak
          span.push(tSpan, tSpan);
          phase.push(ph, ph);
          end.push(0, 1);
        }
      }
    }

    const geo = new THREE.BufferGeometry();
    geo.setAttribute('position', new THREE.Float32BufferAttribute(pos, 3));
    geo.setAttribute('aSpan', new THREE.Float32BufferAttribute(span, 1));
    geo.setAttribute('aPhase', new THREE.Float32BufferAttribute(phase, 1));
    geo.setAttribute('aEnd', new THREE.Float32BufferAttribute(end, 1));

    this.material = new THREE.ShaderMaterial({
      uniforms: {
        uTime: { value: 0 },
        uIntensity: { value: 0 }, // 0..1 from airspeed
        uExtension: { value: 1 }, // hide when wings fold
        uChord: { value: CHORD },
      },
      transparent: true,
      depthWrite: false,
      blending: THREE.AdditiveBlending,
      vertexShader: /* glsl */ `
        attribute float aSpan;
        attribute float aPhase;
        attribute float aEnd;
        uniform float uTime;
        uniform float uIntensity;
        uniform float uExtension;
        uniform float uChord;
        varying float vAlpha;
        void main() {
          float scroll = fract(aPhase + uTime * (0.6 + uIntensity * 0.8));
          vec3 p = position;
          p.z += scroll * uChord * (1.0 - 0.45 * aSpan); // flow toward trailing edge
          gl_Position = projectionMatrix * modelViewMatrix * vec4(p, 1.0);
          float tip = mix(0.4, 1.0, aSpan);            // brighter toward the tip (vortex)
          float fade = (1.0 - scroll) * (1.0 - aEnd);  // streak tail + downstream fade
          vAlpha = uIntensity * uExtension * tip * fade * 0.7;
        }
      `,
      fragmentShader: /* glsl */ `
        varying float vAlpha;
        void main() {
          gl_FragColor = vec4(vec3(0.85, 0.93, 1.0), vAlpha);
        }
      `,
    });

    this.object = new THREE.LineSegments(geo, this.material);
    this.object.name = 'wingAirflowVFX';
    this.object.frustumCulled = false;
  }

  /** @param speed01 airspeed normalized 0..1; @param extension avg wing extension */
  update(elapsed: number, speed01: number, extension: number): void {
    this.material.uniforms.uTime.value = elapsed;
    this.material.uniforms.uIntensity.value = THREE.MathUtils.clamp(speed01, 0, 1);
    this.material.uniforms.uExtension.value = extension;
  }

  dispose(): void {
    this.object.geometry.dispose();
    this.material.dispose();
  }
}
