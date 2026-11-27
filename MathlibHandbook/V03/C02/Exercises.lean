/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Multiset.Count
public import Mathlib.Data.Multiset.AddSub
public import Mathlib.Data.Multiset.Dedup
public import Mathlib.Algebra.BigOperators.Group.Multiset.Defs
public import Mathlib.Algebra.Group.Nat.Defs

/-!
# Volume 3, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V03.C02.Exercises

/-- Adding an element adds one to the card. -/
theorem card_cons_example (a : ℕ) (m : Multiset ℕ) : Multiset.card (a ::ₘ m) = Multiset.card m + 1 := by
  sorry

/-- Adding an element adds one to its count. -/
theorem count_cons_self_example (a : ℕ) (m : Multiset ℕ) : Multiset.count a (a ::ₘ m) = Multiset.count a m + 1 := by
  sorry

/-- An element is in the multiset that `cons` makes from it. -/
theorem mem_cons_example (a : ℕ) (m : Multiset ℕ) : a ∈ a ::ₘ m := by
  sorry

/-- The count in a sum is the sum of the counts. -/
theorem count_add_example (a : ℕ) (s t : Multiset ℕ) : Multiset.count a (s + t) = Multiset.count a s + Multiset.count a t := by
  sorry


end MathlibHandbook.V03.C02.Exercises

end
