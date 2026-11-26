/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.Order.Ring.Rat

/-!
# Volume 0, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V00.C04.Solutions

-- anchor: mul_two_example
/-- Find the lemma whose name reads the statement `a * 2 = a + a`. -/
theorem mul_two_example (a : ℤ) : a * 2 = a + a := by
  exact mul_two a
-- end: mul_two_example

-- anchor: mul_pos_example
/-- Find the lemma for the product of two positive numbers. -/
theorem mul_pos_example (a b : ℚ) (ha : 0 < a) (hb : 0 < b) : 0 < a * b := by
  exact mul_pos ha hb
-- end: mul_pos_example

-- anchor: sum_range_one_example
/-- Find the lemma for a sum over `range 1`. -/
theorem sum_range_one_example (f : ℕ → ℕ) : ∑ i ∈ Finset.range 1, f i = f 0 := by
  exact Finset.sum_range_one f
-- end: sum_range_one_example

end MathlibHandbook.V00.C04.Solutions

end
