# Notes

## Fatou

**Theorem (Fatou)**:
\begin{align*}
f_k \in L^+ \implies \int \liminf f_k \leq \liminf \int f_k
.\end{align*}


**Example:**
Using Fatou to compute the limit of a sequence of integrals:

\begin{align*}
\lim _{n \rightarrow \infty} \int_{0}^{\infty} \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x 
\overset{\text{Fatou}}\geq 
\int_{0}^{\infty} \lim _{n \rightarrow \infty}  \frac{n^{2}}{1+n^{2} x^{2}} e^{-\frac{x^{2}}{n^{3}}} d x \to \int \infty
.\end{align*}

> Note that MCT might work, but showing that this is non-decreasing in $n$ is difficult.


**Lemma:**
\begin{align*}
f_k \converges{a.e.}\to f ,\quad
\norm{f_k}_p \leq M  
\implies f\in L^p \text{ and } \norm{f}_p \leq M
.\end{align*}

> *Proof:* Apply Fatou to $\abs{f}^p$:
\begin{align*}
\int \abs{f}^p = \int \liminf \abs{f_k}^p \leq \liminf \int \abs{f_k}^p = M
.\end{align*}

## Counterexamples

###  Almost everywhere convergence does not imply $L^p$ convergence for any $1\leq p \leq \infty$

Sequences $f_k \converges{a.e.}\to f$ but $f_k \converges{L^p}{\not\to} f$: 

- For $1\leq p < \infty$:
	The skateboard to infinity, $f_k = \chi_{[k, k+1]}$.

	Then $f_k \converges{a.e.}\to 0$ but $\norm{f_k}_p = 1$ for all $k$.

- For $p = \infty$:
  The marching boxes $f_k = k \cdot \chi_{[0, \frac 1 k]}$.
	
	Then similarly $f_k \converges{a.e.}\to 0$, but $\norm{f_k}_p = 1$ and $\norm{f_k}_\infty = k \to \infty$


