/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Coset.Card
public import Mathlib.GroupTheory.OrderOfElement
public import Mathlib.GroupTheory.Index

/-!
# Volume 5, Chapter 4: cosets, the index, the order of an element and the theorem of Lagrange

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C04

-- anchor: lagrange
/-- The theorem of Lagrange: the order of a subgroup divides the order of the group. -/
example {G : Type*} [Group G] (H : Subgroup G) : Nat.card H ∣ Nat.card G :=
  Subgroup.card_subgroup_dvd_card H
-- end: lagrange

-- anchor: index
/-- The order of the subgroup times its index is the order of the group. -/
example {G : Type*} [Group G] (H : Subgroup G) : Nat.card H * H.index = Nat.card G :=
  H.card_mul_index
-- end: index

-- anchor: order_dvd
/-- The order of an element divides the order of a finite group. -/
example {G : Type*} [Group G] [Fintype G] (x : G) : orderOf x ∣ Fintype.card G :=
  orderOf_dvd_card
-- end: order_dvd

-- anchor: pow_card
/-- Each element of a finite group, to the power of the order of the group, is `1`. -/
example {G : Type*} [Group G] [Fintype G] (x : G) : x ^ Fintype.card G = 1 :=
  pow_card_eq_one
-- end: pow_card

-- anchor: order_pos
/-- In a finite group, the order of each element is positive. -/
example {G : Type*} [Group G] [Finite G] (x : G) : 0 < orderOf x :=
  orderOf_pos x
-- end: order_pos


end MathlibHandbook.V05.C04

end
