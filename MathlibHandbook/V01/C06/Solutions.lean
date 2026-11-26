/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Ring.Nat
public import Mathlib.Algebra.Order.Group.Nat

/-!
# Volume 1, Chapter 6: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V01.C06.Solutions

-- anchor: neg_add_cancel_example
/-- The additive form of `inv_mul_cancel`. -/
theorem neg_add_cancel_example {A : Type*} [AddGroup A] (a : A) : -a + a = 0 := by
  exact neg_add_cancel a
-- end: neg_add_cancel_example

-- anchor: two_mul_example
/-- The name `two_mul` says `2 * a = a + a`. -/
theorem two_mul_example (a : ℕ) : 2 * a = a + a := by
  exact two_mul a
-- end: two_mul_example

-- anchor: le_of_lt_example
/-- The name `le_of_lt` says: `≤` from `<`. -/
theorem le_of_lt_example (a b : ℕ) (h : a < b) : a ≤ b := by
  exact le_of_lt h
-- end: le_of_lt_example

end MathlibHandbook.V01.C06.Solutions

end
