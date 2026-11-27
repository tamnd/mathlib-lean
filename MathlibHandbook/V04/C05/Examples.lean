/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.ConditionallyCompleteLattice.Basic
public import Mathlib.Algebra.Order.Archimedean.Real.Basic

/-!
# Volume 4, Chapter 5: conditionally complete lattices and the supremum on the reals

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C05

-- anchor: le_csSup
/-- An element of a set that is bounded above is below the supremum of the set. -/
example (s : Set ℝ) (a : ℝ) (hs : BddAbove s) (ha : a ∈ s) : a ≤ sSup s :=
  le_csSup hs ha
-- end: le_csSup

-- anchor: csSup_le
/-- The supremum of a nonempty set is below each upper bound of the set. -/
example (s : Set ℝ) (b : ℝ) (hs : s.Nonempty) (h : ∀ x ∈ s, x ≤ b) : sSup s ≤ b :=
  csSup_le hs h
-- end: csSup_le

-- anchor: isLUB
/-- For a nonempty set that is bounded above, `sSup` is the least upper bound. -/
example (s : Set ℝ) (h₁ : s.Nonempty) (h₂ : BddAbove s) : IsLUB s (sSup s) :=
  isLUB_csSup h₁ h₂
-- end: isLUB

-- anchor: approx
/-- Below the supremum, there is an element of the set. -/
example (s : Set ℝ) (hs : s.Nonempty) (b : ℝ) (hb : b < sSup s) : ∃ a ∈ s, b < a :=
  exists_lt_of_lt_csSup hs hb
-- end: approx

-- anchor: icc
/-- The supremum of a closed interval is its right end. -/
example : sSup (Set.Icc (0 : ℝ) 1) = 1 :=
  csSup_Icc (by norm_num)
-- end: icc

-- anchor: junk
/-- The supremum of the empty set and of an unbounded set of reals is the junk value `0`. -/
example : sSup (∅ : Set ℝ) = 0 ∧ sSup (Set.univ : Set ℝ) = 0 :=
  ⟨Real.sSup_empty, Real.sSup_univ⟩
-- end: junk

end MathlibHandbook.V04.C05

end
