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
Every finite degree extension of a finite field is simple, so $E = F(\alpha)$ for a single primitive element $\alpha$.
Then $\alpha^{p^k} = \alpha$, so we can define $f(x) \coloneqq x^{p^k} - x \in F[x]$ and it follows that every power of $\alpha$ is a root of $f$.
