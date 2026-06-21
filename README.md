# Birds — WebXR bird-flight simulator

Soar a raven / red-tailed hawk by **shaping its wings with your hands**. Bring
your fingers in and the wings fold and the bird dives; spread and tilt your hands
to ride ridge lift along sea cliffs. Vanilla **Three.js + Vite + TypeScript**
(no React). Hand tracking via webcam (MediaPipe) now, WebXR/Quest hand input
next. Non-commercial, for-fun / show-off project.

## Status

| Phase | What works |
|---|---|
| **1 — Bird & hand control** | 4-bone wing rig (shoulder→elbow→wrist→tip), **procedural feathers** (primaries/secondaries/coverts/alula + tail fan) ported from the Wing Creator silhouette, full hand→wing mapping (fold / AoA / bank / fingertip fan / alula), keyboard **mock** + **webcam (MediaPipe)** sources with on-video tracking overlay |
| **2 — Terrain & updrafts** | Procedural coastal **cliff** + analytic **ridge lift** (`w ∝ wind·∇slope`), arcade **flight model** (gravity/drag/glide-sink, banked turns), chase camera — you can **soar**: ride lift to climb, fold to dive |
| **3 — VFX & sky** | GPU **updraft columns** showing where the lift is. Google Photorealistic 3D Tiles wired in (opt-in). Takram atmospherics + wing-airflow VFX still to come |

## Requirements

- **Node ≥ 22.12** (or 20.19+), npm 10+.

## Run

```bash
npm install
npm run dev            # http://localhost:5173
npm run dev:5174       # http://localhost:5174 (strict port)
npm run dev:https      # https on LAN IP — for Quest 3 / Pixel 10 testing
npm run build          # type-check + production build
```

- **`?tiles=1`** (e.g. `http://localhost:5174/?tiles=1`) loads **Google Photorealistic
  3D Tiles** over the Presidio bluffs instead of the procedural cliff. Needs
  `VITE_GOOGLE_TILES_KEY` in `.env.local` (gitignored). Requires a real browser
  (network + GPU/KTX2). Procedural terrain is the default.

WebXR needs a secure context; `localhost` is fine, otherwise use `dev:https`.

## Controls

**Webcam (real hands):** click **🎥 Enable webcam hands**, grant the camera.
The preview (bottom-right) overlays the tracked skeleton (right hand pink, left
blue). Curl fists → fold/dive; open → spread/soar; tilt hands fwd/back → pitch;
roll both → bank/turn; thumbs out → alula.

**Keyboard (mock, for dev):**

| Key | Action |
|---|---|
| `W` / `S` | wings open / fold |
| `A` / `D` | primary-tip fan |
| `↑` / `↓` | pitch (angle of attack) |
| `←` / `→` | bank / turn |
| `Space` | deploy alula |
| `H` | toggle debug HUD |

HUD shows hand features, airspeed, altitude (+AGL), and current lift (m/s).
Tuning is live from the console: `window.TUNE.curlHi = 0.5`, etc.

## Architecture

```
src/
  core/      Engine (renderer + XR), Loop (fixed-step), FollowCamera, Settings (quality tiers)
  input/     HandSource interface + HandState; MockHandSource, MediaPipeHandSource, HandFeatures
  bird/      WingRig (bones), FeatherSystem + featherShapes (procedural feathers), TailFan,
             Bird (assembly), HandToWing (mapping)
  flight/    FlightModel (arcade glider)
  terrain/   Heightfield, WindField (ridge lift), Terrain (mesh), GoogleTiles (opt-in)
  vfx/       UpdraftVFX (GPU lift columns)
```

Input is abstracted behind `HandSource` → a normalized `HandState`, so mock /
webcam / (future) WebXR all drive the same wing mapping. Terrain exposes a
`Heightfield`/`WindField` interface that's source-agnostic, so Google tiles can
later feed the same flight/lift sampling.

## How soaring works

`WindField` deflects a steady onshore wind up the terrain slope
(`w_up ∝ wind·∇h`, decaying with height above ground). The `FlightModel` adds
that vertical air speed to the bird and subtracts a glide sink that grows as the
wings fold — so staying in the lift band over the cliff lets you climb, and
folding to dive trades height for speed. The `UpdraftVFX` columns mark the band.

## Reference assets

`wing_creator_maya/` holds the original Wing Creator script + `.ma`. We parsed the
`.ma` and rebuilt the authentic feather meshes into
`public/models/hawk_feathers.glb` (a drop-in for the procedural cards).

## Roadmap

- Takram `@takram/three-atmosphere` sky + aerial perspective (toggleable for perf)
- Wing-airflow / tip-vortex VFX
- WebXR (Quest 3) native hand source
- Real-terrain lift: raycast the Google tiles into the Heightfield
- Hawk feather textures / barred underwing; swap in `hawk_feathers.glb`

## Credits & license

Procedural wing/feather **technique** ported from the **Wing Creator** Maya rig
by **Heather Falconsong Howard** (Texas A&M), released under **CC BY-NC 3.0** —
see [CREDITS.md](CREDITS.md). This project credits the author and is
**non-commercial**. Google Photorealistic 3D Tiles are subject to Google Maps
Platform terms.
