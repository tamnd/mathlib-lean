/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Field.Rat
public import Mathlib.Algebra.Ring.Hom.Defs
public import Mathlib.Data.Int.Cast.Lemmas
public import Mathlib.Tactic.NormNum.Basic
public import Mathlib.Tactic.Ring

/-!
# Volume 1, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V01.C04.Exercises

/-- A ring hom preserves products. -/
theorem map_mul_example (f : ℤ →+* ℚ) (a b : ℤ) : f (a * b) = f a * f b := by
  sorry

/-- The coercion from `ℕ` to `ℚ` preserves sums. -/
theorem cast_add_example (a b : ℕ) : ((a + b : ℕ) : ℚ) = a + b := by
  sorry

/-- In the field `ℚ`, the number `2` has an inverse. -/
theorem two_mul_inv_example : (2 : ℚ) * 2⁻¹ = 1 := by
  sorry

end MathlibHandbook.V01.C04.Exercises

end
