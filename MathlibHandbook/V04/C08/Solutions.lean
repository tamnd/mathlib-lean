/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Group.Abs
public import Mathlib.Algebra.Order.Group.Int
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 8: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C08.Solutions

-- anchor: add_pos_example
/-- A sum of two positive numbers is positive. -/
theorem add_pos_example (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    0 < a + b := by
  exact add_pos ha hb
-- end: add_pos_example

-- anchor: abs_neg_example
/-- The absolute value of `-x` is the absolute value of `x`. -/
theorem abs_neg_example (x : ℝ) :
    |-x| = |x| := by
  exact abs_neg x
-- end: abs_neg_example

-- anchor: abs_sub_le_example
/-- The triangle inequality for three points. -/
theorem abs_sub_le_example (a b c : ℝ) :
    |a - c| ≤ |a - b| + |b - c| := by
  exact abs_sub_le a b c
-- end: abs_sub_le_example

end MathlibHandbook.V04.C08.Solutions

end
