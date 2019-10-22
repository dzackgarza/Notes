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
But 
