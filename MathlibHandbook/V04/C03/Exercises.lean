/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Lattice
public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Data.Set.Basic

/-!
# Volume 4, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C03.Exercises

/-- The supremum is commutative. -/
theorem sup_comm_example {α : Type*} [Lattice α] (a b : α) :
    a ⊔ b = b ⊔ a := by
  sorry

/-- The infimum is below the supremum. -/
theorem inf_le_sup_example {α : Type*} [Lattice α] (a b : α) :
    a ⊓ b ≤ a ⊔ b := by
  sorry

/-- The absorption law. -/
theorem sup_inf_absorb_example {α : Type*} [Lattice α] (a b : α) :
    a ⊔ a ⊓ b = a := by
  sorry

end MathlibHandbook.V04.C03.Exercises

end
