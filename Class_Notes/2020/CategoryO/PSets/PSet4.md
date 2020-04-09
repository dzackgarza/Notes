---
title: Category $\OO$, Problem Set 4
---

# Humphreys 3.1
Let $\lieg = \liesl(2, \CC)$ and identify $\lambda \in \lieh\dual$ with a scalar.
Let $N$ be a 2-dimensional $U(\lieb)\dash$module defined by letting $x$ act as $0$ and $h$ act as $\left(\begin{array}{ll}{\lambda} & {1} \\ {0} & {\lambda}\end{array}\right)$.

Show that the induced $U(\lieg)\dash$module structure $M \definedas U(\lieg) \tensor_{U(\lieb)} N$ fits into an exact sequence which fails to split:
$$
0 \to M(\lambda) \to M \to M(\lambda) \to 0
$$

## Solution

[Reference 1](https://math.stackexchange.com/questions/2272891/extension-of-dual-verma-module/2273008#2273008)
[Reference 2](https://aip.scitation.org/doi/full/10.1063/1.5121236)

> Hence $M\not\in \OO$.

# Humphreys 3.2

Show that for $M\in \OO$ and $\dim L < \infty$,
$$
(M\tensor L)\dual \cong M\dual \tensor L\dual
$$

> [Reference for Dual of Sum](https://mathoverflow.net/questions/56255/duals-and-tensor-products)

## Solution

By theorem 3.2d, we have
$$
M, N \in \OO \implies (M\oplus N)\dual \cong M\dual \oplus N\dual
$$

and by definition, $M\dual \definedas \bigoplus_{\lambda \in \lieh\dual} M_\lambda\dual$ is the direct sum of the duals of various weight spaces.


# Humphreys 3.4

Show that $\Phi_{[\lambda]} \intersect \Phi^+$ is a positive system in the root system $\Phi_{[\lambda]}$, but the corresponding simple system $\Delta_{[\lambda]}$ may be unrelated to $\Delta$.

> For a concrete example, take $\Phi$ of type $B_2$ with a short simple root $\alpha$ and a long simple root $\beta$.
> If $\lambda \definedas \alpha/2$, check that $\Phi_{[\lambda]}$ contains just the four short roots in $\Phi$.

## Solution

We would like to show the following two propositions:

1. $\Phi_{[\lambda]}^+ \definedas \Phi_{[\lambda]} \intersect \Phi^+$ is a positive system in $\Phi_{[\lambda]}$,
2. The simple system $\Delta_{[\lambda]}$ corresponding to $\Phi_{[\lambda]}^+$ is *not* generally given by $\Delta_{[\lambda]} = \Phi_{[\lambda]} \intersect \Delta$, where $\Delta$ is the simple system corresponding to $\Phi$.

We proceed by first showing (2) using the hinted counterexample when $\Phi$ is of type $B_2$ with $\Delta = \theset{\alpha, \beta}$ with $\alpha$ a short root and $\beta$ a long root.
Concretely, we can realize $\Phi$ as a subset of $\RR^2$ in the following way:
\begin{align*}
\Phi = \theset{[1,0], [0, 1], [-1, 0], [0, -1]} \union \theset{[1,1], [-1, 1], [1, -1], [-1, -1]}
,\end{align*}
where we note that the first set consists of short roots and the second of long roots.


# Humphreys 3.7

## a

If a module $M$ has a standard filtration and there exists an epimorphism $\phi: M\to M(\lambda)$, prove that $\ker \phi$ admits a standard filtration.

## b

Show by example that when $\lieg = \liesl(2, \CC)$ that the existence of a monomorphism $\phi: M(\lambda) \to M$ where $M$ has a standard filtration fails to imply that $\coker \phi$ has a standard filtration.

