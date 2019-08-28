# Chapter 6
Sections Covered: 6.1-6.6, 7.2

> Important Inequality!!
This is more or less the workhorse of most integrability problems:
$$
\sum_i^n m_i (x_i - x_{i-1}) \leq L(f, P) \leq \underline{\int_a^b }f(x)~dx \leq \int_a^b f(x) ~dx \leq \overline{\int_a^b}  f(x)~dx \leq  U(f, P) \leq \sum_i^n M_i (x_i - x_{i-1})
$$
> Note that $\sum_{i=1}^n (x_i - x_{i-1}) = (b-a)$ by cancellation.

---

# 6.1: Darboux Sum, Upper and Lower Integrals

- Define integrability
- Show that a cts function on a compact interval is integrable
- Prove the two FTCs:
$$
\int_a^b \dd{}{x} F(x) ~dx = F(b) - F(a) \\
\dd{}{x} \int_a^x f(x) ~dx = f(x) 
$$

Review bounded.

Review Dirichlet function.

Definition: Partition
> Given an interval $I = [a,b]$, a **partition of $I$** is an ordered set $P = \theset{x_0, x_1, \ldots, x_n}$ of finitely many points where $a\leq x_0 \leq x_1 \leq \cdots \leq x_n \leq b$.

For each $i$, we can look at the values $f$ takes on within the interval $[x_i, x_{i+1}]$; in particular, we can consider $\sup\theset{f(x) \suchthat x\in[x_i, x_{i+1}]}$ (as well as the infimum).

> Aside: one very useful partition is $x_i \definedas a + \frac{i}{n}b$ where $0\leq i \leq n$.


Define regular partition. 
Define tagged partition. 
Define refinement of a partition.


Show that refinement is monotone.

Define $m_i, M_i$.
$$
\begin{aligned} 
M _ { i } = & \sup _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \\ 
m _ { i } = & \inf _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \end{aligned}
$$

Define the **Darboux Sums**, $L(f, P),~U(f,P)$:
$$
U(f, P) = \sum_{i=1}^n (x_i - x_{i-1})~M_i = \sum_{i=1}^n  (x_i - x_{i-1}) ~\sup\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}  \\
L(f, P) = \sum_{i=1}^n (x_i - x_{i-1})~m_i = \sum_{i=1}^n(x_i - x_{i-1}) ~\inf\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}
$$

Note that since $\inf f \leq \sup f$, we always have $L(f,P) \leq U(f, p)$.



Definition: **Upper and Lower Integrals.**
$$
\overline {\int_a^b} f(x) ~dx = \inf\theset{~ U(f, P) \mid P ~\text{is a partition of }~ [a,b]} \\
\underline {\int_a^b} f(x) ~dx = \sup\theset{~ L(f, P) \mid P ~\text{is a partition of }~ [a,b]} 
$$

Note that it's the infimum of the upper sums and supremum of the lower sums; it is easy to mix these up.

Show 
$$
\underline {\int_a^b} f(x) ~dx \leq \overline {\int_a^b} f(x) ~dx.
$$

# 6.2: Integrability

Definition: **Integrability**
$$
f \text{ integrable } \iff \underline{\int_a^b} f(x)~dx = \overline{\int_a^b}f ~dx
$$

"Archimedes-Riemann Theorem":
$$
\forall \varepsilon,~\exists P(\varepsilon) \text{ s.t. } \quad U(f, P(\varepsilon)) - L(f, P(\varepsilon)) \leq \varepsilon
$$


**Claim**: There are functions that are not integrable.

Take
$$
f ( x ) = \left\{ \begin{array} { l l } { 0 , } & { \text { if } x \in \QQ } \\ { 1 , } & { \text{ else } } \end{array} \right.
$$

<details markdown="1">
<summary>Proof</summary>

Let $\varepsilon < \min \theset{1, b-a}$ be fixed. Then let $P(\varepsilon) = \theset{x_0, x_1, \cdots x_n}$ be an arbitrary partition. Note that $[x_{i-1}, x_i]$ is a closed real interval, so it contains at least one rational number $p$, and at least one irrational number $q$. Thus 
$$
\inf \theset{f(x) \mid x \in [x_{i-1}, x_i]} \leq f(p) = 0 \implies m_i \leq 0 \\
\text{and} \\ 
\sup \theset{f(x) \mid x \in [x_{i-1}, x_i]} \geq f(q) = 1 \implies M_i \geq 1.
$$

But this holds for each $i$, so we have
$$
\begin{align*}
U(f, P(\varepsilon)) - L(f, P(\varepsilon)) &= \left( \sum_{i=1}^n (x_i - x_{i-1})M_i  \right) - \left( \sum_{i=1}^n (x_i - x_{i-1})m_i  \right) \\
&\geq \left( \sum_{i=1}^n (x_i - x_{i-1})1  \right) - \left( \sum_{i=1}^n (x_i - x_{i-1})0  \right) \\
&= \left( \sum_{i=1}^n (x_i - x_{i-1})  \right) \\
&= b-a \\
&\geq \varepsilon
\end{align*}
$$

Since $P(\varepsilon)$ was an arbitrary, this holds for any partition, and thus $f$ is not integrable. $\qed$
</details>

Show that a monotonically increasing function is integrable.

Show that step functions are integrable.

How to show a function is not integrable:

# 6.3: Properties of Integrals

Show ability to split integral at intermediate point (additivity).

Show monotonicity.

# 6.4: Interactions Between Continuity and Integrability

Theorem: $f$ continuous on a closed/bounded set $\implies f$ integrable.

Theorem: If $f$ is continuous on $(a,b)$ and just *bounded* on $[a,b]$, it is still integrable, and its integrability does not depend on the values $f(a)$ or $f(b)$.