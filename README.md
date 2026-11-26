# mathlib-lean

The checked companion of The Mathlib Handbook. This is the Lean package `MathlibHandbook`.

The handbook explains the mathematics of Mathlib to a student. Each Lean block in a book comes from a file of this package, by anchor. This package builds against the newest Mathlib `master` that is known to build, so each block in the text is checked against the latest library.

The package adds no new mathematics to Mathlib. It has examples, exercises with their solutions, and the programs that read Mathlib for the handbook.

The site is https://mathlib.tamnd.com.

## The repositories

| Repository | Content |
|---|---|
| [mathlib](https://github.com/tamnd/mathlib) | the map of Mathlib for the handbook: the volume map, the section plans, the records and the spec. It is not a fork of Mathlib |
| mathlib-lean (this repository) | the Lean package `MathlibHandbook`: the examples, the exercises, the solutions and the programs that read Mathlib |
| [mathlib-agent](https://github.com/tamnd/mathlib-agent) | `mlib`, the toolchain: the index, the sync, the coverage, the drift and the site |
| [mathlib-handbook](https://github.com/tamnd/mathlib-handbook) | the text of the volumes and `mlhb`, the builder of the PDF, EPUB and HTML books |

## Pins

| Item | Pin |
|---|---|
| Lean | `lean-toolchain`, the toolchain of the Mathlib commit |
| Mathlib | `master` in `lakefile.toml`, at the exact commit of `lake-manifest.json` |

The branch `main` follows Mathlib `master`. A branch `edition/v4.X.0` follows the stable Mathlib tag `v4.X.0` and does not move after its edition is released (spec 05.2 of tamnd/mathlib).

## Build

```
lake exe cache get
lake build
lake env lean --run scripts/Axioms.lean
```

Use `lake exe cache get` before the first build. It downloads the Mathlib build files, so a build of the package takes minutes and not hours.

## Layout

| Path | Content |
|---|---|
| `MathlibHandbook/V<NN>/C<NN>/Examples.lean` | the examples of one chapter of volume `V<NN>`, with anchors |
| `MathlibHandbook.lean` | the root; it imports each file of the default build |
| `scripts/Axioms.lean` | the axiom check: no `sorryAx` and no axiom outside `propext`, `Classical.choice` and `Quot.sound` |
| `scripts/scan.sh` | the scan for `sorry`, `admit`, `axiom`, `native_decide`, `implemented_by` and `@[extern]` |
| `scripts/modules.sh` | the check that each file is a `module` file and does not import all of Mathlib |

## Rules

1. Each file is a `module` file. It starts with `module` and uses `public import`.
2. A file imports only the Mathlib modules it needs. It never imports all of Mathlib.
3. The default build has no `sorry`, no new `axiom`, no `native_decide` and no `implemented_by`.
4. Each example has an anchor comment `-- anchor: name` and an end comment `-- end: name`.

The full rules are in spec 10 of tamnd/mathlib.

## Licence

Apache-2.0. See `LICENSE`.
