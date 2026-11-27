/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.GroupAction.Quotient

/-!
# Volume 5, Chapter 6: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C06.Exercises

/-- Each element is in its own orbit. -/
theorem mem_orbit_self_example {G X : Type*} [Group G] [MulAction G X] (x : X) :
    x ∈ MulAction.orbit G x := by
  sorry

/-- The element `g • x` is in the orbit of `x`. -/
theorem smul_mem_orbit_example {G X : Type*} [Group G] [MulAction G X] (g : G) (x : X) :
    g • x ∈ MulAction.orbit G x := by
  sorry

/-- The unit is in each stabilizer. -/
theorem one_mem_stabilizer_example {G X : Type*} [Group G] [MulAction G X] (x : X) :
    (1 : G) ∈ MulAction.stabilizer G x := by
  sorry


end MathlibHandbook.V05.C06.Exercises

end
