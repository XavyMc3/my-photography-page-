import { defineConfig } from 'astro/config';

import vercel from '@astrojs/vercel';

export default defineConfig({
  site: 'https://marck028.github.io',
  base: '/Pagina-Javi/',

  // <- importante para GitHub Pages
  trailingSlash: 'always',

  adapter: vercel()
});