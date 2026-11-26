/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Ring.Nat
public import Mathlib.Algebra.Order.Group.Nat

/-!
# Volume 1, Chapter 6: to_additive and the naming convention

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C06

-- anchor: mul_one_add_zero
/-- `mul_one` and `add_zero` are one lemma in two forms. `to_additive` makes the second from the first. -/
example {G A : Type*} [Group G] [AddGroup A] (g : G) (a : A) : g * 1 = g ∧ a + 0 = a :=
  ⟨mul_one g, add_zero a⟩
-- end: mul_one_add_zero

-- anchor: own_to_additive
/-- A lemma with `@[to_additive]`: Lean also makes `add_neg_cancel_right_example`. -/
@[to_additive]
theorem mul_inv_cancel_right_example {G : Type*} [Group G] (a b : G) : a * b * b⁻¹ = a := by
  rw [mul_assoc, mul_inv_cancel, mul_one]
-- end: own_to_additive

-- anchor: use_additive
/-- The additive form that `to_additive` made. -/
example {A : Type*} [AddGroup A] (a b : A) : a + b + -b = a :=
  add_neg_cancel_right_example a b
-- end: use_additive

-- anchor: naming
/-- The name says the statement: `add_le_add` adds two inequalities `≤`. -/
example (a b c d : ℕ) (h₁ : a ≤ b) (h₂ : c ≤ d) : a + c ≤ b + d :=
  add_le_add h₁ h₂
-- end: naming

-- anchor: naming_of
/-- In `lt_of_lt_of_le`, the conclusion comes first, and the hypotheses follow `of`. -/
example (a b c : ℕ) (h₁ : a < b) (h₂ : b ≤ c) : a < c :=
  lt_of_lt_of_le h₁ h₂
-- end: naming_of

end MathlibHandbook.V01.C06

end
