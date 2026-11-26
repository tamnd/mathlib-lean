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
# Volume 1, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V01.C02.Solutions

-- anchor: mem_inter_example
/-- An element of both sets is in the intersection. -/
theorem mem_inter_example (s t : Set ℕ) (x : ℕ) (hs : x ∈ s) (ht : x ∈ t) : x ∈ s ∩ t := by
  exact ⟨hs, ht⟩
-- end: mem_inter_example

-- anchor: subset_union_example
/-- A set is a subset of its union with another set. -/
theorem subset_union_example (s t : Set ℕ) : s ⊆ s ∪ t := by
  exact fun x hx => Or.inl hx
-- end: subset_union_example

-- anchor: card_range_five
/-- The finset `range 5` has five elements. -/
theorem card_range_five : (Finset.range 5).card = 5 := by
  exact Finset.card_range 5
-- end: card_range_five

end MathlibHandbook.V01.C02.Solutions

end
