[LeeManifolds](../LeeManifolds.md)

## Notes Part 2

Definition (Smooth Functions)
: A function $f:\RR^n \to \RR^m$ given by $\thevector{f_1(\vector x^n), f_2(\vector x^n), \cdots, f_m(\vector x^n)}$ (or any subsets thereof) is said to be $C^\infty$ or **smooth** iff each $f_i$ has continuous partial derivatives of all orders.

Definition (Diffeomorphism)
: A smooth bijective map with a smooth inverse is a *diffeomorphism*.

Remark
: A diffeomorphism is necessarily a homeomorphism, but not conversely.

Definition (Transition Maps)
:   If $(U, \phi), (V, \psi)$ are two charts on $M$ such that $U\intersect V \neq \emptyset$, the composite map $\psi \circ \phi\inv: \phi(U\intersect V) \to \psi(U\intersect V)$ is a function $\RR^n\to\RR^n$ and is called the *transition map* from $\phi$ to $\psi$.
   ![](figures/image_2020-06-21-22-39-09.png) 
    Two charts are *smoothly compatible* iff $U\intersect V = \emptyset$ or $\psi \circ \phi\inv$ is a diffeomorphism.

Definition
:   A collection of charts $\mca \definedas \theset{(U_\alpha, \phi_\alpha)}$ is an *atlas* for $M$ iff $\theset{U_\alpha} \covers M$, and is a *smooth atlas* iff all of the charts it contains are pairwise smoothly compatible.

Remark
: To show an atlas is smooth, it suffices to show that an arbitrary $\psi \circ \phi\inv$ is smooth.
  This is because this immediately implies that its inverse is smooth, and these these are diffeomorphisms.
  Alternatively, one can show that $\psi\circ\phi\inv$ is smooth, injective, and has nonsingular Jacobian at each point.

Remark
:   Attempting to define a function $f: M\to \RR$ to be smooth iff $f\circ \phi\inv: \RR^n \to \RR$ is smooth for each $\phi$ may not work because many atlases give the "same" smooth structure in the sense that they all determine the same collection of smooth functions on $M$. \todo{What does "determine the same collection of smooth functions" mean?}

    For example, take the following two atlases on $\RR^n$:
    \begin{align*}
    \begin{array}{l}
    {\mca}_{1}=\left\{\left(\mathbb{R}^{n}, \operatorname{Id}_{\mathbb{R}^{n}}\right)\right\} \\
    {\mca}_{2}=\left\{\left(\DD_{1}(\vector x), \id_{\DD_{1}(\vector x)}\right)\suchthat \vector x \in \mathbb{R}^{n}\right\}
    \end{array}
    .\end{align*}

    Claim: a function $f:\RR^n \to \RR$ is smooth wrt either atlas iff it is smooth in the usual sense.

Definition (Maximal or Complete Atlas)
: A smooth atlas on $M$ is *maximal* iff it is not properly contained in any larger smooth atlas.

Remark
: Not every topological manifold admits a smooth structure.
  See Kervaire's 10-dimensional manifold from 1960.

Definition (Smooth Structures and Smooth Manifolds)
: If $M$ is a topological manifold, a maximal smooth atlas $\mca$ is a *smooth structure* on $M$. 
  The triple $(M, \tau, \mca)$ where $\mca$ is a smooth structure is a *smooth manifold*.

Remark
:   To show that two smooth structures are *distinct*, it suffices to show that they are not smoothly compatible, i.e. one of the transition functions $\psi\circ \phi\inv$ is not smooth.
    This is because any maximal atlas $\mca_1$ must contain $\psi$ and likewise $\mca_2$ contains $\phi\inv$, but no maximal atlas can contain $\phi$ *and* $\psi$ because all charts in a maximal atlas are smoothly compatible by definition.

Proposition
:   Let $M$ be a topological manifold.

    1. Every smooth atlas $\mca$ for $M$ is contained in a unique maximal smooth atlas, called the *smooth structure determined by $\mca$*.
    2. Two smooth atlases for $M$ determine the same smooth structure $\iff$ their union is a smooth atlas.

Remark
: That we can place many requirements on the functions $\psi \circ \phi\inv$ and get various other structures: $C^k$, real-analytic, complex-analytic, etc.
  $C^0$ structures recover topological manifolds.


Definition (Smooth Charts, Maps, Domains)
: If $(M,\ \tau, \mca)$ is a smooth manifold, any chart $(U, \phi)\in \mca$ is a *smooth chart*, where $U$ is a *smooth coordinate domain* and $\phi$ is a *smooth coordinate map*. 
  A *smooth coordinate ball* is a smooth coordinate domain $U$ such that $\phi(U) = \DD^n$.

Definition (Regular Coordinate Ball)
:   A set $B\subseteq M$ is a *regular coordinate ball* if there is a smooth coordinate ball $B'$ such that $\cl_M(B) \subseteq B'$, and a smooth coordinate map $\phi: B'\to \RR^n$ such that for some positive numbers $r < r'$,

    - $\phi(B) = \DD_r(\vector 0)$, 
    - $\phi(B') = \DD_{r'}(\vector 0)$, and 
    - $\phi(\cl_M(B)) = \cl_{\RR^n}(\DD_r(\vector 0))$.

    This says $B$ "sits nicely" insane a larger coordinate ball.

Remark 
: $\cl_M(B) \cong_{\Top} \cl_{\RR^n}(\DD_r(\vector 0))$ which is closed and bounded and thus compact, so $\cl_M(B)$ is compact.
  Thus every regular coordinate ball in $M$ is precompact.

Proposition
: Every smooth manifold has a countable basis of regular coordinate balls.

Remark
: There is only one 0-dimensional smooth manifold, up to equivalence of smooth structures.

Definition (Standard Smooth Structure on \$\\RR^n\$)
: Define the atlas $\mca_0 = \theset{(\RR^n, \id_{\RR^n})}$ and take the smooth structure it generates, this is the *standard smooth structure* on $\RR^n$.

Proposition
:   There are at least two distinct smooth structures on $\RR^n$.

Proof
:   Define $\psi(x) = x^3$; then $\mca_1 \definedas \theset{(\RR^n, \phi)}$ defines a smooth structure.

    Then $\mca_1 \neq \mca_0$, which follows because $\qty{\id_{\RR^n} \circ \phi\inv}(x) = x^{1\over 3}$, which is not smooth at $\vector 0$.

