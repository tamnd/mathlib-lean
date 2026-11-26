/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Unique
public import Mathlib.Data.Fin.Basic
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Algebra.Field.Rat

/-!
# Volume 1, Chapter 5: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V01.C05.Solutions

-- anchor: nat_sub_example
/-- Truncated subtraction on `ℕ`. -/
theorem nat_sub_example : (2 : ℕ) - 7 = 0 := by
  rfl
-- end: nat_sub_example

-- anchor: rat_div_zero_example
/-- Division by zero on `ℚ` gives `0`. -/
theorem rat_div_zero_example (q : ℚ) : q / 0 = 0 := by
  exact div_zero q
-- end: rat_div_zero_example

-- anchor: subsingleton_fin_one
/-- Any two elements of `Fin 1` are equal. -/
theorem subsingleton_fin_one (x y : Fin 1) : x = y := by
  exact Subsingleton.elim x y
-- end: subsingleton_fin_one

end MathlibHandbook.V01.C05.Solutions

end
