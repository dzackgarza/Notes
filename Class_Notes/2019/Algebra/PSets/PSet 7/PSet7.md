---
title: Homework 7
---


# Problem 1

## Part 1

In order for $IS$ to be a submodule of $A$, we need to show the following implication:
$$
x\in IS,~a\in A \implies xa, ax \in IS.
$$

Suppose $x\in IS$.
Then by definition, $x = \sum_{i=1}^n r_i a_i$ for some $r_i \in R, a_i\in A$.

But then
\[
\begin{align*}
xa &= \left( \sum_{i=1}^n r_i a_i \right) a \\
&= \sum_{i=1}^n r_i a_i a \\
&\coloneqq \sum_{i=1}^n r_i a_i',
\end{align*}
\]

where $a_i' \coloneqq a_i a$ for each $i$, which is still an element of $A$ since $A$ itself is a module and thus closed under multiplication.

But this expresses $xa$ as an element of $IS$. Similarly, we have
\[
\begin{align*}
ax &= a \left( \sum_{i=1}^n r_i a_i \right)\\
&= \sum_{i=1}^n a r_i a_i a \\
&\coloneqq \sum_{i=1}^n r_i a a_i, \\
&\coloneqq \sum_{i=1}^n r_i a_i',
\end{align*}
\]

and so $ax \in IS$ as well.

## Part 2

Letting $R/I \actson A/IA$ be the action given by $r+I \actson + IA \coloneqq ra + IA$, we need to show the following:

- $r.(x + y) = r.x + r.y$,
- $(r + r').x = r.x + r'.x$,
- $(rs).x = r.(s.x)$, and
- $1.x = x$.

Letting $\oplus$ denote the addition defined on cosets, we have
\[
\begin{align*}
r \actson (x + IA \oplus y + IA) 
&\coloneqq r \actson x + y + IA \\
&\coloneqq r(x+y) + IA \\
&= rx + ry + IA \\
&\coloneqq rx + IA \oplus ry + IA \\
&\coloneqq (r \actson x + IA) \oplus (r\actson y + IA)
.\end{align*}
\]
