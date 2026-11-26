/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V00.C02.Exercises

/-- Use `add_comm` with explicit arguments. -/
theorem add_comm_three (a b c : ℕ) : a + (b + c) = a + (c + b) := by
  sorry

/-- Use a lemma of `Group` with the instance argument. -/
theorem inv_mul_example (G : Type*) [Group G] (a b : G) : a⁻¹ * (a * b) = b := by
  sorry

/-- Use the `.mpr` direction of an `↔` lemma. -/
theorem pos_of_ne_zero_example (n : ℕ) (h : n ≠ 0) : 1 ≤ n := by
  sorry

end MathlibHandbook.V00.C02.Exercises

end
