- The sequence: $1, 1, 2, 3, 5, 8, 13, 21,\cdots$
- The recurrence: $a_{n+1} = a_n + a_{n-1}$ where $a_0 = a_1 = 1$.
	- Idea: find a generating function, find a way to expand and extract its coefficients to get a closed formula.
- Set $$F(x) = \sum_{n\geq 0} a_n z^n = a_0 + a_1 x + a_2 x^2 + \cdots$$
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
- Need to apply the operation $\sum_{n\geq ?}(\wait) x^n$ where $?$ is the smallest number that makes all sums *not* reference negative indices.

- Now apply partial fractions.
	- First factor the denominator:
	$$1-x-x^2 = (1-r_+x)(1-r_- x) \quad r_{\pm} = {1\over 2} (1 \pm \sqrt 5)$$
	- Use the cover up method or computing residues: for each coefficient $A_i$, cover up the term on the LHS corresponding to $A_i$, and evaluate the rest at the root of that term
$$
\begin{align*}
{1 \over (1-xr_-) (1-xr_+)} = {A \over 1-xr_-} + {B \over 1-xr_+} \\ \\
A = {1\over 1-xr_-}\evalfrom_{x = {1\over r_+}} = {1\over 1 - {r_- \over r_+}} = {r_+ \over r_+ - r_-} \\ \\
B = {1\over 1-xr_+}\evalfrom_{x = {1\over r_-}} = {1\over 1 - {r_+ \over r_i}} = {r_- \over r_- - r_+} = {-r_- \over r_+ - r_- } 
.\end{align*}
$$
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
- **Claim**: ignoring the $r_-$ term, we are never neglecting anything in magnitude more than $1/2$:
$$
\abs{r_-^{n+1} \over \sqrt{5}} < {1\over 2} \hspace{5em} \forall n\geq 1
.$$
- **Proof**:
$$
\begin{align*}
\abs{r_- \over \sqrt{5}} 
= \abs{ {{1 - \sqrt 5 \over 2} \over \sqrt {5}} } &< 1/2 \\
\iff \abs{1 - \sqrt 5 \over 2\sqrt 5} &< 1/2 \\
\iff \abs{1 - \sqrt 5} &< \sqrt 5 = \abs{0 - \sqrt 5}
,\end{align*}
$$
which is true because $\sqrt{5}$ is closer to 1 than 0.
Then note that raising to the $n$th power only decreases terms in $(0, 1)$.
- Note that $\abs{r_+} > 1$ and $\abs{r_-} < 1$, so 
$$
a_n \approx 
{1 \over  \sqrt 5} \left( {1 + \sqrt 5 \over 2}  \right)^{n+1}
,$$
and since $a_n \in \ZZ$, for large $n$ if we round the RHS to the nearest integer, this formula is exact.
