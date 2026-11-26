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
# Volume 1, Chapter 5: nonempty, inhabited, unique and subsingleton types, and the junk values

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C05

-- anchor: nonempty
/-- `Nonempty α` is a proposition: it says that `α` has an element, and it forgets which. -/
example : Nonempty ℕ :=
  ⟨0⟩
-- end: nonempty

-- anchor: inhabited
/-- `Inhabited α` is data: it gives one element, `default`. -/
example : (default : ℕ) = 0 :=
  rfl
-- end: inhabited

-- anchor: unique
/-- `Fin 1` has exactly one element, so it is `Unique`, and any two of its elements are equal. -/
example (x y : Fin 1) : x = y := by
  have : Unique (Fin 1) := inferInstance
  exact Subsingleton.elim x y
-- end: unique

-- anchor: div_zero
/-- Division by zero is total: it gives `0`. -/
example (x : ℝ) : x / 0 = 0 ∧ (0 : ℝ)⁻¹ = 0 :=
  ⟨div_zero x, inv_zero⟩
-- end: div_zero

-- anchor: nat_sub
/-- Subtraction on `ℕ` is truncated at `0`. -/
example : (3 : ℕ) - 5 = 0 :=
  rfl
-- end: nat_sub

-- anchor: int_div
/-- Division on `ℤ` rounds down: this is the Euclidean convention for a positive divisor. -/
example : (7 : ℤ) / 2 = 3 ∧ (-7 : ℤ) / 2 = -4 := by
  decide
-- end: int_div

-- anchor: sqrt_log
/-- The square root and the logarithm have junk values outside their usual domains. -/
example (x : ℝ) : Real.sqrt (-1) = 0 ∧ Real.log 0 = 0 ∧ Real.log (-x) = Real.log x :=
  ⟨Real.sqrt_eq_zero_of_nonpos (by norm_num), Real.log_zero, Real.log_neg_eq_log x⟩
-- end: sqrt_log

end MathlibHandbook.V01.C05

end
