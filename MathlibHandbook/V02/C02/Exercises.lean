/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Data.Nat.Prime.Infinite
public import Mathlib.Data.Int.GCD
public import Mathlib.Tactic.NormNum.Prime
public import Mathlib.Tactic.Linarith

/-!
# Volume 2, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V02.C02.Exercises

theorem prime_dvd_of_dvd_sq (p n : ℕ) (hp : p.Prime) (h : p ∣ n ^ 2) : p ∣ n := by
  sorry

theorem exists_prime_gt (n : ℕ) : ∃ p, n < p ∧ p.Prime := by
  sorry

theorem not_prime_221 : ¬ Nat.Prime 221 := by
  sorry

theorem exists_prime_dvd (n : ℕ) (hn : n ≠ 1) : ∃ p, p.Prime ∧ p ∣ n := by
  sorry

end MathlibHandbook.V02.C02.Exercises

end
