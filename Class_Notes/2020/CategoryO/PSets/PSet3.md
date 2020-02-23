---
title: Category $\OO$, Problem Set 3
---


# Humphreys 1.10

Prove that the transpose map $\tau$ fixes $Z(\lieg)$ pointwise.

> Check that $\tau$ commutes with the Harish-Chandra morphism $\xi$ and use the fact that $\xi$ is injective.

## Solution

We first note that after choosing a PBW basis for $\lieg$, $\tau$ is defined on $\lieg$ in the following way:


\begin{align*}
\tau: \lieg &\to \lieg \\
x_\alpha &\mapsto y_\alpha \\
h_\alpha &\mapsto h_\alpha \\
y_\alpha &\mapsto x_\alpha
\end{align*}

which lifts to an anti-involution $\tau: U(\lieg) \to U(\lieg)$ by extending linearly over PBW monomials.
We can note that since $\tau$ fixes $\lieh$ pointwise by definition, its lift also fixes $U(\lieh)$ pointwise.


# Humphreys 1.12

Fix a central character $\chi$ and let $\theset{V^{(\lambda)}}$ be a collection of modules in $\OO$ indexed by the weights $\lambda$ for which $\chi = \chi_\lambda$ satisfying

1. $\dim V^{(\lambda)} = 1$
2. $\mu < \lambda$ for all weights $\mu$ of $V^{(\lambda)}$.

Then the symbols $[V^{(\lambda)}]$ form a $\ZZ\dash$basis for the Grothendieck group $K(\OO_x)$.

> For example take $V^{(\lambda)} = M(\lambda)$ or $L(\lambda)$.

# Humphreys 1.13

Suppose $\lambda \not\in \lambda$, so the linkage class $W\cdot \lambda$ is the disjoint union of its nonempty intersections of various cosets of $\Lambda_r \in \lieh\dual$.

Prove that each $M\in \OO_{\chi_\lambda}$ has a corresponding direct sum decomposition $M = \bigoplus M_i$ in which all weights of $M_i$ lie in a single coset.

> Recall exercise 1.1b.

