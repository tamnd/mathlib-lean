/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V00.C03.Exercises

/-- Give a proof as a term, then as tactics. -/
theorem or_swap_term (p q : Prop) : p ∨ q → q ∨ p := by
  sorry

/-- Give the witness of an existence statement. -/
theorem exists_add_eq : ∃ n : ℕ, n + 3 = 10 := by
  sorry

/-- Write a chain of steps with `calc`. -/
theorem le_add_two (n : ℕ) : n ≤ n + 2 := by
  sorry

end MathlibHandbook.V00.C03.Exercises

end
