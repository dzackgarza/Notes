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
:   For $\vector{f}: \RR^n \to \RR^m$, $D_f$ is the linear transformation 
    \begin{align*}
    \qty{ {\vector{f}(x+h) - \vector f(x) \over h} - \vector{y} } \converges{h\to 0}\to 0 \iff {\abs{ \vector f(x+h) - \vector f(x) - \vector f'(x)h} \over \abs{h}}  \converges{h\to 0}\to 0
    .\end{align*}






