/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Rat
public import Mathlib.Tactic.Positivity
public import Mathlib.Tactic.Ring

/-!
# Volume 0, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V00.C01.Exercises

/-- The square of a difference. -/
theorem sub_sq_example (a b : ℤ) : (a - b) ^ 2 = a ^ 2 - 2 * a * b + b ^ 2 := by
  sorry

/-- A sum of a square and a positive number is positive. -/
theorem sq_add_one_pos (a : ℚ) : 0 < a ^ 2 + 1 := by
  sorry

end MathlibHandbook.V00.C01.Exercises

end
