While hanging out with a few friends, we came up with a question that should have a clear direct answer: is the 2-sphere $S^2$ being a Lie group? If not, what is the obstruction?

My initial intuition here was something along these lines: if $S^2$ were a topological group, we could consider its Lie algebra by taking the tangent space $T_e$ at the identity $e$ (where without loss of generality, we can rotate $S^2$ to identify $e$ with the North pole.) A standard argument shows that the translation maps $\tau_g:x\mapsto gx$ are diffeomorphisms, and are "transitive" in the sense that any point $p_1$ can be carried to $p_2$ by the translation $\tau_{p_2 p_1\inv}$. 

Using this, the heuristic is that we expect the tangent space to "look the same" after performing a series of translations that ultimately maps $e$ to itself, for example
$$
\tau: S^2 \to S^2\\
\tau \definedas \tau_{p_2\inv} \tau_{p_2p_1\inv} \tau_{p_1}.
$$
Specifically, my hope was that the induced map $\tau^*: T_e \to T_e$ would not just be an isomorphism, but in fact the *identity* map. This can be phrased in terms of the parallel transport of a tangent vector $\vector v \in T_e$ along geodesics connecting $e$ to $p_1$, $p_1$ to $p_2$, and finally $p_1$ to $e$. However, because the standard metric on $S^2$ induces nonzero curvature, there is nontrivial holonomy and the vector returns with some rotation. Thus this composition isn't the identity, a contradiction.

It's not so clear to me what part doesn't go through:

- Does nonzero curvature/holonomy on a manifold obstruct it from having a Lie group structure?
- Do all Lie groups have zero curvature and trivial holonomy groups?
  - Note that $\mathrm{Holo}(S^2) =  SO(2, \RR)$.
- Should any composition of translations fixing $e$ induce the identity on $T_e$, or just a vector space automorphism?



It turns out that the following is true:

Theorem
: If $S^n$ is a group, then $n$ must be odd.

Proof
: Suppose otherwise and let $m: (S^n)^2 \to S^n$ be the multiplication. Then $m_g$ defined by $m_g(x) = m(g, x)$ has no fixed points. By Lefschetz, $\Lambda_{m_g} = 0$, so use the fact that $\pi_1S^2 = 0$ to homotope $m_g \sim \id_{S^2}$, which preserves $\Lambda_{m_g}$. But $\Lambda_{\id_X} \chi(X)$ and $\chi(S^2) = 1 + (-1)^n$, and for this to be odd, $n$ must be odd.

Theorem
: $S^n$ is a topological group $\iff n=0,1,3$.

My impression was that this should be related to the fact that the only normed division algebras are $\RR, \CC, \HH$, and \OO$, but couldn't find an obvious proof along those lines. A bit of searching on Math StackExchange turned up the following proofs:



Proof
: 