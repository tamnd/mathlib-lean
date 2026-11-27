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
# Volume 3, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C04.Exercises

/-- An injective map does not go to a smaller finite type. -/
theorem card_le_of_injective_example (α β : Type) [Fintype α] [Fintype β] (f : α → β) (hf : Function.Injective f) : Fintype.card α ≤ Fintype.card β := by
  sorry

/-- Equivalent finite types have the same card. -/
theorem card_congr_example (α β : Type) [Fintype α] [Fintype β] (e : α ≃ β) : Fintype.card α = Fintype.card β := by
  sorry

/-- `Option α` has one more element than `α`. -/
theorem card_option_example (α : Type) [Fintype α] : Fintype.card (Option α) = Fintype.card α + 1 := by
  sorry

/-- The card of `Finset.univ` is the card of the type. -/
theorem card_univ_example (α : Type) [Fintype α] : (Finset.univ : Finset α).card = Fintype.card α := by
  sorry


end MathlibHandbook.V03.C04.Exercises

end
