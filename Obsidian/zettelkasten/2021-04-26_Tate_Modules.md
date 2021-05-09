---
date: 2021-04-26
tags: 
  - Number Theory
---

References: [Number theory](../Number%20theory.md)

# Motivation

- Studying [Elliptic curves](elliptic%20curve.md), or more generally, [abelian varieties](../abelian%20variety.md) $E$.
- The most important object is the **$\ell\dash$adic [[Tate module]] of $E$**, $T_\ell(E)$.
- It is able to detect the ability to lift $E/k$ to the [ring of integers](../Ring%20of%20integers.md) $O_k$.
- Also captures the [[isogeny]] class of $E$ over a finite field, and the number of points over all finite fields.
- Fails spectacularly when $E/\FF_{p^s}$ is a [[supersingular]] elliptic curve, in which case taking $\ell = p$ yields $T_p E = 0$.
- Leads to considering the [group schemes](../group%20scheme.md) $E[\ell^n]$, which is [[étale]] when $\ell \neq p$, but $E[p^n]$ is never étale.
- Leads to replacing $T_p E$ with the directed system $\theset{E[p^n]}_n$.
