---
date: 2021-04-26
tags: 
  - Number Theory
---


# Motivation

Studying elliptic curves, or more generally, abelian varieties $E$.
The most important object is the **$\ell\dash$adic Tate module of $E$**, $T_\ell(E)$.
It is able to detect the ability to lift $E/k$ to the ring of integers $O_k$.
Also captures the isogeny class of $E$ over a finite field, and the number of points over all finite fields.
Fails spectacularly when $E/\FF_{p^s}$ is a supersingular elliptic curve, in which case taking $\ell = p$ yields $T_p E = 0$.
Leads to considering the group schemes $E[\ell^n]$, which is etale when $\ell \neq p$, but $E[p^n]$ is never etale.
Leads to replacing $T_p E$ with the directed system $\theset{E[p^n]}_n$.
