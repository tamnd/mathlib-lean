/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Countable.Basic
public import Mathlib.Data.Set.Countable
public import Mathlib.Data.Nat.Pairing
public import Mathlib.Analysis.Real.Cardinality
public import Mathlib.Basic.Denumerable
public import Mathlib.Logic.Function.Basic

/-!
# Volume 3, Chapter 8: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C08.Exercises

/-- A subset of a countable set is countable. -/
theorem countable_mono_example (s t : Set ℝ) (h : s ⊆ t) (ht : t.Countable) : s.Countable := by
  sorry

/-- The image of a countable set is countable. -/
theorem countable_image_example (s : Set ℕ) (hs : s.Countable) (f : ℕ → ℝ) : (f '' s).Countable := by
  sorry

/-- A set with one element is countable. -/
theorem countable_singleton_example (x : ℝ) : ({x} : Set ℝ).Countable := by
  sorry

/-- The range of a map from ℕ is countable. -/
theorem countable_range_example (f : ℕ → ℝ) : (Set.range f).Countable := by
  sorry


end MathlibHandbook.V03.C08.Exercises

end
