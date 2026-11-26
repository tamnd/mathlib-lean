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
# Volume 1, Chapter 1: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V01.C01.Exercises

/-- Double negation, proved with the excluded middle. -/
theorem not_not_example (p : Prop) : ¬¬p ↔ p := by
  sorry

/-- If not every number fails `P`, then some number has `P`. -/
theorem exists_of_not_forall_not_example (P : ℕ → Prop) (h : ¬ ∀ n, ¬ P n) : ∃ n, P n := by
  sorry

/-- A divisibility statement by `decide`. -/
theorem three_dvd_example : 3 ∣ 123 := by
  sorry

end MathlibHandbook.V01.C01.Exercises

end
