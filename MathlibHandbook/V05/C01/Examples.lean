/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Group.Commute.Defs
public import Mathlib.Tactic.Group

/-!
# Volume 5, Chapter 1: monoids, groups and the additive copy of each lemma

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C01

-- anchor: group_axioms
/-- The axioms of a group: associativity, the unit and the inverse. -/
example {G : Type*} [Group G] (a b c : G) : a * b * c = a * (b * c) ∧ 1 * a = a ∧ a⁻¹ * a = 1 :=
  ⟨mul_assoc a b c, one_mul a, inv_mul_cancel a⟩
-- end: group_axioms

-- anchor: mul_inv_rev
/-- The inverse of a product reverses the order of the factors. -/
example {G : Type*} [Group G] (a b : G) : (a * b)⁻¹ = b⁻¹ * a⁻¹ :=
  mul_inv_rev a b
-- end: mul_inv_rev

-- anchor: cancel
/-- In a group, a factor on the left cancels. -/
example {G : Type*} [Group G] {a b c : G} (h : a * b = a * c) : b = c :=
  mul_left_cancel h
-- end: cancel

-- anchor: additive
/-- `to_additive` makes the additive lemma from the multiplicative one: `inv_mul_cancel` gives `neg_add_cancel`. -/
example {A : Type*} [AddGroup A] (a : A) : -a + a = 0 :=
  neg_add_cancel a
-- end: additive

-- anchor: comm_group
/-- In a commutative group, the factors of a product commute. -/
example {G : Type*} [CommGroup G] (a b : G) : a * b * a⁻¹ = b := by
  rw [mul_comm a b, mul_assoc, mul_inv_cancel, mul_one]
-- end: comm_group

-- anchor: group_tactic
/-- The tactic `group` proves an equation that follows from the axioms of a group. -/
example {G : Type*} [Group G] (a b : G) : a * b * b⁻¹ * a⁻¹ = 1 := by
  group
-- end: group_tactic


end MathlibHandbook.V05.C01

end
