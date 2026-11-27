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
public import Mathlib.Tactic.NormNum.Basic

/-!
# Volume 2, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C04.Exercises

theorem half_add_third : (1 / 2 : ℚ) + 1 / 3 = 5 / 6 := by
  sorry

theorem not_isSquare_three : ¬ IsSquare (3 : ℚ) := by
  sorry

theorem den_of_den_eq_one (q : ℚ) (h : q.den = 1) : ∃ n : ℤ, (n : ℚ) = q := by
  sorry

theorem nnrat_mul_nonneg (p q : ℚ≥0) : 0 ≤ (p : ℚ) * q := by
  sorry

end MathlibHandbook.V02.C04.Exercises

end
