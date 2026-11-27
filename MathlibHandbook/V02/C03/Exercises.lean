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
# Volume 2, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C03.Exercises

theorem sq_emod_four (n : ℤ) : n ^ 2 % 4 = 0 ∨ n ^ 2 % 4 = 1 := by
  sorry

theorem modEq_pow_of_modEq (a b n : ℤ) (k : ℕ) (h : a ≡ b [ZMOD n]) : a ^ k ≡ b ^ k [ZMOD n] := by
  sorry

theorem dvd_sub_of_modEq (a b n : ℤ) (h : a ≡ b [ZMOD n]) : n ∣ b - a := by
  sorry

theorem ten_pow_modEq_one (k : ℕ) : (10 : ℤ) ^ k ≡ 1 [ZMOD 9] := by
  sorry

end MathlibHandbook.V02.C03.Exercises

end
