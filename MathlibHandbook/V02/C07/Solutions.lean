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
# Volume 2, Chapter 7: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C07.Solutions

-- anchor: sub_sq_real
theorem sub_sq_real (x y : ℝ) : (x - y) ^ 2 = x ^ 2 - 2 * x * y + y ^ 2 := by
  ring
-- end: sub_sq_real

-- anchor: exists_cauSeq_mk
theorem exists_cauSeq_mk (x : ℝ) : ∃ f : CauSeq ℚ abs, Real.mk f = x :=
  Real.ind_mk x (fun f => ⟨f, rfl⟩)
-- end: exists_cauSeq_mk

-- anchor: mk_le_mk_of_le
theorem mk_le_mk_of_le (f g : CauSeq ℚ abs) (h : f ≤ g) : Real.mk f ≤ Real.mk g :=
  Real.mk_le.mpr h
-- end: mk_le_mk_of_le

-- anchor: ratCast_lt_ratCast
theorem ratCast_lt_ratCast (p q : ℚ) (h : p < q) : (p : ℝ) < q :=
  Real.ratCast_lt.mpr h
-- end: ratCast_lt_ratCast

end MathlibHandbook.V02.C07.Solutions

end
