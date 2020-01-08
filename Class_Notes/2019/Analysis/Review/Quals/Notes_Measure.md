# Measure Theory

**Useful Technique:**
$s = \inf\theset{x\in X} \implies$ for every $\varepsilon$ there is an $x\in X$ such that $x \leq s + \varepsilon$.

**Useful Techniques**:
Always consider bounded sets, and if $E$ is unbounded write $E = \union_n B_n(0) \intersect E$ and use countable subadditivity or continuity of measure.

**Lemma:**
Every open subset of $\RR$ (resp $\RR^n$) can be written as a unique countable union of disjoint (resp. almost disjoint) intervals (resp. cubes).

**Definition**:
The outer measure of a set is given by
\begin{align*}
m_*(E) = \inf_{\substack{\theset{Q_i} \rightrightarrows E \\ \text{closed cubes}}} \sum \abs{Q_i}
.\end{align*}

**Lemma (Properties of [Outer] Measure)**:

- Montonicity: $E\subseteq F \implies m_*(E) \leq m_*(F)$.
- Countable Subadditivity: $m_*(\union E_i) \leq \sum m_*(E_i)$.
- Approximation: For all $E$ there exists a $G \supseteq E$ such that $m_*(G) \leq m_*(E) + \varepsilon$.
- Disjoint* Additivity: $m_*(A \disjoint B) = m_*(A) + m_*(B)$. 
  
	> Note: this holds for outer measure **iff** $\mathrm{dist}(A, B) > 0$.

**Lemma (Subtraction of Measure):**
$m(A) = m(B) + m(C)$ and $m(C) < \infty$ implies that $m(A) - m(C) = m(B)$.

**Lemma (Continuity of Measure):**
\begin{align*}
E_i \nearrow E &\implies m(E_i) \to m(E) \\
m(E_1) < \infty \text{ and } E_i \searrow E &\implies m(E_i) \to m(E)
.\end{align*}


**Lemma:**
Lebesgue measure is translation and dilation invariant.

> *Proof:* 
> Obvious for cubes; if $Q_i \rightrightarrows E$ then $Q_i + k \rightrightarrows E + k$, etc.

**Theorem (Non-Measurable Sets)**:
There is a non-measurable set.

> *Proof:*
>
> - Use AOC to choose one representative from every coset of $\RR/\QQ$ on $[0, 1)$, which is countable, and assemble them into a set $N$
> - Enumerate the rationals in $[0, 1]$ as $q_j$, and define $N_j = N + q_j$. These intersect trivially.
> - Define $M \definedas \disjoint N_j$, then $[0, 1) \subseteq  M \subseteq [-1, 2)$, so the measure must be between 1 and 3.
> By translation invariance, $m(N_j) = m(N)$, and disjoint additivity forces $m(M) = 0$, a contradiction.


**Lemma (Borel Characterization of Measurable Sets)**

If $E$ is Lebesgue measurable, then $E = H \disjoint N$ where $H \in F_\sigma$ and $N$ is null.

> **Useful technique:** $F_\sigma$ sets are Borel, so establish something for Borel sets and use this to extend it to Lebesgue.

**Lemma:**
\begin{align*}
\limsup_n A_n = \intersect_n \union_{j\geq n} A_j&= \theset{x \suchthat x\in A_n \text{ for inf. many $n$}}  \\
\liminf_n A_n = \union_n \intersect_{j\geq n} A_j &= \theset{x \suchthat x\in A_n \text{ for all except fin. many $n$}}  \\
.\end{align*}

**Lemma:**
If $A_n$ are all measurable, $\limsup A_n$ and $\liminf A_n$ are measurable.

> *Proof:* 
> Measurable sets form a sigma algebra, and these are expressed as countable unions/intersections of measurable sets.

**Lemma (Borel-Cantelli)**:

Let $\{E_k\}$ be a countable collection of measurable sets.
Then
$$
\sum_k m(E_k) < \infty \implies \text{ almost every } x\in \RR \text{ is in at most finitely many } E_k
.$$

**Application:**
\begin{align*}
m\left(\theset{x \text{ such that $\exists$ inf. many $\frac p q$ with } \left|x-\frac{p}{q}\right| \leq \frac{1}{q^{3}}}\right) = 0
.\end{align*}

> *Proof:*
> Write $E_j$ to be the above set with $p, q$ replaced by $p_j, q_j$ where $r_j = \frac {p_j}{q_j}$ is an enumeration of $\QQ$, then $m(E_j) \leq \frac{2}{q^3}$ and $\sum \frac{1}{q^3} < \infty$.


**Theorem (Egorov)**:

Let $E \subseteq \RR^n$ be measurable with $m(E) > 0$ and $\theset{f_k: E \to \RR}$ be measurable functions such that $f(x) \definedas \displaystyle\lim_{k\to\infty} f_k(x) < \infty$ exists almost everywhere.

Then $f_k \to f$ *almost uniformly*, i.e.
\begin{align*}
\forall\varepsilon > 0, ~\exists F \subseteq E ~\text{closed such that } &
m(E\setminus F) < \varepsilon ~\text{ and }~ f_k \mapsvia{u}  f ~\text{on}~ F
.\end{align*}