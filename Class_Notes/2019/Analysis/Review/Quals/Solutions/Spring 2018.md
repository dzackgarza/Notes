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

Since $\theset{E_j}$ is a countable collection of measurable sets such that $\sum m(E_j) < \infty$, so Borel-Cantelli applies and $m(\limsup_j E_j) = 0$, where we can just note that $\limsup_j E_j = E$.

> *Proof of Borel Cantelli:*
> 
> - If $E = \limsup_j E_j$ with $\sum m(E_j) < \infty$ then $m(E) = 0$.
> - If $E_j$ are measurable, then $\limsup_j E_j$ is measurable.
> - If $\sum_j m(E_j) < \infty$, then $\sum_{j=N}^\infty m(E_j) \converges{N\to\infty}\to 0$ as the tail of a convergent sequence.
> - $E = \limsup_j E_j = \intersect_{k=1}^\infty \union_{j=k}^\infty E_j \implies E \subseteq \union_{j=k}^\infty$ for all $k$
> - $E \subset \union_{j=k}^\infty \implies m(E) \leq \sum_{j=k}^\infty m(E_j) \converges{k\to\infty}\to 0$.


## 2

A check shows that
