# Lecture 14: The Hasse-Weil Zeta Function

Recall the that *Hasse-Weil zeta function* of a one-variable function field $K/\FF_q$ over a finite ground field is defined in the following way: 
let $A_n = A_n(K)$ be the number of effective divisors of degree $n$.
We have proved that $A_n$ is finite, and for $n>2g-2$ we have a formula
\[  
Z(t) = \sum_{n=0}^\infty A_n t^n
= \sum_{D\in \Div^+(K)} t^{\deg(D)} \in \ZZ[[t]]
,\]
which is a formal power series with integer coefficients.

:::{.remark}
Recall that we have proved that it is a rational function of $t$, and in particular when $g=0, \delta = 1$
[^delta_def_reminder] we get
\[  
Z(t) = {1 \over (1-qt)(1-t)}
.\]

We got another expression which isn't fantastic: it involves this $\delta$, which we'll work toward proving is equal to 1.
When $g>1$, we broke the zeta function into two pieces $Z(t) = F(t) + G(t)$.
For divisors of sufficiently high degree, Riemann-Roch tells you what the dimension of the Riemann-Roch space is, and $G(t)$ explains the part coming from divisors of large degree.
We obtained a formula previously for $F(t)$ and $G(t)$, and once we show $\delta=1$ the formula for $G$ will simplify.
For $F(t)$, we specifically had
\[  
F(t) = {1\over q-1} \sum_{0\leq \deg(c) \leq 2g-2} q^{\ell(c) t^{\deg(c)}}
,\]
where the sum is over divisor classes and $\ell$ is the dimension of linear system corresponding to a divisor.
But this isn't a great formula: what are these classes, dhow many are in each degree, and what is the dimension of the Riemann-Roch space?

[^delta_def_reminder]: The *index* of the function field, least positive degree of a divisor.

:::

:::{.remark}
This is analogous to the Dedekind zeta function of a number field $K$, in which case
\[  
\zeta_K(s) = \sum_{T\in \ell(\ZZ_k)}^\bullet \abs{\ZZ_k/I}^{-s}
,\]
which will be covered in a separate lecture on *Serre zeta functions*.
:::

:::{.theorem title="F.K. Schmidt"}
For all $K/\FF_q$, we have $\delta = I(K) = 1$ where $I$ is the index.
:::

This will follow from the associated, but it much weaker.
However, this is one of the facts we'd like to establish to use to *prove* the Riemann hypothesis.

:::{.remark}
Pete studied this in 2004 and found that every $I\in \ZZ^+$ arises as the index of a genus one function field $K/\QQ$.
:::

Notation: for $n\in\ZZ^+$, let $\mu_n$ denote the $n$th roots of unity in $\CC$.

:::{.lemma title="?"}
For $m, r\in \ZZ^+$, set $d \da \gcd(m, r)$.
Then
\[  
\qty{1-t^{mr/d}}^d = \prod_{\xi\in \mu_r}  1 - (\xi t)^m
.\]
:::

:::{.proof title="?"}
In $\CC[x]$, we  have
\[  
(X^{r/1} - 1)^d = \prod_{\xi\in \mu_r}(X - \xi^m)
,\]
where both sides are monic polynomials whose roots include the $(r/d)$th roots of unity, each with multiplicity $d$.
On the LHS, the distinct roots are the $r/d$th roots of unity, then raising to the $d$th power gives them multiplicity $d$.
On the RHS, this is an exercise in cyclic groups: consider the $n$th power map on $\ZZ/r\ZZ$ and compute its image and kernel.
As $\xi$ ranges over $r$th roots of unity, $\xi^m$ ranges over all $r/d$th roots of unity, each occurring with multiplicity $d$.

Substituting $X= t^{-m}$ and multiplying both sides by $t^r$ yields the original result.[^special_case]

[^special_case]: 
Special case: set $m=r$, so $d=r$, then the RHS is $r$ copies of 1.

:::

## Comparing Zeta Functions After Extending Scalars

Next up, we want to compare the zeta function $Z(t)$ for a function field over $\FF_q$ to the zeta function obtained when extending scalars to $\QQ^r$.

:::{.proposition title="Factorization identity for the zeta function"}
Let $K/\FF_q$ be a function field, $r\in \ZZ^+$, and take the compositum $K_r$ of $K$ and $\FF_q^r$ viewed as a function field over $\FF_q^r$.
Let $Z(t)$ be the zeta function of $K/\FF_q$ and $Z_r(t)$ the zeta function of $K_r/\FF_q^r$.
Then
\[  
Z_r(t^r) = \prod_{\xi \in \mu_r} Z(\xi t)
.\]
:::

:::{.proof title="?"}
We have an Euler product formula
\[  
Z(t) = \prod_{p\in \Sigma(K/\FF_q)} (1 - t^{\deg(p)})^{-1} 
.\]
where the sum is over places of the function field.[^proving_euler_prod_rmk]

[^proving_euler_prod_rmk]: 
Proving this Euler product formula might show up in a separate lecture, but it is not any more difficult than proving it for the Riemann zeta function.

:::{.exercise}
Why is this product expansion true?
Write as a geometric series with ratio $t^{\deg(p)}$.
Here just expand each summand to get 
\[  
Z(t) = \prod_p \sum_{j=1}^\infty t^{j\deg(p)}
.\]
Multiplying this out and collecting terms is in effect multiplying out the prime divisors to get effective divisors.
:::

We now use the result about splitting that was stated (but not proved): 

:::{.claim}
If $p\in \Sigma_m(K/\FF_q)$ is a degree $n$ place and $r\in \ZZ^+$, then there exist precisely 
\[
d\da \gcd(m, r)
\]
places $p^r$ of $K_r$ lying over $p$, where each place $p^r$ has degree $m/d$.
:::

In order to compare $Z_r(t)$ to $Z(t)$, we collect the $p'$ into ones that have the same fiber.
We then can range over all $p$ first, then over all $p'$ in the fiber above $p$, yielding
\[  
Z_r(t^r) = \prod_{p\in \Sigma(K_{/\FF_q})} \prod_{p'/p} {1 \over 1 - t^{r\deg(p')}}
.\]

Using the Euler product identity, we have for $p\in \Sigma_m(K_{/\FF_q})$ and $d\da \gcd(m, r)$ we can express the innermost product as

\[  
\prod_{p'/p} {1 \over 1 - t^{r\deg(p')}} = (1 - t^{rm/d})^{-d} = \prod_{\xi\in \mu_r} (1- (\xi t)^m)^{-1}
,\]
where we've used the fact that we know there are exactly $d$ places and each contributes the same degree in the first expression.
By using $-d$ in the previous lemma, we get the last term.
Combining all of this yields
\[  
Z_r(t^r) 
= \prod_{\xi \in \mu_r} \prod_{p\in \Sigma(K_{/\FF_q})} (1- (\xi t)^{\deg p})^{-1} 
= \prod_{\xi \in \mu_r} Z(\xi t)
.\]
:::


:::{.remark}
Similar to taking an abelian extension of number fields and noting that the Dedekind zeta function factors into a finite product: the original zeta function, and in general, Hecke $L$ functions.
If you do this for an abelian number field over $\QQ$, then the Dedekind zeta function of the upstairs number field will be a finite product where one of the terms in the Riemann zeta function and the others are Dirichlet $L$ functions associated to certain Dirichlet characters.
So this is some (perhaps simpler) version of that.
:::

## Proof That $\delta = 1$

We can finally prove Schmidt's theorem that $\delta = 1$:

:::{.proof title="$\delta = 1$"}
Take a $\delta$th root of unity $\xi \in \mu_\delta$.
Then for all places $p \in \Sigma(K_{/\FF_q})$, $\delta$ divides $\deg p$ by definition since it is a gcd, and so we have
\[  
Z(\xi t) 
= \prod_{p\in \Sigma(K_{/\FF_q})} (q - (\xi t)^{\deg p} )^{-1} 
= \prod_{p\in \Sigma_{K_{\FF_q}}} {1 \over 1 - t^{\deg p}} = Z(t)
,\]
using the fact that $\xi^{\deg p} = 1$.

We're now in a situation where we can apply the previous proposition, which gives the following identity for the zeta function over the degree $\delta$ extension:
\[  
Z_{\delta}(t^\delta) = \prod_{\xi \in \mu_\delta} Z(\xi t) = Z(t)^\delta
.\]

Our previous formulas show that any zeta function for a 1-variable function field over a finite field has a simple pole at $t=1$, and since $\ord_{t-1}(t^\delta) = 0$, we get
\[  
-1 = \ord_{t-1} Z_\delta(t^\delta) = \ord_{t-1} Z(t)^\delta) = -\delta
,\]
where for the first equality we're using the fact that the $(t-1)\dash$adic valuation of $Z_\delta(t^\delta)$ is one, and for the RHS, the ordinary zeta function has a simple pole at $t=1$ and since we have a valuation, raising something to the $\delta$th power is just $\delta$ times the original valuation.

:::

There is some modest representation theory (character theory) that shows up when looking at zeta functions of abelian extensions.

:::{.remark}
We can also conclude that every genus zero function field $\kfq$ is isomorphic to $\FF_q(t)$ and thus rational, since such a function field rational iff it has index one.
Why?
By Riemann-Roch, index one implies existence of a divisor of degree one, and taking a genus zero curve says that every divisor of nonnegative degree is linearly equivalent to an effective divisor.
Thus if you have a divisor of degree one, you have an effective divisor of degree one, which makes the function field a degree one extension of a rational function field.
:::

:::{.exercise title="?"}
Let $K = \FF_q(t)$, then show that $g=0, \delta = 1$, and
\[  
Z(t) = {1 \over (1-qt)(1-t)}
.\]

> Hint: go back to complicated formulas and substitute $\delta=1$ to simplify things.

:::

Thus for rationality of the zeta function, we can get rid of the $\delta$ cluttering up formulas.


## The Functional Equation

Going back to the plan, we wanted to show

1. Rationality: $Z(t) \in \QQ(t)$ and thus $Z(t) = P(t) / Q(t)$,

2. Understand the degrees of $P$ and $Q$ in terms of the genus, and

3. Ask about the roots of $P(t)$ to understand the analog of the Riemann Hypothesis for Dedekind zeta functions

We'll want to establish a functional equation, as is the usual yoga for zeta functions, since it helps establish a meromorphic continuation to $\CC$.
The algebraic significance of the functional equation is that it aids in understand several equivalent packets of data:

- The number of effective divisors of a given degree,

- The number of places of a given degree,

- The number of rational points over each finite degree extension of the base field.


:::{.theorem title="Functional Equation"}
Let $\kfq$ be a function field of genus $g$, then
\[  
Z(t) = q^{g-1} t^{2g-2} Z\qty{1\over qt}
.\]
:::

:::{.proof title="?"}
For $g=0$, we know that 
\[  
Z(t) = {1 \over (1-t)(1-qt)}
,\]
and plugging in ${1\over qt}$ is a straightforward calculation.
So assume $g\geq 1$.

The idea was that we wrote $Z(t) = F(t) + G(t)$.
The $F(t)$ piece came from summing over divisor classes of degree between $0$ and $2g-2$ and recording the dimension of the associated linear system.
The tricky piece $G(t)$ came from summing an infinite geometric series to get a more innocuous closed-form expression of a rational function.
So the strategy here is to separately establish the functional equation for each of $F$ and $G$ separately.
How to do this: for $g=0$, there was no $F(t)$ piece. 
If we have a closed form it's just a computational check.
For $F(t)$, we'll use our greatest weapon and dearest ally, the Riemann-Roch theorem.
This will provide the extra symmetry we need.

We essentially already applied Riemann-Roch to $G(t)$ to get the closed-form expression, but we haven't applied it to the small degree divisors.
This doesn't tell you what the dimension is, but rather gives you a duality result: ti gives the dimension in terms of the dimension of a complementary divisor.

Take a canonical divisor $\mathcal{K} \in \div(K)$, so $\deg \mathcal{K} = 2g-2$.
As $C$ runs through all divisor classes of $\mathcal{K}$ of degree $d$ with $0\leq d \leq 2g-2$, so does the complementary divisor $\mathcal{K}-C$.

We can thus write

\[  
(q-1) F(t) 
&= \sum_{0 \leq \deg C \leq 2g-2 } q^{\ell(C)} t^{\deg(C)} \\
(q-1)G(t)
&= h \qty{ {q^g t^{2g-1} \over 1-qt} - {1 \over 1-t} }
.\]

We can thus compute
\[  
(q-1) F\qty{1\over qt}
&= \sum_{0\leq \deg C \leq 2g-2} q^{\ell(C)} \qty{1\over {qt} }^{\deg C} \\
&= \sum_{0\leq \deg C \leq 2g-2} q^{\ell(\mathcal{K} - C)} \qty{1\over {qt} }^{2g-2-\deg C}
,\]
where in the second step we've exchanged $C$ for $\mathcal{K}- C$ and noted that $\deg(\mathcal{K}-C) = 2g-2-\deg(C)$.
We now do the calculation another way,
\[  
(q-1) F(t) 
&= \sum_{0\leq \deg C \leq 2g-2} q^{\ell(C)} t^{\deg C} \\
&=
q^{g-1} t^{2g-1} \sum_{0\leq \deg C \leq 2g-2} q^{\deg(C) - (2g-2) + \ell(\mathcal{K}-C)} t^{\deg(C) - (2g-2)} && \text{by Riemann-Roch} \\
&= q^{g-1} t^{2g-2} \sum_{0 \leq \deg C \leq 2g-2} q^{\ell(\mathcal{K} - C)} \qty{1\over qt}^{\deg(\mathcal{K} - C)} \\
&= q^{g-1} t^{2g-2} (q-1) F\qty{1\over qt}
.\]
where we've used Riemann-Roch to find that $\ell(C) = \ell(\mathcal{K}-C) + \deg(C) - g + 1$.
Cancelling the common factor of $(q-1)$ establishes the functional equation for $F(T)$.

Now using the fact that $\delta = 1$, we have
\[  
(q-1)G(t) = h \qty{ {q^g t^{2g-1} \over 1-qt} - {1\over 1-t} }
,\]
and thus
\[  
(q-1) q^{g-1} t^{2g-2} G\qty{1\over qt}
&= hq^{g-1} t^{2g-2} \qty{q^g \qty{1\over qt}^{2g-1} - {1\over 1 - q \qty{1\over qt}} - {1\over 1 - {1\over qt}} } \\
&=
h\qty{ {-1\over 1-t} + {q^g t^{2g-1} \over 1-qt}} \\
&= (q-1) G(t)
,\]
which establishes the functional equation for $G(t)$.
:::

## The $L$ Polynomial

:::{.definition title="The $L$ Polynomial"}
\[  
L(t) \da (1-t) (1-qt)  Z(t) \in \ZZ[t]
.\]
:::

This clears the denominators in $Z(t)$, so this is now a polynomial of degree at most $2g$.
We can thus rewrite
\[  
Z(t) = {L(t) \over (1-t)(1-qt)} = {a_{2g} t^{2g} + \cdots + a_1 t + a_0 \over (1-t)(1-qt)}
.\]
Note that if we know $L(t)$, then we know $Z(t)$, and in particular we would like to know what the coefficients $a_j$ are.
We'll be able to determine $a_0 = 1$ in all cases, as well as $a_{2g}$ in all cases pretty easily.
So it looks like it only remains to compute $a_1, \cdots, a_{2g-1}$, but the functional equation will give a "mirror" relation between pairs of coefficients.
The upshot is that the functional equation shows that we only need to know $a_1, \cdots, a_g$ to completely determine $Z(t)$.
If $g=1$, just one coefficient suffices.
It turns out that $a_1$ will be $q+1$ minus the number of degree one places.

:::{.question}
\envlist

- What are the constraints on these quantities? 

- Can we write the zeta function in a nice way?

- Exactly what do we need to compute to determine it?

:::


It will turn out that computing the number of rational points over $\FF_{q}, \FF_{q^2}, \cdots, \FF_{q^g}$ will be possible.
For example, for a hyperelliptic curve, we'll have an explicit defining equation and can make an explicit point count, and you only need $g$ of them.
