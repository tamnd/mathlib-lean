/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Rat.Defs
public import Mathlib.Data.Rat.Lemmas
public import Mathlib.Data.NNRat.Defs
public import Mathlib.Algebra.Ring.Rat
public import Mathlib.Algebra.Field.Rat
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 4: The rationals

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C04

-- anchor: num_den
/-- A rational number is stored in lowest terms, with a positive denominator. -/
example : (6 / 4 : ℚ).num = 3 ∧ (6 / 4 : ℚ).den = 2 := by decide +kernel
-- end: num_den

-- anchor: mkRat
/-- `mkRat n d` is the fraction `n / d`, and it is the same as `Rat.divInt n d`. -/
example : mkRat 6 4 = Rat.divInt 6 4 := Rat.mkRat_eq_divInt 6 4
-- end: mkRat

-- anchor: num_div_den
/-- Each rational number is its numerator over its denominator. -/
example (q : ℚ) : (q.num : ℚ) / q.den = q := Rat.num_div_den q
-- end: num_div_den

-- anchor: den_eq_one
/-- A rational number with denominator 1 is an integer. -/
example (q : ℚ) (h : q.den = 1) : (q.num : ℚ) = q := (Rat.den_eq_one_iff q).mp h
-- end: den_eq_one

-- anchor: not_square
/-- The number 2 is not a square in `ℚ`. -/
example : ¬ IsSquare (2 : ℚ) := by
  rw [show (2 : ℚ) = ((2 : ℕ) : ℚ) by norm_num, Rat.isSquare_natCast_iff]
  decide +kernel
-- end: not_square

-- anchor: nnrat
/-- The cast from `ℚ≥0` to `ℚ` adds, and its values are not negative. -/
example (p q : ℚ≥0) : ((p + q : ℚ≥0) : ℚ) = p + q ∧ 0 ≤ (q : ℚ) :=
  ⟨NNRat.coe_add p q, NNRat.coe_nonneg q⟩
-- end: nnrat

end MathlibHandbook.V02.C04

end
