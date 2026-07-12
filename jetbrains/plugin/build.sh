#!/usr/bin/env bash
#
# Builds the madeofcode JetBrains theme plugin into an installable zip.
# A theme is pure resources (no compiled code), so we just package a jar
# of the resources inside the plugin zip layout — no Gradle required.
#
# Output: jetbrains/plugin/dist/madeofcode-theme-<version>.zip
# Install: Settings -> Plugins -> gear -> Install Plugin from Disk...
set -euo pipefail

cd "$(dirname "$0")"

PLUGIN_NAME="madeofcode"
VERSION="$(sed -n 's:.*<version>\(.*\)</version>.*:\1:p' src/main/resources/META-INF/plugin.xml | head -1)"
SRC="../"                 # jetbrains/ directory holding the source theme files
RES="src/main/resources"  # plugin resources
BUILD="build"
DIST="dist"

echo "Building ${PLUGIN_NAME} theme plugin v${VERSION}"

rm -rf "$BUILD" "$DIST"
mkdir -p "$RES/theme" "$BUILD/lib" "$DIST"

# Copy the editor color scheme verbatim.
cp "$SRC/madeofcode.icls" "$RES/theme/madeofcode.icls"

# Copy the UI theme, pointing editorScheme at the in-plugin resource path.
sed 's#"editorScheme": *"[^"]*"#"editorScheme": "/theme/madeofcode.icls"#' \
    "$SRC/madeofcode.theme.json" > "$RES/theme/madeofcode.theme.json"

# Jar the resources (plugin.xml + theme files).
jar --create --file "$BUILD/lib/${PLUGIN_NAME}-theme.jar" -C "$RES" .

# Zip in the standard plugin layout: <plugin>/lib/<jar>.
( cd "$BUILD" && mkdir -p "$PLUGIN_NAME" && mv lib "$PLUGIN_NAME/lib" )
( cd "$BUILD" && zip -qr "../$DIST/${PLUGIN_NAME}-theme-${VERSION}.zip" "$PLUGIN_NAME" )

echo "Done: $DIST/${PLUGIN_NAME}-theme-${VERSION}.zip"
