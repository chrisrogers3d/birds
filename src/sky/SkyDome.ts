/**
 * Cheap gradient sky dome — the perf-friendly default sky (works on phone/Quest).
 * A large back-faced sphere with a horizon→zenith gradient and a sun disk/halo.
 * Takram's physically-based atmosphere can replace this as a high-end toggle.
 */
import * as THREE from 'three';

export interface SkyDomeOptions {
  sunDirection: THREE.Vector3;
  top?: number;
  horizon?: number;
  sun?: number;
}

export function createSkyDome(opts: SkyDomeOptions): THREE.Mesh {
  const mat = new THREE.ShaderMaterial({
    side: THREE.BackSide,
    depthWrite: false,
    uniforms: {
      uTop: { value: new THREE.Color(opts.top ?? 0x2f6bb0) },
      uHorizon: { value: new THREE.Color(opts.horizon ?? 0xcfdcea) },
      uSunColor: { value: new THREE.Color(opts.sun ?? 0xfff3da) },
      uSunDir: { value: opts.sunDirection.clone().normalize() },
    },
    vertexShader: /* glsl */ `
      varying vec3 vDir;
      void main() {
        vDir = position;
        gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
      }
    `,
    fragmentShader: /* glsl */ `
      varying vec3 vDir;
      uniform vec3 uTop, uHorizon, uSunColor, uSunDir;
      void main() {
        vec3 d = normalize(vDir);
        float h = clamp(d.y, -1.0, 1.0);
        vec3 col = mix(uHorizon, uTop, pow(clamp(h, 0.0, 1.0), 0.55));
        if (h < 0.0) col = mix(uHorizon, vec3(0.40, 0.44, 0.49), clamp(-h * 2.0, 0.0, 1.0));
        float s = max(dot(d, normalize(uSunDir)), 0.0);
        col += uSunColor * pow(s, 350.0) * 1.6;  // sun disk
        col += uSunColor * pow(s, 7.0) * 0.16;   // halo
        gl_FragColor = vec4(col, 1.0);
      }
    `,
  });
  const dome = new THREE.Mesh(new THREE.SphereGeometry(8000, 32, 16), mat);
  dome.name = 'skyDome';
  dome.frustumCulled = false;
  return dome;
}
