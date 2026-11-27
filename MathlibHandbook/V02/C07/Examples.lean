/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Algebra.Order.CauSeq.Basic
public import Mathlib.Algebra.Order.CauSeq.Completion
public import Mathlib.Tactic.Ring
public import Mathlib.Tactic.Linarith
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 7: The real numbers

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C07

-- anchor: field
/-- `ℝ` is a field, so the lemmas of fields apply. -/
example (x y : ℝ) (hy : y ≠ 0) : x / y * y = x := div_mul_cancel₀ x hy
-- end: field

-- anchor: ring_linarith
/-- `ring` and `linarith` work on `ℝ`. -/
example (x y : ℝ) (h : x < y) : (x + y) ^ 2 = x ^ 2 + 2 * x * y + y ^ 2 ∧ 2 * x < x + y := by
  constructor
  · ring
  · linarith
-- end: ring_linarith

-- anchor: mk_const
/-- The constant sequence with value `q` gives the real number `q`. -/
example (q : ℚ) : Real.mk (CauSeq.const abs q) = q := Real.mk_const
-- end: mk_const

-- anchor: mk_add
/-- The sum of two real numbers is the class of the sum of the sequences. -/
example (f g : CauSeq ℚ abs) : Real.mk (f + g) = Real.mk f + Real.mk g := Real.mk_add
-- end: mk_add

-- anchor: ind_mk
/-- Each real number is the class of a Cauchy sequence of rationals. -/
example (x : ℝ) : ∃ f : CauSeq ℚ abs, Real.mk f = x :=
  Real.ind_mk x (fun f => ⟨f, rfl⟩)
-- end: ind_mk

-- anchor: ratCast_lt
/-- The cast from `ℚ` to `ℝ` keeps the strict order. -/
example : ((1 / 2 : ℚ) : ℝ) < ((2 / 3 : ℚ) : ℝ) := Real.ratCast_lt.mpr (by norm_num)
-- end: ratCast_lt

end MathlibHandbook.V02.C07

end
