import init.data.set
import set_theory.cardinal.basic

open set

-- proof:
-- First notice that B' ⊆ A. Now suppose f(B') ∈ B, 
-- then there is X ⊆ A such that f(B') = f(X) with f(X) ∉ X, 
-- but f is injective by assumption and so B' = X. 
-- So together with f(X) ∉ X we get f(B') ∉ B'. 
-- Conversely if f(B') ∉ B' then combined with B' ⊆ A and f(B') = f(B'),
-- we have that ∃X [f(B') = f(X) ∧ f(X) ∉ X ∧ X ⊆ A], namely X = B'. 
-- But that means that f(B') ∈ B.

theorem cantor_injective {α : Type} (f : set α → α) :
  ¬function.injective f :=
begin 
  set B := {x : set α | f x ∉ x},
  set B' := {y : α | ∃ x : set α, f x = y ∧ x ∈ B},
  by_contradiction h,
  by_cases hp : f(B') ∈ B',
  { have : ∃ X, f(X) = f(B') ∧ f(X) ∉ X := mem_set_of.mp hp,
    cases this with s hs,
    rw ← (h hs.1) at hp,
    have hp' := hs.2,
    contradiction, },
  { have : f(B') ∈ B',
    { rw mem_set_of,
      use B',
      split,
      { refl, },
      { rw mem_set_of,
        exact hp, }, },
    contradiction, }
end

theorem cantor_injective' {α : Type} (f : set α → α) :
  ¬function.injective f :=
begin
  set B := {x : set α | f x ∉ x},
  set B' := {y : α | ∃ x : set α, f x = y ∧ x ∈ B},
  intro h,
  by_cases hp : f B' ∈ B',
  { obtain ⟨s, hs⟩ : ∃ X, f X = f B' ∧ f X ∉ X := mem_set_of_eq.mp hp,
    rw ← (h hs.1) at hp,
    exact hs.2 hp, },
  { exact hp ⟨B', rfl, hp⟩, }
end