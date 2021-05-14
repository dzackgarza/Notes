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
-1 -1 x +1x &= F(x)(-1 +x + x^2) \\
-{1 \over -1 +x +x^2} &= F(x) \\ \\
\implies
F(x) &= {1 \over 1-x-x^2}
\end{align*}$$
- Need to apply $\sum_{n\geq ?}$ where $?$ is the smallest number that makes all sums *not* reference negative indices.

- Now apply partial fractions.
	- First factor the denominator:
	$$1-x-x^2 + (1-r_+x)(1-r_- x) \quad r_{\pm} = {1\over 2} (1 \pm \sqrt 5)$$
- Then write
$$\begin{aligned} 
F(x) = \frac{1}{1-x-x^{2}} 
&= \frac{1}{\left(1-x r_{+}\right)\left(1-x r_{-}\right)} \\  \\
&= \frac{1}{\left(r_{+}-r_{-}\right)} \left(\frac{r_{+}}{1-x r_{+}}-\frac{r_{-}}{1-x r_{-}}\right) \\ \\
&= \frac{1}{\sqrt{5}}\left(\sum_{n \geq 0} r_{+}^{n+1} x^{n}-\sum_{n \geq 0} r_{-}^{n+1} x^{n}\right) \\ \\
&= \sum_{n\geq 0} \left( {r_+^{n+1} - r_{i}^{n+1} \over \sqrt 5 } \right)x^n \\ \\
&= \sum_{n\geq 0} a_n x^n \\ \\
\implies a_n &= {r_+^{n+1} - r_{i}^{n+1} \over \sqrt 5 } \\
&= {1 \over  \sqrt 5 } {\left(  \left({1 + \sqrt 5 \over 2}\right)^{n+1} - \left({1 - \sqrt 5 \over 2}\right)^{n+1}  \right)} \\
\end{aligned}$$

- Note that $\abs{r_+} > 1$ and $\abs{r_-} < 1$, so 
$$
a_n \approx 
{1 \over  \sqrt 5} \left( {1 + \sqrt 5 \over 2}  \right)^{n+1} \\
$$
- In fact 
$$
\abs{r_-}^{n+1} = \abs{{1 - \sqrt 5 \over 2} }^{n+1} < {1\over 2} \quad \forall n
,$$
and since $a_n \in \ZZ$, this formula is exact