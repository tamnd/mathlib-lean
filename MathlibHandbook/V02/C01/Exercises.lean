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
# Volume 2, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C01.Exercises

theorem le_pow_self (n : ℕ) (hn : 2 ≤ n) : 2 * n ≤ 2 ^ n := by
  sorry

theorem exists_least_square_gt (k : ℕ) : ∃ n, k < n * n ∧ ∀ m, k < m * m → n ≤ m := by
  sorry

theorem two_le_factorial (n : ℕ) (hn : 2 ≤ n) : 2 ≤ n.factorial := by
  sorry

end MathlibHandbook.V02.C01.Exercises

end
