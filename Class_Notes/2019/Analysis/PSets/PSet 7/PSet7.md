---
title: Problem Set 7
---

# Problem 1

## Part a

We want to show that $\ell^2(\NN)$ is complete, so let $\theset{x_n} \subseteq \ell^2(\NN)$ be a Cauchy sequence, so $\norm{x^j - x^k}_{\ell^2} \to 0$. We want to produce some $\vector x \definedas \displaystyle\lim_{n\to \infty} x^n$ such that $x\in \ell^2$.

To this end, for each fixed index $i$, define
$$
\vector x_i \definedas \lim_{n\to\infty} x_i^n.
$$

This is well-defined since $\norm{x^j - x^k}_{\ell^2} = \sum_i \abs{x^j_i - x^k_i}^2 \to 0$, and since this is a sum of positive real numbers that approaches zero, each term must approach zero. But then for a fixed $i$, the sequence $\abs{x_i^j - x^k_i}^2$ is a Cauchy sequence of real numbers which necessarily converges by completeness of $\RR$.

We also have $\norm{\vector x - x^j}_{\ell^2} \to 0$ since 
$$
\norm{\vector x - x^j}_{\ell^2} = 
\norm{\lim_{k\to \infty}  x^k - x^j}_{\ell^2} =
\lim_{k\to \infty} \norm{x^k - x^j}_{\ell^2} \to 0
$$
where the limit can be passed through the norm because the map $t \mapsto \norm{t}_{\ell^2}$ is continuous. So $x^j \to \vector x$ in $\ell^2$ as well.

It remains to show that $\vector x \in \ell^2(\NN)$, i.e. that $\sum_i \abs{\vector x_i}^2 < \infty$. To this end, we write
\[
\begin{align*}
\norm{\vector x}_{\ell^2} &= \norm{\vector x - x^j + x^j}_{\ell^2} \\
&\leq \norm{\vector x - x^j}_{\ell^2} + \norm{x^j}_{\ell^2}\\
& \to M < \infty,
\end{align*}
\]

where $\lim_j \norm{\vector x - x^j}_{\ell^2} = 0$ by the previous argument, and the second term is bounded because $x^j \in \ell^2 \iff \norm{x^j}_{\ell^2} \definedas M < \infty$. $\qed$

## Part b
Let $H$ be a Hilbert space with inner product $\inner{\wait}{\wait}$ and induced norm $\norm{\wait}$.


**Lemma**: 
For any complex number $z$, we have
$$
\Im(z) = \Re(-iz),
$$

and as a corollary, since the inner product on $H$ takes values in $\CC$, we have
$$
\Re(\inner{x}{iy}) =  \Re(-i\inner{x}{y}) = \Im(\inner{x}{y}).
$$

We can compute the following:
\begin{align*}
\norm{x + y}^2 &= \norm{x}^2 + \norm{y}^2 + 2~\Re \left( \inner{x}{y} \right) \\ \\
\norm{x - y}^2 &= \norm{x}^2 + \norm{y}^2 - 2~\Re \left( \inner{x}{y} \right) \\ \\
\norm{x + iy}^2 &= \norm{x}^2 + \norm{y}^2 + 2~\Re \left( \inner{x}{iy} \right) \\
&= \norm{x}^2 + \norm{y}^2 + \Im(\inner{x}{y})
\\ \\
\norm{x - iy}^2 &= \norm{x}^2 + \norm{y}^2 - 2~\Re \left( \inner{x}{iy} \right) \\
&= \norm{x}^2 + \norm{y}^2 + \Im(\inner{x}{y})
\\ \\
\end{align*}

and summing these all 

\[
\begin{align*}
\norm{x + y}^2 - \norm{x - y}^2 + i\norm{x + iy}^2 - i\norm{x + iy} &= 4~\Re \left( \inner{x}{y} \right) + 4i~\Im \left( \inner{x}{y} \right) \\
&= 4 \inner{x}{y}.
\end{align*}
\]

To conclude that a linear map $U$ is an isometry iff $U$ is unitary, if we assume $U$ is unitary then we can write
$$
\norm{x}^2 \definedas \inner{x}{x} = \inner{Ux}{Ux} \definedas \norm{Ux}^2.
$$

Assuming now that $U$ is an isometry, by the polarization identity we can write
\[
\begin{align*}
\inner{Ux}{Uy} &= \frac 1 4 
\left(
  \norm{Ux + Uy}^2 + \norm{Ux - Uy}^2 + i\norm{Ux + Uy}^2 - i\norm{Ux + Uy}^2
\right) \\
&= \frac 1 4
\left(
  \norm{U(x + y)}^2 + \norm{U(x - y)}^2 + i\norm{U(x + y)}^2 - i\norm{U(x + y)}^2
\right) \\
&= \frac 1 4
\left(
  \norm{x + y}^2 + \norm{x - y}^2 + i\norm{x + y}^2 - i\norm{x + y}^2
\right) \\
&= \inner{x}{y}.
\end{align*}
\]

$\qed$

# Problem 2

**Lemma:**
The map $\inner{\wait}{\wait}: H \cross H \to \RR$ is continuous.

*Proof:*

Let $x_n \to x$ and $y_n \to y$, then
\[
\begin{align*}
\abs{
  \inner{x_n}{y_n} - \inner{x}{y}
} &= \abs{
  \inner{x_n}{y_n} - \inner{x}{y_n} + \inner{x}{y_n} - \inner{x}{y}
} \\
&= \abs{
  \inner{x_n - x}{y_n} + \inner{x}{y_n - y} 
} \\
&\leq \norm{x_n - x} \norm{y_n} + \norm{x} \norm{y_n - y} \\
& \to 0\cdot M +  C \cdot 0 < \infty,
\end{align*}
\]

where $\norm{y_n} \to M$ since $y_n \to y$ implies that $\norm{y_n}$ is bounded.

## Part a:

We want to show that sequences in $E^\perp$ converge to elements of $E^\perp$.
Using the lemma, letting $\theset{e_n}$ be a sequence in $E^\perp$, so $y\in E \implies \inner{e_n}{y} = 0$. Since $H$ is complete, $e_n \to e \in H$; we can show that $e \in E^\perp$ by letting $y\in E$ be arbitrary and computing
\[
\begin{align*}
\inner{e}{y} = \inner{\lim_n e_n}{y} = \lim_n \inner{e_n}{y} = \lim_n 0 = 0,
\end{align*}
\]

so $e\in E^\perp$.

## Part b:
Let $S \coloneqq \mathrm{span}_H(E)$; then the smallest closed subspace containing $E$ is $\overline{S}$, the closure of $S$.
We will proceed by showing that $E^{\perp \perp} = \overline{S}$.

$\overline{S} \subseteq E^{\perp\perp}$: 

Let $\theset{x_n}$ be a sequence in $S$, so $x_n \to x \in \overline{S}$.

First, each $x_n$ is in $E^{\perp \perp}$, since if we write $x_n = \sum a_i e_i$ where $e_i \in E$, we have
$$
y\in E^\perp \implies \inner{x_n}{y} = \inner{\sum_i a_i e_i}{y} = \sum_i a_i \inner{e_i}{y} = 0 \implies x_n \in (E^\perp)^\perp.
$$

It remains to show that $x\in E^{\perp \perp}$, which follows from
$$
y\in E^{\perp} \implies \inner{x}{y} = \inner{\lim_n x_n}{y} = \lim_n \inner{x_n}{y} = 0 \implies x\in (E^\perp)^\perp,
$$

where we've used continuity of the inner product.

$E^{\perp \perp} \subseteq \overline{S}$:

For notation convenience, we'll just write $S$ for $\overline S$.
Let $x\in E^{\perp\perp}$.
Noting that $S$ is closed, we can define $P$, the operator projecting elements onto ${S}$, and write
$$
x = Px + (x - Px) \in S \oplus S^\perp
$$

But since $\inner{x}{x - Px} = 0$ because $x - Px \in E^\perp$ and $x\in (E^\perp)^\perp$, we can rewrite the first term in this inner product to obtain
$$
0 = \inner{x}{x - Px} = \inner{Px + (x-Px)}{x-Px} = \inner{Px}{x-Px} + \inner{x-Px}{x-Px},
$$

where we can note that the first term is zero because $Px \in S$ and $x-Px \in S^\perp$, and the second term is $\norm{x-Px}^2$.

But this says $\norm{x-Px}^2 = 0$, so $x-Px = 0$ and thus $x=Px\in S$, which is what we wanted to show.


# Problem 3

## Part a

We compute
\[
\begin{align*}
\norm{e_0}^2 &= \int_0^1 1^2 ~dx = 1\\
\norm{e_1}^2 &= \int_0^1 3(2x-1)^2 = \frac 1 2 (2x-1)^2 \bigg|_{0}^1 = 1 \\
\inner{e_0}{e_1} &= \int_0^1 \sqrt 3 (2x-1) ~dx = \frac{\sqrt 3}{4}(2x-1) \bigg|_{0}^1 = 0
.\end{align*}
\]

which verifies that this is an orthonormal system.


## Part b

We first note that this system spans the degree 1 polynomials in $L^2([0, 1])$, since we have 

$$
\left[\begin{array}{rr}
1 & 0 \\
2 \, \sqrt{3} & \sqrt{3}
\end{array}\right] [1, x]^t = [e_0, e_1]
$$
which exhibits a matrix that changes basis from $\theset{1, x}$ to $\theset{e_0, e_1}$ which is invertible, so both sets span the same subspace.

Thus the closest degree 1 polynomial $f$ to $x^3$ is given by the projection onto this subspace, and since $\theset{e_i}$ is orthonormal this is given by
\[
\begin{align*}
f(x) 
&= \sum_i \inner{x^3}{e_i}e_i \\
&= \inner{x^3}{1} 1 + \inner{x^3}{\sqrt 3 (2x-1)}\sqrt 3(2x-1) \\
&= \int_0^1 x^2 ~dx + \sqrt 3 (2x-1) \int_0^1 \sqrt 3 x^2 (2x-1) ~dx \\
&= \frac 1 3 + \sqrt 3 (2x-1) \frac{\sqrt 3}{6} \\
&= x - \frac 1 6
.\end{align*}
\]

We can also compute
\[
\begin{align*}
\norm{f-g}_2^2 
&= \int_0^1 (x^2 - x + \frac 1 6)^2 ~dx \\
&= \frac 1 {180} \\
\implies \norm{f-g}_2 &= \frac 1 {\sqrt{180}}
.\end{align*}
\]
# Problem 4

## Part a

### i

We can first note that $\inner{1/\sqrt{2}}{\cos(2\pi nx)} = \inner{1/\sqrt{2}}{\sin(2\pi m x)} = 0$ for any $n$ or $m$, since this involves integrating either sine or cosine over an integer multiple of its period.

Letting $m,n \in \ZZ$, we can then compute
\[
\begin{align*}
\inner{\cos(2\pi n x)}{\sin(2\pi m x)}
&= \int_0^1 \cos(2\pi n x) \sin(2\pi m x) ~dx \\
&= \frac 1 2 \int_0^1 \sin(2\pi(n+m)x) - \sin(2\pi (n-m)x) ~dx \\
&= \frac 1 2 \int_0^1 \sin(2\pi(n+m)x) - \frac 1 2 \int_0^1 \sin(2\pi (n-m)x) ~dx \\
&= 0
,\end{align*}
\]
which again follows from integration of sine over a multiple of its period (where we use the fact that $m+n, m-n \in \ZZ$).

Similarly,
\[
\begin{align*}
\inner{\cos(2\pi n x)}{\cos(2\pi m x)}
&= \int_0^1 \cos(2\pi n x) \cos(2\pi m x) ~dx \\
&= \frac 1 2 \int_0^1 \cos(2\pi(m+n)x) + \cos(2\pi (m-n) x) ~dx \\
&= 
\begin{cases}
\frac 1 2 \int_0^1 \cos(4\pi nx) + 1 ~dx = 1 & m=n\\
0 & m\neq n \\
\end{cases}
.\end{align*}
\]

\[
\begin{align*}
\inner{\sin(2\pi n x)}{\sin(2\pi m x)}
&= \int_0^1 \sin(2\pi n x) \sin(2\pi m x) ~dx \\
&= \frac 1 2 \int_0^1 \cos(2\pi(m-n)x) + \cos(2\pi (m+n) x) ~dx \\
&= \begin{cases}
\frac 1 2 \int_0^1 1 + \cos(4\pi nx)  ~dx = 1 & m=n\\
0 & m\neq n \\
\end{cases}
.\end{align*}
\]

Thus each pairwise combination of elements are orthonormal, making the entire set orthonormal.

### ii

We have
\[
\begin{align*}
\inner{e^{2\pi k x}}{e^{-2\pi i \ell x}} &=
\int_0^1 e^{2\pi i kx} \overline{e^{2\pi i \ell x}} ~dx \\
&= \int_0^1 e^{2\pi i kx} e^{-2\pi i \ell x} ~dx \\
&= \int_0^1 e^{2\pi i (k-\ell) x} ~dx \\
&(= \int_0^1 1 ~dx = 1 \quad \text{if $k=\ell$, otherwise:}) \\
&= \frac{e^{2\pi i (k-\ell) x} }{2\pi i (k-\ell)}  \Bigr|_{0}^1 \\
&= \frac{e^{2\pi i (k-\ell)} - 1}{2\pi i (k-\ell)} \\ 
&= 0
,\end{align*}
\]

since $e^{2\pi i k} = 1$ for every $k\in Z$, and $k-\ell \in \ZZ$. 
Thus this set is orthonormal.

## Part b

### i

By the Weierstrass approximation theorem for functions on a bounded interval, we can find a polynomials $P_n(x)$ such that $\norm{f - P_n}_\infty \to 0$, i.e. the $P_n$ uniformly approximate $f$ on $[0, 1]$.

Letting $\varepsilon > 0$, we can thus choose a $P$ such that $\norm{f - P}_\infty < \varepsilon$, which necessarily implies that $\norm{f - P}_{L^1} < \varepsilon$ since we have
$$
\int_0^1 \abs{f(x) - P(x)}~ dx \leq \int_0^1 \varepsilon ~dx = \varepsilon.
$$


Thus we can write
$$
f(x) = P(x) + (f(x) - P(x))
$$

where $h(x) \coloneqq f(x) - P(x)$ satisfies $\norm{h}_{L^1} < \varepsilon$.
It only remains to show that $P \in L^2([0, 1])$, but this follows from the fact that any polynomial on a compact interval is uniformly bounded, say $\abs{P(x)} \leq M < \infty$ for all $x\in [0, 1]$, and thus
$$
\norm{P}_{L^2}^2 = \int_0^1 \abs{P(x)}^2 ~dx \leq \int_0^1 M^2 ~dx = M^2 < \infty.
$$

It follows that we can let $g = P$ and $h = f - P$ to obtain the desired result.

### ii

By part (i), the claim is that it suffices to show this is true for $f\in L^2$. 
In this case, we can identify

\[
\begin{align*}
\int_0^1 f(x) \cos(2\pi k x) ~ dx \coloneqq \Re(\hat{f}(k)) \\
\int_0^1 f(x) \sin(2\pi k x) ~ dx \coloneqq \Im(\hat{f}(k))
,\end{align*}
\]

the real and imaginary parts of the $k$th Fourier coefficient of $f$ respectively.

By Bessel's inequality, we know that $\theset{\hat{f}(k)}_{k\in \NN} \in \ell^1(\NN)$, and so $\sum_k \abs{\hat{f}(k)} < \infty$.

But this is a convergent sequence of real numbers, which necessarily implies that $\abs{\hat{f}(k)} \to 0$.
In particular, this also means that its real and imaginary parts tend to zero, which is exactly what we wanted to show.

If we instead have $f\in L^1$, write $f = g + h$ where $g\in L^2$ and $\norm{h}_{L^1} \to 0$.
Then
\[
\begin{align*}
\abs{ \int_0^1 f(x) \cos(2\pi k x) ~ dx}
&= \abs{\int_0^1 (g(x) + h(x)) \cos(2\pi k x) ~ dx} \\
&\leq \abs{\int_0^1 g(x) \cos(2\pi k x) ~ dx}  + \abs{\int_0^1 h(x) \cos(2\pi k x) ~ dx} \\
&\leq \abs{\int_0^1 g(x) \cos(2\pi k x) ~ dx}  + \int_0^1 \abs{h(x)} \abs{\cos(2\pi k x)} ~ dx \\
&= \abs{\hat{g}(k)} + \varepsilon \\ 
&\to 0
,\end{align*}
\]
with a similar computation for $\int f(x) \sin(2\pi k x)$. 
$\qed$

# Problem 5

## Part 1

We use the following algorithm: given $\theset v_i$, we set

- $e_1 = v_1$, and then normalize to obtain $\hat{e_1} = e_1 / \norm{e_1}$
- $e_{i} = v_{i} - \sum_{k \leq i-1} \inner{v_i}{\hat{e_i}}\hat{e_i}$ 

The result set $\theset{\hat{e_i}}$ is the orthonormalized basis.

We set $e_1 = 1$, and check that $\norm{e_1}^2 = 2$, and thus set $\hat e_1 = \frac{1}{\sqrt 2}$.

We then set
\[
\begin{align*}
e_2
&= x - \inner{x}{\hat e_1}\hat e_1 \\
&= x - \inner{x}{1}1 \\
&= x - \int_{-1}^1 \frac{1}{\sqrt{2}} x ~dx \\
&= x - \int \text{odd function} \\
&= x
,\end{align*}
\]

and so $e_2 = x$. We can then check that 
$$
\norm{e_2} = \left( \int_{-1}^1 x^2 ~dx \right)^{1/2} = \sqrt{\frac 2 3},
$$

and so we set $\hat e_2 = \sqrt{\frac 3 2} x$.

We continue to compute
\[
\begin{align*}
e_3 
&= x^2 - \inner{x^2}{\hat e_1}\hat e_1 - \inner{x^2}{\hat e_2} \hat e_2 \\
&= x^2 - \frac 1 2 \int_{-1}^1 x^2 ~dx - \frac 3 2 x\int_{-1}^1 x^3 ~dx \\
&= x^2 - \left( \frac 1 6 x^3 \right) \bigr|_{-1}^1 + \frac 3 2 x \int_{-1}^1 \text{odd function} \\
&= x^2 - \frac 1 3
.\end{align*}
\]

We can then check that $\norm{e_3}^2 = \frac 8 {45}$, so we set 
\[
\begin{align*}
\hat e_3 
&= \sqrt{\frac{45}{8}} (x^2 - \frac 1 3) \\
&= \frac 1 2 \sqrt{\frac{45}{2}} \frac 1 3 (3x^2 - 1) \\
&= \frac 1 3 \sqrt{\frac{45}{2}} \left( \frac{3x^2 - 1}{2} \right)
.\end{align*}
\]


In summary, this yields
\[
\begin{align*}
\hat e_1 &= \frac{1}{\sqrt 2} \\
\hat e_2 &= x \\
\hat e_3 &= \frac 1 3 \sqrt{\frac{45}{2}} \left( \frac{3x^2 - 1}{2} \right)
,\end{align*}
\]

which are scalar multiples of the first three Legendre polynomials.

## Part b

Let $p(x) = a + bx + cx^2$, we are then looking for $p$ such that $\norm{x^3 - p(x)}_2^2$ is minimized.
Noting that 
$$
p(x) \in \mathrm{span}\theset{1, x, x^2} = \mathrm{span}\theset{P_0(x), P_1(x), P_2(x)} \coloneqq S, 
$$ 
we can conclude that $p(x)$ will be the projection of $x^3$ onto $S$. 
Thus $p(x) = \sum_{i=0}^2 \inner{x^3}{\hat e_i}\hat e_i$.

Proceeding to compute the terms in this expansion, we can note that $\inner{x^3}{f}$ for any $f$ that is even will result in integrating an odd function over a symmetric interval, yielding zero.
So only one term doesn't vanish:
\[
\begin{align*}
\inner{x^3}{x}x &= x\int_{-1}^1 x^4 ~dx = \frac 2 5 x \\
.\end{align*}
\]

And thus $p(x) = \frac 2 5 x$ is the minimizer.

## Part c

The first three conditions necessitate $g \in S^\perp$ and $\norm{g} = 1$. 
Since $S$ is a closed subspace, we can write $x^3 = p(x) + (x^3 - p(x)) \in S \oplus S^\perp$, and so $x^3 - p(x) \in S^\perp$.

The claim is that $g(x) \coloneqq x^3 - p(x)$ is a scalar multiple of the desired maximizer. 
This follows from the fact that
$$
\abs{ \inner{x^3 - p}{g}} \leq \norm{x^3 - p} \norm{g}
$$

by Cauchy-Schwarz, with equality precisely when $g = \lambda(x^3 - p)$ for some scalar $\lambda$.
However, the restriction $\norm{g} = 1$ forces $\lambda = \norm{x^3-p}\inv$.

A computation shows that 
\[
\begin{align*}
\norm{x^3 - p}^2
&= \int_0^1 (x^3 - \frac 2 5 x)^2 ~dx = \frac{19}{525}
,\end{align*}
\]

and so we can take
$$
g(x) \coloneqq \frac{25}{\sqrt{19}} \left( x^3 - \frac 2 5 x \right).
$$

# Problem 6

## Part a

To see that $g\in \mathcal C$, we can compute

\[
\begin{align*}
\inner{g}{1} &= \int_0^1 18x^2 - 5 ~dx = 6 - 5 = 1 \\
\inner{g}{x} &= \int_0^1 18x^3 - 5x ~dx = \frac{18}{4} - \frac{5}{2} = 2
.\end{align*}
\]

To see that $\mathcal C = g + S^\perp$, let $f\in \mathcal C$, so $\inner{f}{1} = 1$ and $\inner{f}{x} = 2$.
We can then conclude that $f-g \in S^\perp$, since we have
\[
\begin{align*}
\inner{f-g}{1} = \inner{f}{1} - \inner{g}{1} = 1 - 1 = 0 \\
\inner{f-g}{x} = \inner{f}{x} - \inner{g}{x} = 2 - 2 = 0
.\end{align*}
\]

## Part b

Note that this equivalent to finding an $f_0 \in \mathcal{C}$ such that $\norm{f_0}$ is minimized. 

Letting $f_0 \in \mathcal{C}$, be arbitrary and noting that by part (a) we have $f_0 = g + s$ where $s\in S^\perp$, we can compute
\[
\begin{align*}
\norm{f_0}^2 &= \inner{f_0}{f_0} \\
&= \inner{f_0}{g + s} \\
&= \inner{f_0}{g} + \inner{f_0}{s},
\end{align*}
\]

