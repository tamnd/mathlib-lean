/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Logic.Function.Basic
public import Mathlib.Logic.Equiv.Defs
public import Mathlib.Logic.Equiv.Prod
public import Mathlib.Tactic.Ring

/-!
# Volume 1, Chapter 3: functions and equivalences

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V01.C03

open Function

-- anchor: injective_comp
/-- The composite of two injective functions is injective. -/
example {α β γ : Type*} {f : α → β} {g : β → γ} (hg : Injective g) (hf : Injective f) :
    Injective (g ∘ f) :=
  hg.comp hf
-- end: injective_comp

-- anchor: double_injective
/-- Doubling is injective on `ℕ`. -/
example : Injective (fun n : ℕ => 2 * n) := by
  intro a b h
  simp only at h
  omega
-- end: double_injective

-- anchor: double_not_surjective
/-- Doubling is not surjective on `ℕ`: no number doubles to `1`. -/
example : ¬ Surjective (fun n : ℕ => 2 * n) := by
  intro h
  obtain ⟨n, hn⟩ := h 1
  simp only at hn
  omega
-- end: double_not_surjective

-- anchor: leftInverse
/-- A function with a left inverse is injective. -/
example : Injective (fun n : ℕ => n + 3) :=
  LeftInverse.injective (g := fun n => n - 3) fun n => by simp
-- end: leftInverse

-- anchor: equiv
/-- An equivalence is a function, an inverse and two proofs. It is bijective. -/
example : (Equiv.prodComm ℕ ℤ) (1, -1) = (-1, 1) ∧ Bijective (Equiv.prodComm ℕ ℤ) :=
  ⟨rfl, (Equiv.prodComm ℕ ℤ).bijective⟩
-- end: equiv

-- anchor: equiv_symm
/-- The inverse undoes the equivalence. -/
example {α β : Type*} (e : α ≃ β) (x : α) : e.symm (e x) = x :=
  e.symm_apply_apply x
-- end: equiv_symm

end MathlibHandbook.V01.C03

end
