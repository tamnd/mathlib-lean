/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.SpecificGroups.Alternating

/-!
# Volume 5, Chapter 7: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C07.Exercises

/-- A transposition is its own inverse. -/
theorem swap_mul_self_example (a b : Fin 4) : Equiv.swap a b * Equiv.swap a b = 1 := by
  sorry

/-- A permutation and its inverse have the same sign. -/
theorem sign_inv_example {α : Type*} [DecidableEq α] [Fintype α] (f : Equiv.Perm α) :
    Equiv.Perm.sign f⁻¹ = Equiv.Perm.sign f := by
  sorry

/-- A product of two transpositions is even. -/
theorem mem_alternating_example (a b c d : Fin 4) (h1 : a ≠ b) (h2 : c ≠ d) :
    Equiv.swap a b * Equiv.swap c d ∈ alternatingGroup (Fin 4) := by
  sorry

/-- The alternating group on four letters has twelve elements. -/
theorem card_alternating_example : Fintype.card (alternatingGroup (Fin 4)) = 12 := by
  sorry


end MathlibHandbook.V05.C07.Exercises

end
