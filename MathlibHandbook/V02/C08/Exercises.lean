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
# Volume 2, Chapter 8: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C08.Exercises

theorem top_mul_top_ennreal : (⊤ : ENNReal) * ⊤ = ⊤ := by
  sorry

theorem add_eq_top_iff_ennreal (a b : ENNReal) : a + b = ⊤ ↔ a = ⊤ ∨ b = ⊤ := by
  sorry

theorem toReal_ofReal_two : (ENNReal.ofReal 2).toReal = 2 := by
  sorry

theorem enat_coe_toNat (n : ℕ∞) (h : n ≠ ⊤) : (n.toNat : ℕ∞) = n := by
  sorry

theorem nnreal_coe_mul (x y : NNReal) : ((x * y : NNReal) : ℝ) = x * y := by
  sorry

end MathlibHandbook.V02.C08.Exercises

end
