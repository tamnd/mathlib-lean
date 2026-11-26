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
# Volume 1, Chapter 1: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V01.C01.Solutions

-- anchor: not_not_example
/-- Double negation, proved with the excluded middle. -/
theorem not_not_example (p : Prop) : ¬¬p ↔ p := by
  exact not_not
-- end: not_not_example

-- anchor: exists_of_not_forall_not_example
/-- If not every number fails `P`, then some number has `P`. -/
theorem exists_of_not_forall_not_example (P : ℕ → Prop) (h : ¬ ∀ n, ¬ P n) : ∃ n, P n := by
  by_contra h'
  exact h fun n hn => h' ⟨n, hn⟩
-- end: exists_of_not_forall_not_example

-- anchor: three_dvd_example
/-- A divisibility statement by `decide`. -/
theorem three_dvd_example : 3 ∣ 123 := by
  decide
-- end: three_dvd_example

end MathlibHandbook.V01.C01.Solutions

end
