import init.data.set
import set_theory.cardinal.basic
import set_relations

open set
open_locale cardinal

theorem set_lt_powerset {α : Type} (f : α → set α) : # α ≤ # (set α) :=
begin 
  apply mk_le_of_injective,
  exact singleton_injective,
end
