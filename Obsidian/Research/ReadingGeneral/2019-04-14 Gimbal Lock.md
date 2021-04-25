What we want to represent is $SO(3, \RR)$, where a real representation of a group $G$ is a map $G \to \GL(n, \RR)$ for some $n$.
More generally, we can define a $V\dash$representation as a map $G \to \Aut(V)$, where since $V$ lives in the category of
vector spaces, this amounts to requiring that $G$ maps to a linear map.
Equivalently we can ask for a $V\dash$linear map $G\cross V \to V$ (i.e. a group action on $V$).

So the goal is to construct a representation $f: SO(3, \RR)) \to \GL(n, \RR)$ for some $n$.

Suppose we are working with Euler angles
$$E \definedas \theset{ (\phi, \theta, \psi) \suchthat \phi,\psi \in [0, 2\pi], \theta \in [0,\pi]} / \sim$$

where $2\pi \phi \sim \phi, 2\pi\psi \sim \psi, \pi\psi\sim\psi$.

We can then cook up a representation $g: E \to \GL(n, \RR)$ by writing down appropriate rotation matrices in
the parameters $\phi, \theta, \psi$.

$$
R = \left[ \begin{array} { c c c } { 1 } & { 0 } & { 0 } \\ { 0 } & { \cos \alpha } & { - \sin \alpha } \\ { 0 } & { \sin \alpha } & { \cos \alpha } \end{array} \right] \left[ \begin{array} { c c c } { \cos \beta } & { 0 } & { \sin \beta } \\ { 0 } & { 1 } & { 0 } \\ { - \sin \beta } & { 0 } & { \cos \beta } \end{array} \right] \left[ \begin{array} { c c c } { \cos \gamma } & { - \sin \gamma } & { 0 } \\ { \sin \gamma } & { \cos \gamma } & { 0 } \\ { 0 } & { 0 } & { 1 } \end{array} \right] = = \left[ \begin{array} { c c c } { 0 } & { 0 } & { 1 } \\ { \sin ( \alpha + \gamma ) } & { \cos ( \alpha + \gamma ) } & { 0 } \\ { - \cos ( \alpha + \gamma ) } & { \sin ( \alpha + \gamma ) } & { 0 } \end{array} \right]
$$

Note that each angle lives in a real interval with the endpoints identified, which is topologically a circle.
So, up to homeomorphism, we have $E \cong S^1 \cross S^1 \cross S^1 = (S^1)^3 = T^3$, a real 3-torus. The question then becomes
whether or not the representation we are looking for, say $SO(3, \RR) \to \GL(n, \RR)$, factors through the
representation $E\ to \GL(n, \RR)$ that we have cooked up. This amounts to asking if there is a map
$h: \SO^3 \to T^3$ that makes the following diagram commute:

$$
\begin{tikzcd}
T^3 \arrow[rrdd, "g"]                                       &  &                              \\
                                                            &  &                              \\
{SO(3, \mathbb{R})} \arrow[rr, "f"] \arrow[dd, "h", dashed] &  & {\mathrm{Gl}(n, \mathbb{R})}
\end{tikzcd}
$$

In other words, can we factor the complicated representation $f$ that we want through a simpler representation $g$?
In order for this to be a fully faithful representation, this amounts to asking if we can replace $SO(3, \RR)$
by $E$ up to isomorphism in some category.

In particular, we should ask that this diagram preserves all of the structure we care about. Since
we are viewing everything in sight as a smooth topological group, we should ask that all maps be
continuous group homomorphisms.

In particular, we would want $h$ to be a homeomorphism -- however, something has already
gone awry, because this is not the case. Perhaps the easiest way to see this is by considering fundamental
groups. Topologically, we have $\SO(3, \RR) \cong \RP^3$ and in particular $\pi_1(\RP^3) \cong \ZZ/2\ZZ$. However,
$\pi_1(T^3) \cong \ZZ^3$, and so these spaces are not homeomorphic.

We might instead ask that $h$ be a covering map, so that $T^3$ covers $\SO(3, \RR)$ in some sufficiently
nice way instead. It turns out that such a surjective map can be constructed, but from the above discussion,
we know that injectivity will have to fail, and it is this phenomenon which introduces the singularities
that result in gimbal lock. When writing out such a map, this singular points will be to coordinates
at which the map will be less than full rank, and fail to be a local homeomorphism in neighborhoods of
these points.

To explicitly construct such a map, we'll identify $SO(3, \RR)$ with $\RP^3$ and look for a map $h': T^3 \to \RP^3$.

Nix that, we'll actually want to look at all possible covers of $\RP^3$. One such covering space is $S^3$, where
the covering map is given by identifying antipodal points.


Definition [Hatcher]: For a topological space $X$, a covering space of $X$ is a space $\tilde X$ and a map $p: \tilde X \to X$ such that
for each point $x\in X$, there exists an open neighborhood $U_x\subet X$ of $x$ such that $p^{-1}i(U_x) = \coprod \tilde{U}_x$ such that
each $\tilde{U}_x$ is homeomorphic to $U_x$, where the homeomorphism is realized by $p$.

One fact we can use here is that if $p$ is a covering map, then the induced map on fundamental groups $p_*: \tilde X \to X$ is
an injection. Since we are taking $X = \RP^3$ here and we know $\pi_1(\RP^3) = \ZZ/2\ZZ$, we can narrow our search a bit
by asking what groups $G$ can fit into an injective group homomorphism $G \to \ZZ/2\ZZ$. This narrows our choices
for $\tilde X$ considerably, since this forces $\pi_1(\tilde X) = \ZZ/2\ZZ\text{ or }0$. This immediately excludes
$T^3$ from being a possibility, since $\pi_1(T^3) = \ZZ^3$ and an infinite group can't be injected into a finite group.

We can in fact instead appeal to the classification of covering spaces, which says that there is a Galois
correspondence between covering spaces of $X$ and subgroups of $\pi_1(X)$. Since $\ZZ/2\ZZ$ has exactly two subgroups,
$0$ and $\ZZ/2\ZZ$, this leaves us with exactly two choices. The identity map $\RP^2 \to \RP^2$ yields the
covering space corresponding to $\ZZ/2\ZZ$, and the remaining choice can be realized by taking $S^3 \mapsvia{p} \RP^2$
where $p(\vector{x}) = [x_1, x_2, x_3]$ in homogeneous coordinates. Topologically, noting that
$$p(-\vector x) = [-x_1, -x_2, -x_3] = [x_1, x_2, x_3],$$

which follows from the identity $[x,y, \cdots] = [\lambda x, \lambda y, \cdots]$ for any scalar $\lambda$ in projective spaces, we find
that this map is realized by taking points on the sphere and identifying them with their antipodes.

Since $\pi_1(S^3) = 0$, the induced map $p_*(\pi_1(S^3)) \to \pi_1(\RP^3)$ will be the zero map, and thus
$p_*(\pi_1(S^3)) = 0$ and we obtain the second possible covering space. This can also be
seen from the fact that $S^3$ is simply connected, so $\pi_1(S^3) = 0$, and thus
$S^3$ is the universal cover of $\RP^3$.

Of particular importance here is the fact that the only possibilities for covers were $S^3$ or
$\RP^3$ itself. We know that $\RP^3 \not\cong T^3$ by looking at fundamental groups; we can also find that
$S^3 \not\cong T^3$ by looking at $\pi_3$. In particular, $\pi_1(S^3) = 0$ while $\pi_1(T^3) = \ZZ^3$. So
there can not exist a covering map $T^3 \to \RP^3$, which means that any such map
we construct must fail the local homeomorphic mapping condition in a neighborhood of at least one point.


So let's attempt to define such a map and see what goes wrong. Since $T^3 = S^1 \cross S^1 \cross S^1$, let a coordinate
on the torus be given by $(\theta_1, \theta_2, \theta_3)$ where each $\theta_i \in [0, \2pi)$. Inspired by how nicely
the previous map $S^3 \to \RP^3$ worked, let us first define
$$p: \T^3 \to \RP^3 \\ (\theta_1, \theta_2, \theta_3) \mapsto [\theta_1, \theta_2, \theta_3]$$
Since we hope to represent all elements of $SO(3,\RR)$ in this way, we want a surjective map.


