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
# Volume 2, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C03.Solutions

-- anchor: sq_emod_four
theorem sq_emod_four (n : ℤ) : n ^ 2 % 4 = 0 ∨ n ^ 2 % 4 = 1 := by
  obtain ⟨k, rfl | rfl⟩ := Int.even_or_odd' n
  · left
    rw [show (2 * k) ^ 2 = 4 * k ^ 2 by ring]
    exact Int.mul_emod_right 4 _
  · right
    rw [show (2 * k + 1) ^ 2 = 4 * (k ^ 2 + k) + 1 by ring]
    generalize k ^ 2 + k = m
    omega
-- end: sq_emod_four

-- anchor: modEq_pow_of_modEq
theorem modEq_pow_of_modEq (a b n : ℤ) (k : ℕ) (h : a ≡ b [ZMOD n]) : a ^ k ≡ b ^ k [ZMOD n] :=
  h.pow k
-- end: modEq_pow_of_modEq

-- anchor: dvd_sub_of_modEq
theorem dvd_sub_of_modEq (a b n : ℤ) (h : a ≡ b [ZMOD n]) : n ∣ b - a :=
  Int.modEq_iff_dvd.mp h
-- end: dvd_sub_of_modEq

-- anchor: ten_pow_modEq_one
theorem ten_pow_modEq_one (k : ℕ) : (10 : ℤ) ^ k ≡ 1 [ZMOD 9] := by
  have h : (10 : ℤ) ≡ 1 [ZMOD 9] := by decide
  simpa using h.pow k
-- end: ten_pow_modEq_one

end MathlibHandbook.V02.C03.Solutions

end
