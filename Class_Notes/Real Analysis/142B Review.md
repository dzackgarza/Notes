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
\begin{aligned} M _ { i } = & \sup _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \\ m _ { i } = & \inf _ { x \in \left[ x _ { i - 1 } , x _ { i } \right] } f ( x ) \end{aligned}
$$

Define $L(f, P), U(f,P)$.
$$
U(f, P)
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

Define upper and lower integrals.


Show that lower $\leq$ upper integral.

# 6.2: Integrability

Define integrability.

"Archimedes-Riemann Theorem":
$$
f ~\text{integrable} \implies \exists \theset{P_i}_{i=1}^\infty ~\text{s.t.}~  U(f, P_i) - L(f, P_i) \to 0
$$

Show that a monotonically increasing function is integrable.

Show that step functions are integrable.

# 6.3: Properties of Integrals

Show ability to split integral at intermediate point (additivity).

Show monotonicity.