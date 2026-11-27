/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Hom.Defs
public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Algebra.Group.Basic

/-!
# Volume 5, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V05.C02.Exercises

/-- A homomorphism respects powers. -/
theorem map_pow_example {G H : Type*} [Monoid G] [Monoid H] (f : G →* H) (a : G) (n : ℕ) :
    f (a ^ n) = f a ^ n := by
  sorry

/-- A homomorphism of groups respects division. -/
theorem map_div_example {G H : Type*} [Group G] [Group H] (f : G →* H) (a b : G) :
    f (a / b) = f a / f b := by
  sorry

/-- The identity homomorphism. -/
theorem id_apply_example {G : Type*} [Monoid G] (x : G) : MonoidHom.id G x = x := by
  sorry


end MathlibHandbook.V05.C02.Exercises

end
