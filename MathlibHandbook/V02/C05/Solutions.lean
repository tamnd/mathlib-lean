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
# Volume 2, Chapter 5: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C05.Solutions

-- anchor: cast_add_sq
theorem cast_add_sq (m n : ℕ) : (((m + n) ^ 2 : ℕ) : ℤ) = (m : ℤ) ^ 2 + 2 * m * n + (n : ℤ) ^ 2 := by
  push_cast
  ring
-- end: cast_add_sq

-- anchor: lt_of_cast_lt
theorem lt_of_cast_lt (m n : ℕ) (h : (m : ℚ) < n) : m < n :=
  Nat.cast_lt.mp h
-- end: lt_of_cast_lt

-- anchor: cast_sub_of_le
theorem cast_sub_of_le (m n : ℕ) (h : m ≤ n) : ((n - m : ℕ) : ℚ) = n - m :=
  Nat.cast_sub h
-- end: cast_sub_of_le

-- anchor: int_cast_ne_succ
theorem int_cast_ne_succ (n : ℕ) : (n : ℤ) ≠ ((n + 1 : ℕ) : ℤ) := by
  omega
-- end: int_cast_ne_succ

end MathlibHandbook.V02.C05.Solutions

end
