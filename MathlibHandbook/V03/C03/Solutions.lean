/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Finset.Card
public import Mathlib.Data.Finset.Powerset
public import Mathlib.Data.Finset.Image
public import Mathlib.Data.Finset.Prod
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Volume 3, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C03.Solutions

-- anchor: card_le_of_subset_example
/-- A subset has a card that is not larger. -/
theorem card_le_of_subset_example (s t : Finset ℕ) (h : s ⊆ t) : s.card ≤ t.card := by
  exact Finset.card_le_card h
-- end: card_le_of_subset_example

-- anchor: card_union_le_example
/-- The card of a union is at most the sum of the cards. -/
theorem card_union_le_example (s t : Finset ℕ) : (s ∪ t).card ≤ s.card + t.card := by
  exact Finset.card_union_le s t
-- end: card_union_le_example

-- anchor: card_filter_le_example
/-- A filter does not make a finset larger. -/
theorem card_filter_le_example (s : Finset ℕ) (p : ℕ → Prop) [DecidablePred p] : (s.filter p).card ≤ s.card := by
  exact Finset.card_filter_le s p
-- end: card_filter_le_example

-- anchor: card_product_example
/-- The card of a product is the product of the cards. -/
theorem card_product_example (s t : Finset ℕ) : (s ×ˢ t).card = s.card * t.card := by
  exact Finset.card_product s t
-- end: card_product_example


end MathlibHandbook.V03.C03.Solutions

end
