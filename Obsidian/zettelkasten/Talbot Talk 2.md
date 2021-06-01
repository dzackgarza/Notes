# Talbot Talk 2: Hiro

## Part 1

- Assign to a symplectic manifold a Fukaya category
	- An $A_\infty$ category, slightly different than homotopy-theoretic notion
	- A dg category
	- A $\ZZ\dash$linear stable infty category
- Replace with a functor $\Fuk$ that takes a category of symplectic manifolds to a stable infty-category over $\ZZ$
- Analogies:
	- The "take modules" functor $(\Ring)\op$ to stable infty cats over $\ZZ$, $R\mapsto \rmod$
	- $\Sch\op$ to stable infty cats over $\ZZ$, $X\mapsto \D^b\Coh(X)$.
- Recent conjecture: for certain $M$, make an $\SS\dash$linear functor $\Fuk(\wait, \SS)$ where $\Fuk(M, \SS)$ is a stable infty category
	- Can get stable infty categories out of very geometric things: symplectic manifolds
	- Hope to get an equivalence of categories between some infty  category of symplectic manifolds and the infty category of stable infty categories

- Morse theory recap
	- Index: write $f$ locally as $\sum x_i^2 - \sum y_i^2$ and the number of negative components is the index of the critical point
- Weinstein manifolds and sectors: special types of symplectic manifolds obtained from handle attachment (sectors: allowing boundaries)
  - Allows some mild but controlled singularities making them non-manifolds
  - Can construct interesting cosheaves of categories
- Defining a symplectic manifold:
	- $\omega^{\wedge 2}$ defines a volume form, or use $v\mapsto \omega(v, \wait)$ is a non-degenerate 1-form, thinking of $\omega: TM \mapsvia{\sim} T\dual M$.
    - The latter definition is useful in derived geometry.
  - $d\omega = 0$, a flatness condition.
- The most important example: for $Q$ any smooth manifold, the total cotangent space $T\dual Q, dp \wedge dq)$ is symplectic.
  - Locally write coordinates $\elts{q}{n}$, get $\elts{dq}{n}$, then $\sum p_i dq_i\in T\dual \RR^n$.
    Take de Rham derivative to get $\sum dp_i \wedge dq_i \in \Omega^2(\RR^n)$.

- Can make some symplectic manifolds out of Weinstein cells.

- Taking a one form $\alpha = \omega(\wait, X)$, it turns out $d\alpha = \omega$ so $\alpha$ is an antiderivative.

- Fact: if $M$ is compact of dimension $d\geq 2$ then $M$ can not be Weinstein.

- Some kind of "symplectic Pontryagin-Thom" theorem

- Note: need to distinguish between actual boundaries and "boundaries at infinity"

## Part 2

- Constructing the (wrapped) Fukaya category
- A half-dimensional submanifold $L$ of a symplectic manifold is **Lagrangian** iff $\omega\ro{}{L} = 0$.
