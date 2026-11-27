/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Nat.Cast.Defs
public import Mathlib.Data.Nat.Cast.Basic
public import Mathlib.Data.Nat.Cast.Order.Basic
public import Mathlib.Data.Int.Cast.Lemmas
public import Mathlib.Data.Rat.Cast.Defs
public import Mathlib.Data.Rat.Cast.CharZero
public import Mathlib.Algebra.Order.Field.Rat
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C05.Exercises

theorem cast_add_sq (m n : ℕ) : (((m + n) ^ 2 : ℕ) : ℤ) = (m : ℤ) ^ 2 + 2 * m * n + (n : ℤ) ^ 2 := by
  sorry

theorem lt_of_cast_lt (m n : ℕ) (h : (m : ℚ) < n) : m < n := by
  sorry

theorem cast_sub_of_le (m n : ℕ) (h : m ≤ n) : ((n - m : ℕ) : ℚ) = n - m := by
  sorry

theorem int_cast_ne_succ (n : ℕ) : (n : ℤ) ≠ ((n + 1 : ℕ) : ℤ) := by
  sorry

end MathlibHandbook.V02.C05.Exercises

end
