/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Coset.Card
public import Mathlib.GroupTheory.OrderOfElement
public import Mathlib.GroupTheory.Index

/-!
# Volume 5, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C04.Exercises

/-- An element to the power of its order is `1`. -/
theorem pow_order_example {G : Type*} [Monoid G] (x : G) : x ^ orderOf x = 1 := by
  sorry

/-- If `x ^ n = 1`, then the order of `x` divides `n`. -/
theorem order_dvd_example {G : Type*} [Monoid G] {x : G} {n : ℕ} (h : x ^ n = 1) :
    orderOf x ∣ n := by
  sorry

/-- Only the unit has order `1`. -/
theorem order_one_example {G : Type*} [Monoid G] (x : G) : orderOf x = 1 ↔ x = 1 := by
  sorry

/-- The index of a subgroup divides the order of the group. -/
theorem index_dvd_example {G : Type*} [Group G] (H : Subgroup G) : H.index ∣ Nat.card G := by
  sorry


end MathlibHandbook.V05.C04.Exercises

end
