/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Basic
public import Mathlib.Order.Basic
public import Mathlib.Topology.Algebra.Ring.Real

/-!
# Volume 34, Chapter 4: automation

These are the examples of the fourth chapter of the volume of tactics: `exact?`, `apply?`, `aesop`, `fun_prop`, `continuity` and `grind`. The proofs of `exact?` and `apply?` here are the proofs that the two tactics suggest with the imports of this file. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V34.C04

-- anchor: exact_search
/-- `exact?` suggested `exact Order.lt_add_one_iff.mpr h` for this goal. -/
example (a b : ℕ) (h : a ≤ b) : a < b + 1 := by
  exact Order.lt_add_one_iff.mpr h

/-- `exact?` suggested `exact Nat.le_mul_of_pos_left b h` for this goal. -/
example (a b : ℕ) (h : 0 < a) : b ≤ a * b := by
  exact Nat.le_mul_of_pos_left b h
-- end: exact_search

-- anchor: apply_search
/-- `apply?` suggested `exact Set.mem_of_subset_of_mem h hx` for this goal. -/
example (s t : Set ℕ) (h : s ⊆ t) (x : ℕ) (hx : x ∈ s) : x ∈ t := by
  exact Set.mem_of_subset_of_mem h hx
-- end: apply_search

-- anchor: aesop
/-- `aesop` splits the goal and the hypotheses, and uses `simp_all` and its rule set. -/
example (p q : Prop) (hp : p) (hq : q) : q ∧ p := by
  aesop

example (s t : Set ℕ) (x : ℕ) (h : x ∈ s) : x ∈ s ∪ t := by
  aesop
-- end: aesop

-- anchor: fun_prop
/-- `fun_prop` proves a property of a function, such as `Continuous`, from the parts of the function. -/
example : Continuous (fun x : ℝ => x ^ 2 + 3 * x) := by
  fun_prop
-- end: fun_prop

-- anchor: continuity
/-- `continuity` proves the same goal with a rule set of `aesop`. -/
example : Continuous (fun x : ℝ => x ^ 2 + 3 * x) := by
  continuity
-- end: continuity

-- anchor: grind
/-- `grind` uses congruence closure, case splits and solvers for linear arithmetic and commutative rings. -/
example (f : ℕ → ℕ) (h : ∀ x, f (f x) = x) (a : ℕ) : f (f (f a)) = f a := by
  grind

example (x y : ℤ) (h : x = y + 1) : x ^ 2 = y ^ 2 + 2 * y + 1 := by
  grind

example (x y : ℕ) (h : x < y) : x + 1 ≤ y := by
  grind
-- end: grind

end MathlibHandbook.V34.C04

end
