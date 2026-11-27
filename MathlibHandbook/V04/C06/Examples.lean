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
# Volume 4, Chapter 6: Galois connections

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C06

-- anchor: def
/-- A Galois connection is the condition `l a ≤ b ↔ a ≤ u b` for all `a` and `b`. -/
example {α β : Type*} [Preorder α] [Preorder β] (l : α → β) (u : β → α) :
    GaloisConnection l u ↔ ∀ a b, l a ≤ b ↔ a ≤ u b :=
  Iff.rfl
-- end: def

-- anchor: image
/-- The image and the preimage of a function are a Galois connection. -/
example {α β : Type*} (f : α → β) : GaloisConnection (Set.image f) (Set.preimage f) :=
  fun _ _ => Set.image_subset_iff
-- end: image

-- anchor: floor
/-- The cast from `ℤ` and the floor are a Galois connection. -/
example (x : ℝ) (z : ℤ) : z ≤ ⌊x⌋ ↔ (z : ℝ) ≤ x :=
  Int.le_floor
-- end: floor

-- anchor: monotone
/-- The two maps of a Galois connection are monotone. -/
example {α β : Type*} [Preorder α] [Preorder β] {l : α → β} {u : β → α}
    (gc : GaloisConnection l u) : Monotone l ∧ Monotone u :=
  ⟨gc.monotone_l, gc.monotone_u⟩
-- end: monotone

-- anchor: unit
/-- The composite `u ∘ l` moves each element up, and `l ∘ u` moves each element down. -/
example {α β : Type*} [Preorder α] [Preorder β] {l : α → β} {u : β → α}
    (gc : GaloisConnection l u) (a : α) (b : β) : a ≤ u (l a) ∧ l (u b) ≤ b :=
  ⟨gc.le_u_l a, gc.l_u_le b⟩
-- end: unit

-- anchor: sup
/-- The lower map preserves the supremum. -/
example {α β : Type*} [Lattice α] [Lattice β] {l : α → β} {u : β → α}
    (gc : GaloisConnection l u) (a₁ a₂ : α) : l (a₁ ⊔ a₂) = l a₁ ⊔ l a₂ :=
  gc.l_sup
-- end: sup

end MathlibHandbook.V04.C06

end
