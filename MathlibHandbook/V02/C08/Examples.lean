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
# Volume 2, Chapter 8: Extended numbers: NNReal, ENNReal and ENat

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C08

-- anchor: nnreal
/-- The cast from `NNReal` to `ℝ` adds, and its values are not negative. -/
example (x y : NNReal) : ((x + y : NNReal) : ℝ) = x + y ∧ 0 ≤ (x : ℝ) :=
  ⟨NNReal.coe_add x y, NNReal.coe_nonneg x⟩
-- end: nnreal

-- anchor: nnreal_sub
/-- Subtraction on `NNReal` is truncated, as on `ℕ`. -/
example : (3 : NNReal) - 5 = 0 := tsub_eq_zero_of_le (by norm_num)
-- end: nnreal_sub

-- anchor: ennreal_top
/-- In `ENNReal`, `⊤` absorbs a sum, and `0 * ⊤ = 0`. -/
example (a : ENNReal) (ha : a ≠ 0) : a + ⊤ = ⊤ ∧ a * ⊤ = ⊤ ∧ (0 : ENNReal) * ⊤ = 0 :=
  ⟨add_top a, ENNReal.mul_top ha, zero_mul ⊤⟩
-- end: ennreal_top

-- anchor: coe_ne_top
/-- The cast of a term of `NNReal` is finite. -/
example (r : NNReal) : (r : ENNReal) ≠ ⊤ := ENNReal.coe_ne_top
-- end: coe_ne_top

-- anchor: toReal
/-- `ENNReal.toReal` inverts `ENNReal.ofReal` on the numbers that are not negative. Its value at `⊤` is the junk value `0`. -/
example (x : ℝ) (hx : 0 ≤ x) : (ENNReal.ofReal x).toReal = x ∧ (⊤ : ENNReal).toReal = 0 :=
  ⟨ENNReal.toReal_ofReal hx, ENNReal.toReal_top⟩
-- end: toReal

-- anchor: enat
/-- `ENat.toNat` is the identity on `ℕ`, with the junk value `0` at `⊤`. -/
example (n : ℕ) : (n : ℕ∞).toNat = n ∧ (⊤ : ℕ∞).toNat = 0 :=
  ⟨ENat.toNat_natCast n, ENat.toNat_top⟩
-- end: enat

end MathlibHandbook.V02.C08

end
