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
# Volume 2, Chapter 5: Casts between number types

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C05

-- anchor: cast_add_mul
/-- The cast from `ℕ` to `ℤ` is a map of semirings. -/
example (m n : ℕ) : ((m + n * m : ℕ) : ℤ) = m + n * m := by
  rw [Nat.cast_add, Nat.cast_mul]
-- end: cast_add_mul

-- anchor: cast_pow
/-- The cast of a power is the power of the cast. -/
example (n : ℕ) : ((2 ^ n : ℕ) : ℚ) = 2 ^ n := by
  rw [Nat.cast_pow, Nat.cast_ofNat]
-- end: cast_pow

-- anchor: cast_le
/-- The cast from `ℕ` to `ℚ` keeps the order in both directions. -/
example (m n : ℕ) : (m : ℚ) ≤ n ↔ m ≤ n := Nat.cast_le
-- end: cast_le

-- anchor: cast_sub
/-- The cast of a truncated subtraction needs a hypothesis. -/
example (m n : ℕ) (h : m ≤ n) : ((n - m : ℕ) : ℤ) = n - m := Nat.cast_sub h

/-- Without the hypothesis, the two sides are not equal. -/
example : ((2 - 5 : ℕ) : ℤ) = 0 ∧ ((2 : ℕ) : ℤ) - (5 : ℕ) = -3 := by decide
-- end: cast_sub

-- anchor: cast_inj
/-- The cast from `ℤ` to a ring of characteristic zero is injective. -/
example (a b : ℤ) (h : (a : ℚ) = b) : a = b := Int.cast_inj.mp h
-- end: cast_inj

-- anchor: rat_cast
/-- A cast through `ℚ` is the direct cast. -/
example {α : Type*} [DivisionRing α] (n : ℕ) : ((n : ℚ) : α) = n := Rat.cast_natCast n
-- end: rat_cast

-- anchor: norm_cast
/-- `exact_mod_cast` moves a hypothesis from `ℤ` to `ℕ`. -/
example (a b : ℕ) (h : (a : ℤ) + 1 ≤ b) : a + 1 ≤ b := by exact_mod_cast h
-- end: norm_cast

end MathlibHandbook.V02.C05

end
