---
title: Exams 2 Review
---

- [Exam 2 (Practice)](#exam-2-practice)
  - [1: Fubini-Tonelli](#1-fubini-tonelli)
  - [2: Convolutions and the Fourier Transform](#2-convolutions-and-the-fourier-transform)
    - [a](#a)
    - [b](#b)
    - [c](#c)
  - [3: Hilbert Spaces](#3-hilbert-spaces)
  - [4: Lp Spaces](#4-lp-spaces)
  - [5: Dual Spaces](#5-dual-spaces)
- [Exam 2 (2018)](#exam-2-2018)
- [Exam 2 (2014)](#exam-2-2014)
- [Qual: Fall 2019](#qual-fall-2019)
  - [1](#1)
  - [2](#2)
  - [3](#3)
  - [4](#4)
  - [5](#5)


# Exam 2 (Practice)
[Link to PDF File](./Review/Exam2&#32;Practice.pdf)


Proving uniform continuity: show
$$
\norm{f - \tau_h f}_1 \mapsvia{h\to 0} 0
$$

## 1: Fubini-Tonelli

**Theorem (Fubini):**

Suppose

- $f: \RR^{n_1 + n_2} \to \RR$ is measurable on its domain
- $f$ is non-negative

Then for almost every $x\in \RR^{n_1}$,

1. Every slice 
\begin{align*}
f_x: \RR^{n_2} &\to \RR \\
y &\mapsto f(x, y)
\end{align*}
is measurable on $\RR^{n_2}$.

2. The function
\begin{align*}
F: \RR^{n_1} &\to \RR \\
x &\mapsto \int_{\RR^{n_2}} f_x(y) ~dy
\end{align*}
is measurable on $\RR^{n_1}$

3. The function
\begin{align*}
G(y) = \int_{\RR^n} F(x) ~dx 
\end{align*}
is measurable and
$$
G(y) = \int_{\RR^n} f = \int_{\RR^{n_1}} \int_{\RR^{n_2}} f(x, y) ~dy ~dx
$$
for any iterated version of this integral.

**Corollary (Measurable Slices):**

Let $E$ be a measurable subset of $\RR^n$. Then

- For almost every $x\in \RR^{n_1}$, the slice $E_x \definedas \theset{y \in \RR^{n_2} \mid  (x,y) \in E}$ is measurable in $\RR^{n_2}$.
- The function

\begin{align*}
F: \RR^{n_1} &\to \RR \\
x &\mapsto m(E_x) = \int_{\RR^{n_2}} \chi_{E_x} ~dy
\end{align*}
and 
$$
m(E) = \int_{\RR^{n_1}} m(E_x) ~dx 
= \int_{\RR^{n_1}} \int_{\RR^{n_2}} \chi_{E_x} ~dy ~dx
$$

$\implies$:

- Let $f$ be measurable on $\RR^n$.
- Then the cylinders $F(x, y) = f(x)$ and $G(x, y) = f(y)$ are both measurable on $\RR^{n+1}$.
- Write $\mathcal{A} = \theset{G \leq F} \intersect \theset{G \geq 0}$; both are measurable.

$\impliedby$:

- Let $A$ be measurable in $\RR^{n+1}$.
- Define $A_x = \theset{y\in \RR \mid (x, y) \in \mathcal{A}}$, then $m(A_x) = f(x)$.
- By the corollary, $A_x$ is measurable set, $x \mapsto A_x$ is a measurable function, and $m(A) = \int f(x) ~dx$.
- Define $A_y = \theset{x\in \RR^n \mid (x, y) = A}$, and notice that $A_y = \theset{x\in \RR^n \mid 0\leq y \leq f(x)}$.
- By the corollary, $A_y$ is measurable and 
$$
m(\mathcal{A})=\int m\left(\mathcal{A}_{y}\right) d y=\int_{0}^{y} m\left(\left\{x \in \mathbb{R}^{n} \ni f(x) \geq y\right\}\right) d y
$$

## 2: Convolutions and the Fourier Transform

### a
**Definition (Convolution):**
\begin{align*}
(f \ast g)(x) = \int_{\RR^n} f(x-y) g(y) ~dy
.\end{align*}


**Facts:**

 -$f,g \in L^1 \implies f\ast g \in L^1$
- $f\in L^1, g \leq M \implies f\ast g \leq M'$ and is uniformly continuous.
- $f, g\in L^1, f \leq M, g \leq M' \implies  f\ast g \mapsvia{x\to\infty} 0$.2
- $\norm{f\ast g}_1 \leq \norm{f}_1 \norm{g}_1$
- $f\in L^1, g'$ exists, $\dd{g}{x_i}$ all bounded $\implies \dd{}{x_i}(f\ast g) = f \ast \dd{g}{x_i}$
- $f, g \in C_c^\infty \implies f\ast g \in C^\infty$ and $f\ast g \mapsvia{x\to\infty} 0$.


### b
**Definition (Approximation to the Identity):**
\begin{align*}
\phi(x) = e^{-\pi x^2} \\
\phi_t(x) = t^{-n} \phi(\frac x t)
.\end{align*}

**Facts:**

- $\int \phi = \int \phi_t = 1$
- $f$ bounded and uniformly continuous $\implies f \ast \phi_t \uniformlyconverges f$

**Theorem:**
$$
\norm{f \ast \phi_t - f}_1 \mapsvia{t\to 0} 0.
$$

Proof:
\begin{align*}
\norm{f - f\ast \phi_t}_1 
&= \int f(x) - \int f(x-y)\phi_t(y) ~dy dx \\
&= \int f(x)\int \phi_t(y) ~dy - \int f(x-y)\phi_t(y) ~dy dx \\
&= \int \int \phi_t(y)[f(x) - f(x-y)] ~dy dx \\
&=_{FT} \int \int \phi_t(y)[f(x) - f(x-y)] ~dx dy \\
&= \int \phi_t(y) \int f(x) - f(x-y) ~dx dy \\
&= \int \phi_t(y) \norm{f - \tau_y f}_1 dy \\
&= \int_{y < \delta} \phi_t(y) \norm{f - \tau_y f}_1 dy  +
\int_{y \geq \delta} \phi_t(y) \norm{f - \tau_y f}_1 dy \\
&\leq \int_{y < \delta} \phi_t(y) \varepsilon +
\int_{y \geq \delta} \phi_t(y) \left( \norm{f}_1 + \norm{\tau_y f}_1 \right) dy \quad\text{by continuity in } L^1 \\
&\leq \varepsilon + 
2\norm{f}_1 \int_{y \geq \delta} \phi_t(y) dy \\
&\leq \varepsilon + 2\norm{f}_1 \varepsilon \quad\text{since $\phi_t$ has small tails} \\
&\to 0
.\end{align*}


### c
**Definition (The Fourier Transform):**
\begin{align*}
\hat{f}(\xi) = \int f(x) e^{-2\pi i x \cdot \xi} ~dx
.\end{align*}

**Facts:**

- **Riemann-Lebesgue lemma:** $\hat{f}$ vanishes at infinity
- $f\in L^1 \implies \hat{f}$ is bounded and uniformly continuous
- $f, \hat f \in L^1 \implies f$ is bounded, uniformly continuous, and vanishes at infinity
- $f\in L^1$ and $\hat f = 0$ almost everywhere $\implies f = 0$ almost everywhere.
- Multiplication lemma: $f,g \in L^1 \implies \int \hat f g = \int f \hat g$.


## 3: Hilbert Spaces

## 4: Lp Spaces

Inclusions and relationships:

## 5: Dual Spaces


# Exam 2 (2018)
[Link to PDF File](./Review/Exam2&#32;2018.pdf)

# Exam 2 (2014)
[Link to PDF File](./Review/Exam2&#32;2014.pdf)


# Qual: Fall 2019


## 1

See phone photo?

## 2

DCT?

## 3

"Follow your nose."

## 4

> See Problem Set 8.

**Bessel's Inequality:**
For any orthonormal set in a Hilbert space (not necessarily a basis), we have
$$
\sum_{n=1}^\infty \abs{\inner{x}{u_n}}^2 \leq \norm{x}^2
$$

*Proof:*
$$
0 \leq\left\|x-\sum_{k=1}^{n}\left\langle x, e_{k}\right\rangle e_{k}\right\|^{2}
$$

**Corollary (Parseval's Identity):**
If $\spanof \theset{u_n}$ is dense in $\mathcal{H}$, so it is a basis, then this is an equality.

**Riesz-Fischer:**
Let $U = \theset{u_n}_{n=1}^\infty$ be an orthonormal set (not necessarily a basis), then

1. There is an isometric surjection

\begin{align*}
\mathcal{H} &\to \ell^2(\NN) \\
\vector x &\mapsto \theset{\inner{\vector x}{\vector u_n}}_{n=1}^\infty
\end{align*}

i.e. if $\theset{a_n} \in \ell^2(\NN)$, so $\sum \abs{a_n}^2 < \infty$, then there exists a $\vector x \in \mathcal{H}$ such that
$$
a_n = \inner{\vector x}{\vector u_n} \quad \forall n.
$$

2. $\vector x$ can be chosen such that
$$
\norm{\vector x}^2 = \sum \abs{a_n}^2
$$

> Note: the choice of $\vector x$ is unique $\iff$ $\theset{u_n}$ is **complete**, i.e. $\inner{\vector x}{\vector u_n} = 0$ for all $n$ implies $\vector x = \vector 0$.

*Proof:*

- Given $\theset{a_n}$, define $S_N = \sum^N a_n \vector u_n$.
- $S_N$ is Cauchy in $\mathcal{H}$ and so $S_N \to \vector x$ for some $\vector x \in \mathcal{H}$.
- $\inner{x}{u_n} = \inner{x - S_N}{u_n} + \inner{S_N}{u_n} \to a_n$
- By construction, $\norm{x-S_N}^2 = \norm{x}^2 - \sum^N \abs{a_n}^2 \to 0$, so $\norm{x}^2 = \sum^\infty \abs{a_n}^2$.

## 5

See Problem Set 5.

**Heine-Cantor theorem:**
Every continuous function on a compact set is uniformly continuous.

Uniform continuity:

\begin{align*}
    &\forall \varepsilon \quad \exists \delta(\varepsilon) \mid \quad \forall x, y, \quad \abs{x - y} < \delta \implies \abs{f(x) - f(y)} < \varepsilon \\
 \iff &\forall \varepsilon \quad \exists \delta(\varepsilon) \mid \quad \forall x, y, \quad \abs{y} < \delta \implies \abs{f(x-y) - f(y)} < \varepsilon \\
.\end{align*}

Fubini-Tonelli interchange of integrals, where the change of bounds becomes very important.

Continuity in $L^1$: 
$$
\lim_{y\to 0} \norm{\tau_y f - f}_1 = 0.
$$


