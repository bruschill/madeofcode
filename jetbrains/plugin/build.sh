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

# For each variant: copy the editor color scheme verbatim, and copy the UI
# theme with editorScheme rewritten to the in-plugin resource path.
for variant in madeofcode madeofcode-protan madeofcode-tritan; do
  cp "$SRC/${variant}.icls" "$RES/theme/${variant}.icls"
  sed "s#\"editorScheme\": *\"[^\"]*\"#\"editorScheme\": \"/theme/${variant}.icls\"#" \
      "$SRC/${variant}.theme.json" > "$RES/theme/${variant}.theme.json"
done

# Jar the resources (plugin.xml + theme files).
jar --create --file "$BUILD/lib/${PLUGIN_NAME}-theme.jar" -C "$RES" .

# Zip in the standard plugin layout: <plugin>/lib/<jar>.
( cd "$BUILD" && mkdir -p "$PLUGIN_NAME" && mv lib "$PLUGIN_NAME/lib" )
( cd "$BUILD" && zip -qr "../$DIST/${PLUGIN_NAME}-theme-${VERSION}.zip" "$PLUGIN_NAME" )

echo "Done: $DIST/${PLUGIN_NAME}-theme-${VERSION}.zip"
