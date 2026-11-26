/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Basic
public import Mathlib.Topology.Algebra.Ring.Real

/-!
# Volume 34, Chapter 4: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V34.C04.Solutions

-- anchor: mem_union_of_mem_right
/-- An element of the second set is in the union. -/
theorem mem_union_of_mem_right (s t : Set ℕ) (x : ℕ) (h : x ∈ t) : x ∈ s ∪ t := by
  aesop
-- end: mem_union_of_mem_right

-- anchor: continuous_cubic
/-- A polynomial function is continuous. -/
theorem continuous_cubic : Continuous (fun x : ℝ => x ^ 3 - 2 * x + 1) := by
  fun_prop
-- end: continuous_cubic

-- anchor: involution_injective
/-- An involution is injective. -/
theorem involution_injective (f : ℕ → ℕ) (h : ∀ x, f (f x) = x) (a b : ℕ) (hab : f a = f b) : a = b := by
  grind
-- end: involution_injective

end MathlibHandbook.V34.C04.Solutions

end
