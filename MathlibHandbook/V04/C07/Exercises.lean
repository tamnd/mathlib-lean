/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Interval.Set.Basic
public import Mathlib.Order.Interval.Set.LinearOrder
public import Mathlib.Order.Interval.Finset.Nat
public import Mathlib.Algebra.Order.Archimedean.Real.Basic

/-!
# Volume 4, Chapter 7: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C07.Exercises

/-- The number `3` is in `[1, 5]`. -/
theorem mem_Icc_example :
    (3 : ℝ) ∈ Set.Icc (1 : ℝ) 5 := by
  sorry

/-- An open interval is in the closed interval with the same ends. -/
theorem Ioo_subset_Icc_example (a b : ℝ) :
    Set.Ioo a b ⊆ Set.Icc a b := by
  sorry

/-- The interval `[0, 1]` is not empty. -/
theorem nonempty_Icc_example :
    (Set.Icc (0 : ℝ) 1).Nonempty := by
  sorry

end MathlibHandbook.V04.C07.Exercises

end
