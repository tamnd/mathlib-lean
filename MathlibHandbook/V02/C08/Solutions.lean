/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.NNReal.Defs
public import Mathlib.Basic.ENNReal.Basic
public import Mathlib.Basic.ENNReal.Operations
public import Mathlib.Data.ENat.Basic
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 8: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C08.Solutions

-- anchor: top_mul_top_ennreal
theorem top_mul_top_ennreal : (⊤ : ENNReal) * ⊤ = ⊤ :=
  ENNReal.mul_top ENNReal.top_ne_zero
-- end: top_mul_top_ennreal

-- anchor: add_eq_top_iff_ennreal
theorem add_eq_top_iff_ennreal (a b : ENNReal) : a + b = ⊤ ↔ a = ⊤ ∨ b = ⊤ :=
  ENNReal.add_eq_top
-- end: add_eq_top_iff_ennreal

-- anchor: toReal_ofReal_two
theorem toReal_ofReal_two : (ENNReal.ofReal 2).toReal = 2 :=
  ENNReal.toReal_ofReal (by norm_num)
-- end: toReal_ofReal_two

-- anchor: enat_coe_toNat
theorem enat_coe_toNat (n : ℕ∞) (h : n ≠ ⊤) : (n.toNat : ℕ∞) = n :=
  ENat.natCast_toNat h
-- end: enat_coe_toNat

-- anchor: nnreal_coe_mul
theorem nnreal_coe_mul (x y : NNReal) : ((x * y : NNReal) : ℝ) = x * y :=
  NNReal.coe_mul x y
-- end: nnreal_coe_mul

end MathlibHandbook.V02.C08.Solutions

end
