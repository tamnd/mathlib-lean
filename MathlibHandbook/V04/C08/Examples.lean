/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Group.Abs
public import Mathlib.Algebra.Order.Group.Int
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 8: ordered groups and the absolute value

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C08

-- anchor: add_le_add
/-- Two inequalities add. -/
example (a b c d : ℤ) (h₁ : a ≤ b) (h₂ : c ≤ d) : a + c ≤ b + d :=
  add_le_add h₁ h₂
-- end: add_le_add

-- anchor: class
/-- The class `IsOrderedAddMonoid` says that addition preserves the order. -/
example {α : Type*} [AddCommGroup α] [PartialOrder α] [IsOrderedAddMonoid α] (a b c : α)
    (h : a ≤ b) : c + a ≤ c + b :=
  add_le_add_right h c
-- end: class

-- anchor: sub_nonneg
/-- A difference is nonnegative if and only if the inequality holds. -/
example (a b : ℝ) : 0 ≤ a - b ↔ b ≤ a :=
  sub_nonneg
-- end: sub_nonneg

-- anchor: abs
/-- The absolute value is nonnegative and is at least the number. -/
example (x : ℝ) : 0 ≤ |x| ∧ x ≤ |x| :=
  ⟨abs_nonneg x, le_abs_self x⟩
-- end: abs

-- anchor: triangle
/-- The triangle inequality. -/
example (a b : ℝ) : |a + b| ≤ |a| + |b| :=
  abs_add_le a b
-- end: triangle

-- anchor: abs_le
/-- A bound on the absolute value is two inequalities. -/
example (x r : ℝ) : |x| ≤ r ↔ -r ≤ x ∧ x ≤ r :=
  abs_le
-- end: abs_le

-- anchor: dist
/-- The absolute value of a difference is symmetric. -/
example (a b : ℝ) : |a - b| = |b - a| :=
  abs_sub_comm a b
-- end: dist

end MathlibHandbook.V04.C08

end
