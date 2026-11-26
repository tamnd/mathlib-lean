/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.NumberTheory.Real.Irrational
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Tactic.NormNum

/-!
# Volume 0, Chapter 5: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V00.C05.Solutions

-- anchor: zero_div_example
/-- Find the junk value of `0 / 0` in `ℚ`. -/
theorem zero_div_example : (0 : ℚ) / 0 = 0 := by
  exact div_zero 0
-- end: zero_div_example

-- anchor: nat_sub_add_example
/-- Show that `(2 - 5) + 5` is not `2` in `ℕ`. -/
theorem nat_sub_add_example : (2 - 5 : ℕ) + 5 ≠ 2 := by
  decide
-- end: nat_sub_add_example

-- anchor: irrational_sqrt_two_mul
/-- Use `irrational_sqrt_two` and a lemma of `Irrational`. -/
theorem irrational_sqrt_two_mul : Irrational (2 * √2) := by
  exact irrational_sqrt_two.natCast_mul (by norm_num)
-- end: irrational_sqrt_two_mul

end MathlibHandbook.V00.C05.Solutions

end
