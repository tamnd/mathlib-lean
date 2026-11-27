/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Basic
public import Mathlib.Data.Set.Basic
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 1: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C01.Solutions

-- anchor: lt_of_lt_of_le_example
/-- A strict inequality and an inequality give a strict inequality. -/
theorem lt_of_lt_of_le_example {α : Type*} [Preorder α] {a b c : α} (h₁ : a < b) (h₂ : b ≤ c) :
    a < c := by
  exact lt_of_lt_of_le h₁ h₂
-- end: lt_of_lt_of_le_example

-- anchor: eq_of_le_of_le_example
/-- Antisymmetry, with the equality in the other direction. -/
theorem eq_of_le_of_le_example {α : Type*} [PartialOrder α] {a b : α} (h₁ : a ≤ b) (h₂ : b ≤ a) :
    b = a := by
  exact le_antisymm h₂ h₁
-- end: eq_of_le_of_le_example

-- anchor: le_max_example
/-- Each element is at most the maximum. -/
theorem le_max_example {α : Type*} [LinearOrder α] (a b : α) :
    b ≤ max a b := by
  exact le_max_right a b
-- end: le_max_example

end MathlibHandbook.V04.C01.Solutions

end
