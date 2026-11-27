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
# Volume 2, Chapter 2: Divisibility, gcd and primes

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C02

-- anchor: prime_norm_num
/-- `norm_num` decides if a small number is prime. -/
example : Nat.Prime 37 ∧ ¬ Nat.Prime 91 := by
  constructor <;> norm_num
-- end: prime_norm_num

-- anchor: two_le
/-- A prime is at least 2. -/
example (p : ℕ) (hp : p.Prime) : 2 ≤ p := hp.two_le
-- end: two_le

-- anchor: dvd_mul
/-- Euclid's lemma: a prime that divides a product divides a factor. -/
example (p a b : ℕ) (hp : p.Prime) (h : p ∣ a * b) : p ∣ a ∨ p ∣ b :=
  hp.dvd_mul.mp h
-- end: dvd_mul

-- anchor: infinite
/-- There is a prime at or above each bound. -/
example : ∃ p, 1000 ≤ p ∧ p.Prime := Nat.exists_infinite_primes 1000
-- end: infinite

-- anchor: minFac
/-- The least factor of a number that is not 1 is prime. -/
example : Nat.minFac 91 = 7 ∧ (Nat.minFac 91).Prime :=
  ⟨by norm_num, Nat.minFac_prime (by norm_num)⟩
-- end: minFac

-- anchor: bezout
/-- Bézout's identity: the gcd is an integer combination of the two numbers. -/
example (a b : ℕ) : (Nat.gcd a b : ℤ) = a * Nat.gcdA a b + b * Nat.gcdB a b :=
  Nat.gcd_eq_gcd_ab a b
-- end: bezout

end MathlibHandbook.V02.C02

end
