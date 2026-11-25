# Mi Garaje — app Android (Capacitor)

## Requisitos (en tu PC)
- Node.js 20 o superior
- Android Studio (incluye el SDK y JDK necesarios)

## Pasos
1. `./setup.sh`  → instala Capacitor y genera la carpeta `android/`.
2. `npx cap open android`  → se abre Android Studio. Espera a que termine Gradle.
3. Conecta tu móvil (depuración USB) y pulsa ▶ Run, o genera el APK:
   Build > Build Bundle(s)/APK(s) > Build APK(s).
   (también: `npm run apk` → android/app/build/outputs/apk/debug/app-debug.apk)

## Cada vez que cambies `www/`
`npm run sync` y vuelve a ejecutar desde Android Studio.

## Datos de la web actual
La app guarda en un almacenamiento distinto al de la web de Netlify.
En la web: menú de copias > Exportar. En la app: Importar.

## Publicar en Google Play
- Cambia `appId` en `capacitor.config.json` si quieres otro (antes de `cap add android`).
- Build > Generate Signed Bundle (AAB). Guarda el .jks: sin él no podrás actualizar la app.

## Notificaciones
Se programan en Android los próximos 30 días cada vez que abres la app o cambias datos
y funcionan con la app cerrada. En Android 12+ puede pedir "Alarmas y recordatorios";
sin ese permiso la hora puede retrasarse unos minutos. Algunos fabricantes (Xiaomi, Huawei…)
requieren desactivar el ahorro de batería para la app.

## Compilar sin PC (GitHub Actions)
1. Crea un repositorio en github.com y sube todo el contenido de esta carpeta (incluida `.github/`),
   en la rama `main` (desde el móvil: github.com > New repository > Add file > Upload files).
2. Pestaña Actions > "Compilar APK" > Run workflow (también se lanza solo con cada subida).
3. Cuando termine (3-6 min), abre la ejecución y descarga el artefacto `mi-garaje-apk` (un .zip).
4. Descomprime en el móvil, abre `app-debug.apk` y permite "instalar apps desconocidas" cuando lo pida.
