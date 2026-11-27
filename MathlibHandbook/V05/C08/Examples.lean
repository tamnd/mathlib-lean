/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.GroupTheory.Sylow
public import Mathlib.GroupTheory.Perm.Cycle.Type

/-!
# Volume 5, Chapter 8: the theorem of Cauchy and the Sylow theorems

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V05.C08

-- anchor: cauchy
/-- The theorem of Cauchy: if a prime `p` divides the order of `G`, then `G` has an element of order `p`. -/
example {G : Type*} [Group G] [Fintype G] (p : ℕ) [Fact p.Prime] (h : p ∣ Fintype.card G) :
    ∃ x : G, orderOf x = p :=
  exists_prime_orderOf_dvd_card p h
-- end: cauchy

-- anchor: exists_subgroup
/-- The first Sylow theorem, in the strong form: each power of `p` that divides the order of `G` is the order of a subgroup. -/
example {G : Type*} [Group G] [Finite G] (p n : ℕ) [Fact p.Prime] (h : p ^ n ∣ Nat.card G) :
    ∃ K : Subgroup G, Nat.card K = p ^ n :=
  Sylow.exists_subgroup_card_pow_prime p h
-- end: exists_subgroup

-- anchor: card_sylow
/-- A Sylow `p`-subgroup has the order `p ^ k`, where `p ^ k` is the largest power of `p` that divides the order of `G`. -/
example {G : Type*} [Group G] [Finite G] (p : ℕ) [Fact p.Prime] (P : Sylow p G) :
    Nat.card P = p ^ (Nat.card G).factorization p :=
  P.card_eq_multiplicity
-- end: card_sylow

-- anchor: conjugate
/-- The second Sylow theorem: the group acts transitively on its Sylow `p`-subgroups by conjugation. -/
example {G : Type*} [Group G] [Finite G] (p : ℕ) [Fact p.Prime] :
    MulAction.IsPretransitive G (Sylow p G) :=
  inferInstance
-- end: conjugate

-- anchor: mod_one
/-- The third Sylow theorem: the number of Sylow `p`-subgroups is `1` modulo `p`, and it divides the index of each of them. -/
example {G : Type*} [Group G] [Finite G] (p : ℕ) [Fact p.Prime] (P : Sylow p G) :
    Nat.card (Sylow p G) ≡ 1 [MOD p] ∧ Nat.card (Sylow p G) ∣ (P : Subgroup G).index :=
  ⟨card_sylow_modEq_one p G, P.card_dvd_index⟩
-- end: mod_one


end MathlibHandbook.V05.C08

end
