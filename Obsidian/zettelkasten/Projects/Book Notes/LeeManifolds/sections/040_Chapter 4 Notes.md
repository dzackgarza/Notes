
[[../Textbook Reading, Manifolds (Lee)]]
# Chapter 4: 'Mersions

## Notes

Three categories of maps:

- Submersions: everywhere surjective differentials (analogy: quotient maps)
- Immersions: everywhere injective differentials,
- Embeddings: injective immersions that are homeomorphisms onto their images (special case of immersion).


:::{.definition title="Rank"}
If $F:M \to N$ is a smooth map of manifolds and $p\in M$, then the *rank of $F$ at $p$* is the rank of the linear map $dF_p: T_p M \to T_{F(p)} N$
:::
This is equivalently the rank of the Jacobian of $F$ in any chart, or the dimension of $\im dF_p \subseteq T_{F(p)}N$.
The rank may vary from point to point.

The positive integer $\rank(F)$ is bounded above by $\min \theset{\dim M, \dim N}$; if it achieves this maximum we say $F$ has *full rank*.


:::{.definition title="Submersion"}
A smooth map $F:M\to N$ is a *submersion* iff $dF_p$ is surjective for every $p\in M$, or equivalently $F$ has constant rank $\rank(F) = \dim N$.
:::
Analogy: surjective linear maps.

:::{.definition title="Immersion"}
A smooth map $F:M\to N$ is an *immersion* iff $dF_p$ is injective for every $p\in M$, or equivalently $F$ is of constant rank $\rank(F) = \dim M$.
:::
Analogy: injective linear maps.


Proposition (\$\\dash\$jective Differential Implies Local \$\\dash\$mersion)
: If $F:M\to N$ and $dF_p$ is surjective (resp. injective) at a point, then there exists a neighborhood $U \ni p$ such that $F$ restricted to $U$ is a submersion (resp. immersion).

Proof
: Go to charts.
  The set of $m\times n$ matrices of full rank is open in $\mat(m\times n, \RR)$ and the Jacobian is a continuous function of its entries.


Examples
:   \hfill

    - Coordinate projections $\pi_i: \prod_{j=1}^n M_j \to M_i$ are smooth submersions.
    - $\gamma: I \to M$ a smooth surve is a smooth immersion $\iff \gamma'(t) \neq 0$ for all $t\in I$.
    - The projection $TM\to M$ is a smooth submersion. 

Exercise
: Show that smooth submersions are closed under composition, as are smooth immersions, but not maps of constant rank.

Definition (Local Diffeomorphism)
: A map $F:M\to N$ is a *local diffeomorphism* iff every $p\in M$ has a neighborhood $U\ni p$ such that $F(U) \subseteq N$ is open and $\restrictionof{F}{U}:U\to F(U)$ is a diffeomorphism.

Theorem (Inverse Function Theorem)
: If $p\in M$ and $dF_p$ is invertible, then there are connected neighborhoods $U\ni p$ and $V\ni F(p)$ such that $\restrictionof{F}{U}:U\to V$ is a diffeomorphism.

Theorem (Inverse Function Theorem, Rudin's Version)
: If $f$ is a $C^1$ mapping of open subsets $M\subseteq \RR^m\to \RR^n\supseteq N$ and $f'(p)$ is invertible for some $p\in M$, then there exists $U\ni p$ and $V\ni f(p)$ such that $\restrictionof{f}{U}:U\to V$ is a bijection with $C^1$ inverse.

Note that this can fail if $\bd M \neq \emptyset$, but will hold when $F(M)\subseteq N^\circ$.
This always happens at points $p$ where $dF_p$ is invertible.

Proposition
:   \hfill

    1. $F$ is a local diffeomorphism $\iff F$ is an immersion and a submersion.
    2. If $\dim M = \dim N$ and $F$ is *either* an immersion or a submersion, then $F$ is a local diffeomorphism.

Proof
:   \hfill

    1. Find a neighborhood $U\ni p$ on which $F: U \to F(U)$ is a diffeomorphism, then $dF_p: T_p M \mapsvia{\cong} T_{F(p)}N$ is an isomorphism, so $\rank(F) = \dim M = \dim N$ and $F$ is an immersion and a submersion.

      Conversely, if $dF_p$ is an isomorphism at each point, the inverse function theorem supplies neighborhoods on which $F$ is a diffeomorphism.

    2. If $\dim M = \dim N$ then either injectivity or surjectivity of $dF_p$ implies bijectivity.

Theorem (Rank Theorem)
:   If $F:M\to N$ with $\dim(M) = m,~\dim(N) = n$ and about each $p\in M$ there exist charts for which $F$ has a coordinate representation

    \begin{align*}
    \hat F(x^1, \cdots, x^r, x^{r+1}, \cdots, x^m) &= (x^1, \cdots, x^r, 0, \cdots, 0) \\
    \hat F(x^1, \cdots, x^n, x^{n+1}, \cdots, x^m) &= (x^1, \cdots, x^n) \quad\text{if $F$ is a submersion} \\
    \hat F(x^1, \cdots, x^n, x^{n+1}, \cdots, x^m) &= (x^1, \cdots, x^m, 0, \cdots, 0) \quad\text{if $F$ is an immersion}\\
    .\end{align*}

    I.e., submersions are projections onto the first $n = \dim N$ coordinates, and immersions are inclusions of the first $m=\dim M$ coordinates.

Proposition
:   Suppose $F:M\to N$ and $M$ is connected, then TFAE:

    - $F$ has constant rank.
    - For each $p\in M$ there are charts such that $F$ is linear.

I.e. constant rank maps locally behave like their differentials.

Theorem (Global Rank Theorem)
:   Let $F:M \to N$ be smooth of constant rank, then

    1. $F$ surjective $\implies F$ is a submersion,
    2. $F$ injective $\implies F$ is a immersion,
    3. $F$ bijective $\implies F$ is a diffeomorphism.

One additional more general case: manifolds with boundary, where the domain includes a boundary point.
In this case, if $F:M\to N$ is an immersion with $p\in \bd M$ then there exist charts such that $F$ has a coordinate representation of inclusion of the first $m$ coordinates.
The situation is more complicated when the codomain includes boundary points, since the image may intersect $\bd N$ in unpredictable ways.


Definition (Embedding)
: A *smooth embedding* $F:M\to N$ is an immersion that is also a topological embedding, i.e. a homeomorphism onto its image.

> Note that this is not just a smooth topological embedding, it additionally must be an immersion.

Examples:

- Subset inclusions $U \injects M$.
- "Insertion of coordinate" maps $\iota_j: M_j \to \prod_{i=1}^N M_i$ where $q \mapsto (p_1, \cdots, p_{j-1}, q, p_{j+1}, \cdots, p_k)$ for any choices of $p_i$.
- $\RR^n \injects \RR^{n+k}$ by $(x^1, \cdots, x^n) \mapsto (x^1, \cdots, x^n, 0, \cdots, 0)$.

Counterexamples:

- Failing immersion: The curve $\gamma: \RR \to \RR^2$ where $t\mapsto \thevector{t^3, 0}$ is a smooth topological embedding but not a smooth embedding since $\gamma'(0)= 0$ (so it fails to be an immersion).

- Failing topological embedding: the figure-eight curve $\beta: (-\pi ,\pi) \to \RR^2$ where $t\mapsto \thevector{\sin(2t), \sin(t)}$ is an injective smooth immersion since $\beta'(t) \neq 0$ for any $t$, but not an embedding because its image is compact and its domain is not.

- Failing topological embedding: the curve $\gamma: \RR\to T^2$ given by $t \mapsto \thevector{e^{2\pi i t}, e^{2\pi i \alpha t}}$ where $\alpha$ is irrational is a smooth immersion since $\gamma'(t) \neq 0$ and injective since $\gamma(t) = \gamma(s) \implies t-s, \alpha(t-s) \in \ZZ$ which can not happen.

    But one can use Dirichlet's approximation theorem to show that $\gamma(0)$ is a limit point of $\gamma(\ZZ)$, whereas $\ZZ$ has no limit points in $\RR$, so $\gamma$ can not be a homeomorphism onto its image.


Theorem (Dirichlet's Approximation Theorem)
: For $\alpha\in \RR, N\in \ZZ^{> 0}$, there exist $n, m$ such that $1\leq n \leq N$ and $\abs{n\alpha - m} < {1\over N}$.

Proposition
:   If any of the following hold for $F:M\to N$, then $F$ is a smooth embedding:

    - $F$ is an open or a closed map.
    - $F$ is a proper map.
    - $M$ is compact.
    - $\bd M = \emptyset$ and $\dim M = \dim N$.

Application: $\iota: S^n \injects \RR^{n+1}$ is smooth and $d\iota_p$ is injective at every $p\in S^n$. 
Since $S^n$ is compact, $\iota$ is a smooth embedding.

Theorem (Local Embedding Theorem)
: $F$ is a smooth immersion $\iff F$ is locally a smooth embedding: every $p\in M$ admits a neighborhood $U\ni p$ such that $\restrictionof{F}{U}:U\to N$ is a smooth embedding.

This leads to formulating the following definition:

Definition (Topological Immersion)
: A continuous map $F:X\to Y$ is a *topological immersion* iff every $p\in X$ admits a neighborhood on which $F$ is a topological embedding.

Definition (Local Sections)
: A *local section* $\sigma$ of a continuous map $\pi:M\to N$ is a continuous map $\sigma: U\to M$ for some open $U\subseteq N$ such that $\pi \circ \sigma = \id_U$.

Theorem (Local Section Theorem)
: $\pi:M\to N$ is a smooth submersion $\iff$ every $p\in M$ is in the image of a smooth local section of $\pi$.

I.e., smooth submersions admit enough smooth local sections.

Definition (Topological Submersions)
: A continuous map $\pi:X\to Y$ is a topological submersion iff every point is in the image of a continuous local section of $\pi$.


Proposition
: If $\pi:M\to N$ is a submersion then $\pi$ is an open map, and if $\pi$ is additionally surjective then $\pi$ is a quotient map.

Note: a surjective smooth submersion is a topological quotient map.


Theorem (Characteristic Property of Surjective Smooth Submersions)
: If $\pi:M\to N$ is a surjective submersion, a map $F:N\to P$ is smooth $\iff F\circ \pi$ is smooth, as in the following diagram
\begin{center}
\begin{tikzcd}
M \ar[d, "\pi"] \ar[rd, "F\circ \pi"] & \\
N \ar[r, "F"] & P
\end{tikzcd}
\end{center}

\todo{See problem 4.7 for a description of why this is "characteristic".}

Theorem (When Smooth Maps Factor Through Submersions)
: If $F:M\to P$ is constant on the fibers of $\pi:M\to N$ then it descends to a map $\tilde F: N\to P$:
\begin{center}
\begin{tikzcd}
M \ar[d, "\pi"] \ar[rd, "F"] & \\
N \ar[r, "\tilde F", dotted] & P
\end{tikzcd}
\end{center}

Proof
: Surjective smooth submersions are topological quotient maps, to $\tilde F$ exists as a continuous map. 
$\tilde F$ is smooth by the previous proposition.

Proposition
: If $\pi_1:M\to N_1$ and $\pi_2:M\to N_2$ with each constant on the fibers of the other, there is a unique diffeomorphism $F:N_1 \to N_2$.

\todo{How is this used?}

Definition (Topological Covering Map)
: A surjective continuous map $\pi:E\to M$ between connect and locally path-connected spaces such that each $p\in M$ is *evenly covered*, i.e. each connected component of $\pi\inv(U)$ is mapped to $U$ homeomorphically.

Definition (Smooth Covering Map
: If $E, M$ are connected smooth manifolds with or without boundary, $\pi:E\to M$ is a *smooth covering map* iff $\pi$ is a smooth surjection such that each $p\in M$ admits a neighborhood $U\ni p$ such that $\pi\inv(U)$ is mapped diffeomorphically to $U$.

> Need the sheets to be mapped diffeomorphically, as opposed to just smooth homeomorphisms.

Note that if $E$ is simply connected, then $E$ is the universal cover of $M$.

Proposition
:   \hfill

    1. Every smooth covering map is:
      
      - A local diffeomorphism
      - A smooth submersion
      - An open map
      - A quotient map

    2. An injective smooth covering map is a diffeomorphism

    3. A topological covering map is a smooth covering map $\iff$ it is a local diffeomorphism.


> Note that smooth covering maps are surjective smooth submersions, so all previous theorems work.
  E.g. theorems about descending to submersions can be used to define maps out of the base of a covering space.

\todo{Uses of this?}

Proposition (Strengthened Local Section Theorem for Covering Maps)
: If $\pi:E\to M$ is a smooth covering map, given any evenly covered open $U\subseteq M$, $q\in U$, $p\in \pi\inv(q)$, there exists a unique smooth local section $\sigma: U\to E$.

Exercises:

- Every local section of a smooth covering map is smooth.
- Finitely many $\pi_i: E_i \to M_i$ smooth covering maps implies $$\prod \pi_i: \prod E_i \to \prod M_i$$ is a smooth covering map.

Proposition (Existence of Universal Covers)
: If $\pi:E\to M$ is a topological covering map with $M$ a connected smooth $n\dash$manifold, then $E$ is a topological $n\dash$manifold with a unique smooth structure such that $\pi$ is a smooth covering map.

Proposition (Uniqueness of Universal Covers)
:   If $M$ is a connected smooth manifold, then there exists a simply-connected smooth manifold $\tilde M$, its universal cover, and a smooth covering map $\pi \tilde M\to M$. 

    It is unique in the sense that if $\tilde M'$ is any other such cover, there exists a diffeomorphism $\Phi: \tilde M \to \tilde M'$ such that $\pi' \circ \Phi = \pi$.

\begin{center}
\begin{tikzcd}
\tilde M \ar[dr, "\pi"] \ar[rr, "\exists \Phi", dotted] & & \tilde M' \ar[dl, "\pi'"] \\
& M & 
\end{tikzcd}
\end{center}

Even if a map is known to be a surjective local diffeomorphism, it is difficult to tell if it is a smooth covering map.

Proposition (Sufficient Condition for Local Diffeomorphisms to be Coverings)
: If $E, M$ are nonempty and connected with $\pi:E\to M$ a proper local diffeomorphism, then $\pi$ is a smooth covering map.

> Proof uses the fact that local diffeomorphisms are open and proper maps are closed.
