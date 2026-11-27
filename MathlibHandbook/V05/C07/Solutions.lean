/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.SpecificGroups.Alternating

/-!
# Volume 5, Chapter 7: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C07.Solutions

-- anchor: swap_mul_self_example
/-- A transposition is its own inverse. -/
theorem swap_mul_self_example (a b : Fin 4) : Equiv.swap a b * Equiv.swap a b = 1 := by
  exact Equiv.swap_mul_self a b
-- end: swap_mul_self_example

-- anchor: sign_inv_example
/-- A permutation and its inverse have the same sign. -/
theorem sign_inv_example {α : Type*} [DecidableEq α] [Fintype α] (f : Equiv.Perm α) :
    Equiv.Perm.sign f⁻¹ = Equiv.Perm.sign f := by
  exact Equiv.Perm.sign_inv f
-- end: sign_inv_example

-- anchor: mem_alternating_example
/-- A product of two transpositions is even. -/
theorem mem_alternating_example (a b c d : Fin 4) (h1 : a ≠ b) (h2 : c ≠ d) :
    Equiv.swap a b * Equiv.swap c d ∈ alternatingGroup (Fin 4) := by
  rw [Equiv.Perm.mem_alternatingGroup, Equiv.Perm.sign_mul, Equiv.Perm.sign_swap h1,
    Equiv.Perm.sign_swap h2]
  rfl
-- end: mem_alternating_example

-- anchor: card_alternating_example
/-- The alternating group on four letters has twelve elements. -/
theorem card_alternating_example : Fintype.card (alternatingGroup (Fin 4)) = 12 := by
  rw [card_alternatingGroup, Fintype.card_fin]
  rfl
-- end: card_alternating_example


end MathlibHandbook.V05.C07.Solutions

end
