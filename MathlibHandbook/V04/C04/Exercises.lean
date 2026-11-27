/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.CompleteLattice.Basic
public import Mathlib.Order.FixedPoints
public import Mathlib.Data.Set.Lattice.Order

/-!
# Volume 4, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C04.Exercises

/-- The supremum of the empty set is the least element. -/
theorem sSup_empty_example {α : Type*} [CompleteLattice α] :
    sSup (∅ : Set α) = ⊥ := by
  sorry

/-- The least fixed point is below the greatest fixed point. -/
theorem lfp_le_gfp_example {α : Type*} [CompleteLattice α] (f : α →o α) :
    OrderHom.lfp f ≤ OrderHom.gfp f := by
  sorry

/-- An element is below the supremum of a pair that contains it. -/
theorem le_sSup_pair_example {α : Type*} [CompleteLattice α] (a b : α) :
    a ≤ sSup {a, b} := by
  sorry

end MathlibHandbook.V04.C04.Exercises

end
