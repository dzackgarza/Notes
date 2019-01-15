# Variations of the Dirichlet Function
Consider all integrals to be over a compact interval $[a.b]$.

Questions to ask:
- Where is $f$ continuous?
- Where is $f$ discontinuous?
- Is $f$ integrable?
- Is $f$ differentiable?

## The Dirichlet function
$$
f ( x ) = \indicator{\QQ} = \begin{cases}
a, & x\in \QQ \\
b, & \text{else}
\end{cases}
$$
(usually take $a=1, b=0$)

- Continuous nowhere
- Discontinuous everywhere
- Not integrable
- Differentiable nowhere

## Dirichlet with a continuous point
$$
f ( x ) = \begin{cases}
x, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- ?
- Differentiable nowhere 

# Dirichlet with a Differentiable Point
$$
f ( x ) = \begin{cases}
x^2, & x\in \QQ \\
0, & \text{else}
\end{cases}
$$

- Continuous at 0
- Discontinuous at $\RR-\theset{0}$
- ?
- Differentiable at 0 

## A mix
$$
f ( x ) = \begin{cases}
x, & x\in \QQ \\
-x, & \text{else}
\end{cases}
$$

- ?
- ?
- Not integrable
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
    So we have $\underline{\int_0^1} f < 0 \overline{\int_0^1} f$
    <details markdown="1">
    <summary>Proof</summary>
    Restrict attention to $[\frac 1 2, 1]$
    
    </details>
- ?

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