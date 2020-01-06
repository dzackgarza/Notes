# Group Theory

**Definition (Centralizer)**:
$$
C_G(H) = \theset{g\in G \suchthat ghg\inv = h ~\forall h\in H}
$$

**Definition (Normalizer)**:
$$
N_G(H) = \theset{g\in G \suchthat gHg\inv = H}
$$

**Lemma:**
$C_G(H) \leq N_G(H)$

**Lemma:**
The size of the conjugacy class of $H$ is the index of the centralizer, i.e.
$$
\abs{\theset{gHg\inv \suchthat g\in G}} = [G: C_G(H)]
.$$

**Lemma ("The Fundamental Theorem of Cosets")**:
$$
aH = bH \iff a\inv b \in H \text{ or } aH \intersect bH = \emptyset
$$

Definition:
$[x, y] = x\inv y\inv xy$ is the **commutator**, and $[G, G] \definedas \theset{[x, y] \suchthat x,y\in G}$ is the **commutator subgroup**.

**Lemma:**
$$
[G,G] \leq H \text{ and } H \normal G \implies G/H \text{ is abelian. }
$$


## Finitely Generated Abelian Groups

Invariant factor decomposition:
$$
G \cong \ZZ^r \times \prod_{j=1}^m \ZZ/(n_j)
\quad \text{ where } n_1 \divides \cdots \divides n_m
.$$

**Going from invariant divisors to elementary divisors:**

- Take prime factorization of each factor
- Split into coprime pieces

*Example:*
\begin{align*}
&\ZZ/(2) \oplus \ZZ/(2) \oplus \ZZ/(2^3\cdot 5^2\cdot 7) \\
\cong
&\ZZ/(2) \oplus \ZZ/(2)\oplus
\ZZ/(2^3) \oplus \ZZ/(5^2) \oplus \ZZ/(7) \\
.\end{align*}


**Going from elementary divisors to invariant factors:**

- Bin up by primes occurring (keeping exponents)
- Take highest power from each prime as *last* invariant factor
- Take highest power from all remaining primes as next, etc

*Example:*
Given the invariant factor decomposition
\begin{align*}
G = {\mathbb{Z}_{2}\times\mathbb{Z}_{2}\times\mathbb{Z}_{2}\times\mathbb{Z}_{3}\times\mathbb{Z}_{3}\times\mathbb{Z}_{25}},
.\end{align*}

| $p = 2$  | $p= 3$  | $p =5$ |
|---|---|---|
|  $2,2,2$ |  $3,3$ | $5^2$

$\implies n_m = 5^2 \cdot 3 \cdot 2$

| $p = 2$  | $p= 3$  | $p =5$ |
|---|---|---|
|  $2,2$ |  $3$ | $\emptyset$

$\implies n_{m-1} = 3 \cdot 2$

| $p = 2$  | $p= 3$  | $p =5$ |
|---|---|---|
|  $2$ |  $\emptyset$ | $\emptyset$

$\implies n_{m-2} = 2$

and thus
\begin{align*}
G \cong \ZZ/(2) \oplus \ZZ/(3\cdot 2) \oplus \ZZ/(5^2 \cdot 3 \cdot 2)
.\end{align*}

## The Symmetric Group

**Definitions:**

- A cycle is **even** $\iff$ product of an *even* number of transpositions.

  - A cycle of even *length* is **odd**

  - A cycle of odd *length* is **even**

**Definition**
The **alternating group** is the subgroup of **even** permutations, i.e.
$A_n \definedas \theset{\sigma \in S_n \suchthat \sign(\sigma) = 1}$ where $\sign(\sigma) = (-1)^{m}$ where $m$ is the number of cycles of even length.

>  *Corollary:*
Every $\sigma \in A_n$ has an even number of *odd* cycles (i.e. an even number of *even-length* cycles).

> *Example:*
\begin{align*}
A_4 =
&\{\id, \\
&(1,3)(2,4),
(1,2)(3,4),
(1,4)(2,3), \\
& (1,2,3),
(1,3,2), \\
& (1,2,4),
(1,4,2), \\
& (1,3,4),
(1,4,3), \\
& (2,3,4),
(2,4,3)\}
.\end{align*}

**Lemmas:**

- The transitive subgroups of $S_3$ are $S_3, A_3$
- The transitive subgroups of $S_4$ are $S_4, A_4, D_4, \ZZ_2^2, \ZZ_4$.
- For $n=4, S_n$ has two normal subgroups: $A_4, \ZZ_2^2$.
- For $n\geq 5, S_n$ one normal subgroup: $A_n$.
- $Z(S_n) = 1$ for $n\geq 3$
- $Z(A_n) = 1$ for $n\geq 4$
- $[S_n, S_n] = A_n$
- $[A_4, A_4] \cong \ZZ_2^2$
- $[A_n, A_n] = A_n$ for $n\geq 5$
- $A_n$ is *simple* for $n\geq 5$.

## Counting Theorems

**Lagrange's Theorem**:

$$
H \leq G \implies \abs H \divides \abs G
.$$

*Corollary*:
The order of every element divides the size of $G$, i.e.
$$
g\in G \implies o(g) \divides o(G) \implies g^{\abs G} = e
.$$

> **Warning:**
Rhere does **not** necessarily exist $H \leq G$ with $\abs H = n$ for every $n \divides \abs{G}$.
>
> Counterexample:
> $\abs{A_4} = 12$ but has no subgroup of order 6.

**Cauchy's Theorem**:

For every prime $p$ dividing $\abs{G}$. there is an element (and thus a subgroup) of order $p$.

> This is a partial converse to Lagrange's theorem.

**Notation:**
For a group $G$ acting on a set $X$,

- $G\cdot x = \theset{g\actson x \suchthat g\in G} \subseteq X$ is the orbit

- $G_x = \theset{g\in G \suchthat g\actson x = x} \subseteq G$ is the stabilizer

- $X/G \subset \mathcal P(X)$ is the set of orbits

- $X^g = \theset{x\in X \suchthat g\actson x = x} \subseteq X$ are the fixed points

**Orbit-Stabilizer**:
$$
\abs{G\cdot x} = [G: G_x] = \abs{G} / \abs{G_x}\quad \text{if $G$ is finite}
$$

> Mnemonic: $G/G_x \cong G\cdot x$.

### Examples of Orbit-Stabilizer

1. Let $G$ act on itself by conjugation.

- $G \cdot x$ is the **conjugacy class** of $x$

- $G_x = Z(x) \definedas C_G(x) = \theset{g \suchthat [g, x] = e}$, the **centralizer** of $x$.

- $G^g$ (the fixed points) is the **center** $Z(G)$.

> *Corollary:*
> The size of a conjugacy class is the index of the centralizer.
>
> *Corollary*: the **Class Equation**:
$$
\abs{G} = \abs{Z(G)} + \sum_{\substack{\text{One $x_i$ from} \\ \text{each conjugacy} \\ \text{class}}} [G: Z(x_i)]
$$

1. Let $G$ act on $S$, its set of *subgroups*, by conjugation.

- $G\cdot H = \theset{gHg\inv}$ is the **set of conjugate subgroups** of $H$

- $G_H = N_G(H)$ is the **normalizer** of in $G$ of $H$

- $S^G$ is the set of **normal subgroups** of $G$

3. For a fixed proper subgroup $H< G$, let $G$ act on its cosets $G/H = \theset{gH\suchthat g\in G}$ by left-multiplication.

- $G\cdot gH = G/H$, i.e. this is a *transitive* action.

- $G_{gH} = gHg\inv$ is a *conjugate subgroup* of $H$

- $(G/H)^G = \emptyset$

> *Application:* If $G$ is simple, $H < G$ proper, and $[G:H] = n$, then there exists an injective map $\phi: G \injects S_n$.
>
> *Proof:* This action induces $\phi$; it is nontrivial since $gH = H$ for all $g$ implies $H = G$; $\ker \phi \normal G$ and $G$ simple implies $\ker \phi = 1$.

**Burnside's Formula:**
$$
\abs{X/G} = \frac{1}{\abs G }\sum_{g\in G} \abs {X^g}
.$$


### Sylow Theorems

**Notation**:
For any $p$, let $\mathrm{Syl}_p(G)$ be the set of Sylow$\dash p$ subgroups of $G$.

Write

- $\abs{G} = p^n m$ where $(m, p) = 1$,
- $S_p$ a Sylow$\dash p$ subgroup, and
- $n_p$ the number of Sylow$\dash p$ subgroups.

**Definition**:
A $p\dash$group is a group $G$ such that every element is order $p^k$ for some $k$.
If $G$ is a finite $p\dash$group, then $\abs G = p^j$ for some $j$.

> **Lemma:**
> $p\dash$groups have nontrivial centers.

Some useful facts:

- Coprime order subgroups are disjoint, or more generally $\ZZ_p, \ZZ_q \subset G \implies \ZZ_p \intersect \ZZ_q = \ZZ_{(p,q)}$.

- The Chinese Remainder theorem: $(p, q) = 1 \implies \ZZ_p \times \ZZ_q \cong \ZZ_{pq}$


### Sylow 1 (Cauchy for Prime Powers)

\begin{align*}
\forall p^n \text{ dividing } \abs{G} \quad \text{ there exists a subgroup of size } p^n
.\end{align*}

> If $\abs G = \prod p_i^{\alpha_i}$, then there exist subgroups of order $p_i^{\beta_i}$ for every $i$ and every $0 \leq \beta_i \leq \alpha_i$.
> In particular, Sylow $p\dash$subgroups always exist.

### Sylow 2 (Sylows are Conjugate)

All sylow$\dash p$ subgroups $S_p$ are conjugate, i.e.
\begin{align*}
S_p^1, S_p^2 \in \mathrm{Syl}_p(G) \implies \exists g \text{ such that } g S_p^1g\inv = S_p^2
.\end{align*}
