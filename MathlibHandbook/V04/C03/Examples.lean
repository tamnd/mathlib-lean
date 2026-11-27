/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Lattice
public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Data.Set.Basic

/-!
# Volume 4, Chapter 3: lattices and bounded lattices

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C03

-- anchor: sup_le
/-- The supremum is the least upper bound of two elements. -/
example {α : Type*} [Lattice α] (a b c : α) (ha : a ≤ c) (hb : b ≤ c) : a ⊔ b ≤ c :=
  sup_le ha hb
-- end: sup_le

-- anchor: le_inf_iff
/-- An element is below the infimum if and only if it is below the two elements. -/
example {α : Type*} [Lattice α] (a b c : α) : a ≤ b ⊓ c ↔ a ≤ b ∧ a ≤ c :=
  le_inf_iff
-- end: le_inf_iff

-- anchor: nat
/-- In a linear order, `⊔` is `max` and `⊓` is `min`. -/
example : (3 : ℕ) ⊔ 5 = 5 ∧ (3 : ℕ) ⊓ 5 = 3 := by
  decide
-- end: nat

-- anchor: set
/-- In the lattice of sets, `⊔` is the union and `⊓` is the intersection. -/
example (s t : Set ℕ) : s ⊔ t = s ∪ t ∧ s ⊓ t = s ∩ t :=
  ⟨rfl, rfl⟩
-- end: set

-- anchor: bounded
/-- A bounded order has a least element `⊥` and a greatest element `⊤`. -/
example {α : Type*} [Lattice α] [BoundedOrder α] (a : α) : ⊥ ≤ a ∧ a ≤ ⊤ :=
  ⟨bot_le, le_top⟩
-- end: bounded

-- anchor: distrib
/-- In a distributive lattice, `⊓` distributes over `⊔`. -/
example {α : Type*} [DistribLattice α] (a b c : α) : a ⊓ (b ⊔ c) = a ⊓ b ⊔ a ⊓ c :=
  inf_sup_left a b c
-- end: distrib

end MathlibHandbook.V04.C03

end
