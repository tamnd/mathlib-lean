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
# Volume 3, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C03.Exercises

/-- A subset has a card that is not larger. -/
theorem card_le_of_subset_example (s t : Finset ℕ) (h : s ⊆ t) : s.card ≤ t.card := by
  sorry

/-- The card of a union is at most the sum of the cards. -/
theorem card_union_le_example (s t : Finset ℕ) : (s ∪ t).card ≤ s.card + t.card := by
  sorry

/-- A filter does not make a finset larger. -/
theorem card_filter_le_example (s : Finset ℕ) (p : ℕ → Prop) [DecidablePred p] : (s.filter p).card ≤ s.card := by
  sorry

/-- The card of a product is the product of the cards. -/
theorem card_product_example (s t : Finset ℕ) : (s ×ˢ t).card = s.card * t.card := by
  sorry


end MathlibHandbook.V03.C03.Exercises

end
