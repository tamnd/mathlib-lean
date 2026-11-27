/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.ConditionallyCompleteLattice.Basic
public import Mathlib.Algebra.Order.Archimedean.Real.Basic

/-!
# Volume 4, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C05.Exercises

/-- The number `2` is below the supremum of `[0, 2]`. -/
theorem le_csSup_two_example :
    (2 : ℝ) ≤ sSup (Set.Icc (0 : ℝ) 2) := by
  sorry

/-- A nonempty set of reals with the upper bound `1` has a supremum at most `1`. -/
theorem csSup_le_one_example (s : Set ℝ) (hs : s.Nonempty) (h : ∀ x ∈ s, x ≤ 1) :
    sSup s ≤ 1 := by
  sorry

/-- The supremum of the empty set of reals is `0`. -/
theorem sSup_empty_real_example :
    sSup (∅ : Set ℝ) = 0 := by
  sorry

end MathlibHandbook.V04.C05.Exercises

end
