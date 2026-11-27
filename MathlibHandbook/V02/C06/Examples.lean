/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Fin.Basic
public import Mathlib.Data.ZMod.Defs
public import Mathlib.Data.ZMod.Basic
public import Mathlib.Tactic.NormNum

/-!
# Volume 2, Chapter 6: Fin n and ZMod n

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V02.C06

-- anchor: fin_add
/-- Addition on `Fin n` wraps around at `n`. -/
example : (3 : Fin 5) + 4 = 2 := by decide
-- end: fin_add

-- anchor: fin_val_add
/-- The value of a sum in `Fin n` is the sum of the values, minus `n` if it is too big. -/
example {n : ℕ} (a b : Fin n) :
    (a + b).val = if n ≤ a.val + b.val then a.val + b.val - n else a.val + b.val :=
  Fin.val_add_eq_ite a b
-- end: fin_val_add

-- anchor: zmod_compute
/-- Arithmetic in `ZMod 7` is decidable: `5` is the inverse of `3`. -/
example : (3 : ZMod 7) * 5 = 1 := by decide
-- end: zmod_compute

-- anchor: natCast_self
/-- The cast of `n` to `ZMod n` is zero. -/
example : ((12 : ℕ) : ZMod 12) = 0 := ZMod.natCast_self 12
-- end: natCast_self

-- anchor: intCast_zero
/-- An integer is zero in `ZMod b` if and only if `b` divides it. -/
example : ((21 : ℤ) : ZMod 7) = 0 :=
  (ZMod.intCast_zmod_eq_zero_iff_dvd 21 7).mpr (by norm_num)
-- end: intCast_zero

-- anchor: intCast_eq
/-- An equation in `ZMod n` is a congruence modulo `n`. -/
example (a b : ℤ) : (a : ZMod 5) = b ↔ a ≡ b [ZMOD 5] := ZMod.intCast_eq_intCast_iff a b 5
-- end: intCast_eq

-- anchor: val
/-- `ZMod.val` gives the representative in `0, 1, ..., n - 1`. -/
example (x : ZMod 6) : x.val < 6 ∧ ((x.val : ℕ) : ZMod 6) = x :=
  ⟨ZMod.val_lt x, ZMod.natCast_zmod_val x⟩
-- end: val

end MathlibHandbook.V02.C06

end
