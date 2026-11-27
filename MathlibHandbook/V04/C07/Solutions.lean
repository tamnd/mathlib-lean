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
# Volume 4, Chapter 7: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C07.Solutions

-- anchor: mem_Icc_example
/-- The number `3` is in `[1, 5]`. -/
theorem mem_Icc_example :
    (3 : ℝ) ∈ Set.Icc (1 : ℝ) 5 := by
  norm_num
-- end: mem_Icc_example

-- anchor: Ioo_subset_Icc_example
/-- An open interval is in the closed interval with the same ends. -/
theorem Ioo_subset_Icc_example (a b : ℝ) :
    Set.Ioo a b ⊆ Set.Icc a b := by
  exact Set.Ioo_subset_Icc_self
-- end: Ioo_subset_Icc_example

-- anchor: nonempty_Icc_example
/-- The interval `[0, 1]` is not empty. -/
theorem nonempty_Icc_example :
    (Set.Icc (0 : ℝ) 1).Nonempty := by
  exact Set.nonempty_Icc.mpr (by norm_num)
-- end: nonempty_Icc_example

end MathlibHandbook.V04.C07.Solutions

end
