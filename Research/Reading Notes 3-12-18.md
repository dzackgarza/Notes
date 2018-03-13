# Classifying Space

Usually look at this in the context of a topological group $G$, and denote $BG$ the classifying space of $G$. It is the quotient of some contractible space $EG$ by a free action of $G$, so we have something that looks like $G \to EG \to BG$ and $BG = EG/G$.

For a discrete group $G$, we have $BG = K(G,1)$, so that $\pi_1(BG) = G$ and $\pi_k(BG) = 0$ for $k \neq 1$.

*Question: what is a principal bundle? According to wikipedia, any G-principal bundle is a pullback of $EG \to BG$.*

## Examples

Note that $EG$ is always a contractible space upon which $G$ acts freely.

- $G \to EG \to BG = EG/G$
- $\ZZ \to \RR \to S^1$
- $\ZZ^n \to \RR^n \to T^n$
- $\ZZ^{\ast n} \to ? \to \bigvee_n S^1$
- $\ZZ_2 \to S^\infty \to \RP^\infty$
- $\ZZ_n \to S^\infty \to ``S^\infty/\ZZ_n"$
- $\pi_1(\Sigma_g) \to ? \to \Sigma_g$
- $S^1 \to S^\infty ? \to \CP^\infty$
- $T^n \to ? \to (\CP^\infty)^n$
- $O_n \to V_n(\RR^\infty) \to Gr_n(\RR^\infty)$
- $SO_n \to ? \to ?$
- $Gr_n(\RR^\infty) \to ? \to Gr_n(\RR^\infty)$


Note that $V_n(X)$ is the Stiefel manifold of dimension $n$ orthonormal frames in $X$.

A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$. If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a regular covering map with $Aut(\tilde X) = G$. Under some hypothesis, there exists a classifying space $BG$ such that $\theset{ \text{isomorphism classes of $G$-bundles over $X$}} \cong [X, BG]$, maps from $X$ into the classifying space.

Conjecture: $B(G_1 \cross G_2) = BG_1 \cross BG_2$

Conjecture: $B(G \ast H) = BG \vee BH$

Unknown: $B(G \tensor H) = BG \tensor BH$

Unknown: $B(G \semidirect_\phi H) = ?$
