# Classifying Space

Usually look at this in the context of a topological group $G$, and denote $BG$ the classifying space of $G$. It is the quotient of some contractible space $EG$ by a free action of $G$, so we have something that looks like $G \to EG \to BG$ and $BG = EG/G$.

For a discrete group $G$, we have $BG = K(G,1)$, so that $\pi_1(BG) = G$ and $\pi_k(BG) = 0$ for $k \neq 1$.

*Question: what is a principal bundle? According to Wikipedia, any G-principal bundle is a pullback of $EG \to BG$.*

Note that contractibility of $EG$ shows that $BG$ is $K(G, 1)$.

## Examples

Note that $EG$ is always a contractible space upon which $G$ acts freely.

We also have $BX \homotopic \Omega X$

- $G \to EG \to BG = EG/G$
- $\ZZ \to \RR \to S^1$
- $\ZZ^n \to \RR^n \to T^n$
- $\ZZ^{\ast n} \to ??? \to \bigvee_n S^1$
- $\ZZ_2 \to S^\infty \to \RP^\infty$
- $\ZZ_n \to S^\infty \to L_n^\infty$
- $S^0 \to S^\infty \to \RP^\infty$
- $S^1 \to S^\infty \to \CP^\infty$
- $S^3 \to S^\infty \to \HP^\infty$
- NOT TRUE: $S^7 \to S^\infty \to \OP^\infty$
- $T^n \to ? \to (\CP^\infty)^n$
- $O_n \to V_n(\RR^\infty) \to Gr_n(\RR^\infty)$
- $GL_n(\RR) \to V_n(\RR^\infty) \to Gr_n(\RR^\infty)$
- $SO_n \to ? \to ?$
- $Gr_n(\RR^\infty) \to ? \to Gr_n(\RR^\infty)$
- $\pi_1(\Sigma_g) \to ? \to \Sigma_g$
- $S_n \to ??? \to \theset{U \subset \RR^\infty,~ |U| = n}$


Note that $V_n(X)$ is the Stiefel manifold of dimension $n$ orthonormal frames in $X$.

Also, $\pi_1(\Sigma_g) = <\theset{a_i, b_i}_i^n> \mid \prod_i^g [a_i, b_i]>$

A principal $G$ bundle is a locally trivial free $G$-space with orbit space $B$. If $G$ is discrete, then a principal $G$-bundle over $X$ with total space $\tilde X$ is equivalent to a regular covering map with $Aut(\tilde X) = G$. Under some hypothesis, there exists a classifying space $BG$ such that $\theset{ \text{isomorphism classes of G-bundles over X}} \cong [X, BG]$, i.e. bundles of $G$'s over $X$ are equivalent to maps from $X$ into the classifying space, i.e. $$\hom(X, BG) \cong \theset{G\dash\text{bundles over } X}$$

It is useful to think of $BG$ as a space whose points are copies of $G$, so the classifying map $X \mapsvia{f} BG$ assigns each $x \in X$ to the fiber above $x$, which is a $G$.

There is a standard procedure in homotopy theory for constructing a classifying space for every group. One starts by constructing a 2-complex with the given fundamental group, and then one inductively attaches higher dimensional cells to kill all higher homotopy groups. Each element $c\in \pi_n(X_{n−1})$ is represented by some continuous map $\gamma_c:S^n\to X_{n−1}$ with image in the $n\dash$-skeleton. Let $X_n$ be obtained from $X_{n−1}$ by attaching an $(n+1)\dash$cell along $\gamma_c$, for each $c\in π_n(X_{n−1})$.

Conjecture: $B(G \cross H) = BG \cross BH$
Proof outline: $EG \cross EH$ is contractible, and $G \cross H$ acts freely on it with quotient equal to the RHS.

Conjecture: $B(G \ast H) = BG \vee BH$

Unknown: $B(G \tensor H) = BG \tensor BH$

Unknown: $B(G \semidirect_\phi H) = ?$


# Paper on Chow Rings
Recent result: [Chow Rings computed in 2005 for $BGL_n, BSL_n, BSp_n, BO_n, BSO_n$](https://arxiv.org/pdf/math/0505560.pdf)
Cohomology for classifying spaces of linear algebraic groups (equivalently compact Lie Groups) have an algebraic analog: Chow rings of the classifying spaces. For a finite abelian group, the chow ring is the symmetric algebra on the group of characters.

There is a map from the Chow ring back into cohomology, which in general fails surjectivity and injectivity. Tensoring this map with $\QQ$ creates an isomorphism, though. In this case, both have the ring structure of invariants under the Weyl group in the symmetric algebra of the ring of characters of a maximal torus. (Classical result, Leray and Borel.)

Chow rings have not been computed for $PGL_n$. Need to know about Chern classes, Euler classes,

$A_*$ known for all $O_n$ and $SO_n$ for $n$ odd in 80s, general result for $SO_n$ 2004. $PGL_n$ case is much harder. Understood for $n=2$, since $PGL_2 \cong SO_3$. Other bits that have been computed: $H^*(BPGL_3, \ZZ_3), H^*(BPGL_n, \ZZ_2)$ for $n = 2 \mod 4$ in 70s/80s, incomplete results for $H^*(BPGL_p, \ZZ_p)$ in 2003.

*Term "equivariant" pops up a lot, symplectic forms, schemes, stacks*

# Further Reading

Characteristic classes are elements of $H^*(BG)$, can be used to define characteristic classes for bundles.

Connected covers can kill higher homotopy?

You can realize any Eilenberg-MacLane space as a classifying space.

Claim: $\pi_{i+k}B^kG = \pi_i G$.

Proof: If $G$ is a topological group, there is a universal principal $G\dash$bundle $EG \to BG$ which induces a LES in homotopy. Since $EG$ is contractible, $\pi_i EG = \pi_{i+1}EG = 0$, so $\pi_{i+1}BG \cong \pi_i G$. When $G$ is an $E_2$ space, $BG$ is a topological group, and so $\pi_{i+2}(B^2G) = \pi_{i+2}(B(BG)) = \pi_{i+1}(BG) = \pi_i(G)$ and we conclude the result.

Corollary: If $G$ is a discrete group, $B^kG = K(G, n)$.
Proof: Then $\pi_0 G = G$ and $\pi_i G = 0$ for $i > 0$, so $\pi_k B^k G = G$.

It's possible to take classifying spaces of stacks. E.g. there is a stack that classifies principal bundles *with connections*, but it has issues: it is not a presentable stack, i.e. not covered by a manifold, so an associated sheaf is not representable.

Stable homotopy of $BG$: same sort of techniques as in $S^n$, break into components.

$EG$ can be constructed as $\bigcup_n G \ast G \ast \cdots \ast G$, where $\ast$ is join of two spaces: the suspension of the smash product. For example, $G = \ZZ_2$ implies $EG = \bigcup_n \ZZ_2 \ast \cdots = \bigcup_n S^{n-1} = S^\infty$.
