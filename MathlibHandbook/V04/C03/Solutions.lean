/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Lattice
public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Data.Set.Basic

/-!
# Volume 4, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C03.Solutions

-- anchor: sup_comm_example
/-- The supremum is commutative. -/
theorem sup_comm_example {α : Type*} [Lattice α] (a b : α) :
    a ⊔ b = b ⊔ a := by
  exact sup_comm a b
-- end: sup_comm_example

-- anchor: inf_le_sup_example
/-- The infimum is below the supremum. -/
theorem inf_le_sup_example {α : Type*} [Lattice α] (a b : α) :
    a ⊓ b ≤ a ⊔ b := by
  exact le_trans inf_le_left le_sup_left
-- end: inf_le_sup_example

-- anchor: sup_inf_absorb_example
/-- The absorption law. -/
theorem sup_inf_absorb_example {α : Type*} [Lattice α] (a b : α) :
    a ⊔ a ⊓ b = a := by
  exact sup_inf_self
-- end: sup_inf_absorb_example

end MathlibHandbook.V04.C03.Solutions

end
