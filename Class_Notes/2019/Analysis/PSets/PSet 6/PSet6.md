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
\widehat(f\ast g)( \xi ) &\coloneqq \int \int f(x-y) g(y)~ e^{-2\pi x \cdot \xi} ~dy~dx \\
&=_? \int \int f(x-y) g(y)~ e^{-2\pi x \cdot \xi} ~dx~dy \\
&= \int \int f(t) e^{-2\pi i (x-y) \cdot \xi} ~g(y) ~e^{-2\pi i y \cdot \xi} ~dx ~dy \\
&\quad\quad (t = x-y, ~dt = ~dx) \\
&= \int \int f(t) e^{-2\pi i t \cdot \xi} g(y) e^{-2\pi i y \cdot \xi} ~dt~dy \\
&= \int f(t) e^{-2\pi i t \cdot \xi} \left( \int g(y) e^{-2\pi i y \cdot \xi} ~dy \right) ~dt \\
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
Then $$\lim_{\abs \xi \to \infty} \hat I (\xi) \neq 0,$$ 
which by Problem 1 shows that $I$ can not be in $L^1$, a contradiction.

# Problem 3

## (a)

### (i)

Let $g(x) = f(x-y)$. We then have
\[
\begin{align*}
\hat g(\xi) &\coloneqq \int g(x) e^{-2\pi i x\cdot \xi} ~dx \\
&= \int f(x-y) e^{-2\pi i x\cdot \xi} ~dx \\
&= \int f(x-y) e^{-2\pi i (x-y) \cdot \xi} e^{-2\pi i y\cdot \xi} ~dx \\ 
&= e^{-2\pi i y \cdot \xi} \int f(x-y) e^{-2\pi i (x-y) \cdot \xi} ~dx \\
&\quad\quad (t = x-y, dt = dx) \\
&= e^{-2\pi i y \cdot \xi} \int f(t) e^{-2\pi i t \cdot \xi} ~dt \\
&= e^{-2\pi i y \cdot \xi} \hat f(\xi) 
.\end{align*}
\]

### (ii)

Let $h(x) = e^{2\pi i x\cdot y} f(x)$. We then have
\[
\begin{align*}
\hat h(\xi) &\coloneqq \int e^{2\pi i x\cdot y} f(x) e^{-2\pi i x \cdot \xi} ~dx \\ 
&= \int e^{2\pi i x\cdot y - 2\pi i x \cdot \xi) f(x} ~dx \\ 
&= \int f(\xi -y) e^{-2\pi i x \cdot (\xi - y)} ~dx\\
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
\frac{1}{\abs{\det T}} \hat f( T^{-T} \xi ) &= \frac{1}{\abs{\det T}} \int f(x) e^{-2\pi i x \cdot T^{-T} \xi} ~dx \\
&\quad\quad\quad x \mapsto Tx,~~ ~dx \mapsto \abs{\det T} ~dx \\
&= \frac{1}{\abs{\det T}} \int f(Tx) e^{-2\pi i Tx \cdot T^{-T} \xi} \abs{\det T} ~dx \\
&= \int f(Tx) e^{-2\pi i x \cdot \xi} ~dx \\
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
\dd{}{\xi} \hat f(\xi) &\coloneqq \dd{}{\xi} \int f(x) e^{-2\pi i x \cdot \xi} ~dx \\
&=_? \int f(x) \dd{}{\xi} e^{-2\pi i x \cdot \xi} ~dx \\
&= \int f(x) 2\pi i x e^{-2\pi i x \cdot \xi} ~dx \\
&= 2\pi i \int x f(x) e^{-2\pi i x \cdot \xi} ~dx \\
&\coloneqq 2\pi i \hat g (\xi)
.\end{align*}
\]
> To see that the interchange is justified, we just note that we can apply the dominated convergence theorem, since $\int \abs{f(x) e^{-2\pi i x \cdot \xi}} \leq \int \abs{f} < \infty$, where we assumed $f\in L^1$.

### (ii)

We have
\[
\begin{align*}
\hat h(\xi) 
&\coloneqq \int \dd{f}{x}(x) e^{-2\pi i x \cdot \xi} ~dx \\
&= f(x)  e^{-2\pi i x \cdot \xi} \Bigr\rvert_{x = -\infty}^{x = \infty} - \int f(x) (2\pi i \xi) e^{-2\pi i x \cdot \xi} ~dx \\
&\quad\quad\quad\text{(integrating by parts)} \\
&= - \int f(x) (-2\pi i \xi) e^{-2\pi i x \cdot \xi} ~dx \\
&\quad\quad\quad (\text{since } f(\infty) = f(-\infty) = 0) \\
&=  2\pi i \xi \int f(x) e^{-2\pi i x \cdot \xi} ~dx \\
&\coloneqq 2\pi i \xi \hat f(\xi)
.\end{align*}
\]

## (b)
Let $G(x) = e^{-\pi x^2}$ and $\del_\xi$ be the operator that differentiates with respect to $\xi$. 


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

A direct computation shows that
\[
\begin{align}
\del_\xi G(\xi) = -2\pi \xi G(\xi)
,\end{align}
\]

and we claim that $\del_\xi \hat G(\xi) = - 2 \pi \xi \hat G(\xi)$ as well, which follows from the following computation:

\[
\begin{align*}
\del_\xi \hat G(\xi) 
&\coloneqq \del_\xi \int G(x) e^{-2\pi i x \cdot \xi} ~dx \\
&= \int G(x) \del_\xi e^{-2\pi i x \cdot \xi} ~dx \\
&= \int G(x) (-2\pi i x)e^{-2\pi i x \cdot \xi} ~dx \\
&= \int G(x) (-2\pi i x)e^{-2\pi i x \cdot \xi} ~dx \\
&= i \int 2\pi x G(x) e^{-2\pi i x \cdot \xi} ~dx \\
&= i \int \del_x G(x) e^{-2\pi i x \cdot \xi} ~ dx \quad\quad\text{by (1)} \\
&\coloneqq i ~\widehat{\del_x G(x)} (\xi) \\
&= i ~(2\pi i \xi \hat G(\xi))\quad\quad\text{by part (i)}  \\
&= -2\pi \xi \hat G(\xi)
.\end{align*}
\]

We can thus write
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
&\coloneqq \int_{-\frac 1 2}^{\frac 1 2} 1 e^{-2\pi i x \xi} ~dx \\
&= \int_{-\frac 1 2}^{\frac 1 2} \cos(-2\pi x\xi) + i \sin(-2\pi x\xi) ~dx \\
&= \int_{-\frac 1 2}^{\frac 1 2} \cos(-2\pi x\xi) ~dx \\
&\quad\quad\quad\text{(since $\sin$ is odd and the domain is symmetric about 0)} \\
&= 2\int_{0}^{\frac 1 2} \cos(-2\pi x\xi) ~dx \\
&\quad\quad\quad\text{(since $\cos$ is even and the domain is symmetric about 0)} \\
&= 2\left( \frac{1}{2\pi\xi} \sin(-2\pi x\xi) \Bigr\rvert_{x=0}^{x = \frac 1 2} \right) \\
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
,\end{align*}
\]

so $P(x) = I(x)$.

Then, by the Fourier inversion formula, we have
\[
\begin{align*}
I(x) = P(x) &= \int \hat P(\xi) e^{-2\pi i x \xi} ~dx \\
\implies \int e^{-2\pi \abs \xi} e^{2\pi i x \xi} &= \int \hat P(\xi) e^{-2\pi i x \xi} ~dx \\
\implies \int e^{-2\pi \abs \xi} e^{2\pi i x \xi}  - \hat P(\xi) e^{-2\pi i x \xi} ~dx  &= 0\\
\implies \int \left( e^{-2\pi \abs \xi}  - \hat P(\xi)\right) e^{-2\pi i x \xi} ~dx  &= 0\\
\implies \left( e^{-2\pi \abs \xi}  - \hat P(\xi)\right) e^{-2\pi i x \xi} &=_{a.e.} 0\\
\implies e^{-2\pi \abs \xi} &=_{a.e} \hat P(\xi)
,\end{align*}
\]

where equality is almost everywhere and follows from the fact that if $\int f = 0$ then $f=0$ almost everywhere.

# Problem 6

We first note that if $G_t(x) \coloneqq t^{-n} e^{-\pi \abs{x}^2 / t^2}$, then $\hat G_t (\xi) = e^{-\pi t^2 \abs{\xi}^2}$.

Moreover, if an interchange of integrals is justified, we have have
\[
\begin{align*}
\norm{f}_1 &\coloneqq
\int_{\RR^n} \abs{\int_0^\infty G_t(x) e^{-\pi t^2} t^{2\varepsilon - 1} ~dt  } ~dx \\
&= \int_{\RR^n} \int_0^\infty G_t(x) e^{-\pi t^2} t^{2\varepsilon - 1} ~dt ~dx \\
&\quad\quad \text{since the integrand and thus integral is positive.} \\
&=_? \int_0^\infty \int_{\RR^n} G_t(x) e^{-\pi t^2} t^{2\varepsilon - 1} ~dx ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon - 1} \left( \int_{\RR^n} G_t(x) ~dx \right) ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon - 1} \left( 1 \right) ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon - 1} ~dt
,\end{align*}
\]

which we claim is finite, so $f\in L^1$.

To see that the norm is finite, we note that $$t \in [0, 1] \implies e^{-\pi t^2} < 1$$ and if we take $\varepsilon < \frac 1 2$, we have $2 \varepsilon - 1 < 0$ and thus $$t \in [1, \infty) \implies t^{2\varepsilon - 1} \leq 1.$$
Thus
\[
\begin{align*}
\int_0^\infty e^{-\pi t^2} t^{2\varepsilon - 1} ~dt
&= \int_0^1 e^{-\pi t^2} t^{2\varepsilon - 1} ~dt
+ \int_1^\infty e^{-\pi t^2} t^{2\varepsilon - 1} ~dt \\
& \leq \int_0^1 t^{2\varepsilon - 1} ~dt + \int_1^\infty e^{-\pi t^2} ~dt \\
& \leq \int_0^1 t^{2\varepsilon - 1} ~dt + \int_0^\infty e^{-\pi t^2} ~dt \\
&= \frac 1 {2\varepsilon} + \frac{1}{2} < \infty
,\end{align*}
\]

where the first term is obtained by directly evaluating the integral, and the second is derived from the fact that its integral over the real line is 1 and it is an even function.

> Justifying the interchange: we note that the integrand $G_t(x) e^{-\pi t^2} t^{2\varepsilon - 1}$ is non-negative, and we've just showed that one of the iterated integrals is absolutely convergent, so Tonelli will apply if the integrand is measurable. 
> But $G_t(x)$ is a continuous function on $\RR^n$ and the remaining terms are continuous on $\RR$, so
> they are all measurable on $\RR^n$ and $\RR$ respectively 
> But then taking cylinders on everything in sight yields measurable functions, and the product of measurable functions is measurable. 


If another interchange of integrals is justified, we can compute

\[
\begin{align*}
\hat f(\xi) 
&\coloneqq \int_{\RR^n} \left( \int_0^\infty G_t(x) e^{-\pi t^2} t^{2\varepsilon -1} ~dt \right) e^{-2\pi i x \cdot \xi} ~dx \\
&= \int_{\RR^n} \int_0^\infty G_t(x) e^{-\pi t^2} t^{2\varepsilon -1} e^{-2\pi i x \cdot \xi} ~dt ~dx \\
&=_? \int_0^\infty \int_{\RR^n} G_t(x) e^{-\pi t^2} t^{2\varepsilon -1} e^{-2\pi i x \cdot \xi} ~dx ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon -1} \left( \int_{\RR^n} G_t(x) e^{-2\pi i x \cdot \xi} ~dx \right) ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon -1} \hat G_t(\xi) ~dt \\
&= \int_0^\infty e^{-\pi t^2} t^{2\varepsilon -1} e^{-\pi t^2 \abs{\xi}^2} ~dt \\
&= \int_0^\infty e^{-\pi t^2(1 + \abs{\xi}^2)} t^{2\varepsilon -1} ~dt \\
&= \int_0^\infty e^{-\pi (t\sqrt{1 + \abs{\xi}^2})^2 } t^{2\varepsilon -1} ~dt \\
&\quad\quad s = t\sqrt{1 + \abs{\xi}^2},~ ds = \sqrt{1+\abs{\xi}^2} dt \\
&= \int_0^\infty e^{-\pi s^2} \left( \frac{s}{\sqrt{1-\abs{\xi}^2}} \right)^{2\varepsilon - 1} \frac{1}{\sqrt{1 + \abs{\xi}^2}} ~ds \\
&= (1 + \abs{\xi}^2)^{- \frac{2\varepsilon - 1}{2}} (1 + \abs{\xi}^2)^{- \frac 1 2} \int_0^\infty e^{-\pi s^2} s^{2\varepsilon - 1} ~ds \\
&= (1 + \abs{\xi}^2)^{-\varepsilon} \int e^{-\pi t^2} t^{2\varepsilon - 1} ~dt \\
&\coloneqq F(\xi) \norm{f}_1
.\end{align*}
\]


> To see that the interchange is justified, note that 
\[
\begin{align*}
\int_{\RR^n} \int_0^\infty \abs{G_t(x) e^{-\pi t^2} t^{2\varepsilon -1} e^{-2\pi i x \cdot \xi} }~dt ~dx =
\int_{\RR^n} \int_0^\infty \abs{G_t(x) e^{-\pi t^2} t^{2\varepsilon -1}} ~dt ~dx 
,\end{align*}
\]
> since $\abs{e^{2\pi i x \cdot \xi}} = 1$. The integrand appearing is precisely what we showed was measurable when computed $\norm{f}_1$ above, so Tonelli applies.

Thus $F(\xi)$ is the Fourier transform of the function $g(x) \coloneqq f(x)/\norm{f}_1$. $\qed$
