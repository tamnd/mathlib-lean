# Contributing

Thank you for your help. This file tells how to send a change.

1. Read spec 10 of tamnd/mathlib. It gives the rules of this package.
2. Make a branch from `main`. Keep one subject in one pull request.
3. Give the pull request one `area/*` label, one `type/*` label and the milestone.
4. Run `lake build`, `sh scripts/scan.sh`, `sh scripts/modules.sh` and `python3 scripts/style.py`. Each must pass.
5. A new example has an anchor, a docstring, and a section of the handbook that uses it.

## The writing rules

The text follows ASD-STE100 technical English. Write short sentences in the active voice. Do not use an em dash or an en dash. Do not break a line in the middle of a sentence. Do not add a page break.
