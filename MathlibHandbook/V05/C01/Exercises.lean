/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Group.Commute.Defs
public import Mathlib.Tactic.Group

/-!
# Volume 5, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C01.Exercises

/-- The inverse of the inverse. -/
theorem inv_inv_example {G : Type*} [Group G] (a : G) : a⁻¹⁻¹ = a := by
  sorry

/-- An inverse is unique. -/
theorem inv_unique_example {G : Type*} [Group G] {a b : G} (h : a * b = 1) : a⁻¹ = b := by
  sorry

/-- The additive form of `mul_inv_rev`. -/
theorem add_neg_rev_example {A : Type*} [AddGroup A] (a b : A) : -(a + b) = -b + -a := by
  sorry

/-- Conjugation by `g` respects products. -/
theorem conj_mul_example {G : Type*} [Group G] (g a b : G) :
    g * (a * b) * g⁻¹ = (g * a * g⁻¹) * (g * b * g⁻¹) := by
  sorry


end MathlibHandbook.V05.C01.Exercises

end
