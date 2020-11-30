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

It turns out that the degree bound of $2g$ is sharp, and the coefficients closer to the middle are most interesting:

:::{.theorem title="?"}
Let $K/\FF_q$ be a function field of genus $g\geq 1$, then

a. $\deg L = 2g$.
b. $L(1) = h$
c. $L(t) = q^g t^{2g} L\qty{1\over qt}$.
d. Writing $L(t) = \sum_{j=1}^{2g} a_j t^{j}$,

  - $a_0 = 1$ and $a_{2g} = q^g$.
  - For all $0\leq j \leq g$, we have $a_{2g-j} = q^{g-j}a_j$.
  - $a_1 = \abs{\Sigma(K/\fq)} - (q+1)$, which notably does not depend on $g$.

- Write $L(t) = \prod_{j=1}^{2g} (1 - \alpha_j t) \in \CC[t]$ [^why_this_expansion]

e. The $\alpha_j \in \bar{\ZZ}$ [^algebraic_ints_note]
(which were *a priori* in $\CC$) and can be ordered such that for all $1\leq j \leq g$, we have $a_j a_{g+j} = q$. [^hint_at_rh]

f. If $L_r(t) = (1-t)(1-q^rt) Z_r(t)$ then $L_r(t) = \prod_{j=1}^{2g}(1-\alpha_i^r t)$, where $K_r$ is the constant extension $K \fqr /\fqr$

[^hint_at_rh]: This is the first hint at the Riemann hypothesis: if for example they all had the same complex modulus, this would force $\abs{a_j} = \sqrt q$.
Thus proving that they all have the same absolute value is 99% of the content!

[^algebraic_ints_note]: $\bar \ZZ$ denotes the algebraic integers.

[^why_this_expansion]: The polynomial isn't monic, but rather has a constant coefficient, so this expansion is somewhat more natural than (say) $\prod (t-\alpha)$.

:::

Note that the $\alpha_i$ are reciprocal roots.

:::{.proof title="of a"}
We saw from $Z(t) = F(t) + G(t)$ that $\deg L \leq 2g$.
Equality will follow from the proof of (d) part 1, since this would imply that $a_{2g} = q^g \neq 0$.
:::

:::{.proof title="of b"}
Our formula $Z(t) = F(t) + G(t)
:::



