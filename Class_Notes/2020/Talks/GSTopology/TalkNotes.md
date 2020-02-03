Convention: 
All manifolds discussed will be smooth, real, Hausdorff, second-countable, connected, not necessarily closed/compact, possibly with boundary.

# Hyperplane Fields

Goal #1:
Understand foliations and their relation to contact structures.

Recall the geometric definition of the tangent bundle $TM = \disjoint_{p\in M} T_pM$, which fits into the vector bundle $\RR^n \to TM \to M$ so $T_p M \cong \RR^n$.
Recall that $T_p M = \spanof_\RR\theset{\partial x_i}$

Since $T_p M$ is a vector space, we can consider its dual $T_p\dual M$, and similarly the cotangent bundle $\RR^n \to T\dual M \to M$.
Recall that $T_p\dual M = \spanof_\RR\theset{dx_i}$.

Recall that a section of $TM$ is a vector field, and a section of $T\dual M$ is a 1-form.
More generally, differential $k\dash$forms are given by elements of $\Omega^k(M) \definedas \Gamma(\Lambda^k T\dual M)$, i.e. sections of exterior powers of the cotangent bundle.

**Definition (Hyperplane Field):**
A *hyperplane* field $\xi$ is a codimension 1 sub-bundle $\RR^{n-1} \to \xi \to M$ of the tangent bundle $\RR^n \to TM \to M$.

*Example 1:*
Take $M=S^2$, so we have $\RR^2 \to TS^2 \to S^2$.
The tangent spaces are planes, and codimension 1 spaces are lines:

![](2020-02-01-23-22-51.png)

*Example 2:*
Let $M = \RR^3$ so $TM \cong \RR^3$. 
Write $T_pM = \spanof_\RR\theset{\partial x_1, \partial x_2, \partial x_3}$ and $T_p\dual M = \spanof_\RR\theset{dx_1, dx_2, dx_3}$ locally and define $\xi$ by the condition $dx_3 = 0$.

Idea: no movement in the $x_3$ direction, constrained to move only in $x_1, x_2$ directions. Assigns a "horizontal" hyperplane to each point in $\RR^3$.

![](2020-02-01-22-28-35.png)

> Note: want to show that this lifts to a differential 1-form on $M$, but how can it be written?

Note that this is the kernel of a tangent covector at every point, thus the kernel of a section of the cotangent bundle -- i.e. a 1-form. This is a prototypical feature.

*Example 3:*
For $M=\RR^3$, write $T\dual \RR^3 = \spanof_\RR\theset{dx, dy, dz}$, and take $\omega = dz + xdy \in \Omega^1(\RR^3)$.
This is the "standard contact structure" on $\RR^3$, and assigns hyperplanes that look like this:

![](2020-02-01-22-34-56.png)

Note that this has a more twisted structure, which is what geometrically makes it contact -- no embedded (hyper) surface in $\RR^3$ can have an open subset $U$ such that $\xi$ is tangent to $p$ for every $p\in U$.

These are important because of their ties to *foliations*.

# Foliations

**Definition (Foliation):**
A *foliation* on $M$ is a hyperplane field $\xi$ satisfying one of two equivalent conditions:

1. A family of embedded surfaces $\Sigma_i \injects M$ such that $M = \disjoint_i \Sigma_i$ uniquely.
2. $\xi$ is locally diffeomorphic to the horizontal hyperplane field $dx_n = 0$.

> Note: the foliation is usually referred to by the collection $\Sigma_i$.
> Can also think of this as a smooth manifold where transition maps "preserve hyperplanes", i.e. they are functions of only one variable.

The "slices" given by the surfaces are referred to as *leaves*.

*Example:*
As in example 2, take $\RR^3 = \disjoint_{t\in \RR} ~t + H_{xy}$ where $H_{xy} = \theset{(x,y,z) \in \RR^3 \suchthat z=0}$ is the $xy\dash$plane and $t+ H_{xy} = \theset{(x,y,z) \in \RR^3 \suchthat t = z}$ are the vertical translates.
This yields a foliation of $\RR^3$ by planes.

Example:
Any fiber bundle $F \to E \mapsvia{\pi} B$ is foliated by leaves $L_b \definedas \theset{b} \cross \pi\inv(b)$.

*Example*:
Let $T = \RR^2/\ZZ^2$ be a flat torus and $q$ any irrational number; then lines $L_q$ of slope $q$ foliate $T$.

*Example:*
Any nonsingular vector field $X$ on a closed manifold $M$ defines a foliation; each leaf is the orbit of a point under the flow of $X$.

*Example:*
Take $M$ closed, $G$ a connected Lie group acting locally freely (the stabilizer of a point is a discrete subgroup of $G$). Then again $M$ is foliated by orbits of points.

Why are foliations important?

- Arise when you have a PDE (IVP or BVP) defined on an $n\dash$manifold $M$, with some initial/boundary conditions defined on an embedded surface, and you want to find the time evolution of that system (moving you through leaves of the foliation, think of spacetime being foliated by space-like hyperplanes in General Relativity).


*Remark:*
A foliation $\theset{\Sigma_i}$ induces a decomposition on the tangent bundle of $M$, namely $TM = T(\Sigma_i) \oplus \xi$ (? check) where $\xi$ is a line bundle everywhere transverse to the $\Sigma_i$. 
In this situation, we say $\theset{\Sigma_i}$ is *transversely orientable*.
Whenever $\theset{\Sigma_i}$ is transversely orientable, it can be associated uniquely to a nonsingular 1-form $\omega$.
Then given an $f: M\to \RR^2$ (check dimension), we can study the set of critical points $S = \theset{p\in M \suchthat \omega_p \wedge df_p = 0}$.

# Contact Structures

**Open Problem:**
Does every triangular billiards admit a periodic orbit?

*Answer (1775):* 
Yes for acute triangles:

![](2020-02-01-23-59-05.png)

For arbitrary triangles: unknown!

Historically, the study of periodic orbits motivated the definition on contact structures.

**Definition:**
$(M^{2n+1}, \xi)$ is a contact manifold iff $\xi$ is a hyperplane distribution given by $\ker \lambda \in \Omega^1(M)$ where $\lambda \wedge (d\lambda)^n \neq 0\in \Omega^{2n+1}(M)$.

*Remark:*
There is a canonical vector field on every contact manifold: the Reeb vector field $X$. This satisfies $\lambda(X) = 1$ and $\iota_x d\lambda = 0$. (?)

*Remark:*
Contact manifolds are cylinder-like boundaries of symplectic manifolds; namely if $M$ is contact then we can pick any $C^1$ increasing function $f: \RR \to \RR^+$  (e.g. $f(t) = e^t$) and obtain an exact symplectic for $\omega = d(f\lambda)$ on $M_C \definedas M \cross \RR$.

Any such $f$ induces a Hamiltonian vector field on $M_C$, and the Reeb vector field is the restriction to $M \cross \theset{0}$.

# Orbits




**Theorem (1987):**
Every contact-type hypersurface in the symplectic manifold $(\RR^{2n}, \omega)$ contains a periodic orbit.

**Conjecture (Weinstein, 1978):**
Let $(M, \xi)$ be a closed contact manifold with a Reeb vector field $X$ and $H^1(M; \RR) = 0$. Then $X$ admits a periodic orbit.

**Theorem (Weinstein, Dimension 3, Overtwisted. 1993):**
Let $(M, \xi)$ be a closed contact 3-manifold where $\lambda$ is overtwisted. 
Then the Reeb vector field $X$ admits a periodic orbit.

**Definition:**
$(M, \xi)$ is *overtwisted* iff there exists an embedded disc $D^n \mapsvia{i} M$ such that $T(\bd D^n)_p \subset \xi_p$ pointwise for all $p \in \bd D^n$ and $TD^n_p$ is transverse to $\xi$ for every $p\in  (D^n)^\circ$.

Intuition: ?
