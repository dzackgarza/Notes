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

This is well-defined since $\norm{x^j - x^k}_{\ell^2} = \sum_i \abs{x^j_i - x^k_i}^2 \to 0$, and since this is a sum of positive real numbers that approaches zero, each term must approach zero. But then for a fixed $i$, the sequence $\abs{x_i^j - x^k_i}^2$ is a Cauchy sequence of real numbers which necessarily converges in $\RR$.

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

where $\norm{\vector x_i - x^j}_{\ell^2} \to 0$ and the second sum is finite because $x^j \in \ell^2 \iff \norm{x^j}_{\ell^2} \definedas M < \infty$. $\qed$

## Part b
Let $H$ be a Hilbert space with inner product $\inner{\wait}{\wait}$ and induced norm $\norm{\wait}$.


**Lemma**: 
For any complex number $z$, we have
$$
\Im(z) = \Re(-iz),
$$

and as a corollary, we have
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

Lemma: The map $\inner{\wait}{\wait}: H \cross H \to \RR$ is continuous.

Proof:

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

# Problem 5

# Part 1

We use the following algorithm: given $\theset v_i$, we set

- $e_1 = v_1$, and then normalize to obtain $\hat{e_1} = e_1 / \norm{e_1}$
- $e_{i} = v_{i} - \sum_{k \leq i-1} \inner{v_i}{\hat{e_i}}\hat{e_i}$

We set $e_1 = 1$, and check that $\norm{e_1} = 1$, and 
