/**
 * Builds a displaced mesh from a Heightfield, vertex-colored by elevation
 * (beach → grass → rock) so the cliff reads clearly. This is the stand-in for
 * Google Photorealistic 3D Tiles; swapping in the tiles renderer later keeps the
 * same Heightfield/WindField sampling.
 */
import * as THREE from 'three';
import type { Heightfield } from './Heightfield';

const SAND = new THREE.Color(0xcab98a);
const GRASS = new THREE.Color(0x4f6b34);
const ROCK = new THREE.Color(0x8a8378);

export function buildTerrain(hf: Heightfield, size = 2600, segments = 256): THREE.Mesh {
  const geo = new THREE.PlaneGeometry(size, size, segments, segments);
  geo.rotateX(-Math.PI / 2); // lie flat; +Y up

  const pos = geo.attributes.position as THREE.BufferAttribute;
  const colors = new Float32Array(pos.count * 3);
  const c = new THREE.Color();
  for (let i = 0; i < pos.count; i++) {
    const x = pos.getX(i);
    const z = pos.getZ(i);
    const h = hf.height(x, z);
    pos.setY(i, h);
    const t = THREE.MathUtils.clamp(h / hf.plateau, 0, 1);
    if (t < 0.08) c.copy(SAND);
    else c.copy(GRASS).lerp(ROCK, THREE.MathUtils.smoothstep(t, 0.55, 1));
    colors[i * 3] = c.r;
    colors[i * 3 + 1] = c.g;
    colors[i * 3 + 2] = c.b;
  }
  geo.setAttribute('color', new THREE.BufferAttribute(colors, 3));
  geo.computeVertexNormals();

  const mat = new THREE.MeshStandardMaterial({ vertexColors: true, roughness: 0.95, metalness: 0 });
  const mesh = new THREE.Mesh(geo, mat);
  mesh.name = 'terrain';
  return mesh;
}
