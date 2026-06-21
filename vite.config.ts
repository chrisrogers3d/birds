import { defineConfig } from 'vite';

// WebXR requires a secure context (https) on real devices (Quest 3 / Pixel 10)
// reached over the LAN. `localhost` is treated as secure, so plain http is fine
// for desktop dev. Run `npm run dev:https` (sets VITE_HTTPS=1) when testing on a
// headset/phone via your machine's LAN IP. WebStorm can also just run these npm
// scripts from the package.json gutter.
const useHttps = process.env.VITE_HTTPS === '1';

export default defineConfig(async () => {
  const plugins = [];
  if (useHttps) {
    const basicSsl = (await import('@vitejs/plugin-basic-ssl')).default;
    plugins.push(basicSsl());
  }
  return {
    plugins,
    server: {
      host: true, // expose on LAN so Quest 3 / Pixel 10 can connect
      port: 5173,
    },
    build: {
      target: 'es2022',
      sourcemap: true,
    },
  };
});
