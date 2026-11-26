/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Logic.Function.Basic
public import Mathlib.Logic.Equiv.Defs
public import Mathlib.Logic.Equiv.Prod
public import Mathlib.Tactic.Ring

/-!
# Volume 1, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V01.C03.Exercises

/-- Adding one is injective on `ℕ`. -/
theorem injective_add_one : Function.Injective (fun n : ℕ => n + 1) := by
  sorry

/-- The identity function is surjective. -/
theorem surjective_id_example : Function.Surjective (id : ℕ → ℕ) := by
  sorry

/-- The equivalence undoes its inverse. -/
theorem apply_symm_apply_example {α β : Type*} (e : α ≃ β) (y : β) : e (e.symm y) = y := by
  sorry

end MathlibHandbook.V01.C03.Exercises

end
