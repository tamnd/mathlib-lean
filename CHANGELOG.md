# Changelog

Each release has a section. The newest release is first.

## Unreleased

## v0.6.3 - 2026-11-27

## v0.6.2 - 2026-11-27

## v0.6.1 - 2026-11-27

## v0.6.0 - 2026-11-27

## v0.5.1 - 2026-11-27

## v0.5.0 - 2026-11-27

## v0.4.1 - 2026-11-27

## v0.4.0 - 2026-11-27

## v0.3.0 - 2026-11-27

### Added

- `scripts/Index.lean` writes a third file, `proofs.jsonl`. Each line gives a theorem and the theorems of Mathlib that its proof uses, as the field `proofUses` of spec 09.3. Rule 2 of spec 04.4 needs these uses. Before, the index had only the uses of the types and of the values of definitions, so a theorem almost never had five uses.
- The examples, exercises and solutions of V05 Groups, in eight chapters: monoids and groups, homomorphisms, subgroups, cosets and Lagrange, quotients, group actions, permutations and the Sylow theorems.
- The examples, exercises and solutions of V02 Numbers, V03 Sets, finite structures and big operators, and V04 Order and lattices, in eight chapters each.

## v0.2.0 - 2026-11-27

### Added

- SubVerso is a dependency. `scripts/highlight.sh` writes the highlighted Lean of each file as JSON, and CI puts the tarball on the release `highlighted` (spec 12.5).
- The examples, exercises and solutions of V00, V01 and V34 (spec 10). `Examples.lean` and `Solutions.lean` are in the default build. `Exercises.lean` has `sorry` and is in the separate library `Exercises`, so the default build stays free of escape hatches.
- `scripts/Exercises.lean` checks that each exercise has a solution with the same name and the same statement. CI builds the library `Exercises` and runs this check.

## v0.1.1 - 2026-11-26

## v0.1.0 - 2026-11-26

## v0.0.2 - 2026-11-26

### Added

- The workflow bump. Every 6 hours it moves Mathlib to the newest commit of master, builds the package and checks the axioms. When the build passes, it opens or updates the pull request on the branch `bump/master`. When the build fails, it opens or updates an issue with the range of Mathlib commits.

### Fixed

- The bump workflow did not push the branch, because the token in the secret `MATHLIB_RELEASE_TOKEN` is not valid. The workflow now uses `GITHUB_TOKEN`. GitHub holds the build and check runs of a pull request that github-actions opens, so the workflow approves the runs of the head commit.

### Removed

- The index workflow. It is now in tamnd/mathlib, so that it can upload to the release `index` with `GITHUB_TOKEN` and needs no personal token.

## v0.0.1 - 2026-11-26

### Added

- The Lake package `MathlibHandbook` on Mathlib `master` at commit 4472534b60, with Lean v4.37.0-rc1.
- The first examples, in `MathlibHandbook/V00/C01/Examples.lean`.
- The axiom check `scripts/Axioms.lean`, the scan `scripts/scan.sh` and the module check `scripts/modules.sh`.
- The workflows build, check and scorecard.
- The index program `scripts/Index.lean`. It writes one JSON line for each declaration and each module of Mathlib. The first full run on 2026-11-26 wrote 342,365 declarations and 8,738 modules in 11 minutes, with a peak memory of 2.9 GB.
- The workflow index. It writes the index each day and uploads it to the release `index` of tamnd/mathlib.
