---
title: Problem Set 8
---

# Problem 1

## Part a

It follows from the definition that $\norm{f}_\infty = 0 \iff f = 0$ almost everywhere, and if $\norm{f}_\infty$ is the best upper bound for $f$ almost everywhere, then $\norm{cf}_\infty$ is the best upper bound for $cf$ almost everywhere. 

So it remains to show the triangle inequality. Suppose that $\abs{f(x)} \leq \norm{f}_\infty$ a.e. and $\abs{g(x)} \leq \norm{g}_\infty$ a.e., then by the triangle inequality for the $\abs{\cdot}_\RR$ we have
\[
\begin{align*}
\abs{(f + g)(x)} &\leq \abs{f(x)} + \abs{g(x)} \quad a.e. \\
&\leq \norm{f}_\infty + \norm{g}_\infty \quad a.e.
,\end{align*}
\]

which means that $\norm{f+g}_\infty \leq \norm{f}_\infty + \norm{g}_\infty$ as desired.

## Part b

$\implies$: Suppose $\norm{f_n - f}_\infty \to 0$, then for every $\varepsilon$, $N_\varepsilon$ can be chosen large enough such that $\abs{f_n(x) - f(x)} < \varepsilon$ a.e., which precisely means that there exist sets $E_\varepsilon$ such that $x\in E_\varepsilon \implies \abs{f_n(x) - f(x)}$ and $m(E_\varepsilon^c) = 0$. 

But then taking the sequence $\varepsilon_n \definedas \frac 1 n \to 0$, we have $f_n \uniformlyconverges f$ uniformly on $E \definedas \intersect_n E_n$ by definition, and $E^c = \union_n E_n^c$ is still a null set.

$\impliedby$: Suppose $f_n \uniformlyconverges f$ uniformly on some set $E$ and $m(E^c) = 0$. Then for any $\varepsilon$, we can choose $N$ large enough such that $\abs{f_n(x) - f(x)} < \varepsilon$ on $E$; but then $\varepsilon$ is an upper bound for $f_n - f$ almost everywhere, so $\norm{f_n - f}_\infty < \varepsilon \to 0$.

## Part c

To see that simple functions are dense in $L^\infty(X)$, we can use the fact that $f\in L^\infty(X) \iff$ there exists a $g$ such that $f=g$ a.e. and $g$ is bounded. 

Then there is a sequence $s_n$ of simple functions such that $\norm{s_n - g}_\infty \to 0$, which follows from a proof in Folland:

![](2019-11-20-22-52-43.png)

![](2019-11-20-22-52-04.png)

However, $C^0_c(X)$ is dense $L^\infty(X) \iff$ every $f \in L^\infty(X)$ can be approximated by a sequence $\theset{g_k} \subset C^0_c(X)$ in the sense that $\norm{f - g_n}_\infty \to 0$. To see why this can *not* be the case, let $f(x) = 1$, so $\norm{f}_\infty = 1$ and let $g_n \to f$ be an arbitrary sequence of $C^0_c$ functions converging to $f$ pointwise. 

Since every $g_n$ has compact support, say $\mathrm{supp}(g_n) \definedas E_n$, then $\restrictionof{g_n}{E_n^c} \equiv 0$ and $m(E_n^c) > 0$. In particular, this means that $\norm{f - g_n}_\infty = 1$ for every $n$, so $g_n$ can not converge to $f$ in the infinity norm.

# Problem 2

## Part a

### Part i

**Lemma:** $\norm{1}_p = m(X)^{1/p}$

This follows from $\norm{1}_p^p = \int_X \abs {1}^p = \int_X 1 = m(X)$ and taking $p$th roots.
$\qed$


By Holder with $p=q=2$, we can now write

\[
\begin{align*}
&\norm{f}_1 = \norm{1 \cdot f}_1 \leq \norm{1}_2 \norm{f}_2 = m(X)^{1/2} \norm{f}_2 \\
\implies &\norm{f}_1 \leq m(X)^{1/2} \norm{f}_2
.\end{align*}
\]

Letting $M\definedas \norm{f}_\infty$, We also have 

\[
\begin{align*}
&\norm{f}_2^2 = \int_X \abs{f}^2 \leq \int_X \abs{M}^2 = M^2 \int_X 1 = M^2 m(X) \\
\implies &\norm{f}_2 \leq m(X)^{1/2} \norm{f}_\infty \\
\implies m(X)^{1/2} &\norm{f}_2 \leq m(X) \norm{f}_\infty
,\end{align*}
\]

and combining these yields 

\[
\begin{align*}
\norm{f}_1 \leq m(X)^{1/2} \norm{f}_2 \leq m(X) \norm{f}_\infty
,\end{align*}
\]

from which it immediately follows 
$$
m(X) < \infty \implies L^\infty(X) \subseteq L^2(X) \subseteq L^1(X).
$$


**The Inclusions Are Strict:**

1. $\exists f \in L^1(X)\setminus L^2(X)$: 

Let $X = [0, 1]$ and consider $f(x) = {x}^{-\frac 1 2}$. Then 
$$
\norm{f}_1 = \int_0^1 x^{-\frac 1 2} < \infty \qquad \text{by the $p$ test,}
$$

while 

$$
\norm{f}_2^2 = \int_{0}^1 {x}\inv  \to \infty \qquad \text{ by the $p$ test. }
$$

2. $\exists f \in L^2(X)\setminus L^\infty(X)$:

Take $X = [0, 1]$ and $f(x) = x^{-\frac 1 4}$. 
Then

$$
\norm{f}_2^2 = \int_0^1 x^{-\frac 1 4} < \infty \qquad \text{by the $p$ test,}
$$

while $\norm{f}_\infty > M$ for any finite $M$, since $f$ is unbounded in neighborhoods of 0, so $\norm{f}_\infty = \infty$.


### Part ii

1. $\exists f \in L^2(X)\setminus L^1(X)$ when $m(X) = \infty$:

Take $X = [1, \infty)$ and let $f(x) = x\inv$, then

\begin{align*}
\norm{f}_2^2 &= \int_0^\infty x^{-2} < \infty \qquad\text{by the $p$ test,} \\
\norm{f}_1 &= \int_0^\infty x^{-1} \to\infty \qquad\text{by the $p$ test}
.\end{align*}


2. $\exists f \in L^\infty(X)\setminus L^2(X)$ when $m(X) = \infty$:

Take $X = \RR$ and $f(x) = 1$. then

\begin{align*}
\norm{f}_\infty &= 1 \\
\norm{f}_2^2 &= \int_\RR 1 \to \infty
.\end{align*}


3. $L^2(X) \subseteq L^1(X) \implies m(X) < \infty$:

Let $f = \chi_X$, by assumption we can find a constant $M$ such that $\norm{\chi_X}_2 \leq M \norm{\chi_X}_1$. 


Then pick a sequence of sets $E_k \nearrow X$ such that $m(E_k) < \infty$ for all $k$, $\chi_{E_k} \nearrow \chi_X$, and thus $\norm{ \chi_{E_k}}_p \leq M \norm{\chi_E}_p$. 
By the lemma, $\norm{\chi_{E_k}}_p = m(E_k)^{1/p}$, so we have

\begin{align*}
\norm{\chi_{E_k}}_2 \leq M \norm{\chi_{E_k}}_1 &\implies \frac{\norm{\chi_{E_k}}_2}{\norm{\chi_{E_k}}_1} \leq M \\
&\implies \frac{m(E_k)^{1/2}}{m(E_k)} \leq M \\
&\implies m(E_k)^{-1/2} \leq M \\
&\implies m(E_k) \leq M^2 < \infty
.\end{align*}


and by continuity of measure, we have $\lim_K m(E_k) = m(X) \leq M^2 < \infty$.
$\qed$

## Part b

1. $L_1(X) \intersect L^\infty(X) \subset L^2(X)$:

Let $f\in L^1(X) \intersect L^\infty(X)$ and $M \definedas \norm{f}_\infty$, then
\begin{equation}
\norm{f}_2^2 = \int_X \abs{f}^2 = \int_X \abs{f} \abs{f} \leq \int_X M \abs{f} = M \int \abs{f} \definedas \norm{f}_\infty \norm{f}_1 < \infty.
\end{equation}

2. $L^2(X) \subset L^1(X) + L^\infty(X)$:

# Problem 3

# Problem 4

# Problem 5

# Problem 6
