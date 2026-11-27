/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Finsupp.Basic
public import Mathlib.Algebra.Group.Finsupp

/-!
# Volume 3, Chapter 7: finitely supported functions

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C07

-- anchor: single
/-- `Finsupp.single a b` has the value b at a and 0 at each other point. -/
example : (Finsupp.single 2 5 : ℕ →₀ ℤ) 2 = 5 ∧ (Finsupp.single 2 5 : ℕ →₀ ℤ) 3 = 0 := by
  simp
-- end: single

-- anchor: add
/-- Two finitely supported functions add pointwise. -/
example (f g : ℕ →₀ ℤ) (a : ℕ) : (f + g) a = f a + g a :=
  Finsupp.add_apply f g a
-- end: add

-- anchor: single_add
/-- `single a` is additive. -/
example (a : ℕ) (b c : ℤ) : Finsupp.single a (b + c) = Finsupp.single a b + Finsupp.single a c :=
  Finsupp.single_add a b c
-- end: single_add

-- anchor: support
/-- The support of `single a b` with b ≠ 0 is {a}. -/
example : (Finsupp.single 2 (5 : ℤ)).support = {2} := by
  simp
-- end: support

-- anchor: mem_support
/-- A point is in the support when the value is not zero. -/
example (f : ℕ →₀ ℤ) (a : ℕ) : a ∈ f.support ↔ f a ≠ 0 :=
  Finsupp.mem_support_iff
-- end: mem_support

-- anchor: sum
/-- `Finsupp.sum f g` is the sum of `g a (f a)` over the support of f. -/
example (a : ℕ) (b : ℤ) : (Finsupp.single a b).sum (fun _ x => 2 * x) = 2 * b := by
  simp [Finsupp.sum_single_index]
-- end: sum


end MathlibHandbook.V03.C07

end
