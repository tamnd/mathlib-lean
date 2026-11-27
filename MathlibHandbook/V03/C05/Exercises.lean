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
# Volume 3, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C05.Exercises

/-- The intersection with a finite set is finite. -/
theorem finite_inter_example (s t : Set ℕ) (hs : s.Finite) : (s ∩ t).Finite := by
  sorry

/-- A set that contains an infinite set is infinite. -/
theorem infinite_mono_example (s t : Set ℕ) (h : s ⊆ t) (hs : s.Infinite) : t.Infinite := by
  sorry

/-- A map from a finite type to itself is injective if and only if it is surjective. -/
theorem injective_surjective_example (α : Type) [Finite α] (f : α → α) : Function.Injective f ↔ Function.Surjective f := by
  sorry

/-- A type with an injective map from an infinite type is infinite. -/
theorem infinite_of_injective_example (α : Type) (f : ℕ → α) (hf : Function.Injective f) : Infinite α := by
  sorry


end MathlibHandbook.V03.C05.Exercises

end
