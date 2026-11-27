/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Subgroup.Ker
public import Mathlib.Algebra.Group.Subgroup.Lattice

/-!
# Volume 5, Chapter 3: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C03.Exercises

/-- Each element is in the top subgroup. -/
theorem mem_top_example {G : Type*} [Group G] (x : G) : x ∈ (⊤ : Subgroup G) := by
  sorry

/-- A subgroup is closed under `a * b⁻¹`. -/
theorem div_mem_example {G : Type*} [Group G] (H : Subgroup G) {a b : G} (ha : a ∈ H) (hb : b ∈ H) :
    a * b⁻¹ ∈ H := by
  sorry

/-- The image of an element is in the range. -/
theorem mem_range_example {G H : Type*} [Group G] [Group H] (f : G →* H) (x : G) :
    f x ∈ f.range := by
  sorry


end MathlibHandbook.V05.C03.Exercises

end
