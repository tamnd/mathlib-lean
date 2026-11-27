/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.CompleteLattice.Basic
public import Mathlib.Order.FixedPoints
public import Mathlib.Data.Set.Lattice.Order

/-!
# Volume 4, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C04.Solutions

-- anchor: sSup_empty_example
/-- The supremum of the empty set is the least element. -/
theorem sSup_empty_example {α : Type*} [CompleteLattice α] :
    sSup (∅ : Set α) = ⊥ := by
  exact sSup_empty
-- end: sSup_empty_example

-- anchor: lfp_le_gfp_example
/-- The least fixed point is below the greatest fixed point. -/
theorem lfp_le_gfp_example {α : Type*} [CompleteLattice α] (f : α →o α) :
    OrderHom.lfp f ≤ OrderHom.gfp f := by
  exact f.lfp_le (le_of_eq f.map_gfp)
-- end: lfp_le_gfp_example

-- anchor: le_sSup_pair_example
/-- An element is below the supremum of a pair that contains it. -/
theorem le_sSup_pair_example {α : Type*} [CompleteLattice α] (a b : α) :
    a ≤ sSup {a, b} := by
  exact le_sSup (by simp)
-- end: le_sSup_pair_example

end MathlibHandbook.V04.C04.Solutions

end
