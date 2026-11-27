/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.Data.Set.Finite.Lattice
public import Mathlib.Data.Nat.PrimeFin
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Volume 3, Chapter 5: finite and infinite sets

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C05

-- anchor: finite_lt
/-- The set of the natural numbers below n is finite. -/
example (n : ℕ) : {k : ℕ | k < n}.Finite :=
  Set.finite_lt_nat n
-- end: finite_lt

-- anchor: subset_union
/-- A subset of a union of two finite sets is finite. -/
example (s t u : Set ℕ) (hs : s.Finite) (ht : t.Finite) (h : u ⊆ s ∪ t) : u.Finite :=
  (hs.union ht).subset h
-- end: subset_union

-- anchor: image
/-- The image of a finite set is finite. -/
example (s : Set ℕ) (hs : s.Finite) (f : ℕ → ℤ) : (f '' s).Finite :=
  hs.image f
-- end: image

-- anchor: infinite_univ
/-- The set of all natural numbers is infinite. -/
example : (Set.univ : Set ℕ).Infinite :=
  Set.infinite_univ
-- end: infinite_univ

-- anchor: primes
/-- There are infinitely many primes. -/
example : {p : ℕ | p.Prime}.Infinite :=
  Nat.infinite_setOfPred_prime
-- end: primes

-- anchor: nat_card
/-- For a type with a `Fintype` instance, `Nat.card` is `Fintype.card`. -/
example : Nat.card (Fin 6) = 6 := by
  simp
-- end: nat_card

-- anchor: ncard
/-- The card of a set with three elements. -/
example : ({1, 2, 3} : Set ℕ).ncard = 3 := by
  rw [Set.ncard_eq_toFinset_card']
  simp
-- end: ncard


end MathlibHandbook.V03.C05

end
