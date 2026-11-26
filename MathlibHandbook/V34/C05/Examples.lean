/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Real.Basic
public import Mathlib.Order.Filter.AtTopBot.Basic
public import Mathlib.Tactic.Choose
public import Mathlib.Tactic.Lift
public import Mathlib.Tactic.NormNum

/-!
# Volume 34, Chapter 5: the structure of a proof

These are the examples of the fifth chapter of the volume of tactics: `rcases`, `obtain`, `rintro`, `choose`, `lift` and `filter_upwards`. Each example has an anchor, so the handbook can show it.
-/

public section

open Filter

namespace MathlibHandbook.V34.C05

-- anchor: rcases_and
/-- `rcases` takes a hypothesis apart with a pattern. -/
example (p q : Prop) (h : p ∧ q) : q ∧ p := by
  rcases h with ⟨hp, hq⟩
  exact ⟨hq, hp⟩
-- end: rcases_and

-- anchor: rcases_or
/-- The pattern `rfl | rfl` gives one goal for each case, and substitutes the equation in each. -/
example (x : ℤ) (h : x = 1 ∨ x = -1) : x ^ 2 = 1 := by
  rcases h with rfl | rfl <;> norm_num
-- end: rcases_or

-- anchor: obtain
/-- `obtain pat := e` is `rcases e with pat`, written as a step of the proof. -/
example (f : ℕ → ℕ) (h : ∃ n, f n = 0) : ∃ m, f m ≤ 0 := by
  obtain ⟨n, hn⟩ := h
  exact ⟨n, hn.le⟩
-- end: obtain

-- anchor: rintro
/-- `rintro` introduces the variables and takes them apart in one step. -/
example (s t : Set ℕ) : s ∩ t ⊆ t ∩ s := by
  rintro x ⟨hs, ht⟩
  exact ⟨ht, hs⟩
-- end: rintro

-- anchor: choose
/-- `choose` turns a hypothesis `∀ x, ∃ y, P x y` into a function and its property. -/
example (h : ∀ n : ℕ, ∃ m, n < m) : ∃ f : ℕ → ℕ, ∀ n, n < f n := by
  choose f hf using h
  exact ⟨f, hf⟩
-- end: choose

-- anchor: lift
/-- `lift` replaces a variable of `ℤ` with a variable of `ℕ`, when it has a proof that the variable is not negative. -/
example (n : ℤ) (h : 0 ≤ n) (p : ℤ → Prop) (hp : ∀ k : ℕ, p k) : p n := by
  lift n to ℕ using h
  exact hp n
-- end: lift

-- anchor: filter_upwards
/-- `filter_upwards` combines eventual facts: the goal holds where all the facts of the list hold. -/
example (f g : ℕ → ℝ) (hf : ∀ᶠ n in atTop, 0 ≤ f n) (hg : ∀ᶠ n in atTop, 0 ≤ g n) :
    ∀ᶠ n in atTop, 0 ≤ f n + g n := by
  filter_upwards [hf, hg] with n h1 h2
  exact add_nonneg h1 h2
-- end: filter_upwards

end MathlibHandbook.V34.C05

end
