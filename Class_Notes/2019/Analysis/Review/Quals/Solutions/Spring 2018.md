# Spring 2018

## 1

Let $\QQ = \theset{\frac {p_j} {q_j}}_{j\in\NN}$ be an enumeration of the rationals, and define
\begin{align*}
E_j \definedas \theset{x\in \RR \suchthat \abs{x - \frac{p_j}{q_j} } < \frac 1 {q^3}} 
\definedas
B_{q^3}\left(\frac {p_j}{q_j}\right)
.\end{align*}

Each $E_j$ is an open interval,
\begin{align*}
E_j = \left(\frac{p_j}{q_j} - \frac{1}{q_j^3},~ \frac{p_j}{q_j} + \frac{1}{q_j^3} \right)
,\end{align*}

and is Borel and thus Lebesgue measurable.

Note that 
\begin{align*}
E_j \subseteq B_{q^3}(\frac {p_j}{q_j})
&\implies 
m(E_j) \leq 2 \cdot \mathrm{radius} \left(B_{q^3}\left(\frac {p_j}{q_j}\right)\right) = \frac{2}{q_j^3} \\
&\implies \sum_{j\in \NN} m(E_j) \leq 2\sum_{j\in \NN} \frac 1 {q_j^{3}} < \sum_{j=1}^\infty \frac 1 {j^3} < \infty
,\end{align*}

which converges by the $p\dash$test for sums.

Since $\theset{E_j}$ is a countable collection 
