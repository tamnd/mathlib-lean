/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Image
public import Mathlib.Order.BooleanAlgebra.Set
public import Mathlib.Algebra.Group.Nat.Even

/-!
# Volume 3, Chapter 1: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C01.Solutions

-- anchor: inter_subset_left_example
/-- The intersection is a subset of the first set. -/
theorem inter_subset_left_example (s t : Set ℕ) : s ∩ t ⊆ s := by
  exact fun x hx => hx.1
-- end: inter_subset_left_example

-- anchor: preimage_union_example
/-- The preimage of a union is the union of the preimages. -/
theorem preimage_union_example {α β : Type*} (f : α → β) (s t : Set β) : f ⁻¹' (s ∪ t) = f ⁻¹' s ∪ f ⁻¹' t := by
  rfl
-- end: preimage_union_example

-- anchor: subset_preimage_image_example
/-- A set is a subset of the preimage of its image. -/
theorem subset_preimage_image_example {α β : Type*} (f : α → β) (s : Set α) : s ⊆ f ⁻¹' (f '' s) := by
  exact fun x hx => ⟨x, hx, rfl⟩
-- end: subset_preimage_image_example

-- anchor: image_preimage_subset_example
/-- The image of the preimage of a set is a subset of the set. -/
theorem image_preimage_subset_example {α β : Type*} (f : α → β) (t : Set β) : f '' (f ⁻¹' t) ⊆ t := by
  rintro _ ⟨x, hx, rfl⟩
  exact hx
-- end: image_preimage_subset_example


end MathlibHandbook.V03.C01.Solutions

end
