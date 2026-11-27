/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Data.Nat.Factorial.BigOperators
public import Mathlib.Tactic.Ring

/-!
# Volume 3, Chapter 6: big operators

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C06

open Finset
-- anchor: notation
/-- The notation `∑ i ∈ s, f i` is `Finset.sum s f`, and a small sum computes. -/
example : ∑ i ∈ range 5, i ^ 2 = 30 := by
  decide
-- end: notation

-- anchor: gauss
/-- The sum of 0, 1, ..., n - 1, times two, is n * (n - 1). -/
example (n : ℕ) : (∑ i ∈ range n, i) * 2 = n * (n - 1) :=
  sum_range_id_mul_two n
-- end: gauss

-- anchor: induction
/-- Induction with `sum_range_succ`: the sum of the first n odd numbers is n ^ 2. -/
example (n : ℕ) : ∑ i ∈ range n, (2 * i + 1) = n ^ 2 := by
  induction n with
  | zero => simp
  | succ n ih => rw [sum_range_succ, ih]; ring
-- end: induction

-- anchor: linear
/-- A sum is additive, and a constant factor comes out of it. -/
example (s : Finset ℕ) (f g : ℕ → ℕ) (c : ℕ) :
    ∑ i ∈ s, (c * f i + g i) = c * ∑ i ∈ s, f i + ∑ i ∈ s, g i := by
  rw [sum_add_distrib, mul_sum]
-- end: linear

-- anchor: factorial
/-- The product of 1, ..., n is n factorial. -/
example (n : ℕ) : ∏ i ∈ range n, (i + 1) = n.factorial :=
  prod_range_add_one_eq_factorial n
-- end: factorial

-- anchor: card
/-- The card of a finset is the sum of ones. -/
example (s : Finset ℕ) : s.card = ∑ _i ∈ s, 1 :=
  card_eq_sum_ones s
-- end: card

-- anchor: le
/-- Sums keep the order term by term. -/
example (s : Finset ℕ) (f g : ℕ → ℕ) (h : ∀ i ∈ s, f i ≤ g i) :
    ∑ i ∈ s, f i ≤ ∑ i ∈ s, g i :=
  sum_le_sum h
-- end: le


end MathlibHandbook.V03.C06

end
