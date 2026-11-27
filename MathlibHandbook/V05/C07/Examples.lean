/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.SpecificGroups.Alternating

/-!
# Volume 5, Chapter 7: permutations, the sign and the alternating group

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C07

-- anchor: perm
/-- A permutation of `α` is a bijection `α ≃ α`, and the permutations are a group under composition. -/
example : Fintype.card (Equiv.Perm (Fin 3)) = 6 := by
  rw [Fintype.card_perm, Fintype.card_fin]
  rfl
-- end: perm

-- anchor: swap
/-- The transposition `Equiv.swap a b` exchanges `a` and `b`. -/
example : Equiv.swap (0 : Fin 3) 1 0 = 1 :=
  Equiv.swap_apply_left 0 1
-- end: swap

-- anchor: sign_swap
/-- A transposition has the sign `-1`. -/
example : Equiv.Perm.sign (Equiv.swap (0 : Fin 3) 1) = -1 :=
  Equiv.Perm.sign_swap (by decide)
-- end: sign_swap

-- anchor: sign_mul
/-- The sign is a homomorphism to the units of `ℤ`. -/
example {α : Type*} [DecidableEq α] [Fintype α] (f g : Equiv.Perm α) :
    Equiv.Perm.sign (f * g) = Equiv.Perm.sign f * Equiv.Perm.sign g :=
  Equiv.Perm.sign_mul f g
-- end: sign_mul

-- anchor: alternating
/-- The alternating group is the kernel of the sign. Its index is `2`. -/
example : (alternatingGroup (Fin 3)).index = 2 :=
  alternatingGroup.index_eq_two
-- end: alternating


end MathlibHandbook.V05.C07

end
