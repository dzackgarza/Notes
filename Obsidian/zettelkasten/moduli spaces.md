---
aliases: ["moduli space", "moduli", "moduli problem", "moduli functor"]
---

Prototypical example of a moduli space: the [Grassmannian](Grassmannian.md)  $\Gr_\CC(n, k)$.

Apparently a [fundamental class](fundamental%20class) exists for closed subvarieties? Maybe just closed subvarieties of a moduli space.

- [fine moduli space](fine%20moduli%20space)
- [coarse moduli space](coarse%20moduli%20space)
- [Quot schemes](Quot%20schemes)

# Notes

> Reference: https://arxiv.org/pdf/1708.08124.pdf

In fact, it is possible to say a great deal about the moduli space purely in terms of the moduli functor, without even knowing the moduli space exists! For example, the tangent space can be computed by evaluating the moduli functor on the spectrum of the ring of dual numbers.

$\Mg$ is not representable in $\Sch$: if it were, then every isotrivial family of curves would be equivalent to a trivial family.
Counterexample to this: take the family
$$
X_t: \quad y^{2}=x^{3}+t, t \neq 0
$$
All fibers are abstractly isomorphic by computing the [j invariant](j%20invariant), as zero, but this is not a trivial family e.g. because the [monodromy](monodromy) action $\pi_1(\CC\units; 1)\actson H^1(X_1, \CC)$