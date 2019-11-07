---
title: Assignment 6 Qual Problems
---

# Problem 1

## Part (a)

Definition: A field extension $L/F$ is said to be a *splitting field* of a polynomial $f(x)$ if $L$ contains all roots of $f$ and thus decomposes as 
$$
f(x) = \prod_{i=1}^n (x - \alpha_i)^{k_i} \in L[x]
$$
where $\alpha_i$ are the distinct roots of $f$ and $k_i$ are the respective multiplicities.

## Part (b)
Let $F$ be a finite field with $q$ elements, where $q=p^k$ is necessarily a prime power, so $F \cong \FF_{p^k}$.
Then any finite extension of $E/F$ is an $F\dash$vector space, and contains $q^n = (p^{k})^n = p^{kn}$ elements.
Thus $E \cong \FF_{p^{kn}}$
Then if $\alpha \in E$, we have $\alpha^{p^{kn}} = \alpha$, so we can define $f(x) \coloneqq x^{p^{kn}} - x \in F[x]$.
