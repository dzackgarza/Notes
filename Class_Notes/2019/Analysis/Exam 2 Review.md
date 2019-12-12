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
  - [a](#a-1)
  - [b](#b-1)
  - [c](#c-1)
  - [4: Lp Spaces](#4-lp-spaces)
    - [a](#a-2)
    - [c](#c-2)
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

Notation: $C_0$ is the set of functions that vanish at infinity.

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

**Theorem (Norm Converge of Approximate Identites):**
$$
\norm{f \ast \phi_t - f}_1 \mapsvia{t\to 0} 0.
$$

*Proof:*
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
&\to 0 \qed
.\end{align*}

**Theorem (Convolutions Vanish at Infinity)**
\begin{align*}
f,g \in L^1 \text{ and  bounded}  \implies \lim _{|x| \rightarrow \infty} (f * g)(x) = 0
.\end{align*}

*Proof:*

- Choose $M \geq f,g$.
- By small tails, choose $N$ such that $\int_{B_N^c} \abs{f}, \int_{B_n^c} \abs{g} < \varepsilon$

- Note $$\abs{f \ast g} \leq \displaystyle\int \abs{f(x-y)} ~\abs{g(y)} ~dy \definedas I$$

- Use $\abs{x} \leq \abs{x-y} + \abs{y}$, take $\abs{x}\geq 2N$ so either
  
  - $$\abs{x-y} \geq N \implies I \leq \int_{\theset{x-y \geq N}} \abs{f(x-y)}M ~dy\leq \varepsilon M \to 0$$
  
  - $$\abs{y} \geq N \implies I \leq \int_{\theset{y \geq N}} M\abs{g(y)} ~dy\leq  M \varepsilon \to 0$$

$\qed$

### c
**Definition (The Fourier Transform):**
\begin{align*}
\hat{f}(\xi) = \int f(x) e^{-2\pi i x \cdot \xi} ~dx
.\end{align*}

**Facts:**

- *Riemann-Lebesgue lemma:* $\hat{f}$ vanishes at infinity
- $f\in L^1 \implies \hat{f}$ is bounded and uniformly continuous
- $f, \hat f \in L^1 \implies f$ is bounded, uniformly continuous, and vanishes at infinity
- $f\in L^1$ and $\hat f = 0$ almost everywhere $\implies f = 0$ almost everywhere.

**Theorem (Fourier Inversion):**
\begin{align*}
f(x)=\int_{\mathbb{R}^{n}} \widehat{f}(x) e^{2 \pi i x \cdot \xi} d \xi
.\end{align*}

*Proof:*
Idea: Fubini-Tonelli doesn't work directly, so introduce a convergence factor, take limits, and use uniqueness of limits.

Use the following facts:

- $g(x) \definedas e^{-\pi \abs{t}^2} \implies \hat g(\xi) = g(\xi)$
- $g_t(x) = t^{-n} g(x/t) = t^{-n}e^{-\pi \abs{x}^2/t^2}$
- $\hat g_t(x) = g(tx) = e^{-\pi t^2 \abs{x}^2}$
- $f,g \in L^1 \implies \int \hat f g = \int f \hat g$.
- $\phi(\xi) \definedas e^{2\pi i x \cdot \xi} ~\hat g_t(\xi)$
- $\hat\phi(\xi) = \mathcal{F}(\hat g(\xi - x))$

Take the modified integral:
\begin{align*}
I_t(x)
&= \int \hat f(\xi) ~e^{2\pi i x \cdot \xi} ~e^{-\pi t^2 \abs{\xi}^2} \\
&= \int \hat f(\xi) \phi(\xi) \\
&=\int f(\xi) \hat \phi(\xi) \\
&= \int f(\xi) \widehat{\hat g}(\xi - x) \\
&= \int f(\xi) g_t(x - y)  \\
&= (f \ast g_t) \\
&\to f \text{ in $L^1$ as }t \to 0
,\end{align*}

but we also have
\begin{align*}
\lim_{t\to 0} I_t(x)
&= 
\lim_{t\to 0} \int \hat f(\xi) ~e^{2\pi i x \cdot \xi} ~e^{-\pi t^2 \abs{\xi}^2} \\
&=_{DCT}
\int \hat f(\xi) ~e^{2\pi i x \cdot \xi} ~\lim_{t\to 0} e^{-\pi t^2 \abs{\xi}^2} \\
&=
\int \hat f(\xi) ~e^{2\pi i x \cdot \xi} \\
.\end{align*}

So 
$$
I_t(x) \to \int \hat f(\xi) ~e^{2\pi i x \cdot \xi} ~\text{ pointwise and }~\norm{I_t(x) - f(x)}_1 \to 0.
$$

So there is a subsequence $I_{t_n}$ such that $I_{t_n}(x) \to f(x)$ almost everywhere, so $f(x) = \int \hat f(\xi) ~e^{2\pi i x \cdot \xi}$ almost everywhere by uniqueness of limits. $\qed$

## 3: Hilbert Spaces

## a

**Theorem (Bessel's Inequality):**
$$
\left\|x-\sum_{n=1}^{N}\left\langle x, u_{n}\right\rangle u_{n}\right\|^{2}=\|x\|^{2}-\sum_{n=1}^{N}\left|\left\langle x, u_{n}\right\rangle\right|^{2}
$$
and thus
$$
\sum_{n=1}^{\infty}\left|\left\langle x, u_{n}\right\rangle\right|^{2} \leq\|x\|^{2}
$$

*Proof:*
Let $S_N = \sum_{n=1}^N \inner{x}{u_n} u_n$
\begin{align*}
\norm{x - S_N}^2 
&= \inner{x - S_n}{x - S_N} \\
&= \norm{x}^2 + \norm{S_N}^2 - 2\Re\inner{x}{S_N} \\
&= \norm{x}^2 + \norm{S_N}^2 - 2\Re \inner{x}{\sum_{n=1}^N \inner{x}{u_n}u_n} \\
&= \norm{x}^2 + \norm{S_N}^2 - 2\Re \sum_{n=1}^N \inner{x}{ \inner{x}{u_n}u_n} \\
&= \norm{x}^2 + \norm{S_N}^2 - 2\Re \sum_{n=1}^N \overline{\inner{x}{u_n}}\inner{x}{u_n} \\
&= \norm{x}^2 + \left\|\sum_{n=1}^N \inner{x}{u_n} u_n\right\|^2 - 2 \sum_{n=1}^N \abs{\inner{x}{u_n}}^2 \\
&= \norm{x}^2 + \sum_{n=1}^N \abs{\inner{x}{u_n}}^2 - 2 \sum_{n=1}^N \abs{\inner{x}{u_n}}^2 \\
&= \norm{x}^2 - \sum_{n=1}^N \abs{\inner{x}{u_n}}^2
.\end{align*}

And by continuity of the norm and inner product, we have
\begin{align*}
\lim_{N\to\infty} \norm{x - S_N}^2 
&= \lim_{N\to\infty} \norm{x}^2 - \sum_{n=1}^N \abs{\inner{x}{u_n}}^2 \\
\implies \norm{x - \lim_{N\to\infty} S_N}^2 &= \norm{x}^2 - \lim_{N\to\infty}\sum_{n=1}^N \abs{\inner{x}{u_n}}^2\\
\implies 
\norm{x - \sum_{n=1}^\infty \inner{x}{u_n} u_n}^2 &= \norm{x}^2 - 
\sum_{n=1}^\infty \abs{\inner{x}{u_n}}^2
.\end{align*}

Then noting that $0 \leq \norm{x - S_N}^2$, we have
\begin{align*}
0 &\leq 
\norm{x}^2 - 
\sum_{n=1}^\infty \abs{\inner{x}{u_n}}^2 \\
\implies 
\sum_{n=1}^\infty \abs{\inner{x}{u_n}}^2 &\leq 
\norm{x}^2 \qed
.\end{align*}

## b

- Take $\theset{a_n} \in \ell^2$, then note that $\sum \abs{a_n}^2 < \infty \implies$ the tails vanish.
- Define $x = \displaystyle\lim_{N\to\infty} S_N$ where $S_N = \sum_{k=1}^N a_k u_k$
- $\theset{S_N}$ is Cauchy and $H$ is complete, so $x\in H$.
- By construction, $\inner{x}{u_n} = \inner{\sum_k a_k u_k}{u_n} = \sum_k a_k \inner{u_k}{u_n} = a_n$ since the $u_k$ are all orthogonal.
- $\norm{x}^2 = \norm{\sum_k a_k u_k}^2 = \sum_k \norm{a_k u_k}^2 = \sum_k \abs{a_k}^2$ by Pythagoras since the $u_k$ are normal.

## c
Let $x$ and $u_n$ be arbitrary. Then

\begin{align*}
\inner{x - \sum_{k=1}^\infty \inner{x}{u_k}u_k }{u_n}
&=
\inner{x}{u_n}
-
\inner{\sum_{k=1}^\infty \inner{x}{u_k}u_k }{u_n} \\
&=
\inner{x}{u_n}
-
\sum_{k=1}^\infty  \inner{\inner{x}{u_k}u_k }{u_n} \\
&=
\inner{x}{u_n}
-
\sum_{k=1}^\infty  \inner{x}{u_k} \inner{u_k }{u_n} \\
&= \inner{x}{u_n} - \inner{x}{u_n} = 0 \\
\implies 
x - \sum_{k=1}^\infty \inner{x}{u_k}u_k &= 0 \quad\text{by completeness}
.\end{align*}

So 
$$
x = \sum_{k=1}^\infty \inner{x}{u_k} u_k
\implies
\norm{x}^2 = \sum_{k=1}^\infty \abs{\inner{x}{u_k}}^2. \qed
$$


## 4: Lp Spaces

p-test for integrals:
\begin{align*}
\int_0^1 x^{-p} < \infty \iff  p < 1 \\
\int_1^\infty x^{-p} < \infty \iff  p > 1 
.\end{align*}

> Yields a general technique: break integrals apart at $x=1$.


Inclusions and relationships:

\begin{align*}
m(X) < \infty \implies 
&L^\infty \subset L^2 \subset L^1 \\
&\ell^2(\ZZ) \subset \ell^1(\ZZ) \subset \ell^\infty(\ZZ)
.\end{align*}

### a

**Theorem (Holder's Inequality):**
\begin{align*}
\norm{fg}_1 \leq \norm{f}_p \norm{g}_q
.\end{align*}

*Proof:*

> It suffices to show this when $\norm{f}_p = \norm{g}_q = 1$, since
\begin{align*}
\|f g\|_{1} \leq\|f\|_{p}\|f\|_{q} \Longleftrightarrow \int \frac{|f|}{\|f\|_{p}} \frac{|g|}{\|g\|_{q}} \leq 1
.\end{align*}

Using $AB \leq \frac 1 p A^p + \frac 1 q B^q$, we have
\begin{align*}
\int|f \| g| \leq \int \frac{|f|^{p}}{p} \frac{|g|^{q}}{q}=\frac{1}{p}+\frac{1}{q}=1 \qed
.\end{align*}

**Theorem (Minkowski's Inequality):**
\begin{align*}
\|f+g\|_{p} \leq\|f\|_{p}+\|g\|_{p}
.\end{align*}

*Proof:*

We first note
\begin{align*}
\abs{f+g}^p = \abs{f+g}\abs{f+g}^{p-1} \leq \left( \abs{f} + \abs{g}\right) \abs{f+g}^{p-1}
.\end{align*}

Note that if $p,q$ are conjugate exponents then
\begin{align*}
\frac 1 q &= 1 - \frac 1 p = \frac{p-1} p \\
q &= \frac p {p-1} 
.\end{align*}

Then taking integrals yields
\begin{align*}
\norm{f+g}_p^p &=
\int \abs{f+g}^p \\
&\leq \int \left( \abs{f} + \abs{g}\right) \abs{f+g}^{p-1} \\ 
&= \int \abs{f} \abs{f+g}^{p-1} + \int \abs{g} \abs{f+g}^{p-1} \\
&= \norm{f(f+g)^{p-1}}_1 + \norm{g(f+g)^{p-1}}_1 \\
&\leq \norm{f}_p ~\norm{(f+g)^{p-1})}_q + \norm{g}_p ~\norm{(f+g)^{p-1})}_q \\
&= \left( \norm{f}_p + \norm{g}_p \right) \norm{ (f+g)^{p-1})}_q \\
&= \left( \norm{f}_p + \norm{g}_p \right) \left( \int \abs{f+g}^{(p-1)q} \right)^{\frac 1 q} \\
&= \left( \norm{f}_p + \norm{g}_p \right) \left( \int \abs{f+g}^{p} \right)^{1 - \frac 1 p} \\
&= \left( \norm{f}_p + \norm{g}_p \right) \frac{\int \abs{f+g}^{p} }{\left( \int \abs{f+g}^{p} \right)^{\frac 1 p}} \\
&= \left( \norm{f}_p + \norm{g}_p \right)  \frac{\norm{f+g}_p^p}{\norm{f+g}_p}
\end{align*}

and canceling common terms yields
\begin{align*}
1 &\leq \left( \norm{f}_p + \norm{g}_p \right) \frac{1}{\norm{f+g}_p} \\
&\implies 
\norm{f+g}_p
\leq \norm{f}_p + \norm{g}_p \qed
.\end{align*}


### c

**Definition (Infinity Norm):**

\begin{align*}
L^\infty(X) &= \theset{f: X \to \CC \suchthat \norm{f}_\infty < \infty} \\
&\text{where} \\
\norm{f}_\infty &= \inf_{\alpha \geq 0} \theset{\alpha \suchthat m\theset{\abs{f} \geq \alpha} = 0}
.\end{align*}

**Theorem:**
\begin{align*}
\lim_{p\to\infty} \norm{f}_p = \norm{f}_\infty 
.\end{align*}

*Proof:*
Let $M = \norm{f}_\infty$.
For any $L < M$, let $S = \theset{\abs{f} \geq L}$. Then $m(S) > 0$ and
\begin{align*}
\norm{f}_p &= \left( \int_X \abs{f}^p \right)^{\frac 1 p} \\
&\geq \left( \int_S \abs{f}^p \right)^{\frac 1 p} \\
&\geq L ~m(S)^{\frac 1 p} \mapsvia{p\to\infty} L \\
&\implies \liminf_p \norm{f}_p \geq L
.\end{align*}

We also have
\begin{align*}
\norm{f}_p &\leq \left( \int_X ()^p \right)^{\frac 1 p}
.\end{align*}


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


