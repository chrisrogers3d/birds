/**
 * Google Photorealistic 3D Tiles via NASA-AMMOS 3d-tiles-renderer.
 *
 * Gated + dynamically imported (so the renderer + Draco/KTX2 loaders stay out of
 * the default bundle). Anchored at a lat/lon with the ReorientationPlugin so the
 * tiles land in the same local Y-up metre frame the flight model uses. Procedural
 * terrain remains the default; this is opt-in via `?tiles=1`.
 *
 * NOTE: needs a real browser (network + Google auth + KTX2/GPU) to render — it
 * can't be exercised headless. The flight/wind still use the procedural
 * Heightfield for now; deriving lift from raycast tile geometry is a follow-up.
 */
import * as THREE from 'three';
import { TilesRenderer } from '3d-tiles-renderer';
import {
  GoogleCloudAuthPlugin,
  GLTFExtensionsPlugin,
  ReorientationPlugin,
  TileCompressionPlugin,
  TilesFadePlugin,
} from '3d-tiles-renderer/plugins';
import { DRACOLoader } from 'three/addons/loaders/DRACOLoader.js';
import { KTX2Loader } from 'three/addons/loaders/KTX2Loader.js';

export interface GoogleTilesOptions {
  apiKey: string;
  camera: THREE.PerspectiveCamera;
  renderer: THREE.WebGLRenderer;
  latDeg: number;
  lonDeg: number;
}

export interface GoogleTilesHandle {
  group: THREE.Group;
  update(): void;
  onResize(): void;
  attributions(): string;
  dispose(): void;
}

export function createGoogleTiles(opts: GoogleTilesOptions): GoogleTilesHandle {
  const tiles = new TilesRenderer();
  tiles.registerPlugin(new GoogleCloudAuthPlugin({ apiToken: opts.apiKey }));

  const draco = new DRACOLoader().setDecoderPath(
    'https://www.gstatic.com/draco/versioned/decoders/1.5.7/',
  );
  const ktx = new KTX2Loader()
    .setTranscoderPath('https://cdn.jsdelivr.net/npm/three@0.180.0/examples/jsm/libs/basis/')
    .detectSupport(opts.renderer);
  tiles.registerPlugin(new GLTFExtensionsPlugin({ dracoLoader: draco, ktxLoader: ktx, autoDispose: true }));
  tiles.registerPlugin(new TileCompressionPlugin());
  tiles.registerPlugin(new TilesFadePlugin());
  tiles.registerPlugin(
    new ReorientationPlugin({
      lat: THREE.MathUtils.degToRad(opts.latDeg),
      lon: THREE.MathUtils.degToRad(opts.lonDeg),
      height: 0,
    }),
  );

  tiles.setCamera(opts.camera);
  tiles.setResolutionFromRenderer(opts.camera, opts.renderer);

  return {
    group: tiles.group,
    update: () => {
      opts.camera.updateMatrixWorld();
      tiles.update();
    },
    onResize: () => tiles.setResolutionFromRenderer(opts.camera, opts.renderer),
    attributions: () => {
      const t = tiles as unknown as { getAttributions?: (out: { value: string }[]) => void };
      if (typeof t.getAttributions !== 'function') return 'Data © Google';
      const out: { value: string }[] = [];
      t.getAttributions(out);
      return out.map((a) => a.value).join(' • ') || 'Data © Google';
    },
    dispose: () => {
      tiles.dispose();
      draco.dispose();
      ktx.dispose();
    },
  };
}
