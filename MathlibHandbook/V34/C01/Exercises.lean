/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Rat
public import Mathlib.Tactic.Ring

/-!
# Volume 34, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V34.C01.Exercises

/-- The length of a reversed list with an empty tail. -/
theorem reverse_append_nil_length (xs : List ℕ) : (xs ++ []).reverse.length = xs.length := by
  sorry

/-- The cast of an odd number from `ℕ` to `ℤ`. -/
theorem cast_two_mul_add_one (n : ℕ) : ((2 * n + 1 : ℕ) : ℤ) = 2 * (n : ℤ) + 1 := by
  sorry

/-- A computation with the numerals of `ℚ`. -/
theorem numeral_sum : (3 : ℚ) ^ 2 - 1 / 2 = 17 / 2 := by
  sorry

end MathlibHandbook.V34.C01.Exercises

end
