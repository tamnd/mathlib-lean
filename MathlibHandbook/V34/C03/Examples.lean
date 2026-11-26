/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.Linarith

/-!
# Volume 34, Chapter 3: arithmetic

These are the examples of the third chapter of the volume of tactics: `linarith`, `nlinarith`, `omega` and `decide`. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V34.C03

-- anchor: linarith
/-- `linarith` finds a linear combination of the hypotheses that gives a contradiction with the negated goal. -/
example (x y : ℝ) (h1 : x < y) (h2 : y ≤ 3) : x < 3 := by
  linarith

example (a b c : ℚ) (h1 : a + 2 * b ≤ c) (h2 : 0 ≤ b) : a ≤ c := by
  linarith
-- end: linarith

-- anchor: linarith_terms
/-- A term in the list of `linarith` is one more hypothesis. Here the term is a fact about a square. -/
example (a b : ℝ) (h : a ^ 2 + b ^ 2 = 0) : a ^ 2 ≤ 0 := by
  linarith [sq_nonneg b]
-- end: linarith_terms

-- anchor: nlinarith
/-- `nlinarith` also multiplies pairs of hypotheses and terms. -/
example (a b : ℝ) : 2 * a * b ≤ a ^ 2 + b ^ 2 := by
  nlinarith [sq_nonneg (a - b)]

example (x : ℝ) (h1 : 0 ≤ x) (h2 : x ≤ 1) : x ^ 2 ≤ x := by
  nlinarith
-- end: nlinarith

-- anchor: omega
/-- `omega` decides linear arithmetic over `ℕ` and `ℤ`, with `%` and `/` by a numeral. -/
example (n : ℕ) (h : n % 4 = 3) : n % 2 = 1 := by
  omega

example (a b : ℤ) (h : 2 * a + 1 = 2 * b) : False := by
  omega

example (a b : ℕ) (h : b ≤ a) : a - b + b = a := by
  omega
-- end: omega

-- anchor: decide
/-- `decide` evaluates a decidable proposition with no free variable. -/
example : 17 ∣ 221 := by
  decide

example : ∀ n < 10, n ^ 2 % 3 ≠ 2 := by
  decide
-- end: decide

end MathlibHandbook.V34.C03

end
