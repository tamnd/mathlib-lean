/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Basic
public import Mathlib.Topology.Algebra.Ring.Real

/-!
# Volume 34, Chapter 4: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V34.C04.Exercises

/-- An element of the second set is in the union. -/
theorem mem_union_of_mem_right (s t : Set ℕ) (x : ℕ) (h : x ∈ t) : x ∈ s ∪ t := by
  sorry

/-- A polynomial function is continuous. -/
theorem continuous_cubic : Continuous (fun x : ℝ => x ^ 3 - 2 * x + 1) := by
  sorry

/-- An involution is injective. -/
theorem involution_injective (f : ℕ → ℕ) (h : ∀ x, f (f x) = x) (a b : ℕ) (hab : f a = f b) : a = b := by
  sorry

end MathlibHandbook.V34.C04.Exercises

end
