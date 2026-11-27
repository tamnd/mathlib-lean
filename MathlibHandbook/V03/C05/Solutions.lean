/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.Data.Set.Finite.Lattice
public import Mathlib.Data.Nat.PrimeFin
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Volume 3, Chapter 5: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C05.Solutions

-- anchor: finite_inter_example
/-- The intersection with a finite set is finite. -/
theorem finite_inter_example (s t : Set ℕ) (hs : s.Finite) : (s ∩ t).Finite := by
  exact hs.subset Set.inter_subset_left
-- end: finite_inter_example

-- anchor: infinite_mono_example
/-- A set that contains an infinite set is infinite. -/
theorem infinite_mono_example (s t : Set ℕ) (h : s ⊆ t) (hs : s.Infinite) : t.Infinite := by
  exact hs.mono h
-- end: infinite_mono_example

-- anchor: injective_surjective_example
/-- A map from a finite type to itself is injective if and only if it is surjective. -/
theorem injective_surjective_example (α : Type) [Finite α] (f : α → α) : Function.Injective f ↔ Function.Surjective f := by
  exact Finite.injective_iff_surjective
-- end: injective_surjective_example

-- anchor: infinite_of_injective_example
/-- A type with an injective map from an infinite type is infinite. -/
theorem infinite_of_injective_example (α : Type) (f : ℕ → α) (hf : Function.Injective f) : Infinite α := by
  exact Infinite.of_injective f hf
-- end: infinite_of_injective_example


end MathlibHandbook.V03.C05.Solutions

end
