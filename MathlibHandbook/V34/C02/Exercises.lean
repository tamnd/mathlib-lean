/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.GCongr
public import Mathlib.Tactic.LinearCombination
public import Mathlib.Tactic.Positivity
public import Mathlib.Tactic.Ring

/-!
# Volume 34, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V34.C02.Exercises

/-- The difference of two cubes. -/
theorem diff_cubes (a b : ℚ) : a ^ 3 - b ^ 3 = (a - b) * (a ^ 2 + a * b + b ^ 2) := by
  sorry

/-- A system of two linear equations. -/
theorem solve_system (x y : ℚ) (h1 : 2 * x + y = 5) (h2 : x - y = 1) : x = 2 := by
  sorry

/-- A fourth power plus two is positive. -/
theorem fourth_power_add_two_pos (x : ℝ) : 0 < x ^ 4 + 2 := by
  sorry

/-- An inequality of the same form on the two sides. -/
theorem mul_add_le_mul_add (a b c : ℝ) (h : a ≤ b) (hc : 0 ≤ c) : c * a + 1 ≤ c * b + 1 := by
  sorry

end MathlibHandbook.V34.C02.Exercises

end
