[LeeManifolds](../LeeManifolds.md)

Tags: #manifolds #reading_notes 

# Chapter 1: Point-Set Properties of Topological Manifolds

Pages 1- 29.

## Notes Part 1

Definition (Topological Manifold)
:   A topological space $M$ that satisfies

    1. $M$ is Hausdorff, i.e. points can be separated by open sets
    2. $M$ is second-countable, i.e. has a countable basis
    3. $M$ is locally Euclidean, i.e. every point has a neighborhood homeomorphic to an open subset $\hat U$ of $\RR^n$ for some fixed $n$.


The last property says $p\in M \implies \exists U$ with $p\in U \subseteq M$, $\hat U\subseteq \RR^n$, and a homeomorphism $\phi: U \to \hat U$.

> Note that second countability is primarily needed for existence of partitions of unity.

Exercise
: Show that the in the last condition, $\hat U$ can equivalently be required to be an open ball or $\RR^n$ itself.


Theorem (Topological Invariance of Dimension)
: Two nonempty topological manifolds of different dimensions can not be homeomorphic.


Exercise
: Show that in a Hausdorff space, finite subsets are closed and limits of convergent sequences are unique.

Exercise 
: Show that subspaces and finite products of Hausdorff (resp. second countable) spaces are again Hausdorff (resp. second countable).\label{ex:subspaces_and_products_of_hausdorff}

Thus any open subset of a topological manifold with the subspace topology is again a topological manifold.

Exercise
: Give an example of a connected, locally Euclidean Hausdorff space that is not second countable.

Definition (Charts)
: A chart on $M$ is a pair $(U, \phi)$ where $U\subseteq M$ is open and $\phi: U \to \hat U$ is a homeormohpsim from $U$ to $\hat U = \phi(U) \subseteq \RR^n$.
  If $p\in M$ and $\phi(p) = 0 \in \bar U$, then the chart is said to be *centered* at $p$.
  Note that any chart about $p$ can be modified to a chart $(\phi_1, \hat U_1)$ that is centered at $p$ by defining $\phi_1(x) = x - \phi(v)$.
  
  ![](figures/image_2020-06-15-00-22-05.png)

  $U$ is the *coordinate domain* and $\phi$ is the *coordinate map*.

  Note that we can write $\phi$ in components as $\phi(p) = \thevector{x^1(p), \cdots, x^n(p)}$ where each $x^i$ is a map $x^i: U \to \RR$.
  The component functions $x^i$ are the *local coordinates* on $U$.

Shorthand notation: $\thevector{x^i} \definedas \thevector{x^1, \cdots, x^n}$.

Example (Graphs of Continuous Functions)
:   Define 
    \begin{align*}
    \Gamma(f) = \theset{(x, y) \in \RR^{n} \cross \RR^{k} \suchthat x\in U,~ y = f(x) \in \hat U }
    .\end{align*}

    This is a topological manifold since we can take $\phi: \Gamma(f) \to U$ by restricting $\pi_1: \RR^{n}\cross \RR^k \to \RR^n$ to the subspace $\Gamma(f)$.
    Projections are continuous, restrictions of continuous functions are continuous.\todo{Thus graphs of continuous functions $f: \RR^n \rightarrow \RR^k$ are locally Euclidean?}
    
    This is a homeomorphism because the map $g: x \mapsto (x, f(x))$ is continuous and $g\circ \pi_1 = \id_{\RR^n}$ is continuous with $\pi_1 \circ g = \id_{\Gamma(f)}$.
    Note that $U \cong \Gamma(f)$, and thus $(U, \phi) = (\Gamma(f), \phi)$ is a single *global* coordinate chart, called the *graph coordinates* of $f$.


Note that this works in greater generality:: 
\todo{Coordinates as numbers vs functions?} 
"The same observation applies to any subset of $\RR^{n+k}$ by setting *any* $k$ of the coordinates equal to some continuous function of the other $n$."



Example (Spheres)
:   $S^n$ is a subspace of $\RR^{n+1}$ and is thus Hausdorff and second-countable by exercise \ref{ex:subspaces_and_products_of_hausdorff}.\label{ex:sphere_is_a_manifold}

    ![](figures/image_2020-06-15-21-28-56.png) 
    
    To see that it's locally Euclidean, take
    \begin{align*}
    U_i^+ &\definedas \theset{\thevector{x^1, \cdots, x^n} \in \RR^{n+1} \suchthat x^i > 0} \qtext{for} 1 \leq i \leq n+1 \\
    U_i^- &\definedas \theset{\thevector{x^1, \cdots, x^n} \in \RR^{n+1} \suchthat x^i < 0} \qtext{for} 1 \leq i \leq n+1
    .\end{align*}

    Define
    \begin{align*}
    f: \RR^{n} &\to \RR^{\geq 0} \\
    \vector x &\mapsto \sqrt{1 - \norm{\vector x}^2}
    .\end{align*}

    Note that we immediately need to restrict the domain to $\DD^n \subset \RR^n$, where $\norm{x}^2 \leq 1\implies 1 - \norm{x}^2 \geq 0$, to have a well-defined real function $f: \DD^n \to \RR^{\geq 0}$.


    Then (claim) 
    \begin{align*}
    U_i^+ \intersect S^n \qtext{is the graph of} & x^i = f(x^1, \cdots, \hat{x^i}, \cdots, x^{n+1}) \\
    U_i^- \intersect S^n \qtext{is the graph of} &x^i = -f(x^1, \cdots, \hat{x^i}, \cdots, x^{n+1})
    .\end{align*}


    This is because 
    \begin{align*}
  \Gamma(x^i) 
    &\definedas \theset{(\vector x, f(\vector x)) \subseteq \RR^n \cross \RR} \\
    &= \theset{ \thevector{x_1, \cdots, \hat{x^i}, \cdots, x^{n+1}}, f\qty{\thevector{x_1, \cdots, \hat{x^i}, \cdots, x^{n+1} }}\subseteq \RR^n \cross \RR } \\
    &= 
    \theset{ \thevector{x_1, \cdots, \hat{x^i}, \cdots, x^{n+1} }, 
    \qty{1 - \sum_{\substack{j=1 \\ j\neq i}}^{n+1} (x^j)^2}^{1\over 2} 
    \subseteq \RR^n \cross \RR } \\
    \end{align*}

    and any vector in this set has norm satisfying
    \begin{align*}
    \norm{(\vector x, y)}^2 =
    \sum_{\substack{j=1 \\ j\neq i}}^{n+1} (x^j)^2 + 
    \qty{1 - \sum_{\substack{j=1 \\ j\neq i}}^{n+1} (x^j)^2} = 1
    \end{align*}
    and is thus in $S^n$.

    To see that any such point also has positive $i$ coordinate and is thus in $U_i^+$, 
    we can rearrange (?) coordinates to put the value of $f$ in the $i$th coordinate to obtain
    \todo[fancyline]{Seems like $f$ is always the *last* coordinate in the graph} 
    \begin{align*}
    \Gamma(x_i) = \theset{\thevector{x^1, \cdots, f(x^1, \cdots, \hat{x^i}, \cdots, x^n), \cdots, x^n  }}
    \end{align*}
    and note that the square root only takes on positive values.

    Thus each $U_i^{\pm} \intersect S^n$ is the graph of a continuous function and thus locally Euclidean, and we can define chart maps
    \begin{align*}
    \phi_i^{\pm}: U_i^{\pm} \intersect S^n &\to \DD^n \\
    \thevector{x^1, \cdots, x^n} &\mapsto [x^1, \cdots, \hat{x^i}, \cdots, x^{n+1}]
    \end{align*}
    yield $2(n+1)$ charts that are graph coordinates for $S^n$.

Example (Projective Space)
:   Define $\RP^n$ as the space of 1-dimensional subspaces of $\RR^{n+1}$ with the quotient topology determined by the map
    \hspace{10em} \todo[fancyline]{How is this map a quotient map?}
    \begin{align*}
    \pi: \RR^{n+1}\smz &\to \RP^n\\
    \vector x &\mapsto \spanof_\RR\theset{\vector x}
    .\end{align*} 

    Notation: for $\vector x \in \RR^{n+1}\smz$ write $[\vector x] \definedas \pi(\vector x)$, the line spanned by $\vector x$.

    Define charts:
    \begin{align*}
    \tilde U_i \definedas \theset{\vector x \in \RR^{n+1}\smz \suchthat x^i \neq 0}, \quad U_i = \pi(\tilde U_i) \subseteq \RP^n \\
    .\end{align*}

    and chart maps
    \begin{align*}
    \tilde \phi_i: \tilde U_i &\to \RR^n \\
    \thevector{x^1, \cdots, x^{n+1}} &\mapsto \thevector{{x^1 \over x^i}, \cdots \hat{x^i}, \cdots {x^{n+1} \over x^i}  }
    .\end{align*}

    Then (claim) this descends to a continuous map $\phi_i: U_i \to \RR^n$ by the universal property of the quotient:

    \begin{center}
    \begin{tikzcd}
    \tilde U_i \ar[d, "\pi_U"'] \ar[rd, "\tilde \phi_i"] & \\
    U_i \ar[r, "\phi_i", dotted] & \RR^n
    \end{tikzcd}
    \end{center}

    - The restriction $\pi_U: \tilde U_i \to U_i$ of $\pi$ is still a quotient map because $\tilde U_i = \pi_U\inv(U_i)$ where $U_i\subseteq \RP^n$ is open in the quotient topology and thus $\tilde U_i$ is saturated.
    
      Thus $\pi_U$ sends saturated sets to open sets and is thus a quotient map.
    
    - $\tilde \phi_i$ is constant on preimages under $\pi_U$: fix $y\in U_i$, then $\pi_U\inv(\theset{y}) = \theset{\lambda \vector y \suchthat \lambda \in \RR\smz}$, i.e. the point $y \in \RP^n$ pulls back to every nonzero point on the line spanned by $\vector y\in \RR^n$.

      But 
      \begin{align*}
      \tilde \phi_i(\lambda \vector y) 
      &= \phi_i \qty{ \thevector{\lambda y^1, \cdots, \lambda y^i, \cdots, \lambda y^n} } \\
      &= \thevector{{\lambda y^1 \over \lambda y^i}, \cdots, \hat{\lambda y^i}, \cdots, {\lambda y^{n+1} \over \lambda y^i}} \\
      &= \thevector{{y^1 \over y^i}, \cdots, \hat{y^i}, \cdots, {y^{n+1} \over y^i}} \\
      &= \tilde \phi_i(\vector y)
      .\end{align*}

  So this yields a continuous map
  \begin{align*}
  \phi_i: U_i \to \RR^n
  .\end{align*}

  We can now verify that $\phi$ is a homeomorphism since it has a continuous inverse given by
  
  \begin{align*}
  \phi_i\inv: \RR^n &\to U_i \subseteq \RP^n \\
  \vector u \definedas \thevector{u^1, \cdots, u^n } &\mapsto \thevector{u^1, \cdots, u^{i-1}, {\color{red}1}, u^{i+1}, \cdots, u^n}
  .\end{align*}

  It remains to check: \todo{Exercise}

  1. The $n+1$ sets $U_1, \cdots, U_{n+1}$ cover $\RP^n$.
  2. $\RP^n$ is Hausdorff
  3. $\RP^n$ is second-countable.

   
Exercise (1.6)
: Show that $\RP^n$ is Hausdorff and second countable.

Exercise (1.7)
: Show that $\RP^n$ is compact. (Hint: show that $\pi$ restricted to $S^n$ is surjective.)

Definition (Topological Embedding)
: A continuous map $f:X\to Y$ is a *topological embedding* iff it is injective and $\tilde f:X\to f(X)$ is a homeomorphism.


Example (Product Manifolds)
:   Let $M \definedas M_1 \times \cdots \times M_k$ be a product of manifolds of dimensions $n_1, \cdots, n_k$ respectively.
    A product of Hausdorff/second-countable spaces is still Hausdorff/second-countable, so just need to check that it's locally Euclidean.

    - Let $\vector p \in \prod_{i=1}^N M_i$, so $p_i \in M_i$
    - Choose a chart $(U_i, \phi_i)$ with $p_i\in U_i$ and assymble a product map:
    \begin{align*}
    \Phi \definedas \prod \phi_i: \prod U_i \to \prod R^{n_i} \cong \RR^{\Sigma n_i} \definedas \RR^N
    .\end{align*}

    - Claim: $\Phi$ is a homeomorphism onto its image in $R^N$.
      - Each $\phi_i$ is a homeomorphism onto $\phi_i(U_i)$ (by the definition of a chart on $M_i$) 
      - It suffices to show that that $\Phi\inv$ exists and is continuous, where 
      \begin{align*}
      \Phi\inv(V) \definedas \qty{\prod \phi_i}\inv \qty{\prod V_i}
      .\end{align*}
      - $\Phi$ is a product of continuous functions and thus continuous.
      - $\Phi\inv \definedas \qty{\prod \phi_i}\inv = \prod \phi_i\inv$, which are all assumed continuous since $\phi_i$ were homeomorphisms.
    
Example (Torii)
:   $T^n \definedas \prod_{i=1}^n S^1$ is a topological $n\dash$manifold.


Definition (Precompact)
: A subset $A\subseteq X$ is *precompact* iff its closure $\cl_X(A)$ is compact in $X$.

Proposition
: Every topological manifold has a countable basis of precompact coordinate balls.

Proposition
:   Let $M$ be a topological manifold.

    - $M$ is locally path-connected.
    - $M$ is connected $\iff M$ is path-connected
    - The connected components and path components of $M$ coincide.
    - $\pi_0(M)$ is countable and each component is open and a connected topological manifold.

Proposition
: Every topological manifold $M$ is locally compact.

Proof
: $M$ has a basis of precompact open sets.

Theorem (Manifolds are Paracompact)
: Given any open cover $\mcu \covers M$ of a topological manifold and any basis $\mcb$ for the topology on $M$, there exists a countable locally finite open refinement of $\mcu$ consisting of elements of $\mcb$.

Proposition
: $\pi_1(M)$ is countable.

