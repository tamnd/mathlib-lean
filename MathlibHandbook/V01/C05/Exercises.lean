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
# Volume 1, Chapter 5: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V01.C05.Exercises

/-- Truncated subtraction on `ℕ`. -/
theorem nat_sub_example : (2 : ℕ) - 7 = 0 := by
  sorry

/-- Division by zero on `ℚ` gives `0`. -/
theorem rat_div_zero_example (q : ℚ) : q / 0 = 0 := by
  sorry

/-- Any two elements of `Fin 1` are equal. -/
theorem subsingleton_fin_one (x y : Fin 1) : x = y := by
  sorry

end MathlibHandbook.V01.C05.Exercises

end
