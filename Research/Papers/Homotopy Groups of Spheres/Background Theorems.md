### Definition: $n$ connectivity
A space $X$ is said to be *$n\dash$connected* if $\pi_i X = 0$ for $1 \leq i \leq n$.

### Definition: Weak Homotopy Equivalence
A map $f: X \to Y$ is called a *weak homotopy equivalence* if the induced maps $f^*_i: \pi_i(X, x_0) \to \pi_i(Y, f(x_0))$ are isomorphisms for every $i \geq 0$.

This is a strictly weaker notion than homotopy equivalence - for example, let $L$ be the long line. Then $\pi_i(L) = 0$ for all $i$, but $L$ is not contractible, and thus $L \not\sim \pt$. However, the inclusion $\pt \injects L$ is a weak homotopy equivalence, which can not be a homotopy equivalence.

Any weak homotopy equivalence induces isomorphisms on all integral co/homology groups, and thus co/homology groups with any coefficients by the UCT.

### Definition: Cellular Map
If a map $X \mapsvia{f} Y$ satisfies $f(X^{(n)}) \subseteq Y^{(n)}$, then $f$ is said to be a *cellular map*.

### Theorem: Cellular Approximation
Any map $X \mapsvia{f} Y$ between CW complexes is homotopic to a cellular map.

### Theorem: CW Approximation
For every topological space $X$, there exists a CW complex $Y$ and a weak homotopy equivalence $f: X \to Y$. Moreover, if $X$ is $n\dash$dimensional, $Y$ may be chosen to be $n\dash$connected and is obtained from $X$ by attaching cells of dimension greater than $n$.

### Theorem: Whitehead
**Abbreviated statement**: if $X, Y$ are CW complexes, then any map $f: X \to Y$ is a weak homotopy equivalence if and only if it is a homotopy equivalence.

(Note: $f$ must induce maps on all homotopy groups simultaneously.)

**Full Statement**: If $(X, x_0) \mapsvia{f} (Y, f(x_0))$ such that the induced maps
$$
f_*: \pi_*(X, x_0) \to \pi_*(Y, y_0) \\
 [g] \mapsto [f \circ g]
$$
are all isomorphisms and $Y$ is connected, then $f$ is a homotopy equivalence.

### Theorem: Uniqueness of E-M Spaces
If $X$ is a space with one nontrivial homology group $G$ in degree $k$, so that $X$ satisfies
$$\pi_i(X) = \cases{G,~i=k\\0,~\text{otherwise}}$$

Then $X \simeq K(G, k)$.

(Note: two spaces with isomorphic homotopy groups may *not* be homotopy-equivalent in general - this is one exception.)

### Theorem: Hurewicz
Given a space $X$, define a family of maps
$$
 h_k: \pi_k X \to H_k X\\
 [f] \mapsto f_*(\mu_k)
$$
where $H_k X = \langle \mu_k \rangle$.

If $X$ is $n-1$ connected where $n\geq 2$, then $h_k$ is an isomorphism for all $k \leq n$.

In particular, $\pi_n X \cong H_n X$ as groups.

### Theorem: Freudenthal Suspension
If $X$ is an $n\dash$ connected CW complex, then there are maps $\pi_i X \to \pi_{i+1} \Sigma X$ which is an isomorphism for $i\leq 2n$ and a surjection for $i=2n+1$.

### Theorem: Homotopy LES for a Fibration

### Theorem: Existence of Postnikov Tower

### Theorem: Spectral sequence of a Fibration

### Theorem: Existence of Whitehead Tower
