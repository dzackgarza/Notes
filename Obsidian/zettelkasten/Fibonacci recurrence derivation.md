- The recurrence: $a_{n+1} = a_n + a_{n-1}$ where $a_0 = a_1 = 1$.
- Generating function: $$1 \over 1-z-z^2$$.
- Set $$F(x) = \sum_{n\geq 0} a_n z^n$$
- Derivation:
$$
\begin{align*}
a_{n+1} &= a_n + a_{n-1} \\
a_{n+1}x^n &= a_nx^n + a_{n-1}x^n \\
\sum_{n\geq 0} a_{n+1}x^n &= \sum_{n\geq 0} (a_nx^n + a_{n-1}x^n) \\
x\inv \sum_{n\geq 0} a_{n+1}x^{n+1} &= \sum_{n\geq 0} a_nx^n + x\sum_{n\geq 0} a_{n-1}x^{n-1} \\
x\inv \sum_{n\geq 0} a_{n+1}x^{n+1} &= \sum_{n\geq 0} a_nx^n + x\sum_{n\geq 0} a_{n-1}x^{n-1}
\end{align*}$$