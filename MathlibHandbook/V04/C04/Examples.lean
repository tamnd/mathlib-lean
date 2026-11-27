/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.CompleteLattice.Basic
public import Mathlib.Order.FixedPoints
public import Mathlib.Data.Set.Lattice.Order

/-!
# Volume 4, Chapter 4: complete lattices and fixed points

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C04

-- anchor: sSup_le
/-- The supremum of a set is below each upper bound of the set. -/
example {α : Type*} [CompleteLattice α] (s : Set α) (a : α) (h : ∀ b ∈ s, b ≤ a) : sSup s ≤ a :=
  sSup_le h
-- end: sSup_le

-- anchor: le_sSup
/-- Each element of a set is below the supremum of the set. -/
example {α : Type*} [CompleteLattice α] (s : Set α) (a : α) (h : a ∈ s) : a ≤ sSup s :=
  le_sSup h
-- end: le_sSup

-- anchor: set
/-- In the lattice of sets, the supremum of a family of sets is its union. -/
example (S : Set (Set ℕ)) : sSup S = ⋃₀ S :=
  rfl
-- end: set

-- anchor: prop
/-- The propositions are a complete lattice, and `⊔` is `∨`. -/
example (p q : Prop) : (p ⊔ q) = (p ∨ q) :=
  rfl
-- end: prop

-- anchor: lfp
/-- The least fixed point of a monotone map is a fixed point. -/
example {α : Type*} [CompleteLattice α] (f : α →o α) : f (OrderHom.lfp f) = OrderHom.lfp f :=
  f.map_lfp
-- end: lfp

-- anchor: lfp_le
/-- The least fixed point is below each element that `f` does not move up. -/
example {α : Type*} [CompleteLattice α] (f : α →o α) (a : α) (h : f a ≤ a) : OrderHom.lfp f ≤ a :=
  f.lfp_le h
-- end: lfp_le

end MathlibHandbook.V04.C04

end
