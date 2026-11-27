/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Basic
public import Mathlib.Data.Set.Basic
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 1: preorders, partial orders and linear orders

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C01

-- anchor: preorder
/-- A preorder is reflexive and transitive. `le_trans` chains two inequalities. -/
example {α : Type*} [Preorder α] (a b c : α) (h₁ : a ≤ b) (h₂ : b ≤ c) : a ≤ c :=
  le_trans h₁ h₂
-- end: preorder

-- anchor: antisymm
/-- In a partial order, two inequalities in opposite directions give an equality. -/
example (m n : ℕ) (h₁ : m ≤ n) (h₂ : n ≤ m) : m = n :=
  le_antisymm h₁ h₂
-- end: antisymm

-- anchor: lt
/-- In a preorder, `a < b` means `a ≤ b` and not `b ≤ a`. -/
example {α : Type*} [Preorder α] (a b : α) : a < b ↔ a ≤ b ∧ ¬b ≤ a :=
  lt_iff_le_not_ge
-- end: lt

-- anchor: not_linear
/-- The subsets of `ℕ` are a partial order, but two subsets can be incomparable. -/
example : ¬({0} : Set ℕ) ⊆ {1} ∧ ¬({1} : Set ℕ) ⊆ {0} := by
  simp
-- end: not_linear

-- anchor: total
/-- In a linear order, any two elements are comparable. -/
example (x y : ℝ) : x ≤ y ∨ y ≤ x :=
  le_total x y
-- end: total

-- anchor: not_lt
/-- In a linear order, the negation of `x < y` is `y ≤ x`. -/
example (x y : ℝ) (h : ¬x < y) : y ≤ x :=
  not_lt.mp h
-- end: not_lt

-- anchor: min_max
/-- A linear order has `min` and `max`. -/
example (a b : ℤ) : min a b ≤ a ∧ a ≤ max a b :=
  ⟨min_le_left a b, le_max_left a b⟩
-- end: min_max

end MathlibHandbook.V04.C01

end
