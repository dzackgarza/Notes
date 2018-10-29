- Open sets: closed under arbitrary unions, finite intersections
- Closed sets: closed under finite unions, arbitrary intersections
- Neighborhood
	- $N_r(p) = \theset{q \mid d_X(p,q) < r}$
- Limit Point
	- $p$ is a limit point of $E$ iff $\forall N_r(p),~ \exists q\neq p \mid q \in N_r(p)$
	- Equivalently, $\forall N_r(p),~ N_r(p) \cap E \neq \emptyset$
- Isolated Point
	- $p$ is an isolated point of $E$ iff $p$ is not a limit point of $E$
	- Equivalently, $\exists N_r(p) \mid N_r(p) \cap E = \emptyset$
- Perfect
- Dense
- Interior
- Exterior
- Boundary
- Closure
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
