/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Fin.Basic
public import Mathlib.Data.ZMod.Defs
public import Mathlib.Data.ZMod.Basic
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 6: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C06.Exercises

theorem two_mul_four_zmod_seven : (2 : ZMod 7) * 4 = 1 := by
  sorry

theorem sq_ne_two_zmod_five : ∀ x : ZMod 5, x ^ 2 ≠ 2 := by
  sorry

theorem dvd_of_intCast_eq_zero (a : ℤ) (h : (a : ZMod 9) = 0) : (9 : ℤ) ∣ a := by
  sorry

theorem fin_val_lt (x : Fin 10) : x.val < 10 := by
  sorry

end MathlibHandbook.V02.C06.Exercises

end
