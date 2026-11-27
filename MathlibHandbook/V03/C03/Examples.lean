/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Finset.Card
public import Mathlib.Data.Finset.Powerset
public import Mathlib.Data.Finset.Image
public import Mathlib.Data.Finset.Prod
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Volume 3, Chapter 3: finite sets

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C03

-- anchor: decide
/-- Membership and the card of an explicit finset of numbers are decidable. -/
example : (3 : ℕ) ∈ ({1, 2, 3} : Finset ℕ) ∧ ({1, 2, 3} : Finset ℕ).card = 3 := by
  decide
-- end: decide

-- anchor: insert
/-- Inserting a new element adds one to the card. -/
example (s : Finset ℕ) (a : ℕ) (h : a ∉ s) : (insert a s).card = s.card + 1 :=
  Finset.card_insert_of_notMem h
-- end: insert

-- anchor: filter
/-- The filter of a finset keeps the elements that satisfy a decidable predicate. -/
example : ((Finset.range 10).filter (fun n => n % 3 = 0)).card = 4 := by
  decide
-- end: filter

-- anchor: image
/-- The image of a finset under an injective function has the same card. -/
example (s : Finset ℕ) : (s.image (fun n => 2 * n)).card = s.card :=
  Finset.card_image_of_injective s (fun a b (h : 2 * a = 2 * b) => by omega)
-- end: image

-- anchor: incl_excl
/-- Inclusion and exclusion for two finsets. -/
example (s t : Finset ℕ) : (s ∪ t).card + (s ∩ t).card = s.card + t.card :=
  Finset.card_union_add_card_inter s t
-- end: incl_excl

-- anchor: powerset
/-- A finset with n elements has 2 ^ n subsets. -/
example (s : Finset ℕ) : s.powerset.card = 2 ^ s.card :=
  Finset.card_powerset s
-- end: powerset

-- anchor: induction
/-- Induction on finsets: a statement for the empty finset and for each insert. -/
example (s : Finset ℕ) : s.card ≤ s.card + 1 := by
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih => omega
-- end: induction


end MathlibHandbook.V03.C03

end
