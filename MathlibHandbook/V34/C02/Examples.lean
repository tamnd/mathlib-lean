/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.GCongr
public import Mathlib.Tactic.LinearCombination
public import Mathlib.Tactic.Positivity
public import Mathlib.Tactic.Ring

/-!
# Volume 34, Chapter 2: algebra

These are the examples of the second chapter of the volume of tactics: `ring`, `linear_combination`, `field_simp`, `positivity` and `gcongr`. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V34.C02

-- anchor: ring_cube
/-- `ring` proves an identity of commutative rings. -/
example (a b : ℤ) : (a + b) ^ 3 = a ^ 3 + 3 * a ^ 2 * b + 3 * a * b ^ 2 + b ^ 3 := by
  ring
-- end: ring_cube

-- anchor: ring_general
/-- `ring` works in each commutative ring, and in a field it also knows the inverse of a numeral. -/
example {R : Type*} [CommRing R] (x y : R) : (x - y) * (x + y) = x ^ 2 - y ^ 2 := by
  ring

example (x : ℚ) : x / 2 + x / 2 = x := by
  ring
-- end: ring_general

-- anchor: ring_nf
/-- `ring_nf` writes a term in the normal form of `ring`. It also works on a hypothesis. -/
example (x : ℚ) (h : x * 2 + x = 6) : 3 * x = 6 := by
  ring_nf at h ⊢
  exact h
-- end: ring_nf

-- anchor: linear_combination
/-- `linear_combination e` checks that the goal minus `e` is an identity of `ring`. -/
example (a b : ℚ) (h1 : a + b = 3) (h2 : a - b = 1) : a = 2 := by
  linear_combination (h1 + h2) / 2

example (x y : ℚ) (h : x = y) : x ^ 2 = y ^ 2 := by
  linear_combination (x + y) * h
-- end: linear_combination

-- anchor: field_simp
/-- `field_simp` clears the denominators. It needs to know that each denominator is not zero. -/
example (x : ℚ) (hx : x ≠ 0) : 1 / x + 1 = (1 + x) / x := by
  field_simp
-- end: field_simp

-- anchor: positivity
/-- `positivity` proves a goal `0 < e`, `0 ≤ e` or `e ≠ 0` from the form of `e`. -/
example (x y : ℝ) : 0 < x ^ 2 + y ^ 2 + 1 := by
  positivity

example (x : ℝ) (hx : 0 < x) : 0 < x / (x + 1) := by
  positivity
-- end: positivity

-- anchor: gcongr
/-- `gcongr` reduces an inequality between two terms of the same form to inequalities between the parts. -/
example (a b c : ℝ) (h : a ≤ b) (hc : 0 ≤ c) : a * c + 3 ≤ b * c + 3 := by
  gcongr

example (x y : ℝ) (h : x ≤ y) (hx : 0 ≤ x) : x ^ 3 ≤ y ^ 3 := by
  gcongr
-- end: gcongr

end MathlibHandbook.V34.C02

end
