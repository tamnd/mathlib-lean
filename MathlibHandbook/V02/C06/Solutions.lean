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
# Volume 2, Chapter 6: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C06.Solutions

-- anchor: two_mul_four_zmod_seven
theorem two_mul_four_zmod_seven : (2 : ZMod 7) * 4 = 1 := by
  decide
-- end: two_mul_four_zmod_seven

-- anchor: sq_ne_two_zmod_five
theorem sq_ne_two_zmod_five : ∀ x : ZMod 5, x ^ 2 ≠ 2 := by
  decide
-- end: sq_ne_two_zmod_five

-- anchor: dvd_of_intCast_eq_zero
theorem dvd_of_intCast_eq_zero (a : ℤ) (h : (a : ZMod 9) = 0) : (9 : ℤ) ∣ a :=
  (ZMod.intCast_zmod_eq_zero_iff_dvd a 9).mp h
-- end: dvd_of_intCast_eq_zero

-- anchor: fin_val_lt
theorem fin_val_lt (x : Fin 10) : x.val < 10 :=
  x.isLt
-- end: fin_val_lt

end MathlibHandbook.V02.C06.Solutions

end
