---
title: "Assignment 6: The Fourier Transform"
---

# Problem 1

Assuming the hint, we have 

\[
\begin{align*}
\lim_{\abs \xi \to \infty} \hat f(\xi) = \lim_{\xi' \to 0} \frac 1 2 \int_{\RR^n} (f()) - f(x - \xi')) \exp(-2\pi i x \cdot \xi) ~dx \\
.\end{align*}
\]

But as an immediate consequence, this yields
\[
\begin{align*}
\abs{\hat f (\xi)} &= \abs{\int_{\RR^n} (f(x) - f(x-\xi')) \exp(-2\pi i x\cdot \xi) ~dx} \\
&\leq \int_{\RR^n} \abs{f(x) - f(x-\xi')} \abs{\exp(-2\pi i x\cdot \xi)} ~dx \\
&\leq \int_{\RR^n} \abs{f(x) - f(x-\xi')} ~dx \\
&\to 0
,\end{align*}
\]
which follows from continuity in $L^1$ since $f(x - \xi') \to f(x)$ as $\xi' \to 0$.

It thus only remains to show that the hint holds, and that $\xi' \to 0$ as $\xi \to \infty$.

# Problem 2

## Part (a)

Assuming an interchange of integrals is justified, we have
\[
\begin{align*}
\widehat(f\ast g)( \xi ) &\coloneqq \int \int f(x-y) g(y) \exp(-2\pi x \cdot \xi) ~dy~dx \\
&=_? \int \int f(x-y) g(y) \exp(-2\pi x \cdot \xi) ~dx~dy \\
&= \int \int f(t) \exp(-2\pi i (x-y) \cdot \xi) g(y) \exp(-2\pi i y \cdot \xi) ~dx ~dy \\
&\quad\quad (t = x-y, ~dt = ~dx) \\
&= \int \int f(t) \exp(-2\pi i t \cdot \xi) g(y) \exp(-2\pi i y \cdot \xi) ~dt~dy \\
&= \int f(t) \exp(-2\pi i t \cdot \xi) \left( \int g(y) \exp(-2\pi i y \cdot \xi) ~dy \right) ~dt \\
&= \int f(t) \exp(-2\pi i t \cdot \xi) \hat g(\xi) ~dt \\
&= \hat g(\xi) \int f(t) \exp(-2\pi i t \cdot \xi) ~dt \\
&= \hat g(\xi) \hat f(\xi) 
.\end{align*}
\]

It thus remains to show that this swap is justified.

## Part (b)

We'll use the following lemma: if $\hat f = \hat g$, then $f = g$ almost everywhere.

### (i)

By part 1, we have
$$
\widehat{f \ast g} = \hat f \hat g = \hat g \hat f = \widehat{g \ast f},
$$

and so by the lemma, $f\ast g = g\ast f$.

Similarly, we have
$$
\widehat{(f\ast g) \ast h} = \widehat{f\ast g} ~\hat h = \hat f ~\hat g ~\hat h = \hat f ~\widehat{g\ast h} = f\ast (g \ast h).
$$

### (ii)

Suppose that there exists some $I \in L^1$ such that $f\ast I = f$. 
Then $\widehat{f \ast I} = \hat f$ by the lemma, so $\hat f ~\hat I = \hat f$ by the above result.

But this says that $\hat f(\xi) \hat I(\xi) = \hat f(\xi)$ almost everywhere, and thus $\hat I(\xi) = 1$ almost everywhere.
Then $\lim_{\abs \xi \to \infty} \hat I (\xi) \neq 0$, which by Problem 1 shows that $I$ can not be in $L^1$, a contradiction.

# Problem 3

## (a)

### (i)

Let $g(x) = f(x-y)$. We then have
\[
\begin{align*}
\hat g(\xi) &\coloneqq \int g(x) \exp(-2\pi i x\cdot \xi) ~dx \\
&= \int f(x-y) \exp(-2\pi i x\cdot \xi) ~dx \\
&= \int f(x-y) \exp(-2\pi i (x-y) \cdot \xi) \exp(-2\pi i y\cdot \xi) ~dx \\ 
&= \exp(-2\pi i y \cdot \xi) \int f(x-y) \exp(-2\pi i (x-y) \cdot \xi) ~dx \\
&\quad\quad (t = x-y, dt = dx) \\
&= \exp(-2\pi i y \cdot \xi) \int f(t) \exp(-2\pi i t \cdot \xi) ~dt \\
&= \exp(-2\pi i y \cdot \xi) \hat f(\xi) 
.\end{align*}
\]

### (ii)

Let $h(x) = \exp(2\pi i x\ cdot y) f(x)$. We then have
\[
\begin{align*}
\hat h(\xi) &\coloneqq \int \exp(2\pi i x\cdot y) f(x) \exp(-2\pi i x \cdot \xi) ~dx \\ 
&= \int \exp(2\pi i x\cdot y - 2\pi i x \cdot \xi) f(x) ~dx \\ 
&= \int f(\xi -y) \exp(-2\pi i x \cdot (\xi - y)) ~dx\\
&= \hat f(\xi - y)
.\end{align*}
\]
## (b)

We'll use the fact that if $\inner{\wait}{\wait}$ is an inner product on a vector space $V$ and $A$ is an invertible linear transformation, then for all $\vector x, \vector y \in V$ we have 
$$
\inner{A \vector x}{\vector y} = \inner{\vector x}{A^{T} \vector y}
$$

where $A^{-T}$ denotes the transpose of the inverse of $A$ (or $(A\inv)^*$ if $V$ is complex).

We then have
\[
\begin{align*}
\frac{1}{\abs{\det T}} \hat f( T^{-T} \xi ) &= \frac{1}{\abs{\det T}} \int f(x) \exp(-2\pi i x \cdot T^{-T} \xi) ~dx \\
&\quad\quad\quad x \mapsto Tx,~~ ~dx \mapsto \abs{\det T} ~dx \\
&= \frac{1}{\abs{\det T}} \int f(Tx) \exp(-2\pi i Tx \cdot T^{-T} \xi) \abs{\det T} ~dx \\
&= \int f(Tx) \exp(-2\pi i x \cdot \xi) ~dx \\
&\quad\quad\quad \text{since } Tx \cdot T^{-T}\xi = T\inv T x \cdot \xi = x\cdot \xi \\
&= \widehat{(f\circ T)}(\xi)
.\end{align*}
\]

# Problem 4

## (a)

### (i)
Let $g(x) = xf(x)$. Then if an interchange of the derivative and the integral is justified, we have
\[
\begin{align*}
\dd{}{\xi} \hat f(\xi) &\coloneqq \dd{}{\xi} \int f(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&=_? \int f(x) \dd{}{\xi} \exp(-2\pi i x \cdot \xi) ~dx \\
&= \int f(x) 2\pi i x \exp(-2\pi i x \cdot \xi) ~dx \\
&= 2\pi i \int x f(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&\coloneqq 2\pi i \hat g (\xi)
.\end{align*}
\]

It thus remains to show that this interchange is justified.
TODO


### (ii)

We have
\[
\begin{align*}
\hat h(\xi) 
&\coloneqq \int \dd{f}{x}(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&= f(x)  \exp(-2\pi i x \cdot \xi) \Bigr\rvert_{x = -\infty}^{x = \infty} - \int f(x) (2\pi i \xi) \exp(-2\pi i x \cdot \xi) ~dx \\
&\quad\quad\quad\text{(integrating by parts)} \\
&= - \int f(x) (-2\pi i \xi) \exp(-2\pi i x \cdot \xi) ~dx \\
&\quad\quad\quad (\text{since } f(\infty) = f(-\infty) = 0) \\
&=  2\pi i \xi \int f(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&\coloneqq 2\pi i \xi \hat f(\xi)
.\end{align*}
\]

## (b)
Let $G(x) = \exp(-\pi x^2)$ and $\del_\xi$ be the operator that differentiates with respect to $\xi$. 


Then 
\[
\begin{align*}
\del_\xi \left( \frac{\hat G(\xi)}{G(\xi)} \right) 
&= \frac{ G(\xi) \del_\xi \hat G(\xi) - \hat G(\xi) \del_\xi G(\xi)}{G(\xi)^2} 
,\end{align*}
\]

and the claim is that this is zero. This happens precisely when the numerator is zero, so we'd like to show that 

\[
\begin{align*}
G(\xi) \del_\xi \hat G(\xi) - \hat G(\xi) \del_\xi G(\xi) = 0
.\end{align*}
\]

Using the following facts, 

- $\del_\xi G(\xi) = -2\pi \xi G(\xi)$ by computing directly,
- $\del_\xi \hat G(\xi) = - 2 \pi \xi \hat G(\xi)$, which follows from the following computation

\[
\begin{align*}
\del_\xi \hat G(\xi) 
&\coloneqq \del_\xi \int G(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&= \int G(x) \del_\xi \exp(-2\pi i x \cdot \xi) ~dx \\
&= \int G(x) (-2\pi i x)\exp(-2\pi i x \cdot \xi) ~dx \\
&= i \int 2\pi x G(x) \exp(-2\pi i x \cdot \xi) ~dx \\
&= i \int \del_x G(x) \exp(-2\pi i x \cdot \xi) ~ dx \\
&\coloneqq i ~\widehat{\del_x G(x)} (\xi) \\
&= i ~(2\pi i \xi \hat G(\xi)) \\
&= -2\pi \xi \hat G(\xi)
,\end{align*}
\]

we can thus write
\[
\begin{align*}
G(\xi) \del_\xi \hat G(\xi) - \hat G(\xi) \del_\xi G(\xi) 
= G(\xi)(-2\pi \xi \hat G(\xi)) - \hat G(\xi)(-2\pi \xi G(\xi)) 
,\end{align*}
\]

which is patently zero.

It follows that $\frac{\hat G(\xi)}{G(\xi)} = c_0$ for some constant $c_0$, from which it follows that $\hat G(\xi) = c_0 G(\xi)$.

Using the fact that $G(0) = 1$ by direct evaluation and $\hat G(0) = \int G(x) ~dx = 1$, we can conclude that $c_0 = 1$ and thus $\hat G(\xi) = G(\xi)$.


# Problem 5

## (a)

By a direct computation. we have

\[
\begin{align*}
\hat D(\xi) 
&\coloneqq \int_{-\frac 1 2}^{\frac 1 2} 1 e^{-2\pi i x \cdot \xi} ~dx \\
&= \int_{-\frac 1 2}^{\frac 1 2} \cos(-2\pi x\cdot \xi) + i \sin(-2\pi x\cdot \xi) ~dx \\
&= \int_{-\frac 1 2}^{\frac 1 2} \cos(-2\pi x\cdot \xi) ~dx \\
&\quad\quad\quad\text{(since $\sin$ is odd and the domain is symmetric about 0)} \\
&= 2\int_{0}^{\frac 1 2} \cos(-2\pi x\cdot \xi) ~dx \\
&\quad\quad\quad\text{(since $\cos$ is even and the domain is symmetric about 0)} \\
&= 2\left( \frac{1}{2\pi\xi} \sin(-2\pi x\cdot \xi) \Bigr\rvert_{x=0}^{x = \frac 1 2} \right) \\
&= \frac{\sin(\pi \xi)}{\pi \xi} 
.\end{align*}
\]

## (b)

### (i)
Since $F(x) = D(x) \ast D(x)$, we have $\hat F(\xi) = (\hat D(\xi))^2$ by question 2a, and so $\hat F(\xi) = \left( \frac{\sin(\pi \xi)}{\pi \xi} \right)^2$.

### (ii)

Letting $\mathcal F$ denote the Fourier transform operator, we have $\mathcal{F}^2(h)(\xi) = h(-\xi)$ for any $h\in L^1$.
In particular, if $f$ is an even function, then $f(\xi) = -f(\xi)$ and $\mathcal{F}^2(f) = f$.

In this case, letting $F$ be the box function, $F$ can be seen to be even from its definition. 
Since $f \coloneqq \mathcal{F}(F)$ by part (i), we have 
$$
\hat f \coloneqq \mathcal{F}(f) = \mathcal{F}(\mathcal{F} (F)) = \mathcal{F}^2(F) = F,
$$ 

which says that $\hat f(x) = F(x)$, the original box function.

## (c)

By a direct computation of the integral in question, we have

\[
\begin{align*}
I(x) &\coloneqq \int e^{-2\pi \abs \xi} e^{2\pi i x \xi} ~d\xi \\
&= \int_{-\infty}^0 e^{-2\pi (- \xi )} e^{-2\pi i x \xi} ~d\xi + \int_0^\infty e^{2\pi \xi} e^{2\pi i x \xi} ~d\xi \\
&= \int_{0}^\infty e^{-2\pi \xi} e^{-2\pi i x \xi} ~d\xi + \int_0^\infty e^{2\pi \xi} e^{2\pi i x \xi} ~d\xi \\
&\quad\quad\quad \text{by the change of variables $\xi \mapsto -\xi,~d\xi \mapsto -d\xi$ and swapping integration bounds} \\
&= \int_{0}^\infty e^{-2\pi \xi} e^{-2\pi i x \xi} + e^{2\pi \xi} e^{2\pi i x \xi} ~d\xi \\
&= \frac{1}{2\pi} \int_{0}^\infty e^{-u} e^{-ixu} + e^{-u} e^{ixu} ~du \\ 
&= \frac{1}{2\pi} \int_{0}^\infty e^{-u(1+ix)} + e^{-u(1-ix)} ~du \\ 
&= \frac 1 {2\pi} \left( 
\frac{-e^{-u(1+ix)}}{1+ix} \Bigr\rvert_{u=0}^{u=\infty} + 
\frac{-e^{-u(1-ix)}}{1+ix} \Bigr\rvert_{u=0}^{u=\infty}
\right) \\
&= \frac 1 {2\pi} \left( \frac 1 {1+ix} + \frac{1}{1-ix} \right) \\
&= \frac{1} {2\pi} \frac{2}{1+x^2} \\
&= \frac 1 \pi \frac{1}{1+x^2}
.\end{align*}
\]

# Problem 6
