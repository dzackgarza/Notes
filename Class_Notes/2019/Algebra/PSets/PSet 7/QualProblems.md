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
Then if $\alpha \in E$, we have $\alpha^{p^{kn}} = \alpha$, so we can define 
$$
f(x) \coloneqq x^{p^{kn}} - x \in F[x].
$$

The roots of $f$ are exactly the elements of $E$, so $f$ splits in $E$. 


## Part (c)

The polynomial $f$ is separable, since $f'(x) = p^{kn}x^{p^{kn}-1} - 1 = -1$ since $\mathrm{char}(E) = p$.
Since $E$ is a finite extension, $E$ is thus a separable extension.
Then, since $E$ is a separable splitting field, it is a Galois extension by definition.

# Problem 2

We have $I = \union_{\mu \in M} \mathrm{Ann}_\mu$, and we want to show that $xy \in I \implies x\in I$ or $y\in I$.

So suppose $xy \in I$. Then $xy \in \mathrm{Ann}_\mu$ for some $\mu \in M$, so $xy\mu = 0$ and thus $x\in \mathrm{Ann}_{y\mu} \subset I$.
