/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.Order.Ring.Rat

/-!
# Volume 0, Chapter 4: finding a declaration

These are the examples of the fourth chapter of the guide. Each lemma here has a name that the naming convention of Mathlib gives from its statement.
-/

public section

namespace MathlibHandbook.V00.C04

open Finset

-- anchor: two_mul
/-- `two_mul`: the statement is `2 * a = a + a`, and the name reads the left side. -/
example (a : ℤ) : 2 * a = a + a :=
  two_mul a
-- end: two_mul

-- anchor: add_pos
/-- `add_pos`: the sum of two positive numbers is positive. The name gives the operation and the conclusion. -/
example (a b : ℚ) (ha : 0 < a) (hb : 0 < b) : 0 < a + b :=
  add_pos ha hb
-- end: add_pos

-- anchor: mul_le_mul_of_nonneg_left
/-- A hypothesis goes into the name after `of`. -/
example (a b c : ℚ) (h : b ≤ c) (ha : 0 ≤ a) : a * b ≤ a * c :=
  mul_le_mul_of_nonneg_left h ha
-- end: mul_le_mul_of_nonneg_left

-- anchor: sum_range_succ
/-- `Finset.sum_range_succ`: the namespace is the type of the main object, a finite set. -/
example (n : ℕ) : ∑ i ∈ range (n + 1), i = ∑ i ∈ range n, i + n :=
  sum_range_succ (fun i => i) n
-- end: sum_range_succ

end MathlibHandbook.V00.C04

end
