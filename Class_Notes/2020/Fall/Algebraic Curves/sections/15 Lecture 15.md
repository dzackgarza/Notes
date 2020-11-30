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

f. If $L_r(t) = (1-t)(1-q^rt) Z_r(t)$ then $L_r(t) = \prod_{j=1}^{2g}(1-\alpha_j^r t)$, where $K_r$ is the constant extension $K \fqr /\fqr$

[^hint_at_rh]: This is the first hint at the Riemann hypothesis: if for example they all had the same complex modulus, this would force $\abs{a_j} = \sqrt q$.
Thus proving that they all have the same absolute value is 99% of the content!

[^algebraic_ints_note]: $\bar \ZZ$ denotes the algebraic integers.

[^why_this_expansion]: The polynomial isn't monic, but rather has a constant coefficient, so this expansion is somewhat more natural than (say) $\prod (t-\alpha)$.

:::

Note that the $\alpha_j$ are reciprocal roots.

:::{.proof title="of a"}
We saw from $Z(t) = F(t) + G(t)$ that $\deg L \leq 2g$.
Equality will follow from the proof of (d) part 1, since this would imply that $a_{2g} = q^g \neq 0$.
:::

:::{.proof title="of b"}
Our formula $Z(t) = F(t) + G(t)$ and Schmidt's theorem (showing $\delta = 1$) gives
\[  
L(t) = (1-t) (1-qt) F(t) + {h \over q-1} \qty{ q^g t^{2g-2} (1-t) - (1-qt)}
,\]
where we've expanded $G$ but not $F$ because it involves various $\ell(D)$ which are difficult to compute. 
It is some polynomial though, and we can evaluate $L$ at 1 to get $L(1) = h$.
Thus the class number is the sum of the coefficients!
:::

:::{.proof title="of c"}
This follows easily from the functional equation for $Z(t)$, which we already established using the Riemann-Roch theorem:
\[  
Z(t) = q^{g-1} t^{2g-2} Z\qty{1\over qt}
.\]
We can compute
\[  
q^g t^{2g} L\qty{1\over qt} 
&= q^g t^{2g} \qty{1 - {1\over qt}} \qty{1 - {1\over t}} Z\qty{1\over qt} \\
&= q^{g-1} t^{2g-2} (1-t) (1-qt) Z\qty{1\over qt} \\
&= (1-t) (1-qt) Z(t) \\
&\da L(t)
,\]
where we've distributed one $q$ and two $t$s in the first steps.
:::

:::{.proof title="of d"}
Using the functional equation from (c), we can write
\[  
L(t) = q^g t^{2g}  L\qty{1\over qt} = \qty{a_{2g} \over q^g} + \qty{a_{2g-1} \over q^{g-1}}t + \cdots +  \qty{a_0 q^g} t^{2g}
,\]
where we're correcting by enough in $t$ but not enough in $q$ and seeing what we get.
Equating coefficients, for $0\leq j \leq g$ we have
\[  
a_{2g-j} = q^{g-j} a_j
.\]{#eq:sym_formula_proofc}
Using the fact that $A_0$ is the number of effective degree zero divisors, which is only zero, we have $A_0 = 1$ and we can multiply formal power series to obtain 
\[  
L(t) = a_0 + a_1 t + \cdots + a_{2g} t^{2g} 
&= (1-t)(1-qt) \sum_{n=0}^\infty A_n t^n \\
&= \qty{ 1 - (q+1)t + qt^2 }(1 + A_1 t + A_2 t^2 + \cdots)\\
&= 1 + \qty{A_1 - (q+1) }t + \cdots
.\]
From this, we can read off

- $L(0) = a_0 = 1$
- $a_1 = A_1 - (q+1) = \Sigma_1(K/k) - (q+1)$
- $a_{2g} = a_{2g-0} = q^{g-0}a_0 = a^g$ by taking $j=0$ in [@eq:sym_formula_proofc], and thus $\deg L = 2g$.

:::

:::{.proof title="of e (the most interesting!)"}
Consider the **reciprocal polynomial** 
\[  
L\perp(t) \da t^{2g} L\qty{1\over t}
= t^{2g} + a_1 t^{2g-1} + \cdots + q^g
.\]
The original polynomial had $\ZZ$ coefficients and constant term 1, so this polynomial is monic and has a nonzero constant term.
Thus its roots are patently nonzero algebraic integers in $\bar{\ZZ}\nonzero$.
If $L\perp(t) = \prod_{j=1}^{2g} (t-\alpha_j)$, then 
\[  
L(t) = t^{2g} L\perp\qty{1\over t} = \prod_{j=1}^{2g} (1 - \alpha_j t)
\]
and if the roots of $L(t)$ are $r_j$, then the roots of $L\perp(t)$ are the reciprocal roots $1/r_j$ and vice-versa.
This shows the first assertion that $r_j \in \bar{\ZZ}$ as well.

The most interesting part is what follows.
Making the substitution $t=qu$ and using (c) we get
\[  
L\perp(t)
&= \prod_{j=1}^{2g} (t- \alpha_j) \\
&\da t^{2g} L\qty{1\over t} \\
&= q^{2g} u^{2g} L\qty{1\over qu} && \text{by (c)}
.\]

Using $u = t/q$, we can write 
\[  
q^g L(u) 
&= q^g \prod_{j=1}^{2g} (1 - \alpha_j u) \\
&= q^g \prod_{j=1}^{2g} \qty{ 1 - {\alpha_j \over q}t} \\
&= q^g \prod_{j=1}^{2g} {\alpha_j \over q} \prod_{j=1}^{2g}\qty{ t - {1\over \alpha_j} } \\
&= \prod_{j=1}^{2g} \qty{t - {q\over \alpha_j}}
,\]
where we've pulled out a factor of $-\alpha_j/q$ and
in the last step we've used that $\prod_{j=1}^{2g} \alpha_j = q^g$. 
This follows because the $\alpha_j$ are the roots of $L\perp$, which has even degree, so the product of all of the roots is equal to the constant term of $L\perp$, which is the leading term of $L$, which we showed was $q^g$.

This says that if we take these roots $\alpha_j$ as a multiset and replace each $\alpha_j$ with $q/\alpha_j$, we get the same multiset back.
I.e., this multiset is stable under the involution
\[  
\CC\units &\to \CC\units \\
z &\mapsto {q\over z}
.\]
This almost pairs up the elements of this finite set of roots, except it may have fixed points.
The complex numbers $\alpha$ such that $\alpha = q/\alpha$ are precisely $\pm \sqrt q$.
So group the $\alpha_i^{-1}$ into

- $k$ **pairs** of nonfixed points, where $\alpha_i \neq q/\alpha_i$,
- $m$ points such that $\alpha_i = \sqrt q$,
- $n$ points such that $\alpha_i = -\sqrt q$.

So we'd like to show that $m$ and $n$ are both even, so when we're pairing roots with reciprocals these get paired with themselves.
We know $2k + m + n = 2g$, so $m+n$ is even.
We also know that 
\[  
\prod_{j=1}^{2g} \alpha_j = q^k \qty{\sqrt{q}}^m \qty{-\sqrt q}^n 
= (-1)^n q^{k + {m \over 2} + {n\over 2}} = (-1)^n q^g
.\]
This forces $n$ to be even,

:::



