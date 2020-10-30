- Neighborhood
	- $N_r(p) = \theset{q \mid d_X(p,q) < r}$
- Limit Point
	- $p$ is a limit point of $E$ iff $\forall N_r(p),~ \exists q\neq p \mid q \in N_r(p)$
	- Equivalently, $\forall N_r(p),~ N_r(p) \cap E \neq \emptyset$
	- Let $L(E)$ be the set of limit points of $E$.
	- Example: $E = (0,1) \implies 0 \in L(E)$
- Isolated Point
	- $p$ is an isolated point of $E$ iff $p$ is not a limit point of $E$
	- Equivalently, $\exists N_r(p) \mid N_r(p) \cap E = \emptyset$
	- Equivalently, $E - L(E)$
- Perfect
	- $E$ is perfect iff $E$ is closed and $E \subseteq L(E)$
	- Equivalently, $L(E) = E$
- Interior
	- $p$ is an interior point of $E$ iff $\exists N_r(p) \mid N_r(p) \subsetneq E$
	- Denote the interior of $E$ by $E^\circ$
- Exterior
- Closed sets
	- $E$ is closed iff $p$ a limit point of $E \implies p \in E$
	- Equivalently if $L(E) \subseteq E$
	- Closed under finite unions, arbitrary intersections
- Open sets
	- $E$ is open iff $p\in E \implies p \in E^\circ$
	- Equivalently, if $E \subseteq E^\circ$
	- Closed under arbitrary unions, finite intersections
- Boundary
- Closure
- Dense
	- $E$ is dense in $X$ iff $X \subseteq E \cup L(E)$
- Connected
	- Space of connected sets closed under union, product, closures
	- Convex $\implies$ connected
- Disconnected
- Path Connected
	- $\forall x,y \in X \exists f: I \to X \mid f(0) = x, f(1) = y$
	- Path connected $\implies$ connected
- Simply Connected
- Totally Disconnected
- Hausdorff
- Compact
	- Every covering has a finite subcovering.
	- $X$ compact and $U \subset X: (U \text{ closed } \implies U \text{ compact })$
		- $U \text{ compact } \implies U \text{ closed }$ iff $X$ is Hausdorff
	- Closed under products

Example:
- The space $\theset{\frac{1}{n}}_{n\in \NN}$

List of properties preserved by continuous maps:

- Connectedness
- Compactness

Checking if a map is homeomorphism:

- $f$ continuous, $X$ compact and Hausdorff $\implies f$ is a homeomorphism.
