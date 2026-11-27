/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Subgroup.Ker
public import Mathlib.Algebra.Group.Subgroup.Lattice

/-!
# Volume 5, Chapter 3: subgroups, the lattice of subgroups, the kernel and the range

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C03

-- anchor: mem
/-- A subgroup has the unit and is closed under products and inverses. -/
example {G : Type*} [Group G] (H : Subgroup G) {a b : G} (ha : a ∈ H) (hb : b ∈ H) :
    (1 : G) ∈ H ∧ a * b ∈ H ∧ a⁻¹ ∈ H :=
  ⟨H.one_mem, H.mul_mem ha hb, H.inv_mem ha⟩
-- end: mem

-- anchor: lattice
/-- The subgroups of `G` are a complete lattice. The bottom element has only the unit, and the meet is the intersection. -/
example {G : Type*} [Group G] (H K : Subgroup G) (x : G) :
    (x ∈ (⊥ : Subgroup G) ↔ x = 1) ∧ (x ∈ H ⊓ K ↔ x ∈ H ∧ x ∈ K) :=
  ⟨Subgroup.mem_bot, Subgroup.mem_inf⟩
-- end: lattice

-- anchor: closure
/-- The closure of a set is the smallest subgroup that contains it. -/
example {G : Type*} [Group G] (s : Set G) (H : Subgroup G) (h : s ⊆ H) : Subgroup.closure s ≤ H :=
  (Subgroup.closure_le H).2 h
-- end: closure

-- anchor: ker
/-- The kernel of `f` is the set of elements that `f` sends to `1`. -/
example {G H : Type*} [Group G] [Group H] (f : G →* H) (x : G) : x ∈ f.ker ↔ f x = 1 :=
  MonoidHom.mem_ker
-- end: ker

-- anchor: injective
/-- A homomorphism is injective if and only if its kernel is the bottom subgroup. -/
example {G H : Type*} [Group G] [Group H] (f : G →* H) : f.ker = ⊥ ↔ Function.Injective f :=
  f.ker_eq_bot_iff
-- end: injective


end MathlibHandbook.V05.C03

end
