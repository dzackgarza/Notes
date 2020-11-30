# Lecture 15: The $L\dash$Polynomial

Recall that we had $Z(t) + F(t) + G(t)$:

\[  
(q-1) F(t) 
&= \sum_{0 \leq \deg C \leq 2g-2 } q^{\ell(C)} t^{\deg(C)} \\
(q-1)G(t)
&= h \qty{ {q^g t^{2g-1} \over 1-qt} - {1 \over 1-t} }
.\]

Note that $F(t)$ is a polynomial of degree at most $2g-2$, and clearing denominators in $G(t)$ yields a polynomial of degree at most $2g$


:::{.definition title="The $L\dash$polynomial"}
The $L\dash$polynomial is defined as
\[  
L(t) \da (1-t)(1-qt) Z(t) = (1-t)(1-qt) \sum_{n=0}^\infty A_n t^n \in \ZZ[t]
.\]
:::

It turns out that the degree bound of $2g$ is sharp:

:::{.theorem title="?"}
Let $K/\FF_q$ be a function field, then

- $\deg L = 2g$.
- $L(1) = h$
- $L(t) = q^g t^{2g} L\qty{1\over qt}$.
- Writing $L(t) = \sum_{j=1}^{2g} a_j t^{j}$,

  - $a_0 = 1$ and $a_{2g} = q^g$.
  - For all $0\leq j \leq g$, we have $a_{2g-j} = q^{g-j}a_j$.
  - $a_1 = \abs{\Sigma(K/\fq)}$.

:::



