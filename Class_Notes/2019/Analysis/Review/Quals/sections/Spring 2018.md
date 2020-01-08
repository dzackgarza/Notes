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

### a

Since $x < 1 \implies x^n \to 0$ and $x>1 \implies x^n \to \infty$, we have
\begin{align*}
f_n(x) = \frac{x}{1+ x^n}\converges{n\to\infty}\longrightarrow
f(x) = \begin{cases}
0, & x = 0 \\
x, & x < 1 \\
\frac 1 2, & x = 1 \\
0, & x > 0 \\
\end{cases}
.\end{align*}

If $f_n \to f$ uniformly on $[0, \infty)$, it would converge uniformly on every subset.

Butach $f_n(x)$ is clearly continuous on $(0, \infty)$, and if the convergence was uniform then $f$ would be continuous. 
However $f$ has a clear discontinuity at $x=1$.

### b

If the DCT applies, we can interchange the limit and integral, and the value would be the area under the graph of $f$ which is $\int_0^1 x ~dx = \frac 1 2$.

To justify the DCT, write 
\begin{align*}
\int_0^\infty f_n(x)
= \int_0^1 f_n(x) + \int_1^\infty f_n(x)
.\end{align*}

Then
\begin{align*}
x \in [0, 1] \implies \frac{x}{1+x^n} < \frac{1}{1+x^n} < 1
\end{align*}

and $\int_0^1 1 ~dx = 1 < \infty$.

On the other hand,

\begin{align*}
x \in (1, \infty) \implies \frac{x}{1+x^n} \approx O\left(\frac 1 {x^{n-1}}\right)
,\end{align*}

and so for $n > 2$ the integral will converge by the $p\dash$test.

## 3

Since $\abs{f(x)} \leq \norm{f}_\infty$ almost everywhere, we have
\begin{align*}
\norm{f}_p^p = \int_X \abs{f(x)}^p ~dx \leq \int_X \norm{f}_\infty^p ~dx = \norm{f}_\infty^p \cdot m(X) = \norm{f}_\infty^p
,\end{align*}

so $\norm{f}_p \leq \norm{f}_\infty$ for all $p$ and taking $\lim_{p\to\infty}$ preserves this inequality.

Conversely, let $\varepsilon > 0$.
Define 
\begin{align*}
S_\varepsilon \definedas \theset{x\in \RR \suchthat \abs{f(x)} \geq \norm{f}_\infty - \varepsilon}
.\end{align*}


Then
\begin{align*}
\norm{f}_p^p 
&= \int_X \abs{f(x)}^p ~dx \\
&\geq \int_{S_\varepsilon} \abs{f(x)}^p ~dx \\
&\geq \int_{S_\varepsilon} \abs{\norm{f}_\infty - \varepsilon}^p ~dx \\
&= \abs{\norm{f}_\infty - \varepsilon}^p \cdot m(S_\varepsilon)\\
\implies \norm{f}_p &\geq \abs{\norm{f}_\infty - \varepsilon} \cdot m(S_\varepsilon)^{\frac 1 p} \\
&\converges{p\to\infty}\to \abs{\norm{f}_\infty - \varepsilon} \\ 
&\converges{\varepsilon \to 0}\to \norm{f}_\infty
.\end{align*}

So $\norm{f}_p \geq \norm{f}_\infty$.

$\qed$

## 4

Fix $k \in \ZZ$.
Since $e^{2\pi i k x}$ is continuous on the compact interval $[0, 1]$, it is uniformly continuous, and is thus there is a sequence of polynomials $P_\ell$ such that 
$$
P_{\ell, k} \converges{\ell\to\infty}\to e^{2\pi i k x} \text{ uniformly on } [0,1]
.$$

Note that by linearity,
$$
\int f(x) x^n = 0 ~\forall n \implies \int f(x) P_{\ell, k}(x) = 0
\quad \forall \ell \in \NN
$$


But then the $k$th Fourier coefficient of $f$ is given by
\begin{align*}
\inner{f}{e_k} 
&= \int_0^1 f(x) e^{-2\pi i k x} ~dx \\
&= \int_0^1 f(x) \lim_{\ell \to \infty} P_\ell(x) \\
&= \lim_{\ell \to \infty}  \int_0^1 f(x) P_\ell(x) \quad\quad \text{by uniform convergence} \\
&= \lim_{\ell \to \infty} 0 \\
&= 0 \quad \forall k\in \ZZ
,\end{align*}

so $\hat f$ is the zero function, and $\hat f = 0 \iff f = 0$ almost everywhere.

$\qed$

## 5

> Moral: $\int \abs{f_n - f} \to \iff \int f_n = \int f$.

Since if $\int \abs{f_n} \to \int \abs{f}$ then we can define
\begin{align*}
h_n &= \abs{f_n - f} &&\to 0 ~a.e.\\
g_n &= \abs{f_n} + \abs{f} &&\to 2\abs {f} ~a.e.
\end{align*}


\begin{align*}
\int 2 \abs {f} 
&= \int \liminf~ (g_n - h_n) \\
&= \int \liminf~ g_n - \int \liminf~ h_n \\
&= \int 2 \abs{f} - \int \liminf~ h_n \\
&\overset{Fatou}\leq \int 2\abs{f} + \limsup \int h_n
,\end{align*}

which forces $\int h_n = \int \abs{f_n - f} \to 0$.

But then 
\begin{align*}
\abs{\int f_n - \int f}
= \abs{\int f_n -f} 
\leq \int \abs{f_n - f} \to 0
,\end{align*}

so $\int f_n \to \int f$.

$\qed$