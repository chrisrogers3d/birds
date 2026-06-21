/**
 * Loads the authentic feather meshes from hawk_feathers.glb (rebuilt from the
 * Wing Creator .ma) and normalizes them into the FeatherSystem's convention:
 * quill at the origin, vane along +Z, flat in the XZ plane, unit length.
 *
 * The exported meshes are flat in XY (length +Y, quill at y=0), so we rotate +90°
 * about X (Y→Z), drop the quill to z=0, and uniformly scale to unit length.
 */
import * as THREE from 'three';
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';
import type { GroupKey } from './featherShapes';

const NAME_TO_GROUP: Record<string, GroupKey> = {
  Feather_Primaries: 'Primaries',
  Feather_Secondaries: 'Secondaries',
  Feather_PrimaryCoverts: 'PrimaryCoverts',
  Feather_SecondaryCoverts: 'SecondaryCoverts',
  Feather_MedianCoverts: 'MedianCoverts',
  Feather_Alula: 'Alula',
};

export async function loadFeatherGeometries(
  url: string,
): Promise<Partial<Record<GroupKey, THREE.BufferGeometry>>> {
  const gltf = await new GLTFLoader().loadAsync(url);
  gltf.scene.updateMatrixWorld(true);
  const out: Partial<Record<GroupKey, THREE.BufferGeometry>> = {};

  gltf.scene.traverse((o) => {
    const mesh = o as THREE.Mesh;
    if (!mesh.isMesh) return;
    const key = NAME_TO_GROUP[o.name];
    if (!key) return;

    const geo = mesh.geometry.clone();
    geo.applyMatrix4(mesh.matrixWorld); // bake node transform
    geo.rotateX(Math.PI / 2); // length +Y -> +Z, flatten into XZ
    geo.computeBoundingBox();
    const bb = geo.boundingBox!;
    geo.translate(0, 0, -bb.min.z); // quill -> z = 0
    const len = bb.max.z - bb.min.z || 1;
    geo.scale(1 / len, 1 / len, 1 / len); // unit length
    geo.computeVertexNormals();
    out[key] = geo;
  });

  return out;
}
