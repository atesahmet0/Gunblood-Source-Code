#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
JAVA_BIN="${GUNBLOOD_JAVA_BIN:-$PWD/tools/vendor/java/jdk-21.0.12.1+1-jre/Contents/Home/bin/java}"
FFDEC18_JAR="${GUNBLOOD_FFDEC18_JAR:-$PWD/tools/vendor/ffdec18/ffdec.jar}"
FFDEC_JAR="${GUNBLOOD_FFDEC_JAR:-$PWD/tools/vendor/ffdec/ffdec.jar}"
mkdir -p decompiled/logs decompiled/recovered/validation tools/vendor/home18 tools/vendor/home
"$JAVA_BIN" -Djava.awt.headless=true -Duser.home="$PWD/tools/vendor/home18" -Xmx2g -Xss16m \
 -jar "$FFDEC18_JAR" -cli -config autoDeobfuscate=true,parallelSpeedUp=false -onerror abort \
 -timeout 120 -exportTimeout 300 -format script:as -export script decompiled/recovery-legacy archive/gunblood.swf \
 > decompiled/logs/recovery-legacy.log 2>&1
python3 tools/recover-gameplay.py
python3 tools/extract-gameplay-bytecode.py
node tools/validate-gameplay.cjs
"$JAVA_BIN" -Djava.awt.headless=true -Duser.home="$PWD/tools/vendor/home" -Xmx2g -Xss16m \
 -jar "$FFDEC_JAR" -cli -replace archive/gunblood.swf decompiled/recovered/validation/recompiled-check.swf \
 '/DefineSprite_499/frame_1/DoAction[2]' decompiled/recovered/gameplay.as > decompiled/logs/recovery-compile.log 2>&1
