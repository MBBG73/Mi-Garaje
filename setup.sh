#!/usr/bin/env bash
# Ejecuta esto UNA vez en tu PC (necesita Node 20+ y conexión a internet).
set -e
npm install @capacitor/core @capacitor/android @capacitor/local-notifications @capacitor/filesystem @capacitor/share
npm install -D @capacitor/cli
npx cap add android
npx cap sync android
echo "Listo. Abre el proyecto con:  npx cap open android"
