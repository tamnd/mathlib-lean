/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.Linarith

/-!
# Volume 34, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V34.C03.Solutions

-- anchor: lt_add_one_of_le_of_lt
/-- A chain of two inequalities. -/
theorem lt_add_one_of_le_of_lt (x y z : ℝ) (h1 : x ≤ y) (h2 : y < z) : x < z + 1 := by
  linarith
-- end: lt_add_one_of_le_of_lt

-- anchor: mod_three_of_mod_six
/-- A remainder modulo `3` from a remainder modulo `6`. -/
theorem mod_three_of_mod_six (n : ℕ) (h : n % 6 = 5) : n % 3 = 2 := by
  omega
-- end: mod_three_of_mod_six

-- anchor: cube_le_self
/-- A cube of a number in `[0, 1]` is at most the number. -/
theorem cube_le_self (x : ℝ) (h0 : 0 ≤ x) (h1 : x ≤ 1) : x ^ 3 ≤ x := by
  nlinarith [mul_nonneg h0 h0, mul_nonneg h0 (sub_nonneg.mpr h1)]
-- end: cube_le_self

-- anchor: thirteen_dvd
/-- A divisibility of numerals. -/
theorem thirteen_dvd : 13 ∣ 1001 := by
  decide
-- end: thirteen_dvd

end MathlibHandbook.V34.C03.Solutions

end
