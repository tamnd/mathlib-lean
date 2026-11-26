/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V00.C03.Solutions

-- anchor: or_swap_term
/-- Give a proof as a term, then as tactics. -/
theorem or_swap_term (p q : Prop) : p ∨ q → q ∨ p := by
  intro h
  rcases h with hp | hq
  · exact Or.inr hp
  · exact Or.inl hq
-- end: or_swap_term

-- anchor: exists_add_eq
/-- Give the witness of an existence statement. -/
theorem exists_add_eq : ∃ n : ℕ, n + 3 = 10 := by
  exact ⟨7, rfl⟩
-- end: exists_add_eq

-- anchor: le_add_two
/-- Write a chain of steps with `calc`. -/
theorem le_add_two (n : ℕ) : n ≤ n + 2 := by
  calc n ≤ n + 1 := Nat.le_succ n
    _ ≤ n + 2 := Nat.le_succ (n + 1)
-- end: le_add_two

end MathlibHandbook.V00.C03.Solutions

end
