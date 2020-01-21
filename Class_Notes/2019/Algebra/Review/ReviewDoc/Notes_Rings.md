# Rings

## Definitions

**Lemma:**
Intersections, products, and sums (but not necessarily unions) of ideals are ideals.

**Theorem (Krull):**
Every ring has proper maximal ideals, and any proper ideal is contained in a maximal ideal.

**Definition:**
A ring $R$ is **simple** iff every ideal $I \normal R$ is either $0$ or $R$.

**Definition:**
An element $r\in R$ is **irreducible** iff $r = ab \implies a$ is a unit or $b$ is a unit.

**Definition:**
An element $r\in R$ is **prime** iff $ab \divides r \implies a\divides r$ or $b\divides r$ whenever $a,b$ are nonzero and not units.

**Definition:**
$\mathfrak{p}$ is a **prime** ideal $\iff ab\in \mathfrak p \implies a\in \mathfrak p$ or $b\in \mathfrak p$.

**Definition:**
$\spec(R) = \theset{\pr \normal R \suchthat \pr \text{ is prime}}$ is the **spectrum** of $R$.

**Definition:**
$\mathfrak m$ is **maximal** $\iff I \normalneq R \implies I \subseteq \mathfrak m$.

> Example: Maximal ideals of $R[x]$ are of the form $I = (x - a_i)$ for some $a_i \in R$.

**Definition:**
$\spec_{\text{max}}(R) = \theset{\mm \normal R \suchthat \mm \text{ is maximal}}$ is the **max-spectrum** of $R$.

> Note: nonstandard notation / definition.

**Lemmas (Quotients of Rings):**

- $R/I$ is a domain $\iff I$ is prime,
- $R/I$ is a field $\iff I$ is maximal.
- For $R$ a PID, $I$ is prime $\iff I$ is maximal.

**Lemma (Characterizations of Rings):**

- $R$ a commutative division ring $\implies R$ is a field
- $R$ a finite integral domain $\implies R$ is a field.
- $\FF$ a field $\implies \FF[x]$ is a Euclidean domain.
- $\FF$ a field $\implies \FF[x]$ is a PID.
- $\FF$ is a field $\iff \FF$ is a commutative simple ring.
- $R$ is a UFD $\iff R[x]$ is a UFD.
- $R$ a PID $\implies R[x]$ is a UFD
- $R$ a PID $\implies R$ Noetherian
- $R[x]$ a PID $\implies R$ is a field.

**Lemma:**
Fields $\subset$ Euclidean domains  $\subset$  PIDs $\subset$ UFDs $\subset$ Integral Domains  $\subset$ Rings

- A Euclidean Domain that is not a field: $\FF[x]$ for $\FF$ a field
  - *Proof*: Use previous lemma, and $x$ is not invertible

- A PID that is not a Euclidean Domain: $\ZZ\left[\frac{1 + \sqrt{-19}}{2}\right]$.
  - *Proof*: complicated.

- A UFD that is not a PID: $\FF[x, y]$.
  - *Proof*: $\generators{x, y}$ is not principal

-  An integral domain that is not a UFD: $\ZZ[\sqrt{-5}]$
   - *Proof*: $(2+\sqrt{-5})(2-\sqrt{-5})=9=3\cdot 3$, where all factors are irreducible (check norm).

-  A ring that is not an integral domain: $\ZZ/(4)$
   - *Proof*: $2 \mod 4$ is a zero divisor.

**Lemma:**
In $R$ a UFD, an element $r\in R$ is prime $\iff r$ is irreducible.

> Note: For $R$ an integral domain, prime $\implies$ irreducible, but generally not the converse.
>
> *Example of a prime that is not irreducible:*
> $x^2 \mod (x^2 + x) \in \QQ[x]/(x^2 + x)$. Check that $x$ is prime directly, but $x=x\cdot x$ and $x$ is not a unit.
>
> *Example of an irreducible that is not prime:*
> $3\in \ZZ[\sqrt{-5}]$. Check norm to see irreducibility, but $3 \divides 9 = (2+\sqrt{-5})(2-\sqrt{-5})$ and doesn't divide either factor.

**Lemma:**
If $R$ is a PID, then every element in $R$ has a unique prime factorization.

**Definition:**
A nonzero unital ring $R$ is **semisimple** iff $R \cong \bigoplus_{i=1}^n M_i$ with each $M_i$ a simple module.

**Theorem (Artin-Wedderubrn)**:
If $R$ is a nonzero, unital, *semisimple* ring then $R \cong \bigoplus_{i=1}^m \mathrm{Mat}(n_i, D_i)$, a finite sum of matrix rings over division rings.

> *Corollary:* If $M$ is a simple ring over $R$ a division ring, the $M$ is isomorphic to a matrix ring.

## Nontrivial Properties

**Lemma:**
Every $a\in R$ for a finite ring is either a unit or a zero divisor.

> *Proof:*
> Let $a\in R$ and define $\phi(x) = ax$.
> If $\phi$ is injective, then it is surjective, so $1 = ax$ for some $x \implies x\inv = a$.
> Otherwise, $ax_1 = ax_2$ with $x_1 \neq x_2 \implies a(x_1 - x_2) = 0$ and $x_1 - x_2 \neq 0$, so $a$ is a zero divisor.

## Ideals

### Maximal and Prime Ideals

**Lemma:**
Maximal $\implies$ prime, but generally not the converse.

> *Counterexample*: $(0) \in \ZZ$ is prime since $\ZZ$ is a domain, but not maximal since it is properly contained in any other ideal.

> *Proof:*
> Suppose $\mm$ is maximal, $ab\in \mm$, and $b\not\in \mm$.
> Then there is a containment of ideals $\mm \subsetneq \mm + (b) \implies \mm + (b) = R$.
>
> So
$$
1 = m + rb \implies a = am + r(ab)
,$$
> but $am\in \mm$ and $ab\in \mm \implies a\in \mm$.
>
> $\qed$

**Lemma:**
If $x$ is not a unit, then $x$ is contained in some maximal ideal $\mm$.

> *Proof:*
> Zorn's lemma.

**Lemma:**
$R/\mm$ is a field $\iff \mm$ is maximal.

**Lemma:**
$R/\pr$ is an integral domain $\iff \pr$ is prime.

### Nilradical and Jacobson Radical

**Definition:**
$\mathfrak{N} \definedas \theset{x\in R \suchthat x^n=0\text{ for some } n}$ is the **nilradical** of $R$.

**Lemma:**
The nilradical is the intersection of all **prime** ideals, i.e.
$$
\mathfrak{N}(R) = \intersect_{\mathfrak{p} \in \spec(R)} \mathfrak{p}
$$

> *Proof:*
>
> $\mathfrak{N} \subseteq \intersect \mathfrak{p}$:
> $x \in \mathfrak{N} \implies x^n = 0 \in \mathfrak p \implies x\in \mathfrak{p} \text{ or } x^{n-1}\in\mathfrak p$.
>
> $\mathfrak{N}^c \subseteq \union \mathfrak{p}^c$:
> Define $S = \theset{I\normal R \suchthat a^n\not\in I \text{ for any } n}$.
> Then apply Zorn's lemma to get a maximal ideal $\mm$, and maximal $\implies$ prime.

**Lemma:**
$R/\mathfrak N(R)$ has no nonzero nilpotent elements.

> *Proof:*
\begin{align*}
a + \mathfrak N(R)\text{ nilpotent } &\implies (a+ \mathfrak N(R))^n \definedas a^n + \mathfrak N(R)= \mathfrak N(R) \\
&\implies a^n \in \mathfrak N(R) \\
&\implies \exists \ell \text{ such that } (a^n)^\ell = 0 \\
&\implies a\in \mathfrak N(R)
.\end{align*}

**Definition:**
The **Jacobson radical** is the intersection of all **maximal** ideals, i.e.
$$
J(R) = \intersect_{\mm \in \spec_{\text{max}}} \mm
$$

**Lemma:**
$\mathfrak N(R) \subseteq J(R)$.

> *Proof:*
> Maximal $\implies$ prime, and so if $x$ is in every prime ideal, it is necessarily in every maximal ideal as well.

### Zorn's Lemma

**Lemma**:
A field has no nontrivial proper ideals.

**Lemma:**
If $I\normal R$ is a proper ideal $\iff I$ contains no units.

> *Proof:*
> $r\in R\units \intersect I \implies r\inv r \in I \implies 1\in I \implies x\cdot 1 \in I \quad \forall x\in R$.

**Lemma:**
If $I_1 \subseteq I_2 \subseteq \cdots$ are ideals then $\union_j I_j$ is an ideal.

**Example Application of Zorn's Lemma:**
Every proper ideal is contained in a maximal ideal.

> *Proof:*
> Let $0 < I < R$ be a proper ideal, and consider the set
$$
S = \theset{J \suchthat I   \subseteq J < R}
.$$
>
> Note $I\in S$, so $S$ is nonempty.
> The claim is that $S$ contains a maximal element $M$.
>
> $S$ is a poset, ordered by set inclusion, so if we can show that every chain has an upper bound, we can apply Zorn's lemma to produce $M$.
>
> Let $C \subseteq S$ be a chain in $S$, so $C = \theset{C_1 \subseteq C_2 \subseteq \cdots}$ and define $\hat C = \union_i C_i$.
>
> **$\hat C$ is an upper bound for $C$:**
>
> This follows because every $C_i \subseteq \hat C$.
>
> **$\hat C$ is in $S$:**
>
> Use the fact that $I \subseteq C_i < R$ for every $C_i$ and since no $C_i$ contains a unit, $\hat C$ doesn't contain a unit, and is thus proper.
>
> $\qed$
