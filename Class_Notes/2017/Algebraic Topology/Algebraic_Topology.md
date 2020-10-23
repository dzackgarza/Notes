
# Prologue

## References

- Hatcher's Algebraic Topology [@hatcher_2019].

# Homology

What is homology? 
Seems to be ubiquitous in mathematics, pops up in number theory, algebraic geometry, topology (obviously), etc.

Many routes to motivate it, we'll take the topological tact. 
Coming up:

1. Simplicial Homology
   
   - Of simplicial complexes, a la Poincaré ~1900
   - Easier to compute

2. Singular Homology

   - Easier to define and more general
   - Harder to compute, need theorems


:::{.definition title="$n\dash$simplex"}
An *n-simplex* $\sigma = (a_0, \cdots a_n) \subseteq \RR^n$ is a *convex hull* of $n+1$ points when the points are *affinely independent*.
:::


The *convex hull* is given by 
\[
\theset{\sum \lambda_i a_iL \mid 0 \leq \lambda_i \leq 1, \sum \lambda_i = 1}
,\] 
i.e. set of centers of gravity of masses placed at vertices.

They are affinely independent if there is a unique expression of every point in barycentric coordinates.

\[
\sum v_i a_i = 0 \text{ and } \sum v_i = 0 \implies v_i = 0 ~\forall i
.\] 
It follows that
\[
\sum \lambda_i a_i = \sum \mu_i a_i
\implies
\lambda_i = \mu_i ~\forall i
\]

The *face* of an $n$-simplex are the subsets where the barycentric coordinates are 0. Consider a triangle with points $\lambda a, \mu b, \nu c$, then one edge is a face ($\lambda=0$), as is another $(\nu = 0$), as is the point $\mu b$ where $\nu  = \lambda = 0$. An $n$-simplex has $2^n - 1$ faces, including the entire thing ($2^n - 2$ otherwise)


:::{.definition title="Simplicial Complex"}
A *simplicial complex* is a set $K$ of simplexes in $\RR^n$, say $K = \theset{\sigma_0, \sigma_1 \cdots \sigma_n}$, such that they are pasted together correctly, i.e.

1. $\sigma \in K \text{ and } \tau \subset \sigma \implies \tau \in K$
2. If $\sigma, \sigma' \in K$ then they overlap in a common face, i.e. either $\sigma \intersect \sigma' = \emptyset \text{ or } \sigma\intersect\sigma'$ is a face of both $\sigma,\sigma'$.
:::

:::{.definition title="Geometric Realization"}
Given such a $K$, its *geometric realization* is given by the topological space 
\[
\abs{K} \da \Union_{\sigma\in K} \sigma \subseteq \RR^n
.\]

:::

:::{.definition title="Triangulation"}
A *triangulation* of a space $X$ is a homeomorphism $h: X \into \abs{K}$ for some $K$.
:::


:::{.example}
$S^1$ is homeomorphic to a triangle, which has 6 total simplexes: three points $\Delta_0$, and 3 edges $\Delta_1$.
Similarly, $S^2$ is homeomorphic to a tetrahedron with 14 simplexes.
:::

:::{.remark}
We don't want to allow anything particularly curved, or anything with multiple edges.
:::


:::{.definition title="Abstract Simplicial Complex"}
An *abstract simplicial complex* is a set $V$ of vertices together with a set $K \subset P(V)$ of subsets of $V$ which is closed under taking subsets ($\sigma \in K \text{ and } \tau \subseteq \sigma \implies \tau \in K$)
:::


:::{.example}
$V = \theset{1,2,3,4}$, then the 4-simplex can be described as 
\[
K = \theset{\theset{1}, \theset{2}, \theset{3}, \theset{4}, \theset{1,2}. \theset{2,3}, \theset{1,3}, \theset{1,2,3}}
.\]

:::


:::{.definition title="Geometric Realization of a Simplicial Complex"}
We have a notion of *geometric realization*: we can embed $K$ inside $\RR^{\abs{V}}$ where each basis vector is in correspondence with each vertex. 
:::

:::{.remark}
Note that here $\sigma$ maps to the convex hull of its vertices.
The moral of the story here is that abstract simplicial complexes can be realized as geometric simplicial complexes.
:::

:::{.definition title="Orientation of a Simplex"}
An *orientation* of a simplex is a choice of ordering of vertices up to even permutations, i.e. $(a,b,c) = (c,a,b) = (b,c,a) \neq (b,a,c) = (c,b,a) = (a,c,b)$. 
:::

:::{.example}
A point is a special case, there are two orientations, $\pm *$. 
Take $+*$ to be the canonical orientation. 
:::

:::{.example}
How does this work in 3 dimensions? 
Take $(a,b,c,d)$ be an orientation on a tetrahedron - this is roughly equivalent to choosing an oriented frame, but there are many interpretations. 
So just view as equivalence classes after modding out by even permutations.
:::


:::{.definition title="?"}
If $K$ is a simplicial complex, let $C_n(K)$ be the free abelian group on oriented $n$-simplexes in $K$ quotiented by $\bar\sigma \sim -\sigma$. 
Add twice as many simplexes then quotient out..? 
Avoids making choices of orientation everywhere! 
Then each oriented $n$-simplex maps into $C_n(K)$ in a natural way.
:::

:::{.definition title="?"}
A boundary map $\bd: C_n K \into C_{n-1} K$ by linearly extending the formula 
\[
\bd(a_0 \cdots a_n) = \sum_{i=1}^n (-1)^i (a_0, \cdots \hat{a_i} \cdots a_n)
,\] 
where the summand denotes the face spanned by all vertices except $a_i$.
:::

:::{.example}
We can directly compute $\del (a,b) = (b) - (a)$ and $\del(a,b,c) = (b,c) - (a,c) -+(a,b)$.
So a line segment $a \mapsto b$ goes to $-a$ and $+b$.
An oriented triangle $abc$ goes to the three line segments oriented in the same way.

What happens?
:::

Need to check that $\bd$ is well defined - check that applying a transposition, e.g. $(a_0 a_1)$. 


\[
\bd (a_1, a_0, a_2, \cdots a_n) = (a_0, a_2, \cdots a_n) - (a_1, a_2, \cdots a_n) + \sum \text{stuff} = -\bd (a_0, a_1, a_2, \cdots a_n)
,\]
so equality is preserved under even permutations.

:::{.proposition title="Simplicial Boundary Map is Well-Defined"}
\[  
\bd^2 = 0
.\]
:::


Consider
\[
C_n K \into_{\del_n} C_{n-1} K \into_{\del_{n-1}} C_{n-2} \into \cdots
\]




# The Bar Resolution and Group Homology

Last time: the Koszul complex and free resolutions.
Today: group homology

## Bar Resolutions

Let $A$ be an associative, unital, generally not commutative algebra over a field $k$ (or just a ring over $\ZZ$). 
Consider the category of $A\dash A\dash$ bimodules, which has the fundamental structure of two multiplication maps of the form
$$
A\tensor M \tensor A &\to M\\
a_1\tensor m \tensor a_2 &\mapsto a_1 m a_2
$$

There is a particularly interesting module ${}_A A_A$, the "diagonal" or "trivial" module. 
It's trivial because as functors, we have 
\[
(\wait)\tensor_A {}_A A_A = \id
.\]

Note that this module is not free. 
However, compare this to ${}_A(A\tensor_k A)_A$.
This is a free module, since it is a vector space over $k$, of rank 1 with generator $1\tensor 1$. 
So we can write a free resolution of ${}_A A_A$ as a bimodule:

\[
(A^{\tensor 4}) 
&\mapsvia{a\tensor b\tensor c \tensor d \mapsto ab\tensor c\tensor d - a\tensor bc \tensor d + a\tensor b \tensor cd} 
{}_A(A^{\tensor 3})_A 
&\mapsvia{f_1:~a\tensor b \tensor c ~\mapsto~ ab\tensor c - a\tensor bc} {}_A(A\tensor_k A)_A 
&\mapsvia{f_0: ~a\tensor b~ \mapsto~ a1b} {}_A A_A \to 0
\]

Then $f_1$ surjects onto $\ker f_0$, yielding the second term.

Continue to yield 
\[
B^{-n}(A) = {}_A A\tensor_k A^{\tensor_k^{n}}\tensor_k A_A
,\] 
which is free as an $A\dash A\dash$ bimodule since it decomposes as a direct sum indexed by the middle term.

Then there is a differential
\[
B^{-n} &\to B^{-n+1} \tag*{($n \geq -1$)} \\
a_0 \tensor (a_1 \tensor \cdots \tensor a_k) \tensor a_{n+1} 
&\mapsto \sum (-1)^i a_0 \tensor \cdots \tensor a_i a_{i+1} \tensor \cdots \tensor a_{n+1}
\]

You can check that $d^2 = 0 \iff A$ is associative. This is something that works in general -- for example, with lie algebras, the associative multiplication is replaced by the lie bracket, and the equivalence is to the Jacobi identity.

:::{.claim}
This is a resolution. 
Just write down a map $A\tensor A \to A\tensor A \tensor A$ that is chain homotopic to the zero map. 
Something obvious works: let 
\[
h(a_0 \tensor \cdots \tensor a_{n+1}) = 1\tensor a_0 \tensor \cdots \tensor a_{n+1}
,\] 
then just check that $dh + hd = \id - 0$.
:::

:::{.remark}
This is not actually a bunch of maps of bimodules, only of right $A$ modules -- but this is enough to show that this complex is acyclic, i.e. kernels = images.
:::


We can define homologies associated to this. 
One example is the Hochschild Cohomology with coefficients in a bimodule, denoted 
\[
HH^*(A;M) \definedas \ext_{A\dash A\dash\text{mod}}^*({}_A A_A, {}_A M_A)
.\]
In other words, take the bar resolution of $A$, hom it into $M$ ($\hom_{A\dash A}(B^*(A), M))$, and take kernels modulo images.

Whenever you have a derived functor, the original functor should come up in the zeroth homology. 
In this case, it extends to $HH^0(A, M)$ is analogous to the "center" of $M$, i.e. 
\[
HH^0(A, M) = \theset{m\in M: am = ma, ~\forall a\in A}
.\]

Also, $HH_*(A; M) = \tor(A, M)$, and 
\[
HH_0 = \frac{M}{\gens{am=ma}}
,\] is the "cocenter" of $M$. 
This forcibly quotients out all of the commuting elements!

This resolution is easiest seen over bimodules, but the same basic complex can be formed in the category of plain left/right modules. So given ${}_A M \in \mathbf{A\dash mod}$, regard it as ${}_A A_A \tensor_A M \cong M$ where $a\tensor m \mapsto am$. Then ${}_A B(A)_A \tensor_A M$ is still a complex of free *left* modules that only depends on the module $A$, so this is a universal type of resolution.

We can use this to compute things like

\[
\ext_{A\dash mod}({}_A M, {}_A A) 
&= h(\shom^*_{A\dash mod}~ ({}_AB^{\leq 0}(A) \tensor_A M, {}_A N)) \\
\tor_{A\dash mod}(N_A, {}_A A) 
&= h(N\tensor_A B^{\leq 0}(A) \tensor_A M)
.\]

## Homology of a Discrete Group

Let $G$ be a discrete group -- note that we could always think of these of topological spaces, just not in this instance. 
Let $A = \ZZ[G]$ be the group ring: formal finite integer linear sums of elements in $G$ with the obvious multiplication.

:::{.remark}
Note that a general $k\dash$algebra is not always augmented, so there is not always a way to make $k$ into an $A$ module.
:::


This algebra is in fact augmented, i.e. it has an algebra homomorphism $\ZZ[G] \mapsvia{\varepsilon} \ZZ$, so we can make $\ZZ$ into a left $A$ module for $A = \ZZ[G]$ where $a\in A$ acts on $n\in \ZZ$ by $a.n \mapsto \varepsilon(a)n$.

This allows us to define 
\[  
H_*(G; M) \definedas \tor_{\ZZ[G]}(\ZZ_{\ZZ[G]}, {}_{\ZZ[G]} M)
.\]
In particular, we could just define 
\[
H^*(G; \ZZ) \definedas \tor_{\ZZ[G]}(\ZZ_{\ZZ[G]}, {}_{\ZZ[G]} \ZZ)
.\]


These extend the natural functors, the "coinvariants", and
\[
H^0(G;M) &= \theset{m\st gm = m} \\
H_0(G; M) &= \frac{M}{\gens{ g.m=m} }
\]

**Next Time**

- Explicit chain complex using bar resolutions
- Explicit complexes using the resolution in the case $G=\ZZ_n$
- Relation to simplicial classifying spaces.

![Image](figures/2-21-18-b2ad9.png){ width=250px }

# Group Homology 

Let $G$ be a discrete group and $A=\ZZ[G]$ a group ring, and consider the category of $A\dash$modules.

We can define the trivial module ${}_{\ZZ[G]}\ZZ$ where $g$ acts by 1 for all $g\in G$. This has to come equipped with a homomorphism 
\[
\ZZ[G] &\mapsvia{\varepsilon} \ZZ \\
g &\mapsto 1
\]

:::{.example}
Take $G=\ZZ_2$ and $A = \ZZ[\ZZ_2]$ which is equal to 
\[
\ZZ[x] / (x^2-1) = \theset{a + bx\mid a,b\in \ZZ, x^2=1}
.\]
Construct by hand a resolution of ${}_{A}\ZZ$ -- this will require some choices, but this will be alright as long as they are reasonably constrained and uniform, i.e. there isn't some infinite process of choices.

Given an algebra, we can think of it as a bimodule over itself (not free), so we can always use the bar resolution. But in this case, that may be too big!

So look at 
\[
\ZZ/(x^2-1).e_2 \mapsvia{e_2 \mapsto (x+1).e_1} \ZZ/(x^2-1) \mapsvia{e_1 \mapsto (x-1)e_0} \ZZ \to 0
.\]
Note that the polynomials just act by evaluation at 1, so there are several different ways of looking at the indicated map - one of which is just to send the generator to 1.

So the kernel if this map actually is the ideal $(x-1)$. Think of elements 
\[ 
(a+bx).e_0 = (a+bx)(1) = a+b
,\]
so the kernel is generated by elements $a=b$, or equivalently the ideal $(x-1)$. 
A similar pattern continues as you resolve, which is periodic -- note that $e_3 \mapsto (x-1).e_2$. 
So picking the minimal thing worked, which ended up having a 2-periodic pattern -- so relatively simple to work with.

So this 2-periodic free resolution can be used
$$
\bar A = \qty{ \cdots A \mapsvia{x(x-1)} A \mapsvia{x(x+1)} A \mapsvia{x(x-1)} \cdots}
$$

From this we can compute $\tor_*^{\ZZ[G]} (\ZZ, \ZZ)$, which is by definition $H_*(G;\ZZ)$. But working this out, we find it is equal to $h(\bar A \tensor \ZZ)$. Use the isomorphism 

\[
A\tensor_A \ZZ \mapsvia{a\tensor 1 \mapsto \varepsilon(a)1} \ZZ
.\] 
Note that $\varepsilon(x-1) =0$ and $\varepsilon(x+1) = 2$, so we have 

\[
h(\cdots \mapsvia{\times 2} \ZZ \mapsvia{\times 0} \ZZ \mapsvia{\times 2} \ZZ \cdots)
.\] 
Thus we have $H_*(\ZZ_2, \ZZ) = \ZZ \delta_0 + \ZZ_2 \delta_{\text{odd}}$.

> Note that this is equal to $H_*(\RP^\infty; \ZZ)$!

:::

:::{.example}
Similarly, we can do this for $\ZZ_n$, looking at $A = \ZZ[x] / (x^n - 1)$, yielding a similar resolution:
\[
\cdots A \mapsvia{\times(x-1)} A \mapsvia{\times(1+x+\cdots x^{n-1})} A \mapsvia{\times (x-1)}A \to \ZZ \to 0
\]
Delete the right hand side, tensor this over $\ZZ$ to yield
\[
\cdots A \mapsvia{\times n} A \mapsvia{\times 0} A \mapsvia{\times n} A \cdots
\]
This is equal to $H_*(L^\infty_n; \ZZ)$, which is equal to $S^{2n-1} / \ZZ_n$ which can be constructed in a CW fashion. 
This is an interesting space which is contractible, but not a point -- note that there is a free action on it via $\ZZ_n$ which has no fixed points, so it's "big".
:::

So this allows us to look at groups as spaces of some sort.

It turns out that there is a universal way to resolve any $\ZZ[G]\dash$module. Look at

$$
\bigoplus_{h\in G} \ZZ[G].e_h \mapsvia{} \ZZ[G] \mapsvia{g\mapsto 1} \ZZ \to 0
$$

What is the kernel of the first map? It is $\ZZ\theset{g-1\mid g\in G}$

Switch up the notation, and write it like a free resolution of abelian groups
$$
\ZZ[G^3] \mapsvia{(g,h,k) \mapsto (g-h) + (h-k) + (k-g)} \ZZ[G^2] \mapsvia{(g,h) \mapsto g-h} \ZZ[G] \mapsvia{g\mapsto 1} \ZZ \to 0
$$

We can then define a complex $C_n = \ZZ[G^n]$ of free abelian groups that is acyclic, using 
\[
\del((g_0, g_1, \cdots g_n)) = \sum (-1)^i (g_0, \cdots \bar g_i, \cdots g_n)
\]

You can write down a contracting homotopy, as in the case of the bar complex, as
  \[
h(g_0 \cdots g_n) \mapsto (1, g_0, \cdots g_n)
  \]

This is a chain homotopy between the identity map and the zero map, i.e. $\del h + h\del = \id - 0$, so the induced map on homology by the identity is equal to the induced map on homology by the zero map - thus zero homology.

In the bar complex, we only acted on the boundary terms and the middle didn't play much of an algebraic role. This is a complex of left $G\dash$modules if we use the diagonal action of $G$, where $g.(g_0, \cdots g_n) = (gg_0, \cdots , gg_n)$.


So to compute $H_*(G; \ZZ)$, we want to tensor with a right module so we take $\tor_*^{\ZZ[G]}(\ZZ_n, {}_n \ZZ)$, where the right slot has already been resolved. 

We identify, although this isomorphism must be handled carefully - we don't want to make $g_0$ a privileged choice in a map like 
\[
\ZZ \tensor_{\ZZ[G]} \ZZ[G^{n+1}] \cong \ZZ[G^n]
\]

\[
(g_0, g_1, \cdots g_n) \mapsto (1, g_1g_0^{-1}, \cdots g_ng_0^{-1}).\]

It's better to label by the differences, i.e. 
\[
(g_0, g_1, g_2, \cdots) = (g_0, g_0^{-1}g_1, g_1^{-1}g_2, \cdots)
,\] 
which is a $g_0$ invariant sort of notation. 

This is the resolution usually seen in books, i.e. you might see
\[
\del(g_1, g_2, \cdots g_n) = (g_2, \cdots g_n) + \sum (-1)^i (\cdots ,g_i g_{i+1}, \cdots) + \cdots
\]

# Intersection Theory

Goal: we'd like a geometric interpretation of the cup product.

Recall that we had an idea of representing homology classes in a space $X$ by maps from a closed connected manifolds $f: P \to X$. 
We can then take the push forward of a fundamental class 

\[
f_*[P] \in H_p(X; \ZZ) \text{ where } [P] \in H_p(P)
\]

:::{.remark}
The best case is when $X = M^n$ is a closed $n\dash$dimensional closed manifold and $f$ is the inclusion of a *locally flat submanifold*.

:::

:::{.definition title="?"}
A subset of $P \subseteq M^n$ which is locally homeomorphic to $\RR^p$ is a *locally flat submanifold* if at every point $x\in P$ there exists a neighborhood $U$ of $x$ in $M$ and a homeomorphism $$\phi: (U, U\cap P, x) \to (\RR^n, \RR^p \cross \theset{0}, \theset{0})$$.

:::

:::{.warning}
An example of a non locally flat submanifold: take the trefoil knot $K$ in $S^3 \subset B^4$ and cone it to the origin to produce $CK$.
This fails local flatness at the origin, despite the fact that $CK \cong B^2$. 
Every neighborhood of the origin contains a copy of $K$ and **not** a copy of $S^1 \in S^3$ unknotted.
In general, the operation of taking a cone on a smooth manifold will not produce a smooth manifold - but in the topological world, sometimes this works out.
:::

:::{.example}
Consider the Poincaré 3-sphere $P^3$, which has the same homology as $S^3$. 
Even though $\Sigma P^3$ may not be a manifold a priori, we actually have $\Sigma^2 P^3 \cong S^5$.

:::



Note that while we may expect two $p\dash$ dimensional submanifolds to just intersect in some number of points (e.g. a curve intersecting a torus inside $B^4$ or something), but there may be some degenerate cases: they might be tangent, or part of one may lie inside the other.

:::{.definition title="Locally Flat Submanifolds"}
If $P^p, Q^q$ are locally flat submanifolds of $M$, we say that they *intersect transversally* $P \pitchfork Q$ when:

1. Case 1
$p+q < n \implies P \cap Q = \emptyset$

2. Case 2
$p+1 \geq n$ then we require that $\forall x\in P \cap Q$, there exists a local neighborhood $U \subset M$ and a homeomorphism
$$\phi: (U, U\cap P\cup Q, x) \to (\RR^n, \RR^p \cross \theset{0} \cup \theset{0} \cross \RR^q, \theset{0})$$


> Note: this ensures that $P\cap Q$ is a $(p+q-n)\dash$manifold.
:::


:::{.remark}
For vector spaces $X, Y \subset V$ where $p,q \leq n$, we can then say they are transverse exactly when $X \oplus Y = V$ (so $X, Y$ span $V$). 
This is primarily because $\dim (X \cap Y) = \dim X + \dim Y - \dim(X\oplus Y)$. 
In the case of smooth manifolds, you might actually use this as a definition: two manifolds intersect transversally iff their tangent planes span the ambient tangent space.
:::

:::{.remark}
If we had smooth manifolds $P, Q$ (i.e. differential topology), then Sard's theorem plus extra work would show that there exist arbitrarily small perturbations of $P, Q$ such that $P \pitchfork Q$.
:::

:::{.example}
Consider a parabola hitting a plane at a point. 
Move one way to make disjoint, get empty set intersection -- this trivially satisfies conditions of transversality. 
You can move this slightly to make it intersect exactly twice.
:::

This makes certain degenerate cases easier - i.e. a curve intersecting a plane in an interval, or doing something like $\sin(1/x)$ on a surface.

The number of points of intersection is not exactly a homotopy invariant, since in the above example we could make the intersection number either 2 or 0. 
However, the *parity* can be proved to be such an invariant in the smooth setting. 
This leads into Morse theory. 
For example, look at cubic intersecting plane -- perturbations will coalesce two intersection points, which would be a Morse critical point.

In this world, you'll have vocabulary available 

- Generic
- Stable
- Regular
- Transverse
- Random

:::{.example}
For example, look at $\mathcal{M} = [S^1, \RR^3]$. 
Transverse maps are an open and dense subset of this parameter space. 
Imagine as blob cut up by "walls" which are the closed subsets of bad maps. 
Not only are the good maps dense, but they are stable -- everything in a small enough neighborhood will also be good. 
A random map picked from this space will be good with probability 1. 

Two such maps can be generically homotoped without hitting the intersection of the singular walls, i.e. just going through walls with no intersection points). 
This ultimately just boils down to looking at Taylor series - generically, the first coefficient is nonzero, so intersects $x\dash$axis transversally. 
If not, the second coefficient is probably nonzero, so intersects quadratically, etc.

:::


:::{.theorem title="?"}
If $P^p, Q^q$ are transverse in $M^n$ where $p+q=n$ (and everything closed and oriented), then 
\[
\#(P \cap Q)= \inner{D^{-1}[P] \smile D^{-1}[Q]}{ [M] }
,\] 
where the first entry is a cup product between $H^q(M; \ZZ)$ and $H^p(M; \ZZ)$. 
This is an algebraic and homotopy invariant on the RHS, and geometric on the LHS.

:::

# Relative Homology

Continuing discussion of relative homology:
\[
H_*(X,A) = H(C_* X/ C_* A)
\]

When axiomatized, generally relies on property of **excision**, which relates to the following theorem:

:::{.theorem title="?"}
If $U \subseteq A \subseteq X$ and $cl(U) \subseteq int(A)$, then 
\[
H(X, A) \cong H(X-U, A-U)
\]
or equivalently setting $X = A \union B$ where $X = int(A) \union int(B)$, then 
\[
H(X,A) \cong H(B, A\intersect B)
\]
:::

:::{.proof}
Recall from proof of Mayer Vietoris we used 
\[
C_*(A+B) \leq C_* X = \ts{\text{singular simplexes from } A \text{ or } B}
\]
This yields a SES
  \[
    0 \mapsvia{} C_*(A) \mapsvia{} C_*(A+B) \mapsvia{} C_*(B, A\intersect B)\mapsvia{} 0
    \]

Look at inclusion $C_*(A+B) \mapsvia{\iota} C_*(X)$ and its placement in the SES 
\[
0\mapsvia{} C_*(A) \mapsvia{} C_*(X) \mapsvia{} C_*(X,A)\mapsvia{} 0
\]
  These yield commuting long exact sequences:

\[
H_n(A) \mapsvia{} H_n(A+B) \mapsvia{} H_n(A, A\cap B) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(A+B) \mapsvia{} \cdots
\]

\[
H_n(A) \mapsvia{} H_n(X) \mapsvia{} H_n(X,A) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(X) \mapsvia{} \cdots
\]

Here the 5 lemma applies, since there are two maps that are identifications and $H_*(A+B) \cong H_*(X)$ by Mayer-Vietoris.
:::

:::{.example}
Look at *local homology*, i.e. look at $H_*(X, X-\{*\})$, this is equivalent to $H_*(U, U-\{*\})$ for **any** open neighborhood $U\supseteq \{*\}$. 
Take any open $V \subseteq \RR^n$ as an example, then 
\[
H_*(V,V-\pt) \cong H_*(U, U-\pt)
\]
for $U$ an epsilon ball around the point, but then by homeomorphism this is equal to 
\[
H_*(\RR^n, \RR^n - \pt) = \ZZ\indic{\text{dim} = n}
\]
:::

:::{.remark}
This is a stronger statement than "Brouwer's Invariance of Domain", because this invariant picks up the dimension $n$.

Note that this invariance is given by the following statement: no open set of $\RR^n$ can be homeomorphic to a subset of $\RR^m$ for $m\neq n$. 
:::


This can be used to show that e.g. singular points are weird, e.g. if this doesn't yield $\ZZ$ everywhere in a space $X$ then $X$ can not be a manifold.


## Collapsing Theorem

If $X \supseteq A$ and $A$ has an open neighborhood $V\supseteq A$ which deformation retracts onto it then $H_*(X,A) \cong \tilde H_*(X/A)$.

Aside:

:::{.definition title="Deformation"}
A *deformation* is given by 
$A \injects_i V \surjects_p A$ where $p\circ i = \id_A$

:::

:::{.definition title="Deformation Retract"}
A *deformation retract* is given by $V \surjects_p A \injects_i V$ where $i\circ p \homotopic \id_V$
:::

:::{.proof}
Take a homeomorphism 
\[
(X-A, V-A) \cong (X/A - A/A, V/A - A/A)
\]
by homeomorphisms of each component.

By excision, the LHS is isomorphic to $H_*(X, V)$, while the RHS is given by
\[
H_*(X/A - \pt, V/A - \pt) \cong H_*(X/A, V/A)
\]

Yields LES of triple 
\[
0=H_n(V,A) \mapsvia{} H_n(X, A) \mapsvia{} H_n(X,V) \mapsvia{} H_{n-1}(V,A) = 0
\]
so $H_n(X,A) \cong H_n(X,V)$.

So the RHS is equal to 
\[
H_*(X/A, V/A) = H_*(X/A, A/A) = H_*(X/A, \pt) = \tilde H_*(X/A)
\]
:::

Note that the collapsing argument doesn't work for local homology. 

:::{.example}
Consider
\[
H_*(\RR^n, \RR^n - \pt) \not\cong \tilde H_*(\RR^n/\RR^n - \pt)
.\]
The LHS depends on $n$ while the RHS doesn't. 
Note also the weird quotient topology on the RHS.
:::


## Cellular Homology


If $X$ is a CW-complex, then let $X^n$ be the $n$-skeleton. 
We can then define 
\[
C_n^{\text{cell}}(X) \definedas H_n(X^n, X^{n-1}) \cong H_n(X^n/X^{n-1}) \cong \bigvee_{\alpha \in I^n} S_\alpha^n = \bigoplus_\alpha \ZZ
.\]

Can now introduce a boundary map $\del:C_n \into C_{n-1}$ from 
\[
\delta: H_n(X^n, X^{n-1}) \into H_n(X^{n-1}, X^{n-2})
\]
obtained from the LES of the triple $(X^n, X^{n-1}, X^{n-2})$.

Why is this a chain complex? 
Does $\del^2 = 0$?

Look at $[z] \in H_n(X^n, X^{n-1})$. 
Then $z\in C_n(X)$ is a singular $n$ simplex, must be a cycle such that 
\[
\del z \in C_{n-1}X^{n-1} \subseteq C_{n-1}X^n
\]
Then 
\[
\delta([z]) = [\del z] \in C_{n-1}(X^{n-1}) / C_{n-1}(X^{n-2})
\]
Note the distinction between actual cycles and relative cycles. 
But then 
\[
[\del \del z] = [0] \in H_{n-1}(X^{n-2}, X^{n-3})
\]

Makes the problem tractable, yields integer linear algebra for finite CW complexes! This makes things easier to actually compute.

