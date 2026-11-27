/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Finsupp.Basic
public import Mathlib.Algebra.Group.Finsupp

/-!
# Volume 3, Chapter 7: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C07.Exercises

/-- The value of `single a b` at a is b. -/
theorem single_eq_same_example (a : ℕ) (b : ℤ) : Finsupp.single a b a = b := by
  sorry

/-- The value of `single a b` at a point other than a is 0. -/
theorem single_eq_of_ne_example (a a' : ℕ) (b : ℤ) (h : a ≠ a') : Finsupp.single a b a' = 0 := by
  sorry

/-- Two finitely supported functions with the same values are equal. -/
theorem ext_example (f g : ℕ →₀ ℤ) (h : ∀ a, f a = g a) : f = g := by
  sorry

/-- The zero function has an empty support. -/
theorem support_zero_example : (0 : ℕ →₀ ℤ).support = ∅ := by
  sorry


end MathlibHandbook.V03.C07.Exercises

end
