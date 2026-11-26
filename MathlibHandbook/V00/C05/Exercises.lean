/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.NumberTheory.Real.Irrational
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Tactic.NormNum

/-!
# Volume 0, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V00.C05.Exercises

/-- Find the junk value of `0 / 0` in `ℚ`. -/
theorem zero_div_example : (0 : ℚ) / 0 = 0 := by
  sorry

/-- Show that `(2 - 5) + 5` is not `2` in `ℕ`. -/
theorem nat_sub_add_example : (2 - 5 : ℕ) + 5 ≠ 2 := by
  sorry

/-- Use `irrational_sqrt_two` and a lemma of `Irrational`. -/
theorem irrational_sqrt_two_mul : Irrational (2 * √2) := by
  sorry

end MathlibHandbook.V00.C05.Exercises

end
