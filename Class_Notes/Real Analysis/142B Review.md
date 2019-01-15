# Math 142B Review


Textbook Used: Fitzpatrick

Sections Covered:

- 6.1, 6.2, 6.3
- 6.4, 6.5
- 6.6, 7.2
- 8.1, 8.2, 8.3, 8.4, 8.5
- 8.6, 8.7, 9.1
- 9.1, 9.2, 9.3
- 9.4, 9.5

# 6.1: Darboux Sum, Upper and Lower Integrals

- Define integrability
- Show that a cts function on a compact interval is integrable
- Prove the two FTCs:
$$
\int_a^b \dd{}{x} F(x) ~dx = F(b) - F(a) \\
\dd{}{x} \int_a^x f(x) ~dx = f(x) 
$$

Definition: Partition
> Given an interval $[a,b]$, a **partition** is an ordered set $P = \theset{x_0, x_1, \ldots, x_n}$ of finitely many points such that $\forall~ 0\leq i \leq n$, we have $x_i \in [a,b]$ and $i \leq j \implies x_i \leq x_j$.

For each $i$, we can look at bounds on $f$ within the interval $[x_i, x_{i+1}]$

---

Review bounded.

Review Dirichlet function.

Define partition. Define regular partition.

Define $m_i, M_i$.
$$
\begin{aligned} 
M _ { i } = & \sup _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \\ 
m _ { i } = & \inf _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \end{aligned}
$$

Define $L(f, P),~U(f,P)$.
$$
U(f, P) = \sum_{i=1}^n (x_i - x_{i-1})M_i = \sum_{i=1}^n  (x_i - x_{i-1}) ~\sup\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}  \\
L(f, P) = \sum_{i=1}^n (x_i - x_{i-1})m_i = \sum_{i=1}^n(x_i - x_{i-1}) ~\inf\theset{~f ( x ) \mid x \in [x_{i-1}, x_{i}]~}
$$

Show that $L(f,P) \leq U(f, p)$

Define Darboux Sum:

Important inequality:
$$
\sum_i^n m_i (x_i - x_{i-1}) \leq L(f, P) \leq \int_a^b f(x) ~dx \leq  U(f, P) \leq \sum_i^n M_i (x_i - x_{i-1})
$$
(where $\sum (x_i - x_{i-1}) = (b-a)$ by cancellation.)

Define refinement.

Show that refinement is monotone.

Definition: **Upper and Lower Integrals.**
$$
\overline {\int_a^b} f(d) ~dx = \inf\theset{~ U(f, P) \mid P ~\text{is a partition of }~ [a,b]} \\
\underline {\int_a^b} f(d) ~dx = \sup\theset{~ L(f, P) \mid P ~\text{is a partition of }~ [a,b]} 
$$
(Note that it's the inf of the uppers and sup of the lowers!)

Show that lower $\leq$ upper integral.

# 6.2: Integrability

Define integrability.

"Archimedes-Riemann Theorem":
$$
f ~\text{integrable} \implies \exists \theset{P_i}_{i=1}^\infty ~\text{s.t.} \quad  U(f, P_i) - L(f, P_i) \to 0
$$

Equivalently,
$$
\forall \varepsilon,~\exists P(\varepsilon) \text{ s.t. } \quad U(f, P(\varepsilon)) - L(f, P(\varepsilon)) \leq \varepsilon
$$

Show a function that is not integrable:
$$
f ( x ) = \left\{ \begin{array} { l l } { 0 , } & { \text { if } x \in \QQ } \\ { 1 , } & { \text{ else } } \end{array} \right.
$$

Let $\varepsilon < \min \theset{1, b-a}$ be fixed. Then let $P(\varepsilon) = \theset{x_0, x_1, \cdots x_n}$ be an arbitrary partition. Note that $[x_{i-1}, x_i]$ is a closed real interval, so it contains at least one rational number $p$, and at least one irrational number $q$. Thus $$
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

Show that a monotonically increasing function is integrable.

Show that step functions are integrable.

# 6.3: Properties of Integrals

Show ability to split integral at intermediate point (additivity).

Show monotonicity.