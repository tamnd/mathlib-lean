/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# Volume 5, Chapter 5: normal subgroups, quotient groups and the first isomorphism theorem

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C05

-- anchor: normal
/-- A normal subgroup is closed under conjugation. -/
example {G : Type*} [Group G] (N : Subgroup G) [N.Normal] {n : G} (hn : n ∈ N) (g : G) :
    g * n * g⁻¹ ∈ N :=
  Subgroup.Normal.conj_mem n hn g
-- end: normal

-- anchor: ker_normal
/-- The kernel of a homomorphism is a normal subgroup. -/
example {G H : Type*} [Group G] [Group H] (f : G →* H) : f.ker.Normal :=
  f.normal_ker
-- end: ker_normal

-- anchor: mk_mul
/-- The map to the quotient respects products. The coercion `↑a` is the class of `a`. -/
example {G : Type*} [Group G] (N : Subgroup G) [N.Normal] (a b : G) :
    ((a * b : G) : G ⧸ N) = (a : G ⧸ N) * (b : G ⧸ N) :=
  QuotientGroup.mk_mul N a b
-- end: mk_mul

-- anchor: eq
/-- Two elements have the same class if and only if `a⁻¹ * b` is in the subgroup. -/
example {G : Type*} [Group G] (N : Subgroup G) (a b : G) :
    (a : G ⧸ N) = (b : G ⧸ N) ↔ a⁻¹ * b ∈ N :=
  QuotientGroup.eq
-- end: eq

-- anchor: lift
/-- A homomorphism that is `1` on `N` goes down to the quotient. -/
example {G H : Type*} [Group G] [Group H] (N : Subgroup G) [N.Normal] (f : G →* H)
    (h : N ≤ f.ker) (g : G) : QuotientGroup.lift N f h (g : G ⧸ N) = f g :=
  QuotientGroup.lift_mk N h g
-- end: lift

-- anchor: first_iso
/-- The first isomorphism theorem: `G ⧸ ker f` is isomorphic to the range of `f`. -/
noncomputable example {G H : Type*} [Group G] [Group H] (f : G →* H) : G ⧸ f.ker ≃* f.range :=
  QuotientGroup.quotientKerEquivRange f
-- end: first_iso


end MathlibHandbook.V05.C05

end
