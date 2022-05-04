lemma p_equiv_np_implies_false : ∀ P, ¬(P ↔ ¬P) :=
begin 
  intro P,
  by_contradiction,
  have h := classical.em P, cases h,
  { have np := h.mp h_1,
    apply (np h_1), },
  { have p := h.mpr h_1,
    apply (h_1 p), }
end