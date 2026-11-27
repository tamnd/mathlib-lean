/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Fintype.BigOperators
public import Mathlib.Data.Fintype.Pigeonhole
public import Mathlib.Data.Fintype.Powerset
public import Mathlib.Data.Fintype.Option
public import Mathlib.Data.Fintype.Perm

/-!
# Volume 3, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C04.Solutions

-- anchor: card_le_of_injective_example
/-- An injective map does not go to a smaller finite type. -/
theorem card_le_of_injective_example (α β : Type) [Fintype α] [Fintype β] (f : α → β) (hf : Function.Injective f) : Fintype.card α ≤ Fintype.card β := by
  exact Fintype.card_le_of_injective f hf
-- end: card_le_of_injective_example

-- anchor: card_congr_example
/-- Equivalent finite types have the same card. -/
theorem card_congr_example (α β : Type) [Fintype α] [Fintype β] (e : α ≃ β) : Fintype.card α = Fintype.card β := by
  exact Fintype.card_congr e
-- end: card_congr_example

-- anchor: card_option_example
/-- `Option α` has one more element than `α`. -/
theorem card_option_example (α : Type) [Fintype α] : Fintype.card (Option α) = Fintype.card α + 1 := by
  exact Fintype.card_option
-- end: card_option_example

-- anchor: card_univ_example
/-- The card of `Finset.univ` is the card of the type. -/
theorem card_univ_example (α : Type) [Fintype α] : (Finset.univ : Finset α).card = Fintype.card α := by
  exact Finset.card_univ
-- end: card_univ_example


end MathlibHandbook.V03.C04.Solutions

end
