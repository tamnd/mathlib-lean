/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Basic
public import Mathlib.Data.Finset.Card
public import Mathlib.Data.Fintype.Card
public import Mathlib.Data.Fintype.Fin
public import Mathlib.Data.Set.Card
public import Mathlib.Algebra.Group.Nat.Even
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Volume 1, Chapter 2: sets and subtypes

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C02

-- anchor: mem_setOf
/-- A set is a predicate. Membership in `{n | Even n}` is the predicate itself, so `Iff.rfl` proves it. -/
example (x : ℕ) : x ∈ {n : ℕ | Even n} ↔ Even x :=
  Iff.rfl
-- end: mem_setOf

-- anchor: set_ext
/-- Two sets are equal when they have the same elements. -/
example : {n : ℕ | n < 2} = {0, 1} := by
  ext n
  simp only [Set.mem_ofPred_eq, Set.mem_insert_iff, Set.mem_singleton_iff]
  omega
-- end: set_ext

-- anchor: subtype
/-- An element of a subtype is a pair: a value and a proof of the property. -/
example : ((⟨4, by decide⟩ : {n : ℕ // Even n}) : ℕ) = 4 :=
  rfl
-- end: subtype

-- anchor: four_forms
/-- One statement in four forms: the numbers below `3` are three. -/
example : (Finset.range 3).card = 3 ∧ Fintype.card (Fin 3) = 3 ∧
    Fintype.card {n : ℕ // n ∈ Finset.range 3} = 3 ∧ (Set.Iio (3 : ℕ)).ncard = 3 := by
  refine ⟨Finset.card_range 3, Fintype.card_fin 3, by simp, ?_⟩
  rw [← Finset.coe_range, Set.ncard_coe_finset, Finset.card_range]
-- end: four_forms

end MathlibHandbook.V01.C02

end
