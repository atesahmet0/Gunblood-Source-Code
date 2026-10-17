#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
JAVA_BIN="${GUNBLOOD_JAVA_BIN:-$PWD/tools/vendor/java/jdk-21.0.12.1+1-jre/Contents/Home/bin/java}"
FFDEC_JAR="${GUNBLOOD_FFDEC_JAR:-$PWD/tools/vendor/ffdec/ffdec.jar}"
mkdir -p decompiled/logs tools/vendor/home
ffdec() {
  "$JAVA_BIN" -Djava.awt.headless=true -Duser.home="$PWD/tools/vendor/home" -Xmx2g \
    -jar "$FFDEC_JAR" -cli -config parallelSpeedUp=false "$@"
}
ffdec -config autoDeobfuscate=true,autoDeobfuscateIdentifiers=true,parallelSpeedUp=false -onerror abort -timeout 120 -exportTimeout 600 \
  -format script:as,shape:svg,morphshape:svg,sprite:svg,button:svg,frame:svg \
  -export all decompiled/export archive/gunblood.swf > decompiled/logs/export-final.log 2>&1
ffdec -config autoDeobfuscate=true,autoDeobfuscateIdentifiers=true,parallelSpeedUp=false \
  -onerror abort -timeout 120 -exportTimeout 600 -format script:as \
  -export script decompiled/deobfuscated archive/gunblood.swf > decompiled/logs/deobfuscate.log 2>&1
ffdec -onerror abort -format script:pcode \
  -export script decompiled/pcode archive/gunblood.swf > decompiled/logs/pcode.log 2>&1
