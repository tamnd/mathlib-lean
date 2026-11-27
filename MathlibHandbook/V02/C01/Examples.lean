/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Nat.Init
public import Mathlib.Data.Nat.Find
public import Mathlib.Data.Nat.Factorial.Basic
public import Mathlib.Tactic.NormNum.Basic
public import Mathlib.Tactic.Linarith

/-!
# Volume 2, Chapter 1: The natural numbers and induction

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C01

-- anchor: le_induction
/-- Induction from a start value: `2 ^ n` is at least `n + 1` for each `n ≥ 1`. -/
example (n : ℕ) (hn : 1 ≤ n) : n + 1 ≤ 2 ^ n := by
  induction n, hn using Nat.le_induction with
  | base => norm_num
  | succ k hk ih =>
    rw [pow_succ]
    omega
-- end: le_induction

-- anchor: strong_induction
/-- Strong induction: the hypothesis holds for each smaller number. -/
example (n : ℕ) : n = 0 ∨ 1 ≤ n := by
  induction n using Nat.strong_induction_on with
  | _ n ih => omega
-- end: strong_induction

-- anchor: find
/-- `Nat.find` gives the least number with a decidable property. -/
example : Nat.find (⟨3, by norm_num⟩ : ∃ n, 5 < 2 * n) = 3 := by
  rw [Nat.find_eq_iff]
  refine ⟨by norm_num, ?_⟩
  intro m hm
  omega
-- end: find

-- anchor: find_spec
/-- The value of `Nat.find` has the property, and no smaller number has it. -/
example (P : ℕ → Prop) [DecidablePred P] (h : ∃ n, P n) :
    P (Nat.find h) ∧ ∀ m, P m → Nat.find h ≤ m :=
  ⟨Nat.find_spec h, fun _ hm => Nat.find_min' h hm⟩
-- end: find_spec

-- anchor: factorial
/-- The factorial is positive. -/
example (n : ℕ) : 0 < n.factorial := Nat.factorial_pos n
-- end: factorial

end MathlibHandbook.V02.C01

end
