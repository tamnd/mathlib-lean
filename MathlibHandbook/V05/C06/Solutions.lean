/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.GroupAction.Quotient

/-!
# Volume 5, Chapter 6: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C06.Solutions

-- anchor: mem_orbit_self_example
/-- Each element is in its own orbit. -/
theorem mem_orbit_self_example {G X : Type*} [Group G] [MulAction G X] (x : X) :
    x ∈ MulAction.orbit G x := by
  exact MulAction.mem_orbit_self x
-- end: mem_orbit_self_example

-- anchor: smul_mem_orbit_example
/-- The element `g • x` is in the orbit of `x`. -/
theorem smul_mem_orbit_example {G X : Type*} [Group G] [MulAction G X] (g : G) (x : X) :
    g • x ∈ MulAction.orbit G x := by
  exact MulAction.mem_orbit x g
-- end: smul_mem_orbit_example

-- anchor: one_mem_stabilizer_example
/-- The unit is in each stabilizer. -/
theorem one_mem_stabilizer_example {G X : Type*} [Group G] [MulAction G X] (x : X) :
    (1 : G) ∈ MulAction.stabilizer G x := by
  exact MulAction.mem_stabilizer_iff.2 (one_smul G x)
-- end: one_mem_stabilizer_example


end MathlibHandbook.V05.C06.Solutions

end
