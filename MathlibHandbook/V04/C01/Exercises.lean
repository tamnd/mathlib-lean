/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Basic
public import Mathlib.Data.Set.Basic
public import Mathlib.Basic.Real.Basic

/-!
# Volume 4, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C01.Exercises

/-- A strict inequality and an inequality give a strict inequality. -/
theorem lt_of_lt_of_le_example {α : Type*} [Preorder α] {a b c : α} (h₁ : a < b) (h₂ : b ≤ c) :
    a < c := by
  sorry

/-- Antisymmetry, with the equality in the other direction. -/
theorem eq_of_le_of_le_example {α : Type*} [PartialOrder α] {a b : α} (h₁ : a ≤ b) (h₂ : b ≤ a) :
    b = a := by
  sorry

/-- Each element is at most the maximum. -/
theorem le_max_example {α : Type*} [LinearOrder α] (a b : α) :
    b ≤ max a b := by
  sorry

end MathlibHandbook.V04.C01.Exercises

end
