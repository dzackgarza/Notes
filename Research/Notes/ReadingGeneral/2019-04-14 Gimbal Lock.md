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
{SO(3, \mathbb{R})} \arrow[rr, "f"] \arrow[uu, "h", dashed] &  & {\mathrm{Gl}(n, \mathbb{R})}
\end{tikzcd}
$$

In particular, to ensure some level of continuity, we should ask that this commutes in the category
of topological spaces and continuous maps. In particular, $h$ should be a continuous map.

