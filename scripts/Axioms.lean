/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
import Lean

/-!
# Check the axioms of the companion

Run this file after `lake build`:

```
lake env lean --run scripts/Axioms.lean [module]
```

It imports the module, `MathlibHandbook` by default, and collects the axioms of each declaration in the namespace `MathlibHandbook`. A declaration that uses an axiom other than `propext`, `Classical.choice` and `Quot.sound` is a fault. `sorryAx` is a fault. The program prints each fault and exits with code 1 when it finds one.
-/

open Lean

def standard : List Name := [``propext, ``Classical.choice, ``Quot.sound]

unsafe def main (args : List String) : IO UInt32 := do
  let root := match args with
    | [r] => r.toName
    | _ => `MathlibHandbook
  enableInitializersExecution
  initSearchPath (← findSysroot)
  let env ← importModules #[{ module := root }] {} (loadExts := true)
  let names := env.constants.fold (init := #[]) fun acc n _ =>
    if (`MathlibHandbook).isPrefixOf n && !n.isInternalDetail then acc.push n else acc
  let ctx : Core.Context := { fileName := "<axioms>", fileMap := default, maxHeartbeats := 0 }
  let check : CoreM (Array (Name × Array Name)) := names.filterMapM fun n => do
    let ax ← collectAxioms n
    let bad := ax.filter (!standard.contains ·)
    return if bad.isEmpty then none else some (n, bad)
  let (faults, _) ← check.toIO ctx { env }
  for (n, bad) in faults do
    IO.println s!"{n}: {bad.toList}"
  IO.println s!"{names.size} declarations, {faults.size} with a nonstandard axiom"
  return if faults.isEmpty then 0 else 1
