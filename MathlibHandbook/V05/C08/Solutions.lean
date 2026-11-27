/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Sylow
public import Mathlib.GroupTheory.Perm.Cycle.Type

/-!
# Volume 5, Chapter 8: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C08.Solutions

-- anchor: sylow_nonempty_example
/-- A group has a Sylow `p`-subgroup. -/
theorem sylow_nonempty_example {G : Type*} [Group G] (p : ℕ) : Nonempty (Sylow p G) := by
  exact Sylow.nonempty
-- end: sylow_nonempty_example

-- anchor: sylow_ext_example
/-- Two Sylow subgroups with the same subgroup are equal. -/
theorem sylow_ext_example {G : Type*} [Group G] (p : ℕ) (P Q : Sylow p G) (h : (P : Subgroup G) = Q) :
    P = Q := by
  exact Sylow.ext h
-- end: sylow_ext_example

-- anchor: cauchy_two_example
/-- A group of even order has an element of order `2`. -/
theorem cauchy_two_example {G : Type*} [Group G] [Fintype G] (h : 2 ∣ Fintype.card G) :
    ∃ x : G, orderOf x = 2 := by
  have : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩
  exact exists_prime_orderOf_dvd_card 2 h
-- end: cauchy_two_example


end MathlibHandbook.V05.C08.Solutions

end
