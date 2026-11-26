/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Ring.Nat
public import Mathlib.Algebra.Order.Group.Nat

/-!
# Volume 1, Chapter 6: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V01.C06.Exercises

/-- The additive form of `inv_mul_cancel`. -/
theorem neg_add_cancel_example {A : Type*} [AddGroup A] (a : A) : -a + a = 0 := by
  sorry

/-- The name `two_mul` says `2 * a = a + a`. -/
theorem two_mul_example (a : ℕ) : 2 * a = a + a := by
  sorry

/-- The name `le_of_lt` says: `≤` from `<`. -/
theorem le_of_lt_example (a b : ℕ) (h : a < b) : a ≤ b := by
  sorry

end MathlibHandbook.V01.C06.Exercises

end
