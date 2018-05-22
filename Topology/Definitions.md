# General

* Acyclic
* Boundary
* Cap Product
	* Letting $\sigma: \Delta^p \to X \in C_p(X; G)$, sends $p\dash$chains with $q\dash$cochains to $p-q\dash$chains $\Delta^{p-q} \to X$ by
* Cellular Homology
* Cellular Map
	- A map $X \mapsvia{f} Y$ is said to be cellular if $f(X^{(n)}) \subseteq Y^{(n)}$ where $X^{(n)}$ denotes the $n\dash$ skeleton.
* Chain
	* An element $c \in C_p(X; R)$ can be represented as the singular $p$ simplex $\Delta^p \to X$.
* Chain Map
	- A map between chain complexes $(C_*, \del_C) \mapsvia{f} (D_*, \del_D)$ is a chain map iff each component $C_i \mapsvia{f_i} D_i$ satsifies $$f_{i-1}\circ\del_{C, i} = \del_{D,i} \circ f_i$$ (i.e this forms a commuting ladder) ![](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Chain_map.svg/650px-Chain_map.svg.png)
* Chain Homotopy
	- Given two maps between chain complexes $(C_*, \del_C) \mapsvia{f, ~g} (D_*, \del_D)$, a chain homotopy is a family $h_i: C_i \to B_{i+1}$ satisfying $$f_i-g_i = \del_{B, i-1}\circ h_n + h_{i+1}\circ \del_{A, i}$$. ![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Chain_homotopy_between_chain_complexes.svg/650px-Chain_homotopy_between_chain_complexes.svg.png)
	Equivalently, $f,g$ are said to be **chain homotopic**, or $f-g$ is **nullhomotopic**. Chain homotopies are quasi-isomorphisms.
* Closed manifold
* Coboundary
* Cochain
	* An element $c \in C^p(X; R)$ can be represented as as function $c: C_p(X, R) \to R$
* Cocycle
* Colimit
* Cone
* Contractible
* Coproduct
* Covering Space
* Cup Product
	$${ H^{i}(X; R)\tensor H^{j}(X; R) \mapsvia{\smile} H^{i+j}(X; R)}$$
* CW Complex
* Cycle
* Direct Sum
	$$ \bigoplus_{i\in I} A_i = \theset{I \mapsvia{f} \union_{i\in I} A_i: f(i) \in A_i,~ \norm{\theset{i \mid f(i) \neq 0}} < \infty } \\ = \prod_{i\in I}A_i - \theset{I\mapsvia{f} \union_{i\in I}: \norm{\theset{i \mid f(i) = 0}} = \infty}$$
* Direct Product
	$$\prod_{i\in I}A_i = \theset{I \mapsvia{f} \union_{i\in I} A_i \mid f(i) \in A_i}$$
* Deck Transformation
* Deformation
* Deformation Retract
	- A map $r$ in $A\mathrel{\textstyle\substack{\Large\injects^{\iota}\\\textstyle\dashleftarrow_{r}}} X$ that is a retraction (so $r\circ \iota = \id_A$) also satisfying $i\circ r \homotopic \id_A$.
* Degree of a Map
* Direct Limit
* Derived Functor (Left)
	- For a functor $T$ and an $R\dash$module $A$, a left derived functor $(L_nT)$ is defined as $h_n(TP_A)$, where $P_A$ is a projective resolution of $A$.
- Projective Resolution
* Euler Characteristic
* Exact Sequence
* Exact Functor
	- A functor $T$ is right exact if a short exact sequence $0 \to A \to B \to C \to 0$ yields an exact sequence $\ldots TA \to TB \to TC \to 0$, and is left exact if it yields $0 \to TA \to TB \to TC \to \ldots$
	- Examples:
		- $\wait \tensor_R \wait$ is a right exact bifunctor.
- Flat
	- An $R\dash$module is flat if $A\tensor_R \wait$ is an exact functor.
- Free module
	- A $\dash$module $M$ with a basis $S = \theset{s_i}$ of generating elements. Every such module is the image of a unique map $\mathcal{F}(S) = R^S \surjects M$, and if $M = \left< S \mid \mathcal{R} \right>$  for some set of relations $\mathcal{R}$, then $M \cong R^S / \mathcal{R}$.
- Generating Set
	- $S = \theset{s_i}$ is a generating set for an $R\dash$ module $M$ iff $x\in M \implies x = \sum r_i s_i$ for some coefficient ring elements $r_i \in R$.
- Linear Independence
	- A generating $S$ for a module $M$ is linearly independent if $\sum r_i s_i = 0_M \implies \forall i,~r_i = 0 $ where $s_i\in S, r_i \in R$.
- Basis
	- For an $R\dash$module $M$, a basis $B$ is a linearly independent generating set.
* Excision
* Ext Group
* Free and Properly Discontinuous
* Free Product
* Free product with amalgamation
* Fundamental Class
	* For a connected, closed, orientable manifold, $[M]$ is a generator of $H_n(M; \ZZ) = \ZZ$.
* Fundamental Group
* Gluing Along a Map
* Homologous
* Homotopic
* Homotopy
* Homotopy Class
* Homotopy Equivalence
* Homotopy Groups
* Homotopy Lifting Property
* Homotopy Extension Property
* Inverse Limit
* Kronecker Pairing
* Lefshetz Number
* Lens Space
* Limit
* Local Homology
* Long exact sequence
* Mapping Cone
* Mapping Cylinder
* Mapping Path Space
* Mayer-vietoris Sequence
* Monodromy
* N-cell
* N-connected
* Nullhomotopic
* Orientable manifold
	- A manifold for which an orientation exists, see "Orientation of a Manifold".
* Orientation of a manifold
	- A function $$M^n \to \coprod_{x\in M} H(X \mid \theset{x})\\ x \mapsto \mu_x$$ such that $\forall x \exists N_x$ in which  $\forall y\in N_x$, the preimage of each $\mu_y$ under the map $H_n(M\mid N_x) \surjects H_n(M\mid y)$ is a single generator $\mu_{N_x}$.
* Local orientation of a manifold
	- At a point $x\in M^n$, a choice of a generator $\mu_x$ of $H_n(M, M - \theset{x}) = \ZZ$
- Local homology
	- $H_n(X, X-A; \ZZ)$ is the local homology at $A$, also denoted $H_n(X \mid A)$
* Oriented manifold
* Path
* Path Lifting Property
* Perfect Pairing
* Poincare Duality
	- For a closed, orientable $n\dash$manifold, the isomorphism of the map $$ D: H^k(M; R) \to H_{n-k}(M; R) \\ D(\alpha) = [M] \frown \alpha$$
* Properly Discontinuous
* Pullback
* Pushout
* Quasi-isomorphism
* Retraction
	- A map $r$ in $A\mathrel{\textstyle\substack{\Large\injects^{\iota}\\\textstyle\dashleftarrow_{r}}} X$ satisfying $r\circ\iota = \id_A$.
* Short exact sequence
* Simplicial Complex
* Simplicial Map
	- Fora map $K\mapsvia{f} L$ between simplicial complexes, $f$ is a simplicial map if for any set of vertices $\theset{v_i}$ spanning a simplex in $K$, the set $\theset{f(v_i)}$ are the vertices of a simplex in $L$.
* Simply Connected
* Singular Chain
	* $x \in C_n(x) \implies X = \sum_i n_i \sigma_i = \sum_i n_i (\Delta^n \mapsvia{\sigma_i} X)$
* Singular Cochain
	* $x \in C^n(x) \implies X = \sum_i n_i \psi_i = \sum_i n_i (\sigma_i \mapsvia{\psi_i} X)$
* Singular Homology
* Singular Simplex
* Smash Product
* Tor Group
	- For an $R\dash$module$\tor_R^n(\wait, B) = L_n(\wait \tensor_R B)$ where $L_n$ denotes the left derived functor.
* Orientation Cover
	- For any manifold $M$, a two sheeted orientable covering space $\tilde M$. $M$ is orientable iff $\tilde M$ is disconnected. Constructed as $$\tilde M = \coprod_{x\in M}\theset{\mu_x \mid \mu_x~ \text{is a local orientation}}$$
* Universal Cover
* Weak Homotopy Equivalence
* Weak Topology
* Wedge Product
* Relative cycles
* Relative boundaries
* Relative homotopy groups
* Moore Space
* Eilenberg-MacLane Space
* Manifold
	- An $n\dash$maniofld is a Hausdorff space in which each neighborhood has an open neighborhood homeomorphic to $\RR^n$.
- Closed manifold
	- A manifold that is compact, with or without boundary.
- Compact
	- Every open cover has a finite subcover.
- Dimension of a manifold
	- For $x\in M$, the only nonvanishing homology group $H_i(M, M - \theset{x}; \ZZ)$
- Manifold with boundary
	- A manifold in which open neighborhoods may be isomorphic to either $\RR^n$ or a half-space $\theset{\mathbf{x} \in \RR^n \mid x_i > 0}$.
- Boundary of a manifold
	- Points $x\in M^n$ defined by $\del M = H_n(M, M-\theset{x}; \ZZ) = 0$
- Suspension
- Loop Space
- R-orientability
- Lefschetz duality
- Alexandar duality
- Fundamental classes
- Perfect Pairing
- Kronecker Product
-
