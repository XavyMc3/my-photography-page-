# Portafolio de Fotografía - Xavy Photo

Sitio web minimalista en blanco y negro para mostrar portafolio fotográfico profesional.

## 🚀 Comandos del Proyecto

```bash
# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm run dev

# Compilar para producción
npm run build

# Vista previa de producción
npm run preview
```

El servidor de desarrollo se ejecuta en `http://localhost:4321`

---

## 📸 Cómo Añadir Nuevas Imágenes

### 1. Imágenes del Carrusel (Página de Inicio)

El carrusel muestra 3 imágenes rotativas en la página principal.

**Pasos:**

1. **Guardar las imágenes:**
   - Coloca tus imágenes en la carpeta: `public/images/portfolio/`
   - Nombra las imágenes como: `1.png`, `2.png`, `3.png`
   - Formato recomendado: PNG o JPG
   - Resolución recomendada: Mínimo 1920x1080px

2. **Actualizar los títulos (opcional):**
   - Abre el archivo: `src/pages/index.astro`
   - Busca la sección que dice `// Carousel images - only 3`
   - Modifica los títulos según tus fotos:

   ```javascript
   const carouselImages = [
     { id: 1, title: 'Tu Título Aquí', src: '/images/portfolio/1.png' },
     { id: 2, title: 'Otro Título', src: '/images/portfolio/2.png' },
     { id: 3, title: 'Tercer Título', src: '/images/portfolio/3.png' },
   ];
   ```

**Para añadir más imágenes al carrusel:**

1. Agrega más objetos al array `carouselImages`
2. Actualiza el número total en el script:
   ```javascript
   const totalSlides = 3; // Cambia este número
   ```

---

### 2. Imágenes del Portafolio (Página de Galería)

La galería muestra todas tus fotos en formato grid.

**Pasos:**

1. **Guardar las imágenes:**
   - Coloca tus imágenes en: `public/images/portfolio/`
   - Nombra las imágenes: `1.png`, `2.png`, `3.png`, `4.png`, etc.
   - Usa números consecutivos

2. **Actualizar la galería:**
   - Abre el archivo: `src/pages/portfolio.astro`
   - Busca el array `images` (línea ~6)
   - Verás que ya he dejado **20 filas preparadas** (IDs del 7 al 26) para que solo tengas que editarlas.

   ```javascript
   const images = [
     { id: 1, title: 'Título Existente', category: 'Categoría' },
     // ...
     { id: 7, title: 'Imagen 7', category: 'Categoría' }, // Edita estas líneas
     { id: 8, title: 'Imagen 8', category: 'Categoría' },
   ];
   ```

   **Cómo editar:**
   1. **id**: Debe coincidir con el nombre de tu archivo en `public/images/portfolio/` (ej: si tu archivo es `vacaciones.jpg`, el id sería `vacaciones`).
   2. **title**: El nombre que quieres que aparezca cuando se abra la foto en grande.
   3. **category**: La categoría para el filtrado (ej: 'Retrato', 'Naturaleza').

---

### 💡 Truco para subir 20 fotos rápido:
1. Nombra tus fotos del 7 al 26 (ej: `7.png`, `8.png`, etc.) y súbelas a la carpeta.
2. Como ya dejé las filas del 7 al 26 creadas en el código, ¡aparecerán automáticamente! Solo tendrías que cambiarles el nombre del título y categoría si quieres.


**Importante:**
- El `id` debe coincidir con el nombre del archivo (sin extensión)
- `title` y `category` son solo para referencia interna (no se muestran en la galería)

---

### 3. Foto de Perfil

La foto de perfil aparece en la sección "Sobre Mi Trabajo".

**Pasos:**

1. **Guardar la imagen:**
   - Coloca tu foto de perfil en la carpeta: `public/`
   - Nombre del archivo: `PerfilJavi.jpeg`
   - Formato: JPG o PNG
   - Resolución recomendada: 800x800px (cuadrada)

2. **Cambiar el nombre (opcional):**
   - Si quieres usar otro nombre de archivo, edita: `src/pages/index.astro`
   - Busca la línea: `<img src="/PerfilJavi.jpeg"`
   - Cambia por tu nombre de archivo: `<img src="/TuNombre.jpeg"`

---

## 🎨 Estructura de Carpetas

```
prueba-javi/
├── public/
│   ├── images/
│   │   └── portfolio/      # Imágenes del carrusel y galería
│   │       ├── 1.png
│   │       ├── 2.png
│   │       ├── 3.png
│   │       └── ...
│   └── PerfilJavi.jpeg     # Foto de perfil
├── src/
│   ├── layouts/
│   │   └── Layout.astro    # Layout principal con navegación
│   ├── pages/
│   │   ├── index.astro     # Página de inicio (carrusel + sobre mí)
│   │   ├── portfolio.astro # Página de galería
│   │   └── contact.astro   # Página de contacto
│   └── styles/
│       └── global.css      # Estilos globales
└── README.md
```

---

## 🎯 Características del Sitio

- ✅ Carrusel automático (cambia cada 3 segundos)
- ✅ Galería de imágenes con lightbox
- ✅ Modo claro/oscuro
- ✅ Diseño responsive (móvil, tablet, desktop)
- ✅ Formulario de contacto con WhatsApp
- ✅ Paleta de colores: Gris (#6c757d), Negro (#000000), Blanco (#FFFFFF)

---

## 📞 Información de Contacto

Para modificar la información de contacto:

1. Abre: `src/pages/contact.astro`
2. Busca la sección "Información de Contacto"
3. Actualiza:
   - Número de WhatsApp (línea ~22)
   - Email (línea ~18)
   - Ubicación (línea ~26)

---

## 🛠️ Tecnologías Utilizadas

- **Astro** - Framework web
- **HTML/CSS** - Estructura y estilos
- **JavaScript** - Interactividad
- **Google Fonts** - Tipografías (Playfair Display, Inter)

---

## 📝 Notas Importantes

- Las imágenes en `public/` son accesibles directamente desde la raíz del sitio
- Usa formatos web optimizados (WebP, PNG, JPG)
- Mantén las imágenes con buena resolución pero optimizadas en tamaño
- El carrusel funciona mejor con imágenes horizontales (landscape)
- La galería se adapta automáticamente al número de imágenes

---

## 🚨 Solución de Problemas

**Las imágenes no se muestran:**
- Verifica que estén en la carpeta `public/images/portfolio/`
- Asegúrate de que los nombres coincidan exactamente (mayúsculas/minúsculas)
- Recarga el navegador con Ctrl+F5 (forzar recarga)

**El carrusel no funciona:**
- Verifica que el número de `totalSlides` coincida con las imágenes
- Asegúrate de que las imágenes existan en la carpeta

**Cambios no se reflejan:**
- El servidor de desarrollo debe estar corriendo (`npm run dev`)
- Guarda todos los archivos modificados
- Espera a que Astro recompile (verás un mensaje en la terminal)
