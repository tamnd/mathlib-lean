/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Coset.Card
public import Mathlib.GroupTheory.OrderOfElement
public import Mathlib.GroupTheory.Index

/-!
# Volume 5, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C04.Solutions

-- anchor: pow_order_example
/-- An element to the power of its order is `1`. -/
theorem pow_order_example {G : Type*} [Monoid G] (x : G) : x ^ orderOf x = 1 := by
  exact pow_orderOf_eq_one x
-- end: pow_order_example

-- anchor: order_dvd_example
/-- If `x ^ n = 1`, then the order of `x` divides `n`. -/
theorem order_dvd_example {G : Type*} [Monoid G] {x : G} {n : ℕ} (h : x ^ n = 1) :
    orderOf x ∣ n := by
  exact orderOf_dvd_of_pow_eq_one h
-- end: order_dvd_example

-- anchor: order_one_example
/-- Only the unit has order `1`. -/
theorem order_one_example {G : Type*} [Monoid G] (x : G) : orderOf x = 1 ↔ x = 1 := by
  exact orderOf_eq_one_iff
-- end: order_one_example

-- anchor: index_dvd_example
/-- The index of a subgroup divides the order of the group. -/
theorem index_dvd_example {G : Type*} [Group G] (H : Subgroup G) : H.index ∣ Nat.card G := by
  exact ⟨Nat.card H, by rw [← H.index_mul_card]⟩
-- end: index_dvd_example


end MathlibHandbook.V05.C04.Solutions

end
