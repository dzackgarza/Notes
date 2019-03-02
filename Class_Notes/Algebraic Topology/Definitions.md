* Acyclic

* Alexander duality

* Basis
	* For an $R\dash$module $M$, a basis $B$ is a linearly independent generating set.

* Boundary

* Boundary of a manifold
	* Points $x\in M^n$ defined by 
	$$
	\del M = \theset{x\in M: H_n(M, M-\theset{x}; \ZZ) = 0}
	$$

* Cap Product
	* Denoting $\Delta^p \mapsvia{\sigma} X \in C_p(X; G)$, a map that sends pairs ($p\dash$chains, $q\dash$cochains) to $(p-q)\dash$chains $\Delta^{p-q} \to X$ by
	$$
	H_p(X; R)\cross H^q(X; R) \mapsvia{\frown} H_{p-q}(X; R)\\
	\sigma \frown \psi = \psi(F_0^q(\sigma))F_q^p(\sigma)
	$$
	where $F_i^j$ is the face operator, which acts on a simplicial map $\sigma$ by restriction to the face spanned by $[v_i \ldots v_j]$, i.e. $F_i^j(\sigma) =\restrictionof{\sigma}{[v_i \ldots v_j]}$.

* Cellular Homology

* CW Cell
	- An $n\dash$cell of $X$, say $e^n$, is the image of a map $\Phi: B^n \to X$. That is, $e^n = \Phi(B^n)$. Attaching an $n\dash$cell to $X$ is equivalent to forming the space $B^n \coprod_f X$ where $f: \del B^n \to X$.
		- A $0\dash$cell is a point.
		- A $1\dash$cell is an interval $[-1, 1] = B^1 \subset \RR^1$. Attaching requires a map from $S^0 =\theset{-1, +1} \to X$
		- A $2\dash$cell is a solid disk $B^2 \subset \RR^2$ in the plane. Attaching requires a map $S^1 \to X$.
		- A $3\dash$cell is a solid ball $B^3 \subset \RR^3$. Attaching requires a map from the sphere $S^2 \to X$.

* Cellular Map
	* A map $X \mapsvia{f} Y$ is said to be cellular if $f(X^{(n)}) \subseteq Y^{(n)}$ where $X^{(n)}$ denotes the $n\dash$ skeleton.

* Chain
	* An element $c \in C_p(X; R)$ can be represented as the singular $p$ simplex $\Delta^p \to X$.

* Chain Homotopy
	* Given two maps between chain complexes $(C_*, \del_C) \mapsvia{f, ~g} (D_*, \del_D)$, a chain homotopy is a family $h_i: C_i \to B_{i+1}$ satisfying $$f_i-g_i = \del_{B, i-1}\circ h_n + h_{i+1}\circ \del_{A, i}$$. ![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Chain_homotopy_between_chain_complexes.svg/650px-Chain_homotopy_between_chain_complexes.svg.png)

* Chain Map
	* A map between chain complexes $(C_*, \del_C) \mapsvia{f} (D_*, \del_D)$ is a chain map iff each component $C_i \mapsvia{f_i} D_i$ satisfies 
	$$
	f_{i-1}\circ\del_{C, i} = \del_{D,i} \circ f_i
	$$ 
	(i.e this forms a commuting ladder) 
	![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Chain_map.svg/650px-Chain_map.svg.png)

* Closed manifold
	* A manifold that is compact, with or without boundary.

* Coboundary

* Cochain
	* An cochain $c \in C^p(X; R)$ is a map $c \in \hom(C_p(X; R), R)$ on chains.

* Cocycle

* Colimit

* Compact
	* A space $X$ is compact iff every open cover of $X$ has a finite subcover.

* Cone
	* For a space $X$, defined as
	$$
	CX = \frac{X\cross I} {X \cross \theset{0}}
	$$
	Example: The cone on the circle $CS^1$ ![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cone.svg/250px-Cone.svg.png)
	Note that the cone embeds $X$ in a contractible space $CX$.

* Contractible
	* A space is contractible if its identity map is nullhomotopic.

* Contractible

* Coproduct

* Covering Space

* Cup Product
	- A map taking pairs ($p\dash$cocycles, $q\dash$cocycles) to $(p+q)\dash$cocyles by
	$$
	H^p(X; R) \cross H^q(X; R) \mapsvia{\smile} H^{p+q}(X; R)\\
	(a \cup b)(\sigma) = a(\sigma \circ I_0^p)~b(\sigma \circ I_p^{p+q})
	$$
	where $\Delta^{p+q} \mapsvia{\sigma} X$ is a singular $p+q$ simplex and
	$$
	I_i^j: [i, \cdots, j] \injects\Delta^{p+q}
	$$
	is an embedding of the $(j-i)\dash$simplex into a $(p+q)\dash$simplex.
	On a manifold, the cup product is Poincare dual to the intersection of submanifolds.
	* Applications
		- $T^2 \not\homotopic S^2 \vee S^1 \vee S^1$. Proof: todo

* CW Complex

* Cycle

* Deck Transformation

* Deformation

* Deformation Retract
	* A map $r$ in $A\mathrel{\textstyle\substack{\Large\injects^{\iota}\\\textstyle\dashleftarrow_{r}}} X$ that is a retraction (so $r\circ \iota = \id_A$) **that also satisfies** $\iota \circ r \homotopic \id_X$.
	* Note that this is equality in one direction, but only homotopy equivalence in the other.

* Degree of a Map

* Derived Functor
	* For a functor $T$ and an $R\dash$module $A$, a *left derived functor* $(L_nT)$ is defined as $h_n(TP_A)$, where $P_A$ is a projective resolution of $A$.

* Dimension of a manifold
	* For $x\in M$, the only nonvanishing homology group $H_i(M, M - \theset{x}; \ZZ)$

* Direct Limit

* Direct Product

* Direct Sum

* Eilenberg-MacLane Space

* Euler Characteristic

* Exact Functor
	* A functor $T$ is *right exact* if a short exact sequence 
	$$0 \to A \to B \to C \to 0$$ 
	yields an exact sequence 
	$$\ldots TA \to TB \to TC \to 0,$$ 
	and is *left exact* if it yields 
	$$0 \to TA \to TB \to TC \to \ldots$$
	Thus a functor is exact iff it is both left and right exact, yielding
	$$
	0 \to TA \to TB \to TC \to 0
	$$
	* Examples:
		* $\wait \tensor_R \wait$ is a right exact bifunctor.

* Exact Sequence

* Excision

* Ext Group

* Flat
	* An $R\dash$module is flat if $A\tensor_R \wait$ is an exact functor.

* Free and Properly Discontinuous

* Free module
	* A $\dash$module $M$ with a basis $S = \theset{s_i}$ of generating elements. Every such module is the image of a unique map $\mathcal{F}(S) = R^S \surjects M$, and if $M = \left< S \mid \mathcal{R} \right>$  for some set of relations $\mathcal{R}$, then $M \cong R^S / \mathcal{R}$.

* Free Product

* Free product with amalgamation

* Fundamental Class
	* For a connected, closed, orientable manifold, $[M]$ is a generator of $H_n(M; \ZZ) = \ZZ$.

* Fundamental classes

* Fundamental Group

* Generating Set
	* $S = \theset{s_i}$ is a generating set for an $R\dash$ module $M$ iff $$x\in M \implies x = \sum r_i s_i$$ for some coefficients $r_i \in R$ (where this sum may be infinite).

* Gluing Along a Map

* Group Ring

* Homologous

* Homotopic

* Homotopy

* Homotopy Class

* Homotopy Equivalence

* Homotopy Extension Property

* Homotopy Groups

* Homotopy Lifting Property

* Injection
	* A map $\iota$ with a **left** inverse $f$ satisfying $f\circ \iota = \id$

* Intersection Pairing
	For a manifold $M$, a map on homology defined by
	$$
	H_{\hat i}M \tensor H_{\hat j}M \to H_{\widehat{i+j}}X\\
	\alpha\tensor \beta \mapsto \left< \alpha, \beta \right>
	$$
	obtained by conjugating the cup product with Poincare Duality, i.e. $$\left< \alpha, \beta \right> = [M] \frown ([\alpha]^\dual \smile [\beta]^\dual)$$

	Then, if $[A], [B]$ are transversely intersecting submanifolds representing $\alpha, \beta$, then $$\left<\alpha, \beta\right> = [A\intersect B]$$.

	If $\hat i = j$ then $\left< \alpha, \beta \right> \in H_0 M = \ZZ$ is the signed number of intersection points.

* Inverse Limit

* Intersection Pairing
	- The pairing obtained from dualizing Poincare Duality to obtain $$\mathrm{F}(H_i M) \tensor \mathrm{F}(H_{n-i}M) \to \ZZ$$
	Computed as an oriented intersection number between two homology classes (perturbed to be transverse).

* Intersection Form
	- The nondegenerate bilinear form cohomology induced by the Kronecker Pairing: $$I: H^k(M_n) \cross H^{n-k}(M^n) \to \ZZ$$
	where $n=2k$.
      - When $k$ is odd, $I$ is skew-symmetric and thus a *symplectic form.*
      - When $k$ is even (and thus $n \equiv 0 \mod 4$) this is a symmetric form.
      - Satisfies $I(x,y) = (-1)^{k(n-k)} I(y, x)$

* Kronecker Pairing
	- A map pairing a chain with a cochain, given by $$H^n(X; R) \cross H_n(X; R) \to R \\ ([\psi, \alpha]) \mapsto \psi(\alpha)$$
	which is a nondegenerate bilinear form.

* Kronecker Product

* Lefschetz duality

* Lefshetz Number

* Lens Space

* Local Degree
	- At a point $x \in V \subset M$, a generator of $H_n(V, V-\theset{x})$. The degree of a map $S^n \to S^n$ is the sum of its local degrees.

* Local Orientation

* Limit

* Linear Independence
	* A generating $S$ for a module $M$ is linearly independent if $\sum r_i s_i = 0_M \implies \forall i,~r_i = 0 $ where $s_i\in S, r_i \in R$.

* Local homology
	* $H_n(X, X-A; \ZZ)$ is the local homology at $A$, also denoted $H_n(X \mid A)$

* Local Homology

* Local orientation of a manifold
	* At a point $x\in M^n$, a choice of a generator $\mu_x$ of $H_n(M, M - \theset{x}) = \ZZ$.

* Long exact sequence

* Loop Space

* Manifold
	* An $n\dash$maniofld is a Hausdorff space in which each neighborhood has an open neighborhood homeomorphic to $\RR^n$.

* Manifold with boundary
	* A manifold in which open neighborhoods may be isomorphic to either $\RR^n$ or a half-space $\theset{\mathbf{x} \in \RR^n \mid x_i > 0}$.

* Mapping Cone

* Mapping Cylinder

* Mapping Path Space

* Mayer-vietoris Sequence

* Monodromy

* Moore Space

* N-cell

* N-connected

* Nullhomotopic
	* A map $X\mapsvia{f} Y$ is nullhomotopic if it is homotopic to a constant map $X \mapsvia{c} \theset{y_0}$; that is, there exists a homotopy

* Orientable manifold
	* A manifold for which an orientation exists, see "Orientation of a Manifold".

* Orientation Cover
	* For any manifold $M$, a two sheeted orientable covering space $\tilde M_o$. $M$ is orientable iff $\tilde M$ is disconnected. Constructed as $$\tilde M = \coprod_{x\in M}\theset{\mu_x \mid \mu_x~ \text{is a local orientation}}$$

* Orientation of a manifold
	* A family of $\theset{\mu_x}_{x\in M}$ with local consistency: if $x,y \in U$ then $\mu_x, \mu_y$ are related via a propagation.
		- Formally, a function $$M^n \to \coprod_{x\in M} H(X \mid \theset{x})\\ x \mapsto \mu_x$$ such that $\forall x \exists N_x$ in which  $\forall y\in N_x$, the preimage of each $\mu_y$ under the map $H_n(M\mid N_x) \surjects H_n(M\mid y)$ is a single generator $\mu_{N_x}$.
	- TFAE:
		- $M$ is orientable.
		- The map $W: (M, x) \to \ZZ_2$ is trivial.
		- $\tilde M_o = M \coprod \ZZ_2$ (two sheets).
		- $\tilde M_o$ is disconnected
		- The projection $\tilde M_o \to M$ admits a section.

* Oriented manifold

* Path

* Path Lifting Property

* Perfect Pairing
	- A pairing alone is an $R\dash$bilinear module map, or equivalently a map out of a tensor product since $p: M\tensor_R N \to L$ can be partially applied to yield $\phi: M \to L^N = \hom_R(N, L)$. A pairing is **perfect** when $\phi$ is an isomorphism.
		- Example: $\det_M: k^2 \cross k^2 \to k$

* Poincare Duality
	* For a closed, orientable $n\dash$manifold, following map $[M] \frown \wait$ is an isomorphism: $$ D: H^k(M; R) \to H_{n-k}(M; R) \\ D(\alpha) = [M] \frown \alpha$$

* Projective Resolution

* Properly Discontinuous

* Pullback

* Pushout

* Quasi-isomorphism

* R-orientability

* Relative boundaries

* Relative cycles

* Relative homotopy groups

* Retraction
	* A map $r$ in $A\mathrel{\textstyle\substack{\Large\injects^{\iota}\\\textstyle\dashleftarrow_{r}}} X$ satisfying $$r\circ\iota = \id_A.$$
	Equivalently $X \surjects_r A$ and $\restrictionof{r}{A} = \id_A$. If $X$ retracts onto $A$, then $i_*$ is injective.

* Short exact sequence

* Simplicial Complex

* Simplicial Map
	* For a map $$K\mapsvia{f} L$$ between simplicial complexes, $f$ is a simplicial map if for any set of vertices $\theset{v_i}$ spanning a simplex in $K$, the set $\theset{f(v_i)}$ are the vertices of a simplex in $L$.

* Simply Connected

* Singular Chain
$$
x \in C_n(x) \implies X = \sum_i n_i \sigma_i = \sum_i n_i (\Delta^n \mapsvia{\sigma_i} X)$$

* Singular Cochain
$$
x \in C^n(x) \implies X = \sum_i n_i \psi_i = \sum_i n_i (\sigma_i \mapsvia{\psi_i} X)
$$

* Singular Homology


* Smash Product

* Surjection
	* A map $\pi$ with a **right** inverse $f$ satisfying $$\pi \circ f = \id$$

* Suspension
Compact represented as $\Sigma X = CX \coprod_{\id_X} CX$, two cones on $X$ glued along $X$. Explicitly given by
$$
\Sigma X = \frac{X\cross I}{(X\cross \theset{0}) \union (X\cross \theset{1}) \union (\theset{x_0} \cross I)}
$$

* Tor Group
	* For an $R\dash$module
		$$\tor_R^n(\wait, B) = L_n(\wait \tensor_R B)$$
		where $L_n$ denotes the $n$th left derived functor.

* Universal Cover

* Universal Coefficient Theorem for Cohomology

* Universal Coefficient Theorem for Change of Coefficient Ring

* Weak Homotopy Equivalence

* Weak Topology

* Wedge Product


# Notation
- $C_X$
- $\Sigma(X)$
- $\Sigma_g$
- $\iota, \pi$
- $\widehat {i+j}$: for an $n\dash$dimensional manifold, the "dual" dimension $\widehat{i+j} \definedas n - (i+j)$.
