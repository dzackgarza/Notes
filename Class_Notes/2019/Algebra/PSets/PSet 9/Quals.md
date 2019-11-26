---
title: Qual Problems
---

# Problem 1

## Part 1

Definition:
An element $r\in R$ is *irreducible* if whenever $r=st$, then either $s$ or $t$ is a unit.

Definition:
Two elements $r,s\in R$ are *associates* if $r = \ell s$ for some unit $\ell$.

A ring $R$ is a *unique factorization domain* iff for every $r\in R$, there exists a set $\theset{p_i \mid 1\leq i \leq n}$ such that $r = u \prod_{i=1}^n p_i$ where $u$ is a unit and each $p_i$ is irreducible.

Moreover, this factorization is unique in the sense that if $r = w \prod_{i=1}^n q_i$ for some $w$ a unit and $q_i$ irreducible elements, then each $q_i$ is an associate of some $p_i$.


## Part 2

A ring $R$ is a *principal ideal domain* iff whenever $I \normal R$ is an ideal of $R$, there is a single element $r_i \in R$ such that $I = \generators{r_i}$.

## Part 3

An example of a UFD that is not a PID is given by $R = k[x, y]$ for $k$ a field.

That $R$ is a UFD follows from the fact that if $k$ is a field, then $k$ has no prime elements since every non-zero element is a unit.
So the factorization condition holds vacuously for $k$, and $k$ is a UFD.
But then we can use the following theorem:

Theorem:
If $R$ is a UFD, then $R[x]$ is a UFD.

Since $k$ is a UFD, the theorem implies that $k[x]$ is a UFD, from which it follows that $k[x][y] = [kx, y]$ is also a UFD.

To see that $R$ is not a PID, consider the ideal $I = \generators{x, y}$, and suppose $I = \generators{g}$ for some single $g\in k[x, y]$.

Note that $I \neq R$, since $I$ contains no degree zero polynomials.
Moreover, since $\generators{x} \subset I = \generators{g}$ (and similarly for $y$), we have $g\divides x$ and $g\divides y$, which forces $\deg g = 0$. 
So in fact $g\in k$, but then $\generators{g} = g\inv \generators{g} = \generators{1} = k$, so this forces $I = k \normal k[x, y]$.
However, it is also the case that $x\not\in k$ (nor $y$), which is a contradiction.


