# Notes

## Fatou

**Theorem (Fatou)**:
\begin{align*}
f_k \in L^+ \implies \int \liminf f_k \leq \liminf \int f_k
.\end{align*}


Using Fatou to compute the limit of a sequence of integrals:

\begin{align*}
\lim _{n \rightarrow \infty} \int_{0}^{\infty} \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x 
\geq 
\int_{0}^{\infty} \lim _{n \rightarrow \infty}  \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x \to \int \infty
.\end{align*}

> Note that MCT might work, but showing that this is non-decreasing in $n$ is difficult.


**Lemma:**
\begin{align*}
f_k \overset{a.e.}\converges f ,\quad
\norm{f_k}_p \leq M  
\implies f\in L^p \text{ and } \norm{f}_p \leq M
.\end{align*}

> *Proof:* Apply Fatou to $\abs{f}^p$:
\begin{align*}
\int \abs{f}^p = \int \liminf \abs{f_k}^p \leq \liminf \int \abs{f_k}^p = M
.\end{align*}
