/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Basic
public import Mathlib.Algebra.Order.Ring.Nat

/-!
# Volume 0, Chapter 2: reading a signature

These are the examples of the second chapter of the guide. Each one uses a lemma of Mathlib in a different way, so the reader sees the role of each kind of argument.
-/

public section

namespace MathlibHandbook.V00.C02

-- anchor: explicit_args
/-- The arguments `a` and `b` of `add_comm` are explicit, so the proof gives them. -/
example (a b : ℕ) : a + b = b + a :=
  add_comm a b
-- end: explicit_args

-- anchor: implicit_args
/-- The type and the instance of `mul_comm` are implicit. Lean finds them from the goal. -/
example (a b : ℤ) : a * b = b * a :=
  mul_comm a b
-- end: implicit_args

-- anchor: at_explicit
/-- With `@`, each argument is explicit, also the type and the instance. -/
example : (2 : ℤ) * 3 = 3 * 2 :=
  @mul_comm ℤ _ 2 3
-- end: at_explicit

-- anchor: instance_args
/-- The instance argument `[Group G]` gives the operations and the axioms of a group. -/
example (G : Type*) [Group G] (a : G) : a * a⁻¹ = 1 :=
  mul_inv_cancel a
-- end: instance_args

-- anchor: iff_use
/-- A lemma that states `↔` gives two implications: `.mp` and `.mpr`. -/
example (n : ℕ) (h : n ≠ 0) : 0 < n :=
  Nat.pos_iff_ne_zero.mpr h
-- end: iff_use

-- anchor: named_args
/-- An argument can also go by its name. -/
example (a b c : ℕ) (h : a ≤ b) : a + c ≤ b + c :=
  Nat.add_le_add_right h (k := c)
-- end: named_args

end MathlibHandbook.V00.C02

end
