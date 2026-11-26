/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
import Lean

/-!
# Check that each exercise has a solution with the same statement

Run this file after `lake build` and `lake build Exercises`:

```
lake env lean --run scripts/Exercises.lean
```

The (L) exercise `MathlibHandbook.V<NN>.C<NN>.Exercises.foo` must have the solution `MathlibHandbook.V<NN>.C<NN>.Solutions.foo`, and the two must have the same type (spec 10.4). Thus an exercise cannot drift from its solution. The program prints each fault and exits with code 1 when it finds one.
-/

open Lean

/-- The name of the solution of an exercise: the component `Exercises` becomes `Solutions`. -/
def solutionName (n : Name) : Name :=
  n.components.foldl (init := .anonymous) fun acc c => acc ++ (if c == `Exercises then `Solutions else c)

unsafe def main (_ : List String) : IO UInt32 := do
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules #[{ module := `MathlibHandbook }, { module := `MathlibHandbook.Exercises }] {}
    (loadExts := true)
  let mut n := 0
  let mut faults := 0
  for (e, ci) in env.constants.toList do
    unless (`MathlibHandbook).isPrefixOf e && e.components.contains `Exercises && !e.isInternalDetail do
      continue
    unless ci matches .thmInfo _ do
      continue
    n := n + 1
    let s := solutionName e
    match env.find? s with
    | none =>
      IO.println s!"{e}: no solution {s}"
      faults := faults + 1
    | some si =>
      unless si.type == ci.type do
        IO.println s!"{e}: the statement of the solution {s} is not the same"
        faults := faults + 1
  IO.println s!"{n} exercises, {faults} faults"
  return if faults == 0 then 0 else 1
