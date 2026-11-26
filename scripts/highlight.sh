#!/bin/sh
# Write the highlighted Lean of each file of the package as SubVerso JSON (spec 12.5), and put the files in one tarball for mlhb. The tarball is highlighted-<commit>.tar.gz, where <commit> is the first 10 characters of the commit of HEAD. Its files are MathlibHandbook/<path>.json, so the tarball unpacks to the folder that mlhb takes as --highlight.
set -eu
targets=$(find MathlibHandbook -name '*.lean' | sort | sed 's/\.lean$//; s|/|.|g; s/$/:highlighted/')
# shellcheck disable=SC2086 # one word for each module
lake build $targets
commit=$(git rev-parse HEAD | cut -c1-10)
out="highlighted-${commit}.tar.gz"
tar -czf "$out" -C .lake/build/highlighted --exclude "*.hash" --exclude "*.trace" MathlibHandbook
echo "$out"
