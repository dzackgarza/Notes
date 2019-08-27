**Let $p$ be a prime and $\abs{G} = p^3$. Show that $\exists N \normal G$ such that $\abs N = p^2$.**

Lagrange's Theorem: $H \leq G \implies \abs H \divides \abs G$
Corollary: $g\in G \implies o(g) \divides o(G)$
Corollary: $g^{\abs G} = e$.
Index: $[H : G]$ is equal to the number of left cosets of $H$ in $G$.

Statement of converse: if $n \divides \abs G$, then there exists $H \leq G$ with $\abs H = n$.
Counterexample to converse: $\abs A_4 = 12$ but there is no subgroup of order 6.

Cauchy's Theorem: If $p \divides \abs G$, then $G$ contains an element $g$ of order $p$.
Corollary: If $p \divides \abs G$, then there is a subgroup $H \leq G$ such that $\abs H = p$. Obtained as $H = <g>$ from above.

Sylow Theorems:
Definition: A $p\dash$group is a group $G$ such that $g\in G \implies o(g) = p^k$ for some $k$. If $\abs G < \infty$, it follows that $\abs G = p^j$ for some $j$.
Definition: A Sylow$\dash p$ subgroup is
Notation: for any $p$, let $\mathrm{Syl}(p)$ be the set of Sylow$\dash p$ subgroups of $G$, and $n_p = \#\abs{\mathrm{Syl}(p)}$ the number of such subgroups.

Sylow 1: If $\abs G = \prod p_i^{\alpha_i}$, then there exist subgroups of order $p_i^{\beta_i}$ for every $i$ and every $0 \leq \beta_i \leq \alpha_i$.

Sylow 2: If $H_1, H_2$ are Sylow$\dash p$ subgroups, then they are conjugate, i.e. $\exists g\in G \suchthat H_1 = gH_2g^{-1}$.

Sylow 3: Writing $G = p_k^{\alpha_k} \prod_{i \neq k}p_i^{\alpha_i} \definedas p_k^{\alpha_k}m$, then:
- $n_{p_k}$ divides $m$, and $m = [P : G]$ for any $P \in \mathrm{Syl}(p_k)$,
- $n_{p_k} \equiv 1 \mod p_k$,
- $n_{p_k} = [G: N_G(P)]$ for any Sylow$\dash p_k$ subgroup $P \in \mathrm{Syl}(p_k) \leq G$.

The Correspondence Theorem / 4th Isomorphism Theorem: suppose $N \normal G$, then there exists a correspondence:
$$
\left\{ 
H < G \suchthat N \subseteq H
\right\}
\iff
\left\{ \begin{align*} 
H \suchthat H < \frac G N
\end{align*}\right\}.
$$

In words, subgroups of $G$ containing $N$ correspond to subgroup of the quotient group $G/N$. This is given by the map $H \mapsto H/N$.
Note: $N \normal G$ and $N \subseteq H < G \implies N \normal H$.

Answer to original question: can use Cauchy's theorem and the correspondence theorem to show that if $\abs G = p^k$, then for every $p^j$ with $0 \leq j \leq k$, there exists a normal subgroup $N \normal G$ such that $\abs N = p^j$. Proceeds by induction on the power of $p$.

Base case $k=1$.

By Cauchy, there is an element $g$ of order $p_i$, and thus a subgroup $H \definedas \generators{g}$ of order $p_i$

**Key Step**: Look at the normalizer of $H$ in $G$, i.e. $N_G(H)$.

Two cases:

- $N_G(H) = G$.
  - In this case, $H \normal G$, so we can let $F = G/H$. Noting that $[H : G] = p_k$...
