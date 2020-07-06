# Preface: Point Set Review

## Quotients 

Definition (Saturated)
:   A subset $A\subseteq X$ is *saturated* with respect to $p:X\to Y$ if whenever $p\inv(\theset{y}) \intersect A \neq \emptyset$, then $p\inv(\theset{y}) \subseteq A$.

    Equivalently, $A = p\inv(B)$ for some $B\subseteq Y$, i.e. it is a complete inverse image of some subset of $Y$, i.e. $A$ is a union of fibers $p\inv(b)$.

Definition (Quotient Map)
:   A continuous surjective map $p: X\surjects Y$ is a *quotient map* if $U\subseteq Y$ is open **iff** $p\inv(U) \subset X$ is open.

    > Note that $\implies$ comes from the definition of continuity of $p$, but $\impliedby$ is a stronger condition.

    Equivalently, $p$ maps saturated subsets of $X$ to open subsets of $Y$.

Definition (Universal Property of Quotients)
:   For $\pi :X\to Y$ a quotient map, if $g:X\to Z$ is a map that is constant on each $p\inv(\theset{y})$, then there is a unique map $f$ making the following diagram commute:

    \begin{center}
    \begin{tikzcd}
    X \ar[d, "\pi"] \ar[rd, "g"] & \\
    Y \ar[r, "f", dotted] & Z
    \end{tikzcd}
    \end{center}

Fact: an injective quotient map is a homeomorphism.

Fact: a product of quotient maps need not be a quotient map.

## Subspaces

Definition (The Subspace Topology)
: $U\subset A$ is open iff $U = V\intersect A$ for some open $V\subseteq X$.

Proposition (Universal Property of Subspaces)
:   If $X$ and $\iota_S: S\injects Y$ is a subspace, then every continuous map $f: X\to S$ lifts to a continuous map $\tilde f: X\to Y$ where $\tilde f \definedas \iota_S \circ f$:

    \begin{center}
    \begin{tikzcd}
     & Y \\
    X \ar[r, "f"] \ar[ur, "\exists! \tilde f", dotted] & S \ar[u, "\iota_S"', hook]
    \end{tikzcd}
    \end{center}

    Note that we can view $\iota_S \definedas \restrictionof{\id_Y}{S}$.
    The subspace topology is the unique topology for which this property holds.

Some properties of subspace:

- The inclusion $\iota_S$ is a topological embedding.
- Restricting a continuous map to a subspace is still continuous.
- A basis for the subspace topology for $A\subset X$ can be obtained by intersecting basis elements of $X$ with $A$.
- If $X$ is Hausdorff/first/second-countable, then so is $A$.

## Products 

Definition (The Product Topology)
: The coarsest topology such that every projection map $p_\alpha: \prod_\beta X_\beta \to X_\alpha$ is continuous, i.e. for every $U_\alpha \subseteq X_\alpha$ open, $p_\alpha\inv(U_\alpha)\in \prod X_\beta$ is open.
  For finite index sets, we can take the box topology: the collection of sets of the form $\prod_{i=1}^N U_i$ with each $U_i$ open in $X_i$ forms a basis for the product topology on $\prod_{i=1}^N X_i$.

> Why these differ: in $\RR^\infty$, the set $S = \prod (-1, 1)$ is open in the box topology but not the product topology, since $\theset{0}^\infty$ is not contained in any basic open neighborhood contained in $S$.

Some properties of products:

- Projections $\pi_i$ are continuous by definition.
- A basis for the product topology can be obtained by taking the product of bases.
- A map $f: X \into \prod Y_i$ *into* a product is continuous iff each component function $F_i \definedas \pi_i \circ f: X\to Y_i$ is continuous.
  - I.e. if we have continuous maps $f_i:X\to Y_i$ then the composite map $F = \thevector{f_1, f_2, \cdots }$ is continuous.
- Separate continuity does not imply joint continuity: A map $f: \prod X_i \to Y$ *out* of a product need not be continuous even if (defining $\iota_j: X_j \injects \prod X_i$) the map $f\circ \iota_j: X_j \to Y$ is continuous for all arbitrary inclusions $\iota_j$.
- Any map of the form $f_{\vector{a}_j}: X_j \to \prod_{i=1}^n X_i$ where $x\mapsto (a_1, \cdots, a_{j-1}, x, a_{j+1}, \cdots a_n)$ is a topological embedding.
- If $X_i$ are Hausdorff/first/second-countable, then so is $\prod_{i=1}^n X_i$.

## Misc

Definition (Precompact)
: A subset $A\subseteq X$ is *precompact* iff its closure $\cl_X(A)$ is compact in $X$.

Definition (Locally Compact
: A space $X$ is *locally compact* iff every $x\in X$ has a neighborhood which is contained in some compact subset of $X$.

## Analysis Review

Definition (Derivative, Real Valued)
:   For $f:(a, b) \to \RR$,
    \begin{align*}
    f'(x) = \lim_{h\to 0} {f(x+h) - f(x) \over h} \iff f(x+h) - f(x) = f'(x)h + r(h) \text{ where } {r(h) \over h}\converges{h\to 0}\to 0
    .\end{align*}

    Thus we regard the derivative as the linear function $h \mapsto g'(x) h$.


Definition (Derivative, Vector Valued)
:   For $\vector{f}: (a,b) \to \RR^n$, $\vector \vector{f}'(x)$ is the vector $\vector y\in \RR^n$ such that
    \begin{align*}
    \qty{ {\vector{f}(x+h) - \vector f(x) \over h} - \vector{y} } \converges{h\to 0}\to 0 \iff {\abs{ \vector f(x+h) - \vector f(x) - \vector f'(x)h} \over \abs{h}}  \converges{h\to 0}\to 0
    .\end{align*}

Definition (Derivative, General Case)
:   For $\vector{f}: \RR^n \to \RR^m$, if there exists a linear transformation $A$ such that 
    \begin{align*}
    {\norm{ f(\vector x+ \vector h) - f(\vector x) - A\vector h}_{\RR^m} \over \norm{\vector h}_{\RR^n} }  \converges{\norm{\vector h}\to 0}\to 0
    .\end{align*}

    The matrix $A$ (also written $D_f$) is the *total derivative* of $f$ at $\vector x$.

Theorem (Chain Rule)
: If $E\subset \RR^n$ and $f:\RR^n \to \RR^m$ with $E \mapsvia{f} f(E) \mapsvia{g} g(f(E))$ with $f$ differentiable at $\vector x_0$ and $g$ differentiable at $f(\vector x_0)$, then the map $F(\vector x)\definedas g(f(\vector x))$ is differentiable at $\vector x_0$ with derivative $$D_F(\vector x_0) = D_g(f(\vector x_0)) \cdot D_f(\vector x_0).$$

Definition (Components of a Function)
:   If $\mcb_n \definedas \theset{\vector e_i} \subset\RR^n$ and $\mcb_m \definedas \theset{\vector u_i}\subset \RR^m$ are standard bases and $\vector f: \RR^n\to \RR^m$, then the *components* of $\vector f$ are the functions $f_i: \RR^n \to \RR$ defined by
    \begin{align*}
    \vector f(\vector x) = \sum_{i=1}^m f_i(\vector x)\vector u_i = \thevector{f_1(\vector x), \cdots, f_m(\vector x)}_{\mcb_m} 
    .\end{align*}

Definition (Partial Derivative)
:   For $\theset{{\vector e_j}}$ the standard orthonormal basis of $\RR^n$, define
    \begin{align*}
    \dd{f_i}{x_j} = (D_j f_i)(\vector x) = \lim_{t\to 0} {f_i(\vector x + t {\vector e_j}) - f_i(\vector x) \over t}
    .\end{align*}

> Warning: $f$ continuous and existence of all $\dd{f_i}{x_j}$ does not imply differentiability.
> If $f$ is differentiable, however, then $D_f$ is the Jacobian matrix.

Theorem (Derivative Equals Jacobian)
: If $f$ is differentiable at $\vector x_0$, then its derivative is an $m\times n$ matrix, its partial derivatives exist, and
\begin{align*}
D_f(\vector x)\vector e_j = \sum_{i=1}^m \dd{f_i}{x_j} \vector u_i = \thevector{ \dd{\vector f}{x_1}, \cdots, \dd{\vector f}{x_n} }
= 
\begin{bmatrix}
\nabla f_1 & \to \\
\nabla f_2 & \to \\
\vdots & \vdots \\
\nabla f_m & \to
\end{bmatrix}
= \thevector{ \nabla f_1^t, \cdots, \nabla f_m^t}^t
.\end{align*}


