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

  - Ex: Any curve in $M$, since a two-form restricted to a one-manifold is trivial
  - $Q \injects T\dual Q$
  - Any cotangent fiber $T_q\dual Q$

- Almost complex structure used to define a differential equation

- Informal definition of $\Fuk(M)$: it's like a DG category

  - Objects are Lagrangians
  - $\Hom(L_0, L_1)$ is like a chain complex: a graded abelian group $\bigoplus_{z\in L_2 \transverse L_1} \ZZ/2[d]$ for some shift $d$ with differential $\del$ whose coefficients are given by counting holomorphic discs from $x$ to $y$.
  - Composition is given by $y\tensor x\mapsto \sum ? z$ where the count is given by counting holomorphic discs mapping to the triangle $x,y,z$.
  Note: non-associative, need to consider discs filling in punctured $n\dash$gons for all $n$
  - Can recover presentation of Stasheff associahedra.

- There is an equivalence $\Fuk(M) \mapsvia{\sim} \Fuk(M \cross T\dual \RR^N)$ where $L\mapsto L \times T_0\dual \RR^N$, take colim to replace $N$ with $\infty$.

- Need to do **wrapping**, but we won't get into it.

- In the category of Weinstein manifolds, a morphism is a codimension 0 embedding $j: M\embeds(N, X_N)$ where we convert $X_N$ to a one-form $\theta_N$ using $\omega$, such that $j^* \Theta_N = \Theta_M + df$ for $f$ some compactly supported function.

- Theorem: the wrapped Fukaya category defines a functor from the category of Weinstein manifolds to $A_\infty\dash\Cat_\ZZ$ which factors through taking $M\cross T\dual \cross \RR^N$.
  - The target has an infinity category structure.
- Ways to improve this to an $\SS\dash$linear category:
  - Reformulate $\Fuk(M)$ as the solution to a deformation problem. 
  Very difficult!!
  - From $M$ construct a stable $\infty\dash$category of Lagrangian cobordisms $\Lag(M)$ (already enriched in spectra).
  Conjecturally: $\Lag(M) \tensor_\SS \HZ = \Fuk(M)$
  - Microlocal special sheaves.

- All three are conjecturally thought to work.

- Question: can one symplectically construct certain $E_\infty$ maps, e.g. $\SS, \SS\invert{p}$.
  - Yes, if we localize $\Wein$ in a certain way

- There is a known class of maps $W$ where $M\to N$ induces $\Fuk(M) \mapsvia{\sim} \Fuk(N)$.

- Theorem: $\Wein\invert{W}$ is symmetric monoidal
  - Can construct a symplectic manifold $D_p$ which is an $E_\infty$ algebra in $\Wein\invert{W}$ where $\Fuk(D_p)^\tensor \mapsvia{\sim} \modsleft{\ZZ\invert{p}}^\tensor$.

- First case of a purely symplectic construction of an $E_\infty\dash$algebra!
  - Which ones can we construct?

- Conjecture: $\Hom_{\Wein\invert{W}}(\pt, \pt) \homotopic$ to the groupoid of finite spectra, or equivalently the space of functors from finite spectra to itself (since all are given by smash against a specific spectrum)
  - Here $\pt \cong T\dual \RR^{\infty}$.

- A way to make "functors are bimodules" concrete in this category.


