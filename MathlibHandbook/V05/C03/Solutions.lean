/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Subgroup.Ker
public import Mathlib.Algebra.Group.Subgroup.Lattice

/-!
# Volume 5, Chapter 3: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C03.Solutions

-- anchor: mem_top_example
/-- Each element is in the top subgroup. -/
theorem mem_top_example {G : Type*} [Group G] (x : G) : x ∈ (⊤ : Subgroup G) := by
  exact Subgroup.mem_top x
-- end: mem_top_example

-- anchor: div_mem_example
/-- A subgroup is closed under `a * b⁻¹`. -/
theorem div_mem_example {G : Type*} [Group G] (H : Subgroup G) {a b : G} (ha : a ∈ H) (hb : b ∈ H) :
    a * b⁻¹ ∈ H := by
  exact H.mul_mem ha (H.inv_mem hb)
-- end: div_mem_example

-- anchor: mem_range_example
/-- The image of an element is in the range. -/
theorem mem_range_example {G H : Type*} [Group G] [Group H] (f : G →* H) (x : G) :
    f x ∈ f.range := by
  exact MonoidHom.mem_range.2 ⟨x, rfl⟩
-- end: mem_range_example


end MathlibHandbook.V05.C03.Solutions

end
