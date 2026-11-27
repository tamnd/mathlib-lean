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
# Volume 2, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V02.C02.Solutions

-- anchor: prime_dvd_of_dvd_sq
theorem prime_dvd_of_dvd_sq (p n : ℕ) (hp : p.Prime) (h : p ∣ n ^ 2) : p ∣ n :=
  hp.dvd_of_dvd_pow h
-- end: prime_dvd_of_dvd_sq

-- anchor: exists_prime_gt
theorem exists_prime_gt (n : ℕ) : ∃ p, n < p ∧ p.Prime := by
  obtain ⟨p, hle, hp⟩ := Nat.exists_infinite_primes (n + 1)
  exact ⟨p, by omega, hp⟩
-- end: exists_prime_gt

-- anchor: not_prime_221
theorem not_prime_221 : ¬ Nat.Prime 221 := by
  norm_num
-- end: not_prime_221

-- anchor: exists_prime_dvd
theorem exists_prime_dvd (n : ℕ) (hn : n ≠ 1) : ∃ p, p.Prime ∧ p ∣ n :=
  Nat.exists_prime_and_dvd hn
-- end: exists_prime_dvd

end MathlibHandbook.V02.C02.Solutions

end
