#!/bin/sh
# Check rule 1 and rule 2 of spec 10.2: each Lean file of the package is a module file, and no file imports all of Mathlib. The script prints each fault and exits with code 1 when it finds one.
set -eu
fault=0
for f in MathlibHandbook.lean $(find MathlibHandbook -name '*.lean' | sort); do
  first=$(grep -vE '^[[:space:]]*$|^[[:space:]]*--' "$f" | awk '/^\/-/{c=1} c&&/-\//{c=0;next} !c{print;exit}')
  if [ "$first" != "module" ]; then
    echo "$f: the first command is not module"
    fault=1
  fi
  if grep -nE '^(public )?import Mathlib$' "$f"; then
    echo "$f: the file imports all of Mathlib"
    fault=1
  fi
done
if [ "$fault" = 0 ]; then echo "every file is a module file"; fi
exit "$fault"
