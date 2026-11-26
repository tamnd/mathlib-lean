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
# Volume 1, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V01.C03.Solutions

-- anchor: injective_add_one
/-- Adding one is injective on `ℕ`. -/
theorem injective_add_one : Function.Injective (fun n : ℕ => n + 1) := by
  intro a b h
  simp only at h
  omega
-- end: injective_add_one

-- anchor: surjective_id_example
/-- The identity function is surjective. -/
theorem surjective_id_example : Function.Surjective (id : ℕ → ℕ) := by
  exact Function.surjective_id
-- end: surjective_id_example

-- anchor: apply_symm_apply_example
/-- The equivalence undoes its inverse. -/
theorem apply_symm_apply_example {α β : Type*} (e : α ≃ β) (y : β) : e (e.symm y) = y := by
  exact e.apply_symm_apply y
-- end: apply_symm_apply_example

end MathlibHandbook.V01.C03.Solutions

end
