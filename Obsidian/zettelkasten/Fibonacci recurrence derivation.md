- The recurrence: $a_{n+1} = a_n + a_{n-1}$ where $a_0 = a_1 = 1$.
- Generating function: $$1 \over 1-z-z^2$$.
- Set $$F(x) = \sum_{n\geq 0} a_n z^n$$
- Derivation:
$$
\begin{align*}
a_{n+1} &= a_n + a_{n-1} \\
a_{n+1}x^n &= a_nx^n + a_{n-1}x^n \\
\sum_{n\geq 1} a_{n+1}x^n &= \sum_{n\geq 1} (a_nx^n + a_{n-1}x^n) \\
x\inv\sum_{n\geq 1} a_{n+1}x^{n+1} &= \sum_{n\geq 1} a_nx^n + x\sum_{n\geq 1} a_{n-1}x^{n-1} \\
x\inv \sum_{\ell \geq 2} a_\ell x^\ell &= 
\sum_{n\geq 1} a_nx^n + x\sum_{m\geq 0} a_{m}x^{m} \\
x\inv ( F(x) - a_0 - a_1x) &= (F(x) - a_0) + xF(x)\\
F(x) - a_0 - a_1 x &= xF(x) - a_0 x + x^2F(x) \\
-a_0 -a_1 x +a_0 x &= -F(x) +xF(x) + x^2 F(x) \\
\end{align*}$$
- Need to apply $\sum_{n\geq ?}$ where $?$ is the smallest number that makes all sums *not* reference negative indices.