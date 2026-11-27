/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Basic.Countable.Basic
public import Mathlib.Data.Set.Countable
public import Mathlib.Data.Nat.Pairing
public import Mathlib.Analysis.Real.Cardinality
public import Mathlib.Basic.Denumerable
public import Mathlib.Logic.Function.Basic

/-!
# Volume 3, Chapter 8: countable and denumerable types

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C08

-- anchor: instances
/-- Mathlib has `Countable` instances for ℕ, ℤ and ℚ and for products. -/
example : Countable (ℕ × ℤ × ℚ) := by
  infer_instance
-- end: instances

-- anchor: pair
/-- `Nat.pair` codes two numbers as one, and `Nat.unpair` gives them back. -/
example (a b : ℕ) : Nat.unpair (Nat.pair a b) = (a, b) :=
  Nat.unpair_pair a b
-- end: pair

-- anchor: injective
/-- A countable type has an injective map to ℕ. -/
example (α : Type) [Countable α] : ∃ f : α → ℕ, Function.Injective f :=
  Countable.exists_injective_nat α
-- end: injective

-- anchor: union
/-- A union of two countable sets is countable. -/
example (s t : Set ℝ) (hs : s.Countable) (ht : t.Countable) : (s ∪ t).Countable :=
  hs.union ht
-- end: union

-- anchor: iUnion
/-- A countable union of countable sets is countable. -/
example (s : ℕ → Set ℝ) (h : ∀ n, (s n).Countable) : (⋃ n, s n).Countable :=
  Set.countable_iUnion h
-- end: iUnion

-- anchor: real
/-- The set of the real numbers is not countable. -/
example : ¬ (Set.univ : Set ℝ).Countable :=
  Cardinal.not_countable_real
-- end: real

-- anchor: cantor
/-- Cantor: no map from a type to its sets is surjective. -/
example (α : Type) (f : α → Set α) : ¬ Function.Surjective f :=
  Function.cantor_surjective f
-- end: cantor


end MathlibHandbook.V03.C08

end
