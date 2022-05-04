import init.data.set
import set_theory.cardinal.basic
import helper

open set

theorem cantor_surjective {α : Type} (f : α → set α) : 
  ¬function.surjective f :=
begin 
  set B := {x : α | x ∉ f x},
  by_contradiction,
  have : ∃ (ξ : α), f ξ = B,
  { exact h B, },
  { rcases this with ⟨ξ, fx⟩,
    have : ξ ∈ B ↔ ξ ∉ f(ξ),
    { exact mem_set_of, },
    { rw fx at this,
      exact p_equiv_np_implies_false _ this, }}
end

theorem cantor_surjective' {α : Type} (f : α → set α) : 
  ¬function.surjective f :=
begin 
  set B := {x : α | x ∉ f x},
  by_contradiction,
  obtain ⟨ξ, fx⟩ : ∃ ξ, f ξ = B := h B,
  have : ξ ∈ B ↔ ξ ∉ f(ξ),
  { exact mem_set_of, },
  { rw fx at this,
    exact p_equiv_np_implies_false _ this, }
end