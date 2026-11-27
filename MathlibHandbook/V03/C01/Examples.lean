/-
Copyright (c) 2026 The Mathlib Handbook authors. All rights reserved.
Released under the Apache 2.0 licence as described in the file LICENSE.
-/
module

public import Mathlib.Data.Set.Image
public import Mathlib.Order.BooleanAlgebra.Set
public import Mathlib.Algebra.Group.Nat.Even

/-!
# Volume 3, Chapter 1: the lattice of sets, images and preimages

These are the examples of the chapter. Each example has an anchor, so the handbook can show it.
-/

public section

namespace MathlibHandbook.V03.C01

-- anchor: set_ops
/-- Union, intersection and difference reduce to `or`, `and` and `not` under `simp`. -/
example (s t : Set ℕ) (x : ℕ) : x ∈ (s ∪ t) \ s ↔ x ∈ t ∧ x ∉ s := by
  simp only [Set.mem_sdiff, Set.mem_union]
  tauto
-- end: set_ops

-- anchor: compl_union
/-- De Morgan for sets is the lemma `Set.compl_union`. -/
example (s t : Set ℕ) : (s ∪ t)ᶜ = sᶜ ∩ tᶜ :=
  Set.compl_union s t
-- end: compl_union

-- anchor: image
/-- The image of the natural numbers under doubling is the set of even numbers. -/
example : (fun n : ℕ => 2 * n) '' Set.univ = {n | Even n} := by
  ext n
  simp only [Set.image_univ, Set.mem_range, Set.mem_ofPred_eq]
  constructor
  · rintro ⟨k, rfl⟩
    exact ⟨k, by omega⟩
  · rintro ⟨k, rfl⟩
    exact ⟨k, by omega⟩
-- end: image

-- anchor: preimage
/-- The preimage of a set is the set of the points that the function sends into it. -/
example : (fun n : ℕ => n + 1) ⁻¹' {n | n < 3} = {n | n < 2} := by
  ext n
  simp only [Set.mem_preimage, Set.mem_ofPred_eq]
  omega
-- end: preimage

-- anchor: galois
/-- The image is left adjoint to the preimage: `f '' s ⊆ t` if and only if `s ⊆ f ⁻¹' t`. -/
example {α β : Type*} (f : α → β) (s : Set α) (t : Set β) : f '' s ⊆ t ↔ s ⊆ f ⁻¹' t :=
  Set.image_subset_iff
-- end: galois

-- anchor: image_inter
/-- The image of an intersection can be smaller than the intersection of the images. -/
example : (fun _ : ℕ => 0) '' ({0} ∩ {1}) ≠ (fun _ : ℕ => 0) '' {0} ∩ (fun _ : ℕ => 0) '' {1} := by
  simp
-- end: image_inter


end MathlibHandbook.V03.C01

end
