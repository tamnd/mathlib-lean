# Changelog

Each release has a section. The newest release is first.

## Unreleased

## v0.0.1 - 2026-11-26

### Added

- The Lake package `MathlibHandbook` on Mathlib `master` at commit 4472534b60, with Lean v4.37.0-rc1.
- The first examples, in `MathlibHandbook/V00/C01/Examples.lean`.
- The axiom check `scripts/Axioms.lean`, the scan `scripts/scan.sh` and the module check `scripts/modules.sh`.
- The workflows build, check and scorecard.
- The index program `scripts/Index.lean`. It writes one JSON line for each declaration and each module of Mathlib. The first full run on 2026-11-26 wrote 342,365 declarations and 8,738 modules in 11 minutes, with a peak memory of 2.9 GB.
- The workflow index. It writes the index each day and uploads it to the release `index` of tamnd/mathlib.
