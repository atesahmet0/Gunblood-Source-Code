# Local Ruffle runtime validation

Tested on 2026-10-17 in the Codex in-app browser on macOS, using the official `@ruffle-rs/ruffle` npm package version **0.7.1**. Package SHA-512 integrity was checked against registry metadata before extraction. The self-hosted runtime is saved under `tools/vendor/ruffle/`.

## Result

**The tested rebuilt-game paths pass.** The exact rebuilt SWF was played without adding instrumentation or changing its ActionScript for this test:

`decompiled/recovered/validation/recompiled-check.swf`

SHA-256: `eac438bc7572d1df5aa7fe6d6a6b126c14ab675a2cfb2cf68d5e5bd7b6bcbb99`

The archived original was also played as a baseline:

`archive/gunblood.swf`, SHA-1 `f3a4dbfed5daa55d4bc5e70645557b4865ffd801`.

| Test | Rebuilt result | Comparison / evidence |
|---|---|---|
| Load, menu, character selection | Pass | Same visible screens as original |
| Round 1 initialization | Pass | Characters, health, ammo and instructions render |
| Countdown and opponent AI | Pass | Opponent aims and expends ammunition |
| Uncheated damage and loss | Pass | Visible wounds, reduced player health, Game Over; `rebuilt-game-over.jpg` |
| Player aim and firing | Pass | Arm/gun aim changes, ammunition decreases, shots damage opponent |
| Hit/death effects | Pass | Wounds, blood, hat loss and enemy death observed; `rebuilt-hit-damage.jpg` |
| Winning round and score UI | Pass, controlled NOHIT test | Rebuilt score 17, original score 15; different shot counts/timing, not a deterministic score comparison. `rebuilt-round-complete.jpg`, `original-round-complete.jpg` |
| Next round | Pass | Both builds reach ROUND 2/9 START at 30% difficulty; corresponding `*-round-2.jpg` files |
| Bonus 1 initialization and animation | Pass, selected with BONUS1 | Instructions, assistant throwing bottles, bottle collisions/damage |
| Bonus 1 completion | Pass for missed-bottle path | Completion screen showed 0 bottles hit, speed bonus 4, total 4; `rebuilt-bonus-complete.jpg` |
| Browser runtime diagnostics | No captured warnings/errors in rebuilt tests | Browser console warn/error queries returned empty; on-page error log remained blank; no Ruffle panic screen |

The game's built-in **NOHIT** cheat was enabled in both builds for controlled win/progression tests, because tool interaction timing is slower than a normal player. The first rebuilt loss/damage test ran without cheats. Bonus 1 used the built-in **BONUS1** selector, without NOHIT. No scores, names, or groups were submitted.

The BONUS1 selector remains active across scene initialization, so Next Round returns to Bonus 1 in that selector test. The recovered initialization code resets game/bonus indexes from the saved level-selector cheat on each initialization. This test therefore does not establish the natural Bonus 1 → Round 3 transition. The ordinary Round 1 → Round 2 transition was verified separately in both builds.

## Verification limits

This is a runtime smoke test of the paths above, not a full equivalence proof or a complete campaign playthrough. Duels 3–9, bonus rounds 2–4, a successful bottle hit in Bonus 1, every character/pose, exact scoring/randomness/timing parity, audio fidelity, online high scores/group services, and other browsers are not verified. Bonus 1 was not compared live against the original. External navigation is disabled in the harness; the game files themselves were unchanged.

The original ActionScript recovery's 176 deterministic bytecode comparisons remain additional evidence, with their separately documented scope.

## Play locally

From the project root:

```sh
sh tools/run-local-ruffle.sh
```

Open http://127.0.0.1:8765/runtime-validation/?build=rebuilt or choose Archived original in the page. The server binds only to localhost. Set `GUNBLOOD_PORT` to choose a different port. Restart reloads the game; Pause/Resume controls Ruffle playback.

The server was left running after validation. If it has stopped, run the command above. Ruffle's JavaScript, WASM, and the game SWFs are served locally; no CDN is needed to start the player. The original game still contains its existing external service URLs, so this is not a claim that every original feature works offline.

The local test configuration enables autoplay and hides the unmute overlay, captures console warnings/errors on the page, disables SWF-to-JavaScript access, and denies external browser navigation. It does not alter SWF gameplay code.
