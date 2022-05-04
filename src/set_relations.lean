import init.data.set
import set_theory.cardinal.basic

open set
open_locale cardinal

theorem mk_le_of_surjective {α β : Type} {f : α → β} 
  (hf : function.surjective f) :
  #α ≥ #β :=
begin
  fsplit,
  fsplit,
  exact function.surj_inv hf,
  exact function.injective_surj_inv hf,
end

theorem mk_le_of_injective {α β : Type} {f : α → β}
  (hf : function.injective f) :
  #α ≤ #β := 
begin 
  fsplit,
  fsplit,
  assumption,
  assumption,
end