/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V00.C02.Solutions

-- anchor: add_comm_three
/-- Use `add_comm` with explicit arguments. -/
theorem add_comm_three (a b c : ℕ) : a + (b + c) = a + (c + b) := by
  rw [add_comm b c]
-- end: add_comm_three

-- anchor: inv_mul_example
/-- Use a lemma of `Group` with the instance argument. -/
theorem inv_mul_example (G : Type*) [Group G] (a b : G) : a⁻¹ * (a * b) = b := by
  exact inv_mul_cancel_left a b
-- end: inv_mul_example

-- anchor: pos_of_ne_zero_example
/-- Use the `.mpr` direction of an `↔` lemma. -/
theorem pos_of_ne_zero_example (n : ℕ) (h : n ≠ 0) : 1 ≤ n := by
  exact Nat.one_le_iff_ne_zero.mpr h
-- end: pos_of_ne_zero_example

end MathlibHandbook.V00.C02.Solutions

end
