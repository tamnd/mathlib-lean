/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.NumberTheory.Real.Irrational
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Tactic.NormNum
public import Mathlib.Tactic.Linarith

/-!
# Volume 0, Chapter 5: junk values and a proof read line by line

These are the examples of the fifth chapter of the guide. The first examples show the junk values of Mathlib: the value that a total function gives outside the domain of the usual definition. The last example is a proof that no square of a natural number is twice another square. The guide reads it line by line.
-/

public section

namespace MathlibHandbook.V00.C05

-- anchor: div_zero
/-- Division by zero gives zero. -/
example : (1 : ℚ) / 0 = 0 :=
  div_zero 1
-- end: div_zero

-- anchor: nat_sub
/-- Subtraction in `ℕ` stops at zero. -/
example : (3 : ℕ) - 5 = 0 :=
  rfl
-- end: nat_sub

-- anchor: nat_div
/-- Division in `ℕ` rounds down. -/
example : (7 : ℕ) / 2 = 3 :=
  rfl
-- end: nat_div

-- anchor: sqrt_neg
/-- The square root of a negative real number is zero. -/
example : √(-1 : ℝ) = 0 :=
  Real.sqrt_eq_zero_of_nonpos (by norm_num)
-- end: sqrt_neg

-- anchor: div_self
/-- The usual law needs the hypothesis that excludes the junk value. -/
example (a : ℚ) (h : a ≠ 0) : a / a = 1 :=
  div_self h
-- end: div_self

-- anchor: sq_ne_two_mul_sq
/-- No square of a natural number is twice the square of a positive natural number. -/
theorem sq_ne_two_mul_sq (m n : ℕ) (hn : 0 < n) : m ^ 2 ≠ 2 * n ^ 2 := by
  induction n using Nat.strong_induction_on generalizing m with
  | _ n ih =>
    intro h
    have hm : 2 ∣ m := Nat.Prime.dvd_of_dvd_pow Nat.prime_two ⟨n ^ 2, h⟩
    obtain ⟨k, rfl⟩ := hm
    have hk : n ^ 2 = 2 * k ^ 2 := by linarith
    have hk0 : 0 < k := by
      rcases Nat.eq_zero_or_pos k with rfl | h0
      · simp at hk
        omega
      · exact h0
    have hlt : k < n := by
      by_contra hc
      have h1 : n ^ 2 ≤ k ^ 2 := Nat.pow_le_pow_left (not_lt.mp hc) 2
      have h2 : 0 < k ^ 2 := pow_pos hk0 2
      linarith
    exact ih k hlt n hk0 hk
-- end: sq_ne_two_mul_sq

-- anchor: irrational_sqrt_two
/-- Mathlib has the result for the real number `√2`. -/
example : Irrational √2 :=
  irrational_sqrt_two
-- end: irrational_sqrt_two

end MathlibHandbook.V00.C05

end
