---
title: Problem Set 5
---

# Problem 1

We first make the following claim (TODO):
\[
\begin{align*}
S \coloneqq \sum_{j=1}^\infty \sum_{k=1}^\infty a_{jk} &= \sup \theset{\sum_{(j, k) \in B} a_{jk} \suchthat B \subset \NN^2,~ \abs B < \infty} \\
T \coloneqq \sum_{k=1}^\infty \sum_{j=1}^\infty a_{kj} &= \sup \theset{\sum_{(j, k) \in C} a_{kj} \suchthat C \subset \NN^2,~ \abs B < \infty}
.\end{align*}
\]

We will show that $S=T$ by showing that $S\leq T$ and $T \leq S$.

Let $B \subset \NN^2$ be finite, so $B \subseteq [0, I] \cross [0, J] \subset \NN^2$. 

Now letting $R > \max(I, J)$, we can define $C = [0, R]^2$, which satisfies $B \subseteq C \subset \NN^2$ and $\abs C < \infty$.

Moreover, since $a_{jk} \geq 0$ for all pairs $(j, k)$, we have the following inequality:
$$
\sum_{(j, k) \in B} a_{jk} <
\sum_{(k, j) \in C} a_{jk} \leq 
\sum_{(k, j) \in C} a_{jk} \leq 
T,
$$

since $T$ is a supremum over *all* such sets $C$, and the terms of any finite sum can be rearranged. 

But since this holds for every $B$, we this inequality also holds for the supremum of the smaller term by order-limit laws, and so
$$
S \coloneqq \sup_B \sum_{(k, j) \in B} a_{jk} \leq
T.
$$
(Use epsilon-delta argument)

An identical argument shows that $T \leq S$, yielding the desired equality. $\qed$

# Problem 2

We want to show the following equality:
$$
\int_0^1 g(x)~dx = \int_0^1 f(x)~dx
.$$

To that end, we can rewrite this using the integral definition of $g(x)$:
$$
\int_0^1 \int_x^1 \frac{f(t)}{t} ~dt~dx = \int_0^1 f(x)~dx
$$

Note that if we can switch the order of integration, we would have 
\[
\begin{align*}
\int_0^1 \int_x^1 \frac{f(t)}{t} ~dt~dx 
&=_?
\int_0^1 \int_0^t \frac{f(t)}{t} ~dx~dt \\
&= \int_0^1 \frac{f(t)}{t} \int_0^t ~dx ~dt \\
&= \int_0^1 \frac{f(t)}{t} (t - 0) ~dt \\
&= \int_0^1 f(t) ~dt
,\end{align*}
\]

which is what we wanted to show, and so we are simply left with the task of showing that this is switch of integrals is justified.

To this end, define
\[
\begin{align*}
F: \RR^2 &\to \RR \\
(x, t) &\mapsto \frac{\chi_A(x, t) \hat{f}(x, t)}{t}
.\end{align*}
\]

where $A = \theset{(x, t) \subset \RR^2 \suchthat 0 \leq x \leq t \leq 1}$ and $\hat{f}(x, t) \coloneqq f(t)$ is the cylinder on $f$.

This defines a measurable function on $\RR^2$, since characteristic functions are measurable, the cylinder over a measurable function is measurable, and products/quotients of measurable functions are measurable.

In particular, $\abs{F}$ is measurable and non-negative, and so we can apply Tonelli to $\abs{F}$.
This allows us to write 
\[
\begin{align*}
\int_{\RR^2} \abs{F} 
&= \int_0^1 \int_0^t \abs{\frac{f(t)}{t}} ~dx~dt \\
&=
\int_0^1 \int_0^t {\frac{\abs{f(t)}}{t}} ~dx~dt \quad\text{since } t > 0 \\
&= \int_0^1 \frac{\abs{f(t)}}{t} \int_0^t ~dx~dt \\
&= \int_0^1 \abs{f(t)} < \infty
,\end{align*}
\]

where the switch is justified by Tonelli and the last inequality holds because $f$ was assumed to be measurable. 

Since this shows that $F \in L^1(\RR^2)$, and we can thus apply Fubini to $F$ to justify the initial switch. $\qed$

# Problem 3

Let $A = \theset{0 \leq x \leq y} \subset \RR^2$, and define 
\[
\begin{align*}
f(x, y) &= \frac{x^{1/3}}{(1+xy)^{3/2}} \\
F(x, y) &= \chi_A(x, y) f(x, y)
.\end{align*}
\]

Note that $F$ 
Then, if all iterated integrals exist and a switch of integration order is justified, we would have
\[
\begin{align*}
\int_{\RR^2} F 
&=_? \int_0^\infty \int_y^\infty f(x, y) ~dx~dy \\
&=_? \int_0^\infty \int_x^\infty \frac{x^{1/3}}{(1+xy)^{3/2}} ~dy~dx \\
&= 2\int_{\RR} \frac{1}{x^{2/3} \sqrt{1+x^2}} ~dx \\
&= 2\int_0^1 \frac{1}{x^{2/3} \sqrt{1+x^2}}~dx + 2\int_1^\infty \frac{1}{x^{2/3} \sqrt{1+x^2}}~dx \\
& \leq \int_0^1 x^{-2/3} ~dx + \int_0^\infty x^{-5/3} \\
&= 2(3) + 2\left(\frac 3 2\right) < \infty
,\end{align*}
\]
where the first term in the split integral is bounded by using the fact that $\sqrt{1 + x^2} \geq \sqrt{x^2} = x$, and the second term from $x> 1 \implies x > 0 \implies \sqrt{1 + x^2} \geq \sqrt{1}$.

Since $F$ is non-negative, we have $\abs F = F$, and so the above computation would imply that $F \in L^1(\RR^2)$. 
It thus remains to show that $\int F$ is equal to its iterated integrals, and that the switch of integration order is justified

Since $F$ is non-negative, Tonelli can be applied directly if $F$ is measurable in $\RR^2$.
But $f$ is measurable on $A$, since it is continuous at almost every point in $A$, and $\chi_A$ is measurable, so $F$ is a product of measurable functions and thus measurable. 

# Problem 4

## Part (a)

For any $x\in \RR^n$, let $A_x \coloneqq A \intersect (x-B)$.

We can then write $A_t \coloneqq A \intersect (t-B)$ and $A_s \coloneqq A \intersect(s-B)$, and thus
\[
\begin{align*}
g(t) - g(s) 
&= m(A_t) - m(A_s) \\
&= \int_{\RR^n} \chi_{A_t}(x) ~dx - \int_{\RR^n} \chi_{A_s}(x)~dx \\
&= \int_{\RR^n} \chi_{A_t}(x) - \chi_{A_s}(x) ~dx \\
&= \int_{\RR^n} \chi_{A_t}(x) - \chi_{A_t}(t-s+x) ~dx \\ 
&\quad\quad (\text{since } x\in s-B \iff s-x \in B \iff t-(s-x) \in t-B)
,\end{align*}
\]

and thus by continuity in $L^1$, we have
\[
\begin{align*}
\abs{g(t) - g(s)} 
&\leq \int_{\RR^n} \abs{\chi_{A_t}(x) - \chi_{A_t}(t-s+x)} ~dx \to 0 \quad \text{as}\quad t\to s 
\end{align*}
\]

which means $g$ is continuous.

To see that $\int g = m(A) m(B)$, if an interchange of integrals is justified, we can write
\[
\begin{align*}
\int_{\RR^n} g(t) ~dt 
&= \int_{\RR^n} \int_{\RR^{n}} \chi_{A_t}(x) ~dx ~dt \\ 
&= \int_{\RR^n} \int_{\RR^{n}} \chi_{A}(x) \chi_{t-B}(x, t) ~dx ~dt \\ 
&= \int_{\RR^n} \int_{\RR^{n}} \chi_{A}(x)\chi_{t-B}(x, t) ~dx ~dt \\ 
&= \int_{\RR^n} \int_{\RR^{n}} \chi_{A}(x)~ \chi_{B}(t-x) ~dx ~dt \\ 
&\quad\quad (\text{since } x\in t-B \iff t-x \in B) \\
&=_? \int_{\RR^n} \int_{\RR^{n}} \chi_{A}(x)~ \chi_{B}(t-x) ~\mathbf{dt} ~\mathbf{dx} \\ 
&= \int_{\RR^n} \chi_A(x)\int_{\RR^{n}} \chi_{B}(t-x) ~dt ~dx \\ 
&= \int_{\RR^n} \chi_{A}(x) ~m(B) ~dt \\ 
&\quad\quad (\text{by translation invariance of Lebesgue integral}) \\
&= m(B) \int_{\RR^n} \chi_{A} ~dt \\ 
&= m(B) m(A)
.\end{align*}
\]
### Justification for integral switch
To see that this is justified, we note that that the map $F(x,t) = \chi_{A}(x) ~\chi_{B}(x-t)$ is non-negative, and we claim is measurable in $\RR^{2n}$.

- The first component is $\chi_A(x)$, which is measurable on $\RR^n$, and thus the cylinder over it will be measurable on $\RR^{2n}$.
- The second component involves $\chi_B(t-x)$, which is $\chi_B(x)$ composed with a reflection (which is still measurable) followed by a translation (which is again still measurable).
- Thus, as a product of two measurable functions, the integrand is measurable.

So Tonelli applies to $\abs{F}$, and thus $\int \abs{F} = m(A) m(B) < \infty$ since $A, B$ were assumed to be bounded. But then $F$ is integrable by Fubini, and the claimed equality holds.

## Part (b)

Supposing that $m(A), m(B) > 0$, we have $\int g(t) ~dt > 0$, using the fact that $\int g = 0$ a.e. $\iff g=0$ a.e., we can conclude that if $T = \theset{t\suchthat g(t) \neq 0}$, then $m(T) > 0$.
So there is some $t\in \RR^n$ such that $g(t) \neq 0$, and since $g$ is continuous, there is in fact some open ball $B_t$ containing $t$ such that $t' \in B_t \implies g(t') \neq 0$.
So we have

- $\forall t'\in B_t, ~A\intersect t'-B \neq \emptyset \iff$
- $\forall t' \in B_t, ~\exists x \in A \intersect t' - B \iff$
- $\forall t' \in B_t,~ \exists x$ such that $x\in A$ and $x\in t'-B \iff$ 
- $\forall t' \in B_t,~ \exists x$ such that $x\in A$ and $x = t'-B$ for some $b\in B \iff$ 
- $\forall t' \in B_t,~ \exists x$ such that $x\in A$ and $t' = x+B$ for some $b\in B \iff$ 
- $\forall t' \in B_t,~ \exists t'$ such that $t'\in A+B$

And thus $B_t \subseteq A+B$.

# Problem 5

If the iterated integrals exist and are equal (so an interchange of integration order is justified), we have
\[
\begin{align*}
\int_0^1 F(x) g(x) 
&\coloneqq \int_0^1 \left(\int_0^x f(y)~dy\right)g(x) ~dx \\
&= \int_0^1 \int_0^x f(y)g(x) ~dy~dx \\
&=_? \int_0^1 \int_y^1 f(y)g(x) ~\mathbf{dx}~\mathbf{dy} \\
&= \int_0^1 f(y) \left(\int_y^1 g(x) ~dx \right) ~dy \\
&= \int_0^1 f(y)(G(1) - G(y)) ~dy \\
&= G(1)\int_0^1 f(y) ~dy - \int_0^1 f(y)G(y)~dy \\
&= G(1)(F(1) -  F(0)) - \int_0^1 f(y)G(y)~dy \\
&= G(1)F(1) - \int_0^1 f(y)G(y)~dy \quad\quad\quad\text{since } F(0) = 0
,\end{align*}
\]

which is what we want to show.

To see that this is justified, let $I = [0, 1]$ and note that the integrand can be written as $H(x, y) = \hat f(x, y) \hat g(x, y)$ where $\hat f(x, y) = \chi_I f(y)$ and $\hat g(x, y) = \chi_I g(x)$ are cylinders over $f$ and $g$ respectively. 
Since $f, g$ are in $L^1(I)$, their cylinders are measurable over $\RR \cross I$, and thus $\hat f, \hat g$ are measurable on $\RR^2$ as products of measurable functions.
Then $H$ is a measurable function as a product of measurable functions as well.

But then $\abs{H}$ is non-negative and measurable, so by Tonelli all iterated integrals will be equal. We want to show that $H \in L^1(\RR^2)$ in order to apply Fubini, so we will show that $\int \abs H < \infty$.

To that end, noting that $f, g \in L^1$, we have $\int_0^1 f \coloneqq C_f < \infty$ and $\int_0^1 g \coloneqq C_g < \infty$. Then,
\[
\begin{align*}
\int_{\RR^2} \abs H 
&= \int_0^1 \int_0^1 \abs{f(x) g(y)} ~dx ~dy \\
&= \int_0^1 \int_0^1 \abs{f(x)} ~\abs{g(y)} ~dx ~dy \\
&= \int_0^1 \abs{g(y)} \left(\int_0^1 \abs{f(x)} ~dx\right) ~dy \\
&= \int_0^1 \abs{g(y)} C_f ~dy \\
&= C_f \int_0^1 \abs{g(y)} ~dy \\
&= C_f C_g < \infty
,\end{align*}
\]

and thus by Fubini, the original interchange of integrals was justified.

# Problem 6

## Part (a)

We have

\[
\begin{align*}
\int_\RR \abs{A_h(f)(x)} ~dx 
&= \int_\RR \abs{\frac{1}{2h} \int_{x-h}^{x+h} f(y)~dy} ~dx \\
&= \frac{1}{2h} \int_\RR \abs{\int_{x-h}^{x+h} f(y)~dy}~dx    \\
&\leq \frac{1}{2h} \int_\RR \left(\int_{x-h}^{x+h} \abs{f(y)}~dy\right)~dx    \\
&= \frac{1}{2h} \int_\RR \int_{x-h}^{x+h} \abs{f(y)} ~dy ~dx    \\
&= \frac{1}{2h} \int_\RR \int_{x-h}^{x+h} \abs{f(y)} ~\mathbf{dx} ~\mathbf{dy}    \\
.\end{align*}
\]
