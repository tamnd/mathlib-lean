/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Data.Nat.Factorial.BigOperators
public import Mathlib.Tactic.Ring

/-!
# Volume 3, Chapter 6: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V03.C06.Solutions

-- anchor: sum_const_example
/-- The sum of a constant over a finset. -/
theorem sum_const_example (s : Finset ℕ) (c : ℕ) : ∑ _i ∈ s, c = s.card * c := by
  exact Finset.sum_const_nat (fun _ _ => rfl)
-- end: sum_const_example

-- anchor: prod_const_example
/-- The product of a constant over a finset is a power. -/
theorem prod_const_example (s : Finset ℕ) (c : ℕ) : ∏ _i ∈ s, c = c ^ s.card := by
  exact Finset.prod_const c
-- end: prod_const_example

-- anchor: sum_comm_example
/-- Two finite sums can change places. -/
theorem sum_comm_example (s t : Finset ℕ) (f : ℕ → ℕ → ℕ) : ∑ i ∈ s, ∑ j ∈ t, f i j = ∑ j ∈ t, ∑ i ∈ s, f i j := by
  exact Finset.sum_comm
-- end: sum_comm_example

-- anchor: sum_cubes_example
/-- Four times the sum of the cubes of 0, ..., n is (n (n + 1)) ^ 2. -/
theorem sum_cubes_example (n : ℕ) : 4 * ∑ i ∈ Finset.range (n + 1), i ^ 3 = (n * (n + 1)) ^ 2 := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, mul_add, ih]; ring
-- end: sum_cubes_example


end MathlibHandbook.V03.C06.Solutions

end
