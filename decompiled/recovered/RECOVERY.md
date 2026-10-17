# Recovered gameplay ActionScript

`gameplay.as` is the readable recovery of archived Gunblood's `DefineSprite_499/frame_1/DoAction_2` action block. It contains all 46 functions and the original round-initialization/timer statements. There are no remaining JPEXS `§§` pseudo-instructions, escaped `§identifier§` tokens, or `_temp_*` spill variables in this derivative.

## What changed

The FFDec 26.3 export contained unresolved stack expressions in ten functions. Its temporary-variable spill output also misplaced several operands even where no pseudo-instruction was printed. Additional deobfuscation settings did not correct those expressions.

FFDec 18.5.0, run with AS1/2 automatic deobfuscation, recovered those expressions without stack placeholders. Its output is preserved verbatim as `gameplay.ffdec18.as` (line endings normalized only). That older export still emitted invalid identifier notation and incorrect parameter declarations for eight functions.

`tools/recover-gameplay.py` applies the following changes reproducibly:

- Repair eight Function2 parameter lists using the original AVM1 register assignments in the independently exported P-code. For example, the hit dispatcher takes registers **2, 5, 7, 3, 6, 8**, and the blood emitter takes **7, 5, 3, 4, 6**. The older decompiler had incorrectly emitted sequential register names.
- Give functions descriptive names such as `updateGameplay`, `updateCountdown`, `dispatchCharacterHit`, and `spawnBloodParticles`. These names are assigned during analysis, not recovered author names. The mapping is recorded in `recovery-map.json`.
- Name the important parameters (`target`, `projectile`, `hitX`, `hitY`, `side`, etc.) and replace illegal local-variable identifiers with valid names.
- Convert decompiler string-literal function calls into direct named calls or `eval(name)(...)` for external functions. Keep original timeline aliases, so other scripts can still find functions by their original names.
- Preserve opaque movie linkage and dynamic state keys. Guessing new names for those keys could break other timeline scripts.

The `pseudo-site-recovery.json` file maps every placeholder site in the 26.3 export to its recovered function, corresponding original bytecode definition, and test coverage.

## Validation

1. The original archived SWF SHA-1 remains `f3a4dbfed5daa55d4bc5e70645557b4865ffd801`.
2. The recovered file passes a JavaScript syntax check for its shared ES3 syntax, with no syntax-stripping substitutions.
3. FFDec 26.3's ActionScript 1/2 compiler accepted `gameplay.as` and replaced the matching action block in `validation/recompiled-check.swf`. The original SWF was not modified. FFDec labels this compiler feature experimental; this is a compilation check, not proof of a working game rebuild.
4. `tools/extract-gameplay-bytecode.py` independently extracts the original function bytes and parameter registers directly from the archived SWF. It does not use decompiled expressions. Its entry-branch traversal explicitly checks the SWF's constant opaque predicate before ignoring its unreachable dummy pool.
5. `tools/validate-gameplay.cjs` compares recovered-source execution against a small AVM1 interpreter running those original function bytes. **176 deterministic cases pass across 16 functions**, including all ten functions that had pseudo-instructions. Cases cover countdown boundaries and reset/pause behavior, recoil and animation synchronization, detached heads/hats, blood emission, damage handlers, and hit dispatch across both characters and multiple poses/heights. Nested calls are stubbed identically on both sides so argument order, state mutations, and call traces can be compared independently.
6. A source audit finds no unbound synthesized `_locN_` register variables after the parameter repairs.

Detailed results are in `differential-verification.json` and `recovery-verification.json`. Logs are retained under `decompiled/logs/`.

## Limits

The remaining functions have recovered source and compile successfully, but not every function or branch has been differentially tested. The bytecode tests use mock timeline objects and deterministic randomness; by themselves they do not validate Flash rendering, audio playback, timers under a real Flash/Ruffle runtime, the complete timeline integration, or online services. The replacement SWF was subsequently played locally in Ruffle; the tested duel, loss, win/progression, and first-bonus paths passed. See `runtime-validation/README.md` for precise coverage and limits. This is not the original `.fla` project or a claim of whole-game equivalence.

The current 26.3 exports under `decompiled/export/` remain unchanged as historical extraction evidence. Use `decompiled/recovered/gameplay.as` for this recovery.

An experiment using FFDec's global `renameInvalidIdentifiers` command produced a worse export and was rejected. That rejected derivative is excluded from this repository.

## Reproduce

Run `sh tools/recover-gameplay.sh` from the project root. It uses the locally retained portable FFDec 18.5 and 26.3 installations plus Java. To use other installation paths, set `GUNBLOOD_JAVA_BIN`, `GUNBLOOD_FFDEC18_JAR`, and `GUNBLOOD_FFDEC_JAR`. Python 3 and Node.js are also required.

Official tool downloads:

- https://github.com/jindrapetrik/jpexs-decompiler/releases/tag/version18.5.0
- https://github.com/jindrapetrik/jpexs-decompiler/releases/tag/version26.3.0

Tool binaries are excluded from this repository; use the installation paths described in the root README. Game ownership and licensing remain unchanged.
