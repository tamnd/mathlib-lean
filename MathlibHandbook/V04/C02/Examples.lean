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
# Volume 4, Chapter 2: monotone functions and order maps

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V04.C02

-- anchor: monotone
/-- Multiplication by `2` is monotone on `ℕ`. -/
example : Monotone (fun n : ℕ => 2 * n) := by
  intro a b h
  dsimp only
  omega
-- end: monotone

-- anchor: strictMono
/-- The successor function is strictly monotone. -/
example : StrictMono (fun n : ℕ => n + 1) := by
  intro a b h
  dsimp only
  omega
-- end: strictMono

-- anchor: antitone
/-- Subtraction from `10` is antitone on `ℕ`. -/
example : Antitone (fun n : ℕ => 10 - n) := by
  intro a b h
  dsimp only
  omega
-- end: antitone

-- anchor: comp
/-- A composition of monotone functions is monotone. -/
example {f g : ℕ → ℕ} (hf : Monotone f) (hg : Monotone g) : Monotone (g ∘ f) :=
  hg.comp hf
-- end: comp

-- anchor: injective
/-- A strictly monotone function on a linear order is injective. -/
example {f : ℕ → ℕ} (hf : StrictMono f) : Function.Injective f :=
  hf.injective
-- end: injective

-- anchor: orderHom
/-- An order homomorphism bundles a function with the proof that it is monotone. -/
def double : ℕ →o ℕ :=
  ⟨fun n => 2 * n, by intro a b h; dsimp only; omega⟩

example : double 3 = 6 :=
  rfl
-- end: orderHom

-- anchor: orderIso
/-- An order isomorphism preserves and reflects the order. -/
example (e : ℕ ≃o ℕ) (a b : ℕ) : e a ≤ e b ↔ a ≤ b :=
  e.le_iff_le
-- end: orderIso

end MathlibHandbook.V04.C02

end
