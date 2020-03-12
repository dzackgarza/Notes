While hanging out with a few friends, we came up with a question that should have a clear direct answer: is the 2-sphere $S^2$ being a Lie group? If not, what is the obstruction?

My initial intuition here was something along these lines: if $S^2$ were a topological group, we could consider its Lie algebra by taking the tangent space $T_e$ at the identity $e$ (where without loss of generality, we can rotate $S^2$ to identify $e$ with the North pole.) A standard argument shows that the translation maps $\tau_g:x\mapsto gx$ are diffeomorphisms, and are "transitive" in the sense that any point $p_1$ can be carried to $p_2$ by the translation $\tau_{p_2 p_1\inv}$. 

Using this, the heuristic is that we expect the tangent space to "look the same" after performing a series of translations that ultimately maps $e$ to itself, for example
$$
\tau: S^2 \to S^2\\
\tau \definedas \tau_{p_2\inv} \tau_{p_2p_1\inv} \tau_{p_1}.
$$
Specifically, my hope was that the induced map $\tau^*: T_e \to T_e$ would not just be an isomorphism, but in fact the *identity* map. This can be phrased in terms of the parallel transport of a tangent vector $\vector v \in T_e$ along geodesics connecting $e$ to $p_1$, $p_1$ to $p_2$, and finally $p_1$ to $e$. However, because the standard metric on $S^2$ induces nonzero curvature, there is nontrivial holonomy and the vector 



It turns out that the following is true:

Theorem
: $S^n$ is a topological group $\iff n=0,1,3$.

My impression was that this should be related to the fact that the only normed division algebras are $\RR, \CC, \HH$, and \OO$, but couldn't find an obvious proof along those lines. A bit of searching on Math StackExchange turned up the following proofs:



Proof
: 