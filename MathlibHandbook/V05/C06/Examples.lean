/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.GroupAction.Quotient

/-!
# Volume 5, Chapter 6: group actions, orbits, stabilizers and the orbit-stabilizer theorem

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C06

-- anchor: action
/-- An action of `G` on `X`: the unit acts as the identity, and a product acts as a composite. -/
example {G X : Type*} [Group G] [MulAction G X] (g h : G) (x : X) :
    (1 : G) • x = x ∧ g • h • x = (g * h) • x :=
  ⟨one_smul G x, smul_smul g h x⟩
-- end: action

-- anchor: orbit
/-- The orbit of `x` is the set of the elements `g • x`. -/
example {G X : Type*} [Group G] [MulAction G X] (x y : X) :
    y ∈ MulAction.orbit G x ↔ ∃ g : G, g • x = y :=
  MulAction.mem_orbit_iff
-- end: orbit

-- anchor: stabilizer
/-- The stabilizer of `x` is the subgroup of the elements that fix `x`. -/
example {G X : Type*} [Group G] [MulAction G X] (x : X) (g : G) :
    g ∈ MulAction.stabilizer G x ↔ g • x = x :=
  MulAction.mem_stabilizer_iff
-- end: stabilizer

-- anchor: orbit_stabilizer
/-- The orbit-stabilizer theorem: the size of the orbit times the order of the stabilizer is the order of the group. -/
example {G X : Type*} [Group G] [MulAction G X] [Fintype G] (x : X)
    [Fintype (MulAction.orbit G x)] [Fintype (MulAction.stabilizer G x)] :
    Fintype.card (MulAction.orbit G x) * Fintype.card (MulAction.stabilizer G x) = Fintype.card G :=
  MulAction.card_orbit_mul_card_stabilizer_eq_card_group G x
-- end: orbit_stabilizer

-- anchor: regular
/-- A group acts on itself by left multiplication. The orbit of `1` is the whole group. -/
example {G : Type*} [Group G] (g : G) : g ∈ MulAction.orbit G (1 : G) :=
  MulAction.mem_orbit_iff.2 ⟨g, mul_one g⟩
-- end: regular


end MathlibHandbook.V05.C06

end
