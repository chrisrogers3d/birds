/**
 * Lightweight DOM debug overlay. Toggle with `H`. Shows hand features and any
 * registered key/value lines (wing state, aero forces, wind — added later).
 */
import type { HandState } from '../input/HandSource';

export class Hud {
  private readonly el: HTMLDivElement;
  private visible: boolean;
  private readonly extra = new Map<string, string>();

  constructor(initiallyVisible = true) {
    this.visible = initiallyVisible;
    this.el = document.createElement('div');
    Object.assign(this.el.style, {
      position: 'fixed',
      top: '8px',
      left: '8px',
      padding: '8px 10px',
      font: '11px/1.45 ui-monospace, Menlo, Consolas, monospace',
      color: '#cfe6ff',
      background: 'rgba(10,16,24,0.72)',
      border: '1px solid rgba(120,160,210,0.25)',
      borderRadius: '6px',
      whiteSpace: 'pre',
      pointerEvents: 'none',
      zIndex: '10',
      maxWidth: '46ch',
    } satisfies Partial<CSSStyleDeclaration>);
    document.body.appendChild(this.el);
    this.el.style.display = this.visible ? 'block' : 'none';

    window.addEventListener('keydown', (e) => {
      if (e.code === 'KeyH') this.toggle();
    });
  }

  toggle(): void {
    this.visible = !this.visible;
    this.el.style.display = this.visible ? 'block' : 'none';
  }

  /** Add or update an arbitrary line shown under the hands block. */
  set(key: string, value: string): void {
    this.extra.set(key, value);
  }

  update(hands: HandState): void {
    if (!this.visible) return;
    this.el.textContent =
      'controls: W/S fold  A/D spread  ↑/↓ pitch  ←/→ bank  Space alula  H hud\n' +
      hand('L', hands.left) +
      hand('R', hands.right) +
      [...this.extra.entries()].map(([k, v]) => `${k.padEnd(8)} ${v}`).join('\n');
  }
}

function bar(v: number, lo = 0, hi = 1): string {
  const t = (v - lo) / (hi - lo);
  const n = Math.round(Math.max(0, Math.min(1, t)) * 10);
  return '█'.repeat(n) + '·'.repeat(10 - n);
}

function hand(label: string, p: { present: boolean; features: HandState['left']['features'] }): string {
  if (!p.present) return `${label}: (absent)\n`;
  const f = p.features;
  return (
    `${label} curl  ${bar(f.curl)} ${f.curl.toFixed(2)}   ` +
    `spread ${bar(f.spread)} ${f.spread.toFixed(2)}\n` +
    `${label} pitch ${bar(f.pitch, -1, 1)} ${f.pitch.toFixed(2)}   ` +
    `roll   ${bar(f.roll, -1, 1)} ${f.roll.toFixed(2)}   ` +
    `alula ${f.thumb.toFixed(2)}\n`
  );
}
