/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Group.Abs
public import Mathlib.Algebra.Order.Group.Int
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 8: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C08.Exercises

/-- A sum of two positive numbers is positive. -/
theorem add_pos_example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    0 < a + b := by
  sorry

/-- The absolute value of `-x` is the absolute value of `x`. -/
theorem abs_neg_example (x : ℝ) :
    |-x| = |x| := by
  sorry

/-- The triangle inequality for three points. -/
theorem abs_sub_le_example (a b c : ℝ) :
    |a - c| ≤ |a - b| + |b - c| := by
  sorry

end MathlibHandbook.V04.C08.Exercises

end
