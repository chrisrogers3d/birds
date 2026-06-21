# Credits & Attributions

This is a non-commercial, for-fun project. Third-party work used here is credited
below and remains under its original license.

## Wing Creator (procedural feather rig technique)

- **Author:** Heather Falconsong Howard — hhoward@falconsongstudios.com
- **Source:** Texas A&M University thesis / Wing Creator Maya script
  <http://www.falconsongstudios.com/?page_id=872>
- **License:** Creative Commons Attribution-NonCommercial 3.0 Unported (CC BY-NC 3.0)
- **Use here:** We port the *algorithm* (4-locator wing chain; per-group feather
  placement; the two-control weighted-blend "fanning"; the hawk/falcon silhouette
  polynomials; the wing-fold key poses) from Maya/Python to Three.js/TypeScript.
  The original `wing_creator_maya/WingCreator.py` and `WingBase_V04.ma` are kept
  in-repo, unmodified, with their original copyright header intact.
- **Note:** Non-commercial only. For commercial use, contact the original author.

## Libraries (runtime)

- **three.js** — MIT.
- **3d-tiles-renderer** (NASA-AMMOS) — Apache-2.0 (Phase 2).
- **@mediapipe/tasks-vision** (Google) — Apache-2.0 (hand fallback).
- **@takram/three-atmosphere / three-clouds / three-geospatial** — see package
  licenses (Phase 3).

## Data / assets

- **Google Photorealistic 3D Tiles** — subject to Google Maps Platform Terms
  (Phase 2; requires an API key).
- Reference imagery (bird/wing anatomy) provided by the project owner for
  authoring only.
