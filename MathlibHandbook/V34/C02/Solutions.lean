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
# Volume 34, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V34.C02.Solutions

-- anchor: diff_cubes
/-- The difference of two cubes. -/
theorem diff_cubes (a b : ℚ) : a ^ 3 - b ^ 3 = (a - b) * (a ^ 2 + a * b + b ^ 2) := by
  ring
-- end: diff_cubes

-- anchor: solve_system
/-- A system of two linear equations. -/
theorem solve_system (x y : ℚ) (h1 : 2 * x + y = 5) (h2 : x - y = 1) : x = 2 := by
  linear_combination (h1 + h2) / 3
-- end: solve_system

-- anchor: fourth_power_add_two_pos
/-- A fourth power plus two is positive. -/
theorem fourth_power_add_two_pos (x : ℝ) : 0 < x ^ 4 + 2 := by
  positivity
-- end: fourth_power_add_two_pos

-- anchor: mul_add_le_mul_add
/-- An inequality of the same form on the two sides. -/
theorem mul_add_le_mul_add (a b c : ℝ) (h : a ≤ b) (hc : 0 ≤ c) : c * a + 1 ≤ c * b + 1 := by
  gcongr
-- end: mul_add_le_mul_add

end MathlibHandbook.V34.C02.Solutions

end
