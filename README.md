# cantor
Proofs of Cantor's Theorems in Lean 3

# The Theorems

The two theorems proved were his proofs of Surjectivity and Injectivity. There are also some other small proofs scattered around.

# Surjectivity

The theorem of Surjectivity states:
  Let $f$ be a map from set $A$ to its power set $\mathcal{P}(A)$. Then $f ~ : ~ A ~ \rightarrow ~ \mathcal{P}(A)$ is not surjective. As a consequence, $\text{card}(A) ~ < ~ \text{card}(\mathcal{P}(A))$ holds for any set $A$.
  
The handwritten proof that was used: [location is here](https://github.com/crabbo-rave/cantor/blob/6be022bb14e1de9345e8efc404bf6b72dcdb3a8f/src/cantor_surjective.lean#L7)

What is extremely interesting about the theorem for Surjectivity is that it proves that there are infinitely many infinities, in an infinite heirarchy. 

# Injectivity

The thoerem of Injectivity states:
  Let $f$ be a map from power set $\mathcal{P}(A)$ to its set $A$. Then $f ~ : ~ \mathcal{P}(A) ~ \rightarrow ~ A$ is not injective. 
  
The handwritten proof that was used: [location is here](https://github.com/crabbo-rave/cantor/blob/6be022bb14e1de9345e8efc404bf6b72dcdb3a8f/src/cantor_injective.lean#L6)

This proof is much less well known than the first, and it was hard to find a formlization online. I have to thank `Neverbloom#6760` on discord for this one.
