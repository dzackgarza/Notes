# Ben's Talk: Eskin's Ramified Coverings of a Torus

Today: Section 2.
Main theorem: a certain generating function is quasimodular.

Consider a torus $T$ with marked points $Z = \theset{z_1, \cdots z_s}$ with a map $\sigma: \Sigma \to T$ which is *unramified* outside of $Z$.

![Image](figures/2020-01-30-14:04.png)

Then $\sigma$ is determined by the representation $\pi_1(T\setminus Z, \ast) \to \Aut(\sigma\inv(\ast)) \cong S_d$ if $\sigma$ is a degree $d$ cover.
There is a correspondence

\begin{align*}
\correspond{\text{d-fold covers ramified over } \theset{z_i}} 
\iff
\hom(\pi_1(T\setminus Z, \ast), S_d)
.\end{align*}

Fix $C_1, \cdots, C_s$ conjugacy classes in $S_d$, and let $H_d(C_1, \cdots, C_s)$ be the homomorphisms sending small loops around $z_i$ to $C_i$.

![Image](figures/2020-01-30-14:09.png)\

Then cycle types correspond to branching orders over points.

One way to count d-fold covers is to look at the weights of $\Aut(\sigma)$.
We define

\begin{align*}
\mathrm{Cov}_d (C_1, \cdots, C_s) = \sum_{\sigma \in H_d(C_i) / S(d)} \frac{1}{\abs{\Aut(\sigma)}} = \frac{\abs{H^d(C_1, \cdots, C_2)}}{d!}
.\end{align*}

This just yields a number, so we can define a generating function:

\begin{align*}
\mathrm{Cov}(C_1, \cdots, C_s) = \sum_{d=0}^\infty q^d \mathrm{Cov}_d(C_1, \cdots, C_s)
.\end{align*}

**Important note:**
To make sense of $C_i$ in all $S^d$, write $C_i = (m_{i1}, \cdots , m_{ik})$ and set $\mathrm{Cov}_d(C_i) = 0$ iff $i_k < d$, and otherwise pad with 1s to get $C_i \definedas (m_{i1}, \cdots, m_{ik}, 1, 1, \cdots)$.

*Remark:*
The generating function counts all (possibly) disconnected covers.
Example: $\mathrm{Cov}(\wait)$ counts all unramified covers, and $\phi(C_1, \cdots C_s)$ counts connected covers.
These generating functions will end up being quasimodular.

**Definition**:
Set $H_d^1(C_1, \cdots, C_S) \subset H_d(C_1, \cdots, C_S)$ be the degree $d$ coverings *without* unramified components.

**Definition**:
Set $\mathrm{Cov}'(C_1, \cdots, C_S)= \sum q^d \frac{\abs{H_d^1(C_1, \cdots, C_s)}}{d!}$.

This yields the generating function for number of coverings without unramified components.

**Lemma**:
$\mathrm{Cov}' (C_1, \cdots, C_S) = \mathrm{Cov}(C_1, \cdots, C_S) / \mathrm{Cov}()$.

*Sketch of proof:*
Look at coefficients in the expansion

\begin{align*}
\abs{H_d(C_1, \cdots, C_S)} = \sum_{k=0}^d {d\choose k} \abs{H_k(C_1, \cdots , C_S)} \cdot \abs{H_{d-k}()}
.\end{align*}

Recall that $\mathrm{Cov}_d(C_1, \cdots C_S)$ correspond to $S_d$ representations of $\pi_1(T\setminus Z)$, and we can get a presentation 
$$\pi_1(T\setminus Z) = \generators{\sigma, \gamma, g_i \suchthat [\omega,\gamma] \prod g_i = e}
.$$

![Image](figures/2020-01-30-14:33.png)\

> This just comes from doing one full loop around the outside square, which should be equivalent (up to orientation) to going around all 3 punctures.

**Definition:**
Conjugacy classes corresponds to partitions of $d$.

**Definition:**
For $C$ a conjugacy class correspond to a partition $\lambda'$ in $S_d$. 
For any partition $\lambda$, let $f_C(\lambda) = \# C \chi^\lambda(C) / \dim \lambda$, where $\chi^\lambda$ is the irreducible representation associated to $\lambda$ (note that this is a rescaling of a row of the character table, since irreducible reps happen to correspond to conjugacy classes for $S_d$).
This is a class function, so $\chi^\lambda(C)$ is its value on any $c\in C$, and $\dim \lambda \definedas \chi^\lambda(1)$.

**Proposition:**
$\mathrm{Cov}_d(C_1, \cdots, C_S) - \sum_{\abs \lambda = d} \prod_{i=1}^S f_{C_i}(\lambda)$.

*Proof:*
Let $\prod C_i = \prod \sum_{a_j\in C_i} a_j \in Z(\CC[S_d])$.
Why? Commutating elements reindexes the sum here.

We also have $\sum_{g, h} [g, h] \prod C_i \in Z(\CC([S_d]))$, since $[g ,h]^k = [g^k, h^k]$, which again just reindexes the sum.

We'll pull out a factor of $\frac 1 {d!} [\id]$, and consider what the coefficient of $[\id]$ is in the group algebra.

Thus $\frac{1}{d!} [\id] = \frac{1}{(d!)^2} \tr_{\text{reg}}\qty{ \sum [g, h] \prod C_i  }$, where we consider the regular representation: multiplying by elements of $g$ is a fixed-point free action, so these are traceless (no terms on the diagonal) whereas the trace of the identity is exactly the dimension of the regular representation, which is $d!$ (?).

Thus we define $\tr_{\text{reg}}(\wait) = \sum_{\lambda} (\dim \lambda) \tr_\lambda(\wait)$.

Note that $\rho: S_d \to \GL(V)$ extends to $\rho: \CC[S_d] \to \endo(V)$, and thus by Schur's Lemma, the image of the center will commute with every endomorphism.

We get a formula:

\begin{align*}
\frac{[\id]}{d!} 
&= \frac{1}{(d!)^2} \sum_{\abs \lambda = d} \dim \lambda \tr_{\lambda}(\sum [g, h] \prod_i C_i) \\
&= \sum_{\abs \lambda = d} \frac{(\dim \lambda)^2}{(\abs \lambda !)^2} W(\lambda) \tr_\lambda(\prod C_i)
.\end{align*}

where $W(\lambda)$ is a scalar $\sum [g, h]$ by the above observation.

Recall that $f_c(\lambda) = \# C \frac{\chi^\lambda(C)}{\dim \lambda}$ and thus

\begin{align*}
\frac{[\id]}{d!} = \sum_{\abs \lambda = d} \qty{\frac{\dim \lambda}{\abs \lambda}}^2 W(\lambda) \prod f_{C_i}(\lambda)
.\end{align*}

**Fact:**
$W(\lambda) = \qty{\frac{\abs \lambda !}{\dim \lambda}}^2$.

## Quasimodularity

**Fact:**
The functions $f_C(\lambda)$ are polynomial functions in the following way:

**Definition:**
Let $\Lambda^*(n)$ be the algebra of "shifted symmetric functions", i.e. symmetric functions in the $\lambda_i - i$.

> Subtlety: it's necessary to order to partition in weakly decreasing order of the numbers occurring!
> Example: $p(\lambda) = (\lambda_1 - 1)(\lambda_2 - 2)$, but swapping $\lambda_1 \iff \lambda_2$ results in $((\lambda_2 - 2) + 1)((\lambda_1 - 1) - 1)$ is no longer symmetric in $\lambda_i - i$.

Then define $\Lambda^* = \lim_{\from} \Lambda^*(n)$.

> Schur-Weyl duality: bijects representations of $\GL_n$ and $S_n$.

Then $f_c \in \Lambda^*$ and the degree of $f_C$ is exactly the number of non-fixed points of any permutation from $C$.

From the paper,

\begin{align*}
\mathrm{Cov}(C_1, \cdots, C_S) &= \sum_\lambda q^{\abs \lambda} \prod_i f_{C_i}(\lambda) \\
\mathrm{Cov}() &= \sum a^{\abs \lambda} = \qty{ \prod_{n\geq 1} 1-q^n }\inv = (q)_\infty\inv
.\end{align*}

> Note: the partition functions appears!

For any $F\in \Lambda^*$, we set $\generators{F}_q = (q)_\infty \sum_\lambda q^{\abs \lambda} F(\lambda)$ and 
$$
\generators{F_1 \mid F_2 \mid \cdots \mid F_S}_q = \sum_{\alpha\in \pi_S} (-1)^{\phi(\alpha) - 1} (\phi(\alpha) - 1)! \prod_{k=1}^{\phi(\alpha)} \generators{\prod_{i\in\alpha_j} F_i}_q
.$$

> This comes from Möbius inversion, and is a form of inclusion-exclusion.

**Proposition:**
$\mathrm{Cov}'(C_1, \cdots, C_S) = \generators{f_{C_1} \cdots f_{C_S}}_q$ and $\phi(C_1, \cdots, C_S) = \generators{f_{C_1} \mid \cdots \mid f_{C_S}}_q$.

**Theorem:**
For all $F\in \Lambda^*$, $\generators{F}_q$ is a quasimodular form, i.e in $\CC[E_2, E_4, E_6]$ where $E_i(q) = \const + \sum \sigma+{i-1} (n) q^n$.
