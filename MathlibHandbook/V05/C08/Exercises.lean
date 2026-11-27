/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Sylow
public import Mathlib.GroupTheory.Perm.Cycle.Type

/-!
# Volume 5, Chapter 8: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C08.Exercises

/-- A group has a Sylow `p`-subgroup. -/
theorem sylow_nonempty_example {G : Type*} [Group G] (p : ℕ) : Nonempty (Sylow p G) := by
  sorry

/-- Two Sylow subgroups with the same subgroup are equal. -/
theorem sylow_ext_example {G : Type*} [Group G] (p : ℕ) (P Q : Sylow p G) (h : (P : Subgroup G) = Q) :
    P = Q := by
  sorry

/-- A group of even order has an element of order `2`. -/
theorem cauchy_two_example {G : Type*} [Group G] [Fintype G] (h : 2 ∣ Fintype.card G) :
    ∃ x : G, orderOf x = 2 := by
  sorry


end MathlibHandbook.V05.C08.Exercises

end
