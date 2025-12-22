# 🚀 Guía de Despliegue: GitHub + Vercel

Esta guía detalla los pasos para publicar tu portafolio y cómo mantenerlo actualizado.

## 1. Comandos del Proyecto

Si estás trabajando de forma local, estos son los comandos principales:

```bash
# Instalar las librerías necesarias (solo la primera vez)
npm install

# Ver el sitio en tu computadora (servidor de desarrollo)
npm run dev

# Generar los archivos finales para internet (opcional, Vercel lo hace solo)
npm run build

# Probar la versión final antes de subirla
npm run preview
```

---

## 2. Configuración Inicial (Solo 1 vez)

### En GitHub
1. Crea un repositorio nuevo en tu cuenta de GitHub.
2. Sube tu código actual siguiendo estos comandos en la terminal:
   ```bash
   git add .
   git commit -m "Preparación para despliegue en Vercel"
   git branch -M main
   git remote add origin https://github.com/TU_USUARIO/TU_REPOSITORIO.git
   git push -u origin main
   ```

### En Vercel
1. Ve a [vercel.com](https://vercel.com) e inicia sesión con GitHub.
2. Haz clic en **"Add New"** -> **"Project"**.
3. Importa el repositorio de tu portafolio.
4. Vercel detectará que es un proyecto **Astro**. Deja todo por defecto:
   - **Framework Preset:** Astro
   - **Build Command:** `npm run build`
   - **Output Directory:** `dist`
5. Haz clic en **"Deploy"**.

---

## 3. Cómo Actualizar el Sitio

Una vez configurado, **no necesitas volver a entrar a Vercel**. Cada vez que hagas un cambio en tu código local, solo haz esto:

```bash
# 1. Guarda todos tus cambios
git add .

# 2. Ponle un nombre a tu cambio
git commit -m "Añadidas nuevas fotos al portafolio"

# 3. Súbelos a GitHub
git push origin main
```

**¡Listo!** Vercel detectará automáticamente el `push` y en menos de un minuto tu sitio se actualizará solo en internet.

---

## 4. Recordatorio: Añadir Fotos
Para que tus nuevas fotos se vean en el sitio desplegado:
1. Copia las imágenes a `public/images/portfolio/`.
2. Edita `src/pages/portfolio.astro` para agregar los nuevos IDs.
3. Sigue los pasos de la sección de **"Cómo Actualizar el Sitio"** (arriba).

---
> [!IMPORTANT]
> Nunca borres el archivo `astro.config.mjs` ni el `package.json`, ya que son los que le dicen a Vercel cómo debe construir tu sitio.
