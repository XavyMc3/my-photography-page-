import { defineConfig } from 'astro/config';
import cloudflare from '@astrojs/cloudflare';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
    site: 'https://my-photography-page-.pages.dev', // Cambia esto si usas un dominio propio
    output: 'static',
    adapter: cloudflare(),
    integrations: [sitemap()],
});