/**
 * Loads the bird model, format-agnostic: GLB (production, via GLTFLoader) or FBX
 * (dev sample, via FBXLoader). Returns the root object + any animation clips
 * (the Maya-authored wing-shape poses / flap). PoseRig consumes these.
 */
import * as THREE from 'three';
import { GLTFLoader } from 'three/addons/loaders/GLTFLoader.js';
import { FBXLoader } from 'three/addons/loaders/FBXLoader.js';

export interface BirdModel {
  root: THREE.Object3D;
  animations: THREE.AnimationClip[];
}

export async function loadBirdModel(url: string): Promise<BirdModel> {
  if (/\.fbx$/i.test(url)) {
    const group = await new FBXLoader().loadAsync(url);
    return { root: group, animations: group.animations ?? [] };
  }
  const gltf = await new GLTFLoader().loadAsync(url);
  return { root: gltf.scene, animations: gltf.animations ?? [] };
}
