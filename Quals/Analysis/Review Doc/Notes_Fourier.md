# Fourier Series and Convolution

**Definition (Convolution)**
$$
f * g(x)=\int f(x-y) g(y) d y
.$$

**Definition (Dilation)**
$$
\phi_{t}(x)=t^{-n} \phi\left(t^{-1} x\right)
.$$

**Definition (The Fourier Transform):**
\begin{align*}
\hat f(\xi) = \int f(x) ~e^{2\pi i x \cdot \xi} ~dx
.\end{align*}

**Lemma:**
$\hat f = \hat g \implies f=g$ almost everywhere.

**Lemma (Riemann-Lebesgue)**
\begin{align*}
f\in L^1 \implies
\hat{f}(\xi) \rightarrow 0 \text { as }|\xi| \rightarrow \infty
.\end{align*}

> Motto: Fourier transforms decay.

**Lemma:**
If $f \in L^1$, then $\hat f$ is continuous and bounded.

> *Proof:*
> $\abs{\hat f} \leq \int \abs{f}\cdot \abs{e^{\cdots}} \leq \norm{f}_1$, and the DCT shows that $\abs{\hat f(\xi_n) - \hat f(\xi)} \to 0$.


Todo: search qual alerts.