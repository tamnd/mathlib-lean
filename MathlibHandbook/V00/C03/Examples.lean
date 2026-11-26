/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 3: proofs are terms

These are the examples of the third chapter of the guide. The same statement has a proof as a term and a proof by tactics, and the two give the same kind of object.
-/

public section

namespace MathlibHandbook.V00.C03

-- anchor: and_swap_term
/-- A proof of `p ∧ q → q ∧ p` as a term: a function that takes a pair and gives the swapped pair. -/
theorem and_swap_term (p q : Prop) : p ∧ q → q ∧ p :=
  fun h => ⟨h.2, h.1⟩
-- end: and_swap_term

-- anchor: and_swap_tactic
/-- The same statement, proved by tactics. -/
theorem and_swap_tactic (p q : Prop) : p ∧ q → q ∧ p := by
  intro h
  obtain ⟨hp, hq⟩ := h
  exact ⟨hq, hp⟩
-- end: and_swap_tactic

-- anchor: exists_term
/-- A proof of an existence statement is a pair: the witness and a proof for it. -/
example : ∃ n : ℕ, n * n = 16 :=
  ⟨4, rfl⟩
-- end: exists_term

-- anchor: forall_term
/-- A proof of a statement for all `n` is a function of `n`. -/
example : ∀ n : ℕ, n ≤ n + 1 :=
  fun n => Nat.le_succ n
-- end: forall_term

-- anchor: calc_proof
/-- A chain of steps with `calc`. Each step has its own proof. -/
example (a b c : ℕ) (hab : a ≤ b) (hbc : b < c) : a < c + 1 :=
  calc a ≤ b := hab
    _ < c := hbc
    _ < c + 1 := Nat.lt_succ_self c
-- end: calc_proof

end MathlibHandbook.V00.C03

end
