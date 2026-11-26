#!/bin/sh
# Scan the default build for the escape hatches of spec 10.2: sorry, admit, a new axiom, native_decide, implemented_by and @[extern]. The files Exercises.lean are not scanned, because their statements have sorry by design and the default build does not import them. The script prints each hit and exits with code 1 when it finds one.
set -eu
hits=$(grep -rnE '\bsorry\b|\badmit\b|^[[:space:]]*(private |protected )?axiom |native_decide|implemented_by|@\[extern' MathlibHandbook MathlibHandbook.lean --include='*.lean' | grep -v '/Exercises\.lean:' | grep -vE ':[0-9]+:[[:space:]]*(--|/-|\*)' || true)
if [ -n "$hits" ]; then
  echo "$hits"
  echo "the default build has an escape hatch"
  exit 1
fi
echo "the default build has no escape hatch"
