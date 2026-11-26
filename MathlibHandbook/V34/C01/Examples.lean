/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Order.Ring.Rat
public import Mathlib.Data.Nat.Prime.Basic
public import Mathlib.Tactic.NormNum.Prime
public import Mathlib.Tactic.Ring

/-!
# Volume 34, Chapter 1: simplification

These are the examples of the first chapter of the volume of tactics: `simp`, `norm_num` and the cast tactics `push_cast` and `norm_cast`. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V34.C01

-- anchor: simp_list
/-- `simp` uses the simp lemmas `List.append_nil` and `List.length_append`. -/
example (xs ys : List ℕ) : (xs ++ []).length + ys.length = (xs ++ ys).length := by
  simp
-- end: simp_list

-- anchor: simp_only
/-- `simp only` uses only the lemmas of its list. -/
example (a b : ℕ) (h : a = b) : a + 0 = b := by
  simp only [Nat.add_zero, h]
-- end: simp_only

-- anchor: simp_at
/-- `simp at h` simplifies the hypothesis `h`. -/
example (a : ℕ) (h : a * 1 + 0 = 3) : a = 3 := by
  simp at h
  exact h
-- end: simp_at

/-- The double of a natural number. -/
def double (n : ℕ) : ℕ := 2 * n

-- anchor: simp_attr
/-- A lemma with the attribute `simp` goes into the simp set. -/
@[simp] theorem double_zero : double 0 = 0 := Nat.mul_zero 2

example : double 0 + 1 = 1 := by
  simp
-- end: simp_attr

-- anchor: simp_comm
/-- `simp` does not use `mul_comm` by default. With `mul_comm` in the list, it rewrites to a normal order. -/
example (a b c : ℕ) : a * (b * c) = c * (b * a) := by
  simp [mul_comm, mul_left_comm]
-- end: simp_comm

-- anchor: norm_num_rat
/-- `norm_num` computes with the numerals of a field. -/
example : (2 : ℚ) / 3 + 1 / 6 = 5 / 6 := by
  norm_num
-- end: norm_num_rat

-- anchor: norm_num_prime
/-- The extension `Mathlib.Tactic.NormNum.Prime` decides primality of a numeral. -/
example : Nat.Prime 97 := by
  norm_num

example : ¬ Nat.Prime 91 := by
  norm_num
-- end: norm_num_prime

-- anchor: push_cast
/-- `push_cast` moves the cast `ℕ → ℤ` to the leaves of the term. -/
example (n : ℕ) : ((n + 1) ^ 2 : ℕ) = ((n : ℤ) + 1) ^ 2 := by
  push_cast
  ring
-- end: push_cast

-- anchor: norm_cast
/-- `exact_mod_cast` and `norm_cast` remove the casts from a statement. -/
example (a b : ℕ) (h : (a : ℤ) < b) : a < b := by
  exact_mod_cast h

example (a b : ℕ) (h : (a : ℤ) + 1 = b) : a + 1 = b := by
  norm_cast at h
-- end: norm_cast

end MathlibHandbook.V34.C01

end
