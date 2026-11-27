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
# Volume 3, Chapter 8: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C08.Solutions

-- anchor: countable_mono_example
/-- A subset of a countable set is countable. -/
theorem countable_mono_example (s t : Set ℝ) (h : s ⊆ t) (ht : t.Countable) : s.Countable := by
  exact ht.mono h
-- end: countable_mono_example

-- anchor: countable_image_example
/-- The image of a countable set is countable. -/
theorem countable_image_example (s : Set ℕ) (hs : s.Countable) (f : ℕ → ℝ) : (f '' s).Countable := by
  exact hs.image f
-- end: countable_image_example

-- anchor: countable_singleton_example
/-- A set with one element is countable. -/
theorem countable_singleton_example (x : ℝ) : ({x} : Set ℝ).Countable := by
  exact Set.countable_singleton x
-- end: countable_singleton_example

-- anchor: countable_range_example
/-- The range of a map from ℕ is countable. -/
theorem countable_range_example (f : ℕ → ℝ) : (Set.range f).Countable := by
  exact Set.countable_range f
-- end: countable_range_example


end MathlibHandbook.V03.C08.Solutions

end
