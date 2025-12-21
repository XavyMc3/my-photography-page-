import { defineConfig } from 'astro/config';
import vercel from '@astrojs/vercel/serverless'; // Solo si instalaste el adaptador

export default defineConfig({
    // Si vas a usar un dominio propio o el de vercel.app
    // deja el 'base' vacío o bórralo.
    base: '/',
    output: 'server', // O 'server' si usas el adaptador
    adapter: vercel(),
});