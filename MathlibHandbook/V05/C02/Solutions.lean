/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Hom.Defs
public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Algebra.Group.Basic

/-!
# Volume 5, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V05.C02.Solutions

-- anchor: map_pow_example
/-- A homomorphism respects powers. -/
theorem map_pow_example {G H : Type*} [Monoid G] [Monoid H] (f : G →* H) (a : G) (n : ℕ) :
    f (a ^ n) = f a ^ n := by
  exact map_pow f a n
-- end: map_pow_example

-- anchor: map_div_example
/-- A homomorphism of groups respects division. -/
theorem map_div_example {G H : Type*} [Group G] [Group H] (f : G →* H) (a b : G) :
    f (a / b) = f a / f b := by
  exact map_div f a b
-- end: map_div_example

-- anchor: id_apply_example
/-- The identity homomorphism. -/
theorem id_apply_example {G : Type*} [Monoid G] (x : G) : MonoidHom.id G x = x := by
  rfl
-- end: id_apply_example


end MathlibHandbook.V05.C02.Solutions

end
