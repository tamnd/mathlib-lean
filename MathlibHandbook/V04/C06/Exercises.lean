/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.GaloisConnection.Basic
public import Mathlib.Data.Set.Lattice.Image
public import Mathlib.Algebra.Order.Floor.Defs
public import Mathlib.Algebra.Order.Archimedean.Real.Basic

/-!
# Volume 4, Chapter 6: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C06.Exercises

/-- The composite `l ∘ u` moves each element down. -/
theorem l_u_le_example {α β : Type*} [Preorder α] [Preorder β] {l : α → β} {u : β → α} (gc : GaloisConnection l u) (b : β) :
    l (u b) ≤ b := by
  sorry

/-- The upper map preserves the infimum. -/
theorem u_inf_example {α β : Type*} [Lattice α] [Lattice β] {l : α → β} {u : β → α} (gc : GaloisConnection l u) (b₁ b₂ : β) :
    u (b₁ ⊓ b₂) = u b₁ ⊓ u b₂ := by
  sorry

/-- The image of a union is the union of the images. -/
theorem image_union_example {α β : Type*} (f : α → β) (s t : Set α) :
    f '' (s ∪ t) = f '' s ∪ f '' t := by
  sorry

end MathlibHandbook.V04.C06.Exercises

end
