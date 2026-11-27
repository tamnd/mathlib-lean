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
# Volume 2, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C04.Solutions

-- anchor: half_add_third
theorem half_add_third : (1 / 2 : ℚ) + 1 / 3 = 5 / 6 := by
  norm_num
-- end: half_add_third

-- anchor: not_isSquare_three
theorem not_isSquare_three : ¬ IsSquare (3 : ℚ) := by
  rw [show (3 : ℚ) = ((3 : ℕ) : ℚ) by norm_num, Rat.isSquare_natCast_iff]
  decide +kernel
-- end: not_isSquare_three

-- anchor: den_of_den_eq_one
theorem den_of_den_eq_one (q : ℚ) (h : q.den = 1) : ∃ n : ℤ, (n : ℚ) = q :=
  ⟨q.num, (Rat.den_eq_one_iff q).mp h⟩
-- end: den_of_den_eq_one

-- anchor: nnrat_mul_nonneg
theorem nnrat_mul_nonneg (p q : ℚ≥0) : 0 ≤ (p : ℚ) * q :=
  mul_nonneg (NNRat.coe_nonneg p) (NNRat.coe_nonneg q)
-- end: nnrat_mul_nonneg

end MathlibHandbook.V02.C04.Solutions

end
