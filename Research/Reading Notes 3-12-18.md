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

Conjecture: $B(G \cross H) = BG \cross BH$
Proof outline: $EG \cross EH$ is contractible, and $G \cross H$ acts freely on it with quotient equal to the RHS.

Conjecture: $B(G \ast H) = BG \vee BH$

Unknown: $B(G \tensor H) = BG \tensor BH$

Unknown: $B(G \semidirect_\phi H) = ?$


# Paper on Chow Rings
Recent result: [Chow Rings computed in 2005 for $BGL_n, BSL_n, BSp_n, BO_n, BSO_n$](https://arxiv.org/pdf/math/0505560.pdf)
Cohomology for classifying spaces of linear algebraic groups (equivalently compact Lie Groups) have an algebraic analog: Chow rings of the classifying spaces. For a finite abelian group, the chow ring is the symmetric algebra on the group of characters.

There is a map from the Chow ring back into cohomology, which in general fails surjectivity and injectivity. Tensoring this map with $\QQ$ creates an isomorphism, though. In this case, both hve the ring structure of invariants under the Weyl group in the symmetric algebra of the ring of characters of a maximal torus. (Classical result, Leray and Borel.)

Chow rings have not been computed for $PGL_n$. Need to know about Chern classes, Euler classes,

$A_*$ known for all $O_n$ and $SO_n$ for $n$ odd in 80s, general result for $SO_n$ 2004. $PGL_n$ case is much harder. Understood for $n=2$, since $PGL_2 \cong SO_3$. Other bits that have been computed: $H^*(BPGL_3, \ZZ_3), H^*(BPGL_n, \ZZ_2)$ for $n = 2 \mod 4$ in 70s/80s, incomplete results for $H^*(BPGL_p, \ZZ_p)$ in 2003.

*Term "equivariant" pops up a lot, symplectic forms, schemes, stacks*
