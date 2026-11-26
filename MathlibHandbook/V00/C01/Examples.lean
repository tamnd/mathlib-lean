/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Rat
public import Mathlib.Tactic.Positivity
public import Mathlib.Tactic.Ring

/-!
# Volume 0, Chapter 1: a first look at Mathlib

These are the examples of the first chapter of the guide. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V00.C01

-- anchor: add_sq
/-- The square of a sum, proved by the tactic `ring`. -/
theorem add_sq_example (a b : ℤ) : (a + b) ^ 2 = a ^ 2 + 2 * a * b + b ^ 2 := by
  ring
-- end: add_sq

-- anchor: sq_nonneg_sum
/-- A sum of two squares in an ordered field is not negative. -/
theorem sq_add_sq_nonneg (a b : ℚ) : 0 ≤ a ^ 2 + b ^ 2 := by
  positivity
-- end: sq_nonneg_sum

end MathlibHandbook.V00.C01

end
