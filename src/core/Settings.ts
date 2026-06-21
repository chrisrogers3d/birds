/**
 * Global runtime settings + platform detection + quality tiers.
 *
 * Platforms (plan): PC (dev/high) -> Quest 3 -> Pixel 10. Quality tiers gate
 * feather detail, VFX density, and Takram atmospherics (off on phone for perf).
 */

export type Platform = 'desktop' | 'quest' | 'mobile';
export type QualityTier = 'high' | 'medium' | 'low';

export interface FeatherQuality {
  /** Render every feather as an individual mesh (true) or bake coverts (false). */
  individualCoverts: boolean;
  /** Apply the per-feather flex bend under aero load. */
  flex: boolean;
}

export interface Settings {
  platform: Platform;
  tier: QualityTier;
  feathers: FeatherQuality;
  /** Takram physically-based sky/aerial-perspective (Phase 3). */
  atmosphere: boolean;
  /** Airflow / updraft VFX density 0..1 (Phase 3). */
  vfxDensity: number;
  /** Show the debug HUD overlay. */
  debugHud: boolean;
}

function detectPlatform(): Platform {
  const ua = navigator.userAgent;
  // Meta Quest browser reports "OculusBrowser" / "Quest".
  if (/OculusBrowser|Quest/i.test(ua)) return 'quest';
  // Coarse mobile check; refined later if needed.
  if (/Android|iPhone|iPad|Mobile/i.test(ua)) return 'mobile';
  return 'desktop';
}

function tierFor(platform: Platform): QualityTier {
  switch (platform) {
    case 'quest':
      return 'medium';
    case 'mobile':
      return 'low';
    default:
      return 'high';
  }
}

export function createSettings(): Settings {
  const platform = detectPlatform();
  const tier = tierFor(platform);
  return {
    platform,
    tier,
    feathers: {
      individualCoverts: tier === 'high',
      flex: tier === 'high',
    },
    atmosphere: tier !== 'low',
    vfxDensity: tier === 'high' ? 1 : tier === 'medium' ? 0.5 : 0.2,
    debugHud: import.meta.env.DEV,
  };
}
