# Representing $K(G, n)$ Geometrically

[(Summary of full material found here)](http://math.ucr.edu/home/baez/week151.html)

Starting with a low-dimensional example, using the fact that $K(\ZZ, 2) = \CP^\infty = \varinjlim \CP^n$.

We want to make this into an abelian topological group, so let
$$
X = \theset{\CC \to \CC \mid f~\text{is rational}}
$$

Note that as a vector space, this is isomorphic to $\CC^\infty$, and there is a way to topologize $X$ such that this is a homeomorphism as well.

Then let
$$
\hat X = \theset{f \in X \mid f~\text{is nonzero}} / \theset{f = \lambda f \mid \lambda \in \CC^*}
$$

which is the set of rational, nonzero, complex functions, modulo multiplication by constants. This is the "projectivization" of $X$, and is isomorphic to $\CP^\infty$ as abelian topological groups.

Then every function $f\in \hat X$ has (say) $n$ zeros and $m$ poles, which corresponds to $n+m$ points in $\CC \cup \infty = \CP^1 = S^2$. If we attach an integer to every point, we can encode the difference between zeros and poles while simultaneously encoding their orders. So we then define

$$
Y_n = \theset{\theset{(z_i, k_i)}_{i=1}^n \mid \sum_{i=1}^n k_i = 0}\subset \CP^1 \cross \ZZ
$$

in which each element is a collections of $n$ points on the Riemann sphere, each with an integer attached, such that these integers sum to zero.

Then any rational complex function $f: \CC \to \CC$ with a total of $n$ combined zeros and poles can be uniquely recovered as some $y\in Y_n$, so we have

$$
\hat X \cong \union_{n=1}^\infty Y_n
$$

In other words, we perform the following procedure: each rational function has a finite number of zeros and poles, so we imagine these as points on the Riemann sphere, each with an integer attached such that the sum of these integers equals zero.

Then, we imagine wiggling these functions continuously - this induces movement of the points on the sphere. When any two points coincide, they "coalesce" and their corresponding integer labels are added together.

We thus envision points in $K(\ZZ, 2) = CP^\infty$ as collections of "particle-antiparticle" swarms on the $S^2$:

![swarm 3](/home/zack/notes/images/2018/05/swarm-3.png)

There are two immediate generalizations:

- First, replace $S^2$ with $S^n$ to obtain a corresponding picture for $K(\ZZ, n)$
- Then, replace $\ZZ$ with an arbitrary abelian group. We then require that the aggregate word formed by all of the points multiples to the identity, and that coalescing corresponds to multiplication of elements.

![group swarm](.images/2018/05/group-swarm.png)

This yields a geometric picture for $K(G, n)$ for any abelian group $G$. $\qed$
