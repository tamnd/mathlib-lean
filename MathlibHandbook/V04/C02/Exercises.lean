/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Order.Hom.Basic
public import Mathlib.Order.Monotone.Basic
public import Mathlib.Algebra.Order.Group.Defs
public import Mathlib.Algebra.Order.Group.Int

/-!
# Volume 4, Chapter 2: the (L) exercises

Replace each `sorry` with a proof. The solutions are in `Solutions.lean` of the same folder.
-/

public section

namespace MathlibHandbook.V04.C02.Exercises

/-- Addition of `3` is monotone. -/
theorem monotone_add_three :
    Monotone (fun n : ℕ => n + 3) := by
  sorry

/-- A composition of strictly monotone functions is strictly monotone. -/
theorem strictMono_comp_example {f g : ℕ → ℕ} (hf : StrictMono f) (hg : StrictMono g) :
    StrictMono (g ∘ f) := by
  sorry

/-- Negation is antitone on `ℤ`. -/
theorem antitone_neg_example :
    Antitone (fun x : ℤ => -x) := by
  sorry

end MathlibHandbook.V04.C02.Exercises

end
