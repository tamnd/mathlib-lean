/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Interval.Set.Basic
public import Mathlib.Order.Interval.Set.LinearOrder
public import Mathlib.Order.Interval.Finset.Nat
public import Mathlib.Algebra.Order.Archimedean.Real.Basic

/-!
# Volume 4, Chapter 7: intervals

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C07

-- anchor: mem
/-- The membership in a closed interval is two inequalities. -/
example (x : ℝ) : x ∈ Set.Icc (0 : ℝ) 1 ↔ 0 ≤ x ∧ x ≤ 1 :=
  Set.mem_Icc
-- end: mem

-- anchor: half
/-- `norm_num` proves the membership of a number in an interval. -/
example : (1 : ℝ) / 2 ∈ Set.Ioo (0 : ℝ) 1 := by
  norm_num
-- end: half

-- anchor: subset
/-- A closed interval is in a larger closed interval. -/
example : Set.Icc (1 : ℝ) 2 ⊆ Set.Icc 0 3 :=
  Set.Icc_subset_Icc (by norm_num) (by norm_num)
-- end: subset

-- anchor: empty
/-- A closed interval with the ends in the wrong order is empty. -/
example : Set.Icc (2 : ℝ) 1 = ∅ :=
  Set.Icc_eq_empty (by norm_num)
-- end: empty

-- anchor: self
/-- A closed interval with equal ends is a singleton. -/
example (a : ℝ) : Set.Icc a a = {a} :=
  Set.Icc_self a
-- end: self

-- anchor: union
/-- Two adjacent half-open intervals make one half-open interval. -/
example : Set.Ico (0 : ℝ) 1 ∪ Set.Ico 1 2 = Set.Ico 0 2 :=
  Set.Ico_union_Ico_eq_Ico (by norm_num) (by norm_num)
-- end: union

-- anchor: finset
/-- On `ℕ`, an interval is also a finite set. -/
example : Finset.Icc 1 4 = {1, 2, 3, 4} := by
  decide
-- end: finset

end MathlibHandbook.V04.C07

end
