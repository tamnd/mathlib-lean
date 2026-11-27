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
# Volume 2, Chapter 7: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C07.Exercises

theorem sub_sq_real (x y : ℝ) : (x - y) ^ 2 = x ^ 2 - 2 * x * y + y ^ 2 := by
  sorry

theorem exists_cauSeq_mk (x : ℝ) : ∃ f : CauSeq ℚ abs, Real.mk f = x := by
  sorry

theorem mk_le_mk_of_le (f g : CauSeq ℚ abs) (h : f ≤ g) : Real.mk f ≤ Real.mk g := by
  sorry

theorem ratCast_lt_ratCast (p q : ℚ) (h : p < q) : (p : ℝ) < q := by
  sorry

end MathlibHandbook.V02.C07.Exercises

end
