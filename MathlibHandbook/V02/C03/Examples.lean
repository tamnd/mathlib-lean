/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Int.Init
public import Mathlib.Data.Int.ModEq
public import Mathlib.Algebra.Ring.Int.Parity
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.NormNum.Basic

/-!
# Volume 2, Chapter 3: The integers

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C03

-- anchor: div_mod
/-- Division on `ℤ` rounds down for a positive divisor, so the remainder is not negative. -/
example : (-7 : ℤ) / 2 = -4 ∧ (-7 : ℤ) % 2 = 1 := by decide
-- end: div_mod

-- anchor: induction_on
/-- Induction on `ℤ` goes up from `0` and down from `0`. -/
example (n : ℤ) : 2 ∣ n * (n + 1) := by
  refine Int.induction_on n ?_ ?_ ?_
  · simp
  · intro i ih
    have h : ((i : ℤ) + 1) * ((i : ℤ) + 1 + 1) = i * (i + 1) + 2 * (i + 1) := by ring
    rw [h]
    exact Int.dvd_add ih (Int.dvd_mul_right 2 _)
  · intro i ih
    have h : (-(i : ℤ) - 1) * (-(i : ℤ) - 1 + 1) = -(i : ℤ) * (-(i : ℤ) + 1) + 2 * i := by ring
    rw [h]
    exact Int.dvd_add ih (Int.dvd_mul_right 2 _)
-- end: induction_on

-- anchor: emod_two
/-- Each integer is even or odd. -/
example (n : ℤ) : n % 2 = 0 ∨ n % 2 = 1 := Int.emod_two_eq_zero_or_one n
-- end: emod_two

-- anchor: modeq
/-- A congruence with numbers is decidable. -/
example : (17 : ℤ) ≡ 2 [ZMOD 5] := by decide
-- end: modeq

-- anchor: modeq_iff_dvd
/-- A congruence is a statement about divisibility. -/
example (a b n : ℤ) : a ≡ b [ZMOD n] ↔ n ∣ b - a := Int.modEq_iff_dvd
-- end: modeq_iff_dvd

-- anchor: modeq_arith
/-- Congruences add and take powers. -/
example (a b n : ℤ) (h : a ≡ b [ZMOD n]) : a ^ 2 + a ≡ b ^ 2 + b [ZMOD n] :=
  (h.pow 2).add h
-- end: modeq_arith

end MathlibHandbook.V02.C03

end
