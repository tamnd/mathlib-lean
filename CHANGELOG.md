# Changelog

Each release has a section. The newest release is first.

## Unreleased

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
