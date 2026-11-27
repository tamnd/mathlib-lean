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
# Volume 4, Chapter 2: the solutions of the (L) exercises

Each theorem has the name and the statement of the exercise in `Exercises.lean`. The script `scripts/Exercises.lean` checks that the two statements are the same.
-/

public section

namespace MathlibHandbook.V04.C02.Solutions

-- anchor: monotone_add_three
/-- Addition of `3` is monotone. -/
theorem monotone_add_three :
    Monotone (fun n : ℕ => n + 3) := by
  intro a b h
  dsimp only
  omega
-- end: monotone_add_three

-- anchor: strictMono_comp_example
/-- A composition of strictly monotone functions is strictly monotone. -/
theorem strictMono_comp_example {f g : ℕ → ℕ} (hf : StrictMono f) (hg : StrictMono g) :
    StrictMono (g ∘ f) := by
  exact hg.comp hf
-- end: strictMono_comp_example

-- anchor: antitone_neg_example
/-- Negation is antitone on `ℤ`. -/
theorem antitone_neg_example :
    Antitone (fun x : ℤ => -x) := by
  intro a b h
  exact neg_le_neg h
-- end: antitone_neg_example

end MathlibHandbook.V04.C02.Solutions

end
