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
# Volume 1, Chapter 4: the class hierarchy, instances and coercions

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C04

-- anchor: field_rat
/-- The instance search finds the field structure of `ℚ`. -/
example : Field ℚ :=
  inferInstance
-- end: field_rat

-- anchor: div_mul_cancel
/-- A lemma about all fields applies to `ℚ` through the instance. -/
example (a b : ℚ) (hb : b ≠ 0) : a / b * b = a :=
  div_mul_cancel₀ a hb
-- end: div_mul_cancel

-- anchor: map_add
/-- A ring hom is a bundled structure. `map_add` works for every class of homs that preserve addition. -/
example (f : ℤ →+* ℚ) (a b : ℤ) : f (a + b) = f a + f b :=
  map_add f a b
-- end: map_add

-- anchor: map_one
/-- The same hom preserves `1`, by `map_one`. -/
example (f : ℤ →+* ℚ) : f 1 = 1 :=
  map_one f
-- end: map_one

-- anchor: push_cast
/-- `push_cast` moves a coercion from `ℕ` to `ℤ` past the operations. -/
example (n : ℕ) : ((n + 1 : ℕ) : ℤ) = (n : ℤ) + 1 := by
  push_cast
  rfl
-- end: push_cast

-- anchor: exact_mod_cast
/-- The coercion from `ℕ` to `ℤ` is injective, and `exact_mod_cast` uses this. -/
example (a b : ℕ) (h : (a : ℤ) = b) : a = b := by
  exact_mod_cast h
-- end: exact_mod_cast

end MathlibHandbook.V01.C04

end
