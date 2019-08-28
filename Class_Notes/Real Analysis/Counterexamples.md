# Variations of the Dirichlet Function
Consider all integrals to be over a compact interval $[a, b]$ with $0 \leq a < b$.

Questions to ask:
- Where is/isn't $f$ continuous?
- Where is/isn't $f$ differentiable?
- Is $f$ Riemann integrable?

## The Dirichlet function
$$
f ( x ) = b + (a-b)~\indicator{x\in \QQ} = \begin{cases}
a, & x\in \QQ \\
b, & \text{else}
\end{cases}
$$
(usually take $a=1, b=0$)

- Continuous nowhere
- Discontinuous everywhere
- Not integrable
- Differentiable nowhere

## Dirichlet with a Continuous Point
$$
f ( x ) = x~\indicator{\QQ} = \begin{cases}
x, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
  - $U(f) > \frac 1 4$ but $L(f) = 0$.
- Differentiable nowhere

## Dirichlet with a Differentiable Point
$$
f ( x ) = x^2~\indicator{\QQ} = \begin{cases}
x^2, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
- Differentiable at 0 

## Dirichlet with Two Functions
$$
f ( x ) = x~\indicator{\QQ} + (-x)\indicator{\RR-\QQ} = \begin{cases}
x, & x\in \QQ \\
-x, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- Not integrable
    <details markdown="1">
    <summary>Proof</summary>
    Restrict attention to $[\frac 1 2, 1]$
    $$\begin{align*}
    \overline{\int_0^1} f &= \inf \theset{ \sum \sup f(x) (x_i - x_{i-1}) } \\
    \sup f(x) = x_i \implies \sum \sup f(x) (x_i - x_{i-1}) &= \sum x_i (x_i - x_{i-1}) \\
    &> \sum \frac 1 2 (x_i - x_{i-1}) \\
    &= \frac 1 2 \left(\frac 1 2\right) = \frac 1 4 \\
    \implies \overline{\int_0^1} f &\geq \frac 1 4
    \end{align*}
    $$
    and 
    $$\begin{align*}
    \underline{\int_0^1} f &= \sup \theset{ \sum \inf f(x) (x_i - x_{i-1})} \\
    \inf f(x) = -x_i \implies \sum \inf f(x) (x_i - x_{i-1}) &= \sum -x_i (x_i - x_{i-1}) \\
    &< -\sum \frac 1 2 (x_i - x_{i-1}) \\
    &= -\frac 1 2 \left( \frac 1 2 \right) = -\frac 1 4 \\
    \implies \underline{\int_0^1} f &\leq -\frac 1 4
    \end{align*}
    $$
    So we have $\underline{\int_0^1} f \lneq 0 \lneq \overline{\int_0^1} f$.
    </details>
- Differentiable nowhere.

## The Thomae function:
$$
f ( x ) = \begin{cases}
\frac 1 q, & x = \frac p q \in \QQ,~(p,q) = 1 \\
0, & \text{else}
\end{cases}
$$

- Continuous on $\RR-\QQ$
- Discontinuous on $\QQ$
- Integrable with $\int_a^b f = 0$
- Differentiable nowhere