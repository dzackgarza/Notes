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

#TODO insert equations for matrix representation

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
at which the map will be less than full rank.

To explicitly construct such a map, we'll identify $SO(3, \RR)$ with $\RP^3$ and look for an $h': T^3 \to \RP^3$
