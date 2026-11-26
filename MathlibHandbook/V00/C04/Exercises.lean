/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.Order.Ring.Rat

/-!
# Volume 0, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V00.C04.Exercises

/-- Find the lemma whose name reads the statement `a * 2 = a + a`. -/
theorem mul_two_example (a : ℤ) : a * 2 = a + a := by
  sorry

/-- Find the lemma for the product of two positive numbers. -/
theorem mul_pos_example (a b : ℚ) (ha : 0 < a) (hb : 0 < b) : 0 < a * b := by
  sorry

/-- Find the lemma for a sum over `range 1`. -/
theorem sum_range_one_example (f : ℕ → ℕ) : ∑ i ∈ Finset.range 1, f i = f 0 := by
  sorry

end MathlibHandbook.V00.C04.Exercises

end
