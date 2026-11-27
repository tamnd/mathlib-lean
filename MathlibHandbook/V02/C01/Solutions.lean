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
# Volume 2, Chapter 1: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C01.Solutions

-- anchor: le_pow_self
theorem le_pow_self (n : ℕ) (hn : 2 ≤ n) : 2 * n ≤ 2 ^ n := by
  induction n, hn using Nat.le_induction with
  | base => norm_num
  | succ k hk ih =>
    rw [pow_succ]
    omega
-- end: le_pow_self

-- anchor: exists_least_square_gt
theorem exists_least_square_gt (k : ℕ) : ∃ n, k < n * n ∧ ∀ m, k < m * m → n ≤ m := by
  have h : ∃ n, k < n * n := ⟨k + 1, by nlinarith⟩
  exact ⟨Nat.find h, Nat.find_spec h, fun _ hm => Nat.find_min' h hm⟩
-- end: exists_least_square_gt

-- anchor: two_le_factorial
theorem two_le_factorial (n : ℕ) (hn : 2 ≤ n) : 2 ≤ n.factorial := by
  induction n, hn using Nat.le_induction with
  | base => decide
  | succ k hk ih =>
    rw [Nat.factorial_succ]
    nlinarith
-- end: two_le_factorial

end MathlibHandbook.V02.C01.Solutions

end
