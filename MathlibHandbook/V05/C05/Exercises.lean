/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# Volume 5, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C05.Exercises

/-- The class of `1` is the unit of the quotient. -/
theorem mk_one_example {G : Type*} [Group G] (N : Subgroup G) [N.Normal] :
    ((1 : G) : G ⧸ N) = 1 := by
  sorry

/-- The kernel of the map to the quotient is the subgroup. -/
theorem ker_mk_example {G : Type*} [Group G] (N : Subgroup G) [N.Normal] :
    (QuotientGroup.mk' N).ker = N := by
  sorry

/-- A normal subgroup also has `g⁻¹ * n * g`. -/
theorem conj_mem_example {G : Type*} [Group G] (N : Subgroup G) [N.Normal] {n : G} (hn : n ∈ N) (g : G) :
    g⁻¹ * n * g ∈ N := by
  sorry


end MathlibHandbook.V05.C05.Exercises

end
