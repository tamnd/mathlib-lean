/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Algebra.Group.Hom.Defs
public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Algebra.Group.Basic

/-!
# Volume 5, Chapter 2: group homomorphisms and isomorphisms

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C02

-- anchor: map_mul
/-- A monoid homomorphism respects products and the unit. -/
example {G H : Type*} [Monoid G] [Monoid H] (f : G →* H) (a b : G) : f (a * b) = f a * f b ∧ f 1 = 1 :=
  ⟨map_mul f a b, map_one f⟩
-- end: map_mul

-- anchor: map_inv
/-- A homomorphism of groups respects inverses. The lemma is the general `map_inv`. -/
example {G H : Type*} [Group G] [Group H] (f : G →* H) (a : G) : f a⁻¹ = (f a)⁻¹ :=
  map_inv f a
-- end: map_inv

-- anchor: hom_mk
/-- `MonoidHom.mk'` makes a homomorphism of groups from a map that respects products. -/
def squareHom (G : Type*) [CommGroup G] : G →* G :=
  MonoidHom.mk' (fun x => x * x) (fun a b => mul_mul_mul_comm a b a b)
-- end: hom_mk

-- anchor: comp
/-- The composite of two homomorphisms is a homomorphism, and it applies as a composite. -/
example {G H K : Type*} [Monoid G] [Monoid H] [Monoid K] (g : H →* K) (f : G →* H) (x : G) :
    (g.comp f) x = g (f x) :=
  MonoidHom.comp_apply g f x
-- end: comp

-- anchor: mul_equiv
/-- An isomorphism `G ≃* H` has an inverse, and the inverse is again an isomorphism. -/
example {G H : Type*} [Group G] [Group H] (e : G ≃* H) (x : G) : e.symm (e x) = x :=
  e.symm_apply_apply x
-- end: mul_equiv


end MathlibHandbook.V05.C02

end
