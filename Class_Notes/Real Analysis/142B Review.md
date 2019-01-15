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