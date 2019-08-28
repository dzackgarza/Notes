**Let $p$ be a prime and $\abs{G} = p^3$. Show that $\exists N \normal G$ such that $\abs N = p^2$.**






Sylow Theorems:

Answer to original question: can use Cauchy's theorem and the correspondence theorem to show that if $\abs G = p^k$, then for every $p^j$ with $0 \leq j \leq k$, there exists a normal subgroup $N \normal G$ such that $\abs N = p^j$. Proceeds by induction on the power of $p$.

Base case $k=1$.

By Cauchy, there is an element $g$ of order $p_i$, and thus a subgroup $H \definedas \generators{g}$ of order $p_i$

**Key Step**: Look at the normalizer of $H$ in $G$, i.e. $N_G(H)$.

Two cases:

- $N_G(H) = G$.
  - In this case, $H \normal G$, so we can let $F = G/H$. Noting that $[H : G] = p_k$...
