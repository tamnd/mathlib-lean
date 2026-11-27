/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Fintype.BigOperators
public import Mathlib.Data.Fintype.Pigeonhole
public import Mathlib.Data.Fintype.Powerset
public import Mathlib.Data.Fintype.Option
public import Mathlib.Data.Fintype.Perm

/-!
# Volume 3, Chapter 4: finite types

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C04

-- anchor: univ
/-- Each element of a finite type is in `Finset.univ`. -/
example (x : Fin 5) : x ∈ (Finset.univ : Finset (Fin 5)) :=
  Finset.mem_univ x
-- end: univ

-- anchor: card_fin
/-- The type `Fin n` has `n` elements. -/
example : Fintype.card (Fin 7) = 7 :=
  Fintype.card_fin 7
-- end: card_fin

-- anchor: card_prod
/-- The card of a product of finite types. -/
example : Fintype.card (Bool × Fin 3) = 6 := by
  simp [Fintype.card_prod]
-- end: card_prod

-- anchor: card_fun
/-- There are 2 ^ 3 functions from `Fin 3` to `Bool`. -/
example : Fintype.card (Fin 3 → Bool) = 8 := by
  rw [Fintype.card_fun]; simp
-- end: card_fun

-- anchor: card_set
/-- A finite type with n elements has 2 ^ n subsets. -/
example : Fintype.card (Set (Fin 4)) = 16 := by
  simp [Fintype.card_set]
-- end: card_set

-- anchor: pigeonhole
/-- The pigeonhole principle: a map from a larger finite type is not injective. -/
example (f : Fin 5 → Fin 4) : ∃ x y, x ≠ y ∧ f x = f y :=
  Fintype.exists_ne_map_eq_of_card_lt f (by simp)
-- end: pigeonhole

-- anchor: decide
/-- A statement about all elements of a small finite type can be checked by `decide`. -/
example : ∀ x : Fin 4, x * x ≠ 2 := by
  decide
-- end: decide


end MathlibHandbook.V03.C04

end
