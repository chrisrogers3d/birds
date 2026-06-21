/**
 * Bootstrap. Phase 1 grey-box: a lit scene with a ground grid and a placeholder
 * bird so we can verify rendering + the loop + XR entry before the rig lands.
 */
import * as THREE from 'three';
import { Engine } from './core/Engine';
import { createSettings } from './core/Settings';
import { MockHandSource } from './input/MockHandSource';
import { MediaPipeHandSource } from './input/MediaPipeHandSource';
import { WebXRHandSource } from './input/WebXRHandSource';
import type { HandSource } from './input/HandSource';
import { TUNE } from './input/HandFeatures';
import { Hud } from './util/Hud';
import { Bird } from './bird/Bird';
import { loadFeatherGeometries } from './bird/loadFeatherGeometries';
import { applyHandToWing } from './bird/HandToWing';
import { loadBirdModel } from './bird/loadBirdModel';
import { PoseRig } from './bird/PoseRig';
import { FlightModel, type FlightInput } from './flight/FlightModel';
import { FollowCamera } from './core/FollowCamera';
import type { HandState } from './input/HandSource';
import { Heightfield } from './terrain/Heightfield';
import { WindField } from './terrain/WindField';
import { buildTerrain } from './terrain/Terrain';
import { UpdraftVFX } from './vfx/UpdraftVFX';
import { WingAirflowVFX } from './vfx/WingAirflowVFX';
import { createSkyDome } from './sky/SkyDome';

const container = document.getElementById('app')!;
const settings = createSettings();
const engine = new Engine(container, settings);
const { scene } = engine;

// Distance haze blends terrain into the horizon (color matches the sky dome).
scene.fog = new THREE.Fog(0xcfdcea, 400, 4500);

// --- Lighting (cheap default; Takram atmosphere is the high-end toggle) ---
const hemi = new THREE.HemisphereLight(0xbfdfff, 0x586048, 1.0);
scene.add(hemi);
const sun = new THREE.DirectionalLight(0xfff2e0, 2.0);
sun.position.set(40, 80, 20);
scene.add(sun);

// --- Sky dome (gradient + sun); follows the camera so it's always around you ---
const sky = createSkyDome({ sunDirection: sun.position.clone() });
scene.add(sky);

// --- Terrain (procedural coastal cliff) + wind field ---
const heightfield = new Heightfield();
const windField = new WindField(heightfield);
const terrain = buildTerrain(heightfield);
scene.add(terrain);

// --- Updraft VFX (rising columns where ridge lift is strong) ---
const updraftVFX = settings.vfxDensity > 0 ? new UpdraftVFX(heightfield, windField, { density: settings.vfxDensity }) : null;
if (updraftVFX) scene.add(updraftVFX.object);

// --- Optional: Google Photorealistic 3D Tiles (?tiles=1, needs key) ---
// Real terrain over Baker Beach / the Presidio bluffs. Opt-in; procedural cliff
// stays the default. Dynamically imported so it doesn't bloat the base bundle.
const tilesKey = import.meta.env.VITE_GOOGLE_TILES_KEY as string | undefined;
let googleTiles: import('./terrain/GoogleTiles').GoogleTilesHandle | null = null;
if (new URLSearchParams(location.search).has('tiles') && tilesKey) {
  try {
    const { createGoogleTiles } = await import('./terrain/GoogleTiles');
    googleTiles = createGoogleTiles({
      apiKey: tilesKey,
      camera: engine.camera,
      renderer: engine.renderer,
      latDeg: 37.7936, // Baker Beach / Presidio bluffs
      lonDeg: -122.4836,
    });
    scene.add(googleTiles.group);
    terrain.visible = false; // hide the procedural stand-in
    const credit = document.createElement('div');
    Object.assign(credit.style, {
      position: 'fixed', bottom: '4px', left: '8px', zIndex: '8',
      font: '11px system-ui, sans-serif', color: '#dfe8f5',
      textShadow: '0 1px 2px #000', pointerEvents: 'none',
    } satisfies Partial<CSSStyleDeclaration>);
    credit.textContent = 'Data © Google';
    document.body.appendChild(credit);
    window.addEventListener('resize', () => googleTiles?.onResize());
    setInterval(() => { if (googleTiles) credit.textContent = googleTiles.attributions(); }, 1000);
  } catch (err) {
    console.error('[birds] Google tiles failed to load:', err);
  }
}

// --- Bird with the wing rig + feathers ---
// Use the authentic feather meshes (rebuilt from the .ma); fall back to the
// procedural cards if the glb fails to load.
let featherGeometries;
try {
  featherGeometries = await loadFeatherGeometries('/models/hawk_feathers.glb');
} catch (err) {
  console.warn('[birds] feather glb failed, using procedural cards:', err);
}
// Hand-animated fold rig (Blender). Falls back to the procedural WingRig fold.
let rig;
try {
  const { GLTFLoader } = await import('three/addons/loaders/GLTFLoader.js');
  const gltf = await new GLTFLoader().loadAsync('/models/hawk_rig.glb');
  if (gltf.animations.length) rig = { scene: gltf.scene, clip: gltf.animations[0] };
} catch (err) {
  console.warn('[birds] fold rig failed, using procedural fold:', err);
}
const bird = new Bird({ feathers: true, debugSkeleton: false, featherGeometries, rig });
scene.add(bird.group);

// --- v2 probe: load the Maya WingCreator model + classify feathers ---
try {
  const model = await loadBirdModel('/models/wings1.fbx');
  const poseRig = new PoseRig(model.root);
  const box = new THREE.Box3().setFromObject(model.root);
  const size = box.getSize(new THREE.Vector3());
  // eslint-disable-next-line no-console
  console.log('[birds][v2] PoseRig feathers:', poseRig.feathers.length, poseRig.summary());
  // eslint-disable-next-line no-console
  console.log('[birds][v2] clips:', model.animations.map((a) => `${a.name}(${a.duration.toFixed(2)}s)`));
  // eslint-disable-next-line no-console
  console.log('[birds][v2] model size (units):', size.toArray().map((n) => +n.toFixed(1)));
  // Register the sample clip as a test pose (sampled at its end frame) to verify blending.
  if (model.animations[0]) poseRig.addPose('test', model.animations[0], model.animations[0].duration);
  (window as unknown as { poseRig: PoseRig }).poseRig = poseRig;
  (window as unknown as { __clip: THREE.AnimationClip }).__clip = model.animations[0];
} catch (err) {
  console.error('[birds][v2] model load failed:', err);
}

// Airflow streaming over the wings (child of the bird, so it moves with it).
const wingAirflow = settings.vfxDensity > 0 ? new WingAirflowVFX({ density: settings.vfxDensity }) : null;
if (wingAirflow) bird.group.add(wingAirflow.object);

// --- Flight ---
const flight = new FlightModel();
// Start out over the cliff edge, flying +X along the ridge so the onshore wind
// gives ridge lift to soar on.
flight.position.set(-300, 95, -5);
flight.yaw = -Math.PI / 2; // heading +X
flight.speed = 18;
const followCam = new FollowCamera();

/** Aggregate both hands into a single flight input. */
function flightInputFrom(state: HandState): FlightInput {
  const l = state.left.features;
  const r = state.right.features;
  return {
    aoa: 0.5 * (l.pitch + r.pitch),
    bank: 0.5 * (l.roll + r.roll),
    extension: 1 - 0.5 * (l.curl + r.curl),
  };
}

// --- Hand input + debug HUD ---
// Start with the keyboard mock; swap to webcam (MediaPipe) on user request.
let activeSource: HandSource = new MockHandSource();
const hud = new Hud(settings.debugHud);
await activeSource.init();
(window as unknown as { hands: HandSource }).hands = activeSource;

const camBtn = document.createElement('button');
camBtn.textContent = '🎥 Enable webcam hands';
Object.assign(camBtn.style, {
  position: 'fixed',
  top: '8px',
  right: '8px',
  zIndex: '11',
  padding: '8px 12px',
  font: '13px ui-sans-serif, system-ui, sans-serif',
  color: '#cfe6ff',
  background: 'rgba(20,30,45,0.85)',
  border: '1px solid rgba(120,160,210,0.4)',
  borderRadius: '6px',
  cursor: 'pointer',
} satisfies Partial<CSSStyleDeclaration>);
camBtn.addEventListener('click', async () => {
  camBtn.disabled = true;
  camBtn.textContent = '🎥 starting…';
  try {
    const mp = new MediaPipeHandSource({ preview: true });
    await mp.init();
    const old = activeSource;
    activeSource = mp;
    (window as unknown as { hands: HandSource }).hands = mp;
    old.dispose();
    camBtn.textContent = '🎥 webcam active';
  } catch (err) {
    console.error('[birds] webcam hands failed:', err);
    camBtn.textContent = '🎥 webcam failed — using keyboard';
    camBtn.disabled = false;
  }
});
document.body.appendChild(camBtn);

// On entering an immersive session, switch to native WebXR hand tracking; restore
// the previous (mock/webcam) source on exit.
let preXrSource: HandSource | null = null;
engine.renderer.xr.addEventListener('sessionstart', () => {
  preXrSource = activeSource;
  const xr = new WebXRHandSource();
  void xr.init();
  activeSource = xr;
  (window as unknown as { hands: HandSource }).hands = xr;
});
engine.renderer.xr.addEventListener('sessionend', () => {
  if (preXrSource) {
    activeSource = preXrSource;
    (window as unknown as { hands: HandSource }).hands = preXrSource;
    preXrSource = null;
  }
});

// Flight integrates at the fixed timestep for stability.
const START = { pos: new THREE.Vector3(-300, 95, -5), yaw: -Math.PI / 2, speed: 18 };
function respawn(): void {
  flight.position.copy(START.pos);
  flight.yaw = START.yaw;
  flight.speed = START.speed;
  flight.pitch = 0;
  flight.roll = 0;
}
let lastLift = 0;
let respawns = 0;
engine.loop.onFixed((fdt) => {
  const input = flightInputFrom(activeSource.state);
  const p = flight.position;
  lastLift = windField.liftAt(p.x, p.y, p.z);
  const groundY = heightfield.height(p.x, p.z);
  flight.update(fdt, input, lastLift, groundY);

  // Soft respawn: landed (touched down) or flew past the terrain bounds.
  const agl = p.y - groundY;
  const farXZ = Math.hypot(p.x, p.z);
  if (agl < 2 || farXZ > 1250) {
    respawn();
    respawns++;
  }
});

let elapsed = 0;
engine.loop.onFrame((dt) => {
  elapsed += dt;
  sky.position.copy(engine.camera.position); // keep the dome centered on the viewer
  updraftVFX?.update(elapsed);
  googleTiles?.update();
  if (wingAirflow) {
    const ext = 0.5 * (bird.extL + bird.extR);
    // Visible from normal soaring speed (~8) and saturating in a fast dive (~18).
    const sp01 = THREE.MathUtils.clamp((flight.speed - 4) / 12, 0.12, 1);
    wingAirflow.update(elapsed, sp01, ext);
  }
  const session = engine.renderer.xr.getSession();
  activeSource.update({
    dt,
    frame: engine.currentXRFrame,
    referenceSpace: engine.renderer.xr.getReferenceSpace(),
    camera: engine.camera,
  });
  // Full hand -> wing mapping: each hand shapes its wing (fold/AoA/bank/fan/alula).
  applyHandToWing(bird, activeSource.state);
  // Place the bird from the flight state; chase it (flat mode only).
  flight.applyTo(bird.group);
  if (!session) followCam.update(dt, bird.group, engine.camera);

  const agl = flight.position.y - heightfield.height(flight.position.x, flight.position.z);
  hud.set('src', activeSource.name);
  hud.set('plat', `${settings.platform} / ${settings.tier}`);
  hud.set('spd', `${flight.speed.toFixed(1)} m/s`);
  hud.set('alt', `${flight.position.y.toFixed(0)} m (agl ${agl.toFixed(0)})`);
  hud.set('lift', `${lastLift >= 0 ? '+' : ''}${lastLift.toFixed(1)} m/s`);
  if (respawns > 0) hud.set('resets', `${respawns}`);
  hud.update(activeSource.state);
});

engine.start();

// Expose for quick console poking during dev.
(window as unknown as { engine: Engine; bird: Bird; flight: FlightModel }).engine = engine;
(window as unknown as { engine: Engine; bird: Bird; flight: FlightModel }).bird = bird;
(window as unknown as { engine: Engine; bird: Bird; flight: FlightModel }).flight = flight;
// window.hands is set above and updated when the webcam source is enabled.
// Live-tunable from the console, e.g. window.TUNE.curlHi = 0.5
(window as unknown as { TUNE: typeof TUNE }).TUNE = TUNE;

// eslint-disable-next-line no-console
console.log(`[birds] platform=${settings.platform} tier=${settings.tier}`);
