/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Image
public import Mathlib.Order.BooleanAlgebra.Set
public import Mathlib.Algebra.Group.Nat.Even

/-!
# Volume 3, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C01.Exercises

/-- The intersection is a subset of the first set. -/
theorem inter_subset_left_example (s t : Set ℕ) : s ∩ t ⊆ s := by
  sorry

/-- The preimage of a union is the union of the preimages. -/
theorem preimage_union_example {α β : Type*} (f : α → β) (s t : Set β) : f ⁻¹' (s ∪ t) = f ⁻¹' s ∪ f ⁻¹' t := by
  sorry

/-- A set is a subset of the preimage of its image. -/
theorem subset_preimage_image_example {α β : Type*} (f : α → β) (s : Set α) : s ⊆ f ⁻¹' (f '' s) := by
  sorry

/-- The image of the preimage of a set is a subset of the set. -/
theorem image_preimage_subset_example {α β : Type*} (f : α → β) (t : Set β) : f '' (f ⁻¹' t) ⊆ t := by
  sorry


end MathlibHandbook.V03.C01.Exercises

end
