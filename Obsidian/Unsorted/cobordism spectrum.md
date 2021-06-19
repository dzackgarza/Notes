Form the set $\Omega_n^O$ of [[cobordism]] classes of $n\dash$manifolds.

The $O$ denotes that fact that any bundle over a manifold $M$ admits a Riemannian metric, so embedding $M$ into $\RR^\infty$ yields a [[normal bundle]] whose [structure group can be reduced](Reduction%20of%20structure%20group.md) to $O(N)$ for some $N$.

Define addition as disjoint union and multiplication by the Cartesian product to form a graded ring $\Omega^O$, and it turns out that there is a spectrum $\MO$ such that
$$
\Omega^O_n \cong_{\Grp} \pi_n MO
$$

Idea: any manifold is determined by its embedding into $\RR^\infty$, take the normal bundle $\nu$, form the [[Thom space]] $M^\nu$ by collapsing the complement of the normal bundle. 
This yields a map $S^{?} \to M^\nu$.
Now use the fact that $\nu$ is an $N\dash$dimensional bundle and is classified by a map $M \to BO(N)$, the classifying space for $O(N)\dash$bundles with universal bundle $\gamma_N$,. We take Thom spaces (?) to get a map $M^\nu \to BO(N)^{\gamma_N}$, then take
$$
\lim_{N\to \infty} [S^{N+n}, BO(N)^{\gamma_N}]_{\text{unstable?}}
$$
This is independent of the embedding and only depends on the cobordism class of $M$, so we define $MO(n) \definedas BO(N)^{\gamma_N}$.