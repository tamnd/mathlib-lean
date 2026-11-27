/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Multiset.Count
public import Mathlib.Data.Multiset.AddSub
public import Mathlib.Data.Multiset.Dedup
public import Mathlib.Algebra.BigOperators.Group.Multiset.Defs
public import Mathlib.Algebra.Group.Nat.Defs

/-!
# Volume 3, Chapter 2: lists and multisets

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C02

-- anchor: coe_eq
/-- Two lists give the same multiset when one is a permutation of the other. -/
example : (([1, 2, 3] : List ℕ) : Multiset ℕ) = ([3, 1, 2] : List ℕ) := by
  rw [Multiset.coe_eq_coe]
  decide
-- end: coe_eq

-- anchor: cons_swap
/-- The order of two `cons` steps does not matter in a multiset. -/
example (a b : ℕ) (m : Multiset ℕ) : a ::ₘ b ::ₘ m = b ::ₘ a ::ₘ m :=
  Multiset.cons_swap a b m
-- end: cons_swap

-- anchor: count
/-- A multiset keeps the multiplicity of each element. -/
example : Multiset.count 1 ({1, 1, 2} : Multiset ℕ) = 2 := by
  decide
-- end: count

-- anchor: card_add
/-- The card of a sum of multisets is the sum of the cards. -/
example (s t : Multiset ℕ) : Multiset.card (s + t) = Multiset.card s + Multiset.card t :=
  Multiset.card_add s t
-- end: card_add

-- anchor: dedup
/-- `Multiset.dedup` removes the repeated elements. -/
example : Multiset.dedup ({1, 1, 2} : Multiset ℕ) = {1, 2} := by
  decide
-- end: dedup

-- anchor: sum
/-- The sum of a multiset does not depend on an order, so it needs a commutative monoid. -/
example : Multiset.sum ({1, 2, 3} : Multiset ℕ) = 6 := by
  decide
-- end: sum


end MathlibHandbook.V03.C02

end
