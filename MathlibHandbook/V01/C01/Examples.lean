/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Logic.Basic
public import Mathlib.Data.Nat.Notation
public import Mathlib.Tactic.ByContra
public import Mathlib.Tactic.SplitIfs

/-!
# Volume 1, Chapter 1: logic, choice and decidability

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C01

-- anchor: em
/-- The law of the excluded middle comes from the axiom of choice. -/
example (p : Prop) : p ∨ ¬p :=
  Classical.em p
-- end: em

-- anchor: by_contra
/-- A proof by contradiction: assume `¬p` and derive `False`. -/
example (p : Prop) (h : ¬¬p) : p := by
  by_contra hp
  exact h hp
-- end: by_contra

-- anchor: choose
/-- `Classical.choose` gives a witness of an existence statement, and `Classical.choose_spec` gives its property. -/
example (f : ℕ → ℕ) (h : ∃ n, f n = 0) : f (Classical.choose h) = 0 :=
  Classical.choose_spec h
-- end: choose

-- anchor: decide
/-- A decidable statement about small numbers has a proof by `decide`. -/
example : 2 ^ 10 = 1024 ∧ ¬ 7 ∣ 100 := by
  decide
-- end: decide

-- anchor: dite
/-- An `if` needs a `Decidable` instance of its condition. Equality on `ℕ` has one. -/
example (n : ℕ) : (if n = 0 then 1 else n) ≠ 0 := by
  split_ifs with h
  · exact Nat.one_ne_zero
  · exact h
-- end: dite

-- anchor: classical_if
open Classical in
/-- With `open Classical`, every proposition is decidable, so any `if` elaborates. -/
example (p : Prop) : (if p then 1 else 0 : ℕ) ≤ 1 := by
  split_ifs <;> decide
-- end: classical_if

end MathlibHandbook.V01.C01

end
