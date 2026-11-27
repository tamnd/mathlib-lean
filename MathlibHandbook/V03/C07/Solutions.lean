/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Finsupp.Basic
public import Mathlib.Algebra.Group.Finsupp

/-!
# Volume 3, Chapter 7: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C07.Solutions

-- anchor: single_eq_same_example
/-- The value of `single a b` at a is b. -/
theorem single_eq_same_example (a : ℕ) (b : ℤ) : Finsupp.single a b a = b := by
  exact Finsupp.single_eq_same
-- end: single_eq_same_example

-- anchor: single_eq_of_ne_example
/-- The value of `single a b` at a point other than a is 0. -/
theorem single_eq_of_ne_example (a a' : ℕ) (b : ℤ) (h : a ≠ a') : Finsupp.single a b a' = 0 := by
  exact Finsupp.single_eq_of_ne h.symm
-- end: single_eq_of_ne_example

-- anchor: ext_example
/-- Two finitely supported functions with the same values are equal. -/
theorem ext_example (f g : ℕ →₀ ℤ) (h : ∀ a, f a = g a) : f = g := by
  exact Finsupp.ext h
-- end: ext_example

-- anchor: support_zero_example
/-- The zero function has an empty support. -/
theorem support_zero_example : (0 : ℕ →₀ ℤ).support = ∅ := by
  exact Finsupp.support_zero
-- end: support_zero_example


end MathlibHandbook.V03.C07.Solutions

end
