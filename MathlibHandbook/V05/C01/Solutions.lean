/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Group.Commute.Defs
public import Mathlib.Tactic.Group

/-!
# Volume 5, Chapter 1: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C01.Solutions

-- anchor: inv_inv_example
/-- The inverse of the inverse. -/
theorem inv_inv_example {G : Type*} [Group G] (a : G) : a⁻¹⁻¹ = a := by
  exact inv_inv a
-- end: inv_inv_example

-- anchor: inv_unique_example
/-- An inverse is unique. -/
theorem inv_unique_example {G : Type*} [Group G] {a b : G} (h : a * b = 1) : a⁻¹ = b := by
  exact inv_eq_of_mul_eq_one_right h
-- end: inv_unique_example

-- anchor: add_neg_rev_example
/-- The additive form of `mul_inv_rev`. -/
theorem add_neg_rev_example {A : Type*} [AddGroup A] (a b : A) : -(a + b) = -b + -a := by
  exact neg_add_rev a b
-- end: add_neg_rev_example

-- anchor: conj_mul_example
/-- Conjugation by `g` respects products. -/
theorem conj_mul_example {G : Type*} [Group G] (g a b : G) :
    g * (a * b) * g⁻¹ = (g * a * g⁻¹) * (g * b * g⁻¹) := by
  group
-- end: conj_mul_example


end MathlibHandbook.V05.C01.Solutions

end
