/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Order.Filter.AtTopBot.Basic
public import Mathlib.Tactic.Choose
public import Mathlib.Tactic.Lift
public import Mathlib.Tactic.Linarith

/-!
# Volume 34, Chapter 5: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V34.C05.Solutions

-- anchor: exists_of_exists_and
/-- A witness of a conjunction is a witness of each part. -/
theorem exists_of_exists_and (p q : ℕ → Prop) (h : ∃ n, p n ∧ q n) : ∃ n, q n := by
  obtain ⟨n, -, hq⟩ := h
  exact ⟨n, hq⟩
-- end: exists_of_exists_and

-- anchor: exists_bound_function
/-- A bound for each number gives a bounding function. -/
theorem exists_bound_function (h : ∀ n : ℕ, ∃ m, 2 * n ≤ m) : ∃ f : ℕ → ℕ, ∀ n, 2 * n ≤ f n := by
  choose f hf using h
  exact ⟨f, hf⟩
-- end: exists_bound_function

-- anchor: eventually_le_add
/-- The sum of two eventual bounds. -/
theorem eventually_le_add (f g : ℕ → ℝ) (hf : ∀ᶠ n in Filter.atTop, f n ≤ 1) (hg : ∀ᶠ n in Filter.atTop, g n ≤ 2) : ∀ᶠ n in Filter.atTop, f n + g n ≤ 3 := by
  filter_upwards [hf, hg] with n h1 h2
  linarith
-- end: eventually_le_add

end MathlibHandbook.V34.C05.Solutions

end
