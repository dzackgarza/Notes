# Spring 2019

## 1

### a

Let $\theset{f_k}$ be  a Cauchy sequence in $C(I)$.
For each fixed $x\in [0, 1]$, the sequence of real numbers $\theset{f_k(x)}$ is Cauchy in $\RR$, which is complete, since
$$
x_0\in I \implies \abs{f_k(x_0) - f_j(x_0)} \leq \sup_{x\in I} \abs{f_k(x) - f_j(x)} = \norm{f_k - f_j}_\infty \to 0,
$$

so we can define $f(x) \definedas \lim_k f_k(x)$.

We also have
\begin{align*}
\norm{f_k - f}_\infty
= \norm{f_k - \lim_{j\to\infty} f_j}_\infty 
= \lim_{j\to\infty} \norm{f_k - f_j}_\infty 
\to 0
.\end{align*}

Finally, $f$ is the uniform limit of continuous functions and thus continuous. 

$\qed$

### b

It suffices to produce a Cauchy sequence that does not converge to a continuous function. Take
\begin{align*}
f_k(x) = 
\begin{cases}
(x + \frac 1 2)^k & x \in [0, \frac 1 2) \\
1 & x \in [\frac 1 2, 1]
\end{cases}
\quad \mapsvia{k\to\infty} \quad
f(x) = 
\begin{cases}
0 & x \in [0, \frac 1 2) \\
1 & x \in [\frac 1 2, 1]
\end{cases}
,\end{align*}

which is Cauchy, but there is no $g\in L^1$ that is continuous such that $\norm{f - g}_1 = 0$.

## 2


### a

> Lemma 1: $\mu(\disjoint_{k=1}^\infty E_k) = \lim_{N\to\infty} \sum_{k=1}^N \mu(E_k)$.
> 
> Lemma 2: $A = A\setminus B ~\disjoint~ A\intersect B$.

Let $A_k = F_k \setminus F_{k+1}$, so the $A_k$ are disjoint, and let $A = \disjoint_k A_k$.


Let $F = \intersect_k F_k$. 
Then $F_1 = F \disjoint A$ by lemma 2, so
\begin{align*}
\mu(F_1) 
&= \mu(F) + \mu(A) \\
&= \mu(F) + \lim_{N\to\infty} \sum_k^N \mu(A_k) \quad \text{by Lemma 1}\\
&= \mu(F) + \lim_{N\to\infty} \sum_k^N \mu(F_k) - \mu(F_{k+1}) \\
&= \mu(F) + \lim_{N\to\infty} \left( \mu(F_1) - \mu(F_N) \right) \quad\text{(Telescoping)} \\
&=\mu(F) + \mu(F_1) - \lim_{N\to\infty} \mu(F_N)
,\end{align*}

and since the measure is finite, $\mu(F_1) < \infty$ and can be subtracted, yielding
\begin{align*}
\mu(F_1) &= \mu(F) + \mu(F_1) - \lim_{N\to\infty} \mu(F_N) \\
\implies \mu(F) &= \lim_{N\to\infty} \mu(F_N)
.\end{align*}

### b

Suppose toward a contradiction that there is some $\varepsilon > 0$ for which no such $\delta$ exists.

This means that we can take any sequence $\delta_n \to 0$ and produce sets $A_n$ such $m(A) < \delta_n$ but $\mu(A) > \varepsilon$.

So choose the sequence $\delta_n = \frac 1 {2^n}$ and define $A_n$ accordingly, and let
\begin{align*}
A = \limsup_n A_n = \intersect_{n=1}^\infty \union_{k = n}^\infty A_k
.\end{align*}

Since 
$$
\mu\left( \union_{k=n}^\infty A_k \right) \leq \sum_{k=n}^\infty \mu(A_k) \approx \frac {1}{2^n} \to 0,
$$
by part (a) we have $m(A) = 0$. 
Now by assumption, we should thus have $\mu(A) = 0$ as well.

However, again by part (a), we have
\begin{align*}
\mu(A) = \lim_n \mu\left( \union_{k=n}^\infty A_k \right)
\geq \lim_n \mu(A_n) = \lim_n \varepsilon = \varepsilon > 0
.\end{align*}

## 3

Since $f_k \to f$ almost everywhere, we have $\liminf_k f_k(x) = f(x)$ and since $\abs{f}^2 \in L^+$ we can apply Fatou:

\begin{align*}
\norm{f}_2^2
&= \int \abs{f(x)}^2  \\
&= \int \liminf_k \abs{f_k(x)}^2 \\
&\underset{\text{Fatou}}\leq\liminf_k \int \abs{f_k(x)}^2 \\
&= M^2
,\end{align*}

so $\norm{f} \leq M < \infty$ and $f\in L^2$.

Let $I = [0, 1]$.
Applying Egorov's theorem to produce sets $F_\varepsilon$ such that $f_k\converges{u}\to f$ on $F_\varepsilon$ and taking $F = \intersect F_\varepsilon$, we have
\begin{align*}
\int_I f_k 
&= \int_{F_\varepsilon}f_k + \int_{F_\varepsilon^c} f_k 
\quad \converges{\varepsilon \to 0}\to \quad 
\int_F f_k + 0 
\quad  \converges{k\to\infty}\to \quad 
\int_F f
,\end{align*}
using that fact that uniform converges allows commuting limits and integrals.

## 4

### a

$\implies$:

> Idea: $\mathcal{A} = \theset{f(x) - t \geq 0} \intersect \theset{t \geq 0}$.

Define $F(x, t) = f(x)$, $G(x, t) = t$, and $H(x, y) = F(x, t) - G(x, t)$, which are all measurable functions.

Then $\mathcal{A} = \theset{H \geq 0} \intersect \theset{G \geq 0}$ which is an intersection of measurable sets.


$\impliedby$:

By F.T., for almost every $x\in \RR^n$, the $x\dash$slices are measurable, so
\begin{align*}
\mathcal{A}_x \definedas \theset{t\in \RR \suchthat (x, t) \in \mathcal{A}} = [0, f(x)] \implies m(\mathcal A_x) = f(x)
\end{align*}

But $x \mapsto m(\mathcal A_x)$ is a measurable function, and is exactly to $x \mapsto f(x)$, so $f$ is measurable.


### b

We first note
\begin{align*}
\mathcal{A} &= \theset{(x, t) \in \RR^n\cross \RR \suchthat 0 \leq t \leq f(x)} 
\\
\mathcal{A}_t &= \theset{x
\in \RR^n \suchthat t\leq f(x) }
.\end{align*}

Then,
\begin{align*}
\int_{\RR^n} f(x) ~dx 
&= \int_{\RR^n} \int_0^{f(x)} 1 ~dt~dx \\
&= \int_{\RR^n} \int_{\RR} \chi_\mathcal{A} ~dt~dx \\
&\overset{F.T.}= \int_{\RR} \int_{\RR^n} \chi_\mathcal{A} ~dx~dt\\
&= \int_0^\infty \int_{\RR^n} \chi_\mathcal{A} ~dx~dt\\
&= \int_0^\infty m(\mathcal{A}_t) ~dt
,\end{align*}

where we just note that $\int \int \chi_\mathcal{A} = m(\mathcal{A})$, and by F.T., all of these integrals are equal.

## 5

### a

By Holder's inequality with $p=q=2$, we have
\begin{align*}
\norm{f}_1 = \norm{f\cdot 1}_1 \leq \norm{f}_2 \norm{1}_2 = \norm{f}_2 m(X)^{\frac 1 2} = \norm{f}_2,
\end{align*}

since $X = [0, 1] \implies m(X) = 1$.

So $L^2(X) \subseteq L^1(X)$, and since simple functions are dense in both spaces, $L^2$ is dense in $L^1$.

### b


#### Step 1

Let $\Lambda \in L^1(X)\dual$; we'll show that in fact $\Lambda \in L^2(X)\dual$, and by Riesz Representation for $L^2$ there will be a $g\in L^2$ such that $\Lambda(f) = \inner{f}{g}$.


**Lemma**: 
$m(X) < \infty \implies L^p(X) \subset L^2(X)$.

> *Proof:*
> Write Holder's inequality as $\norm{fg}_1 \leq \norm{f}_a \norm{g}_b$ where $\frac 1 a + \frac 1 b = 1$, then
\begin{align*}
\norm{f}_p^p = \norm{\abs f^p}_1 \leq \norm{\abs f^p}_a ~\norm{1}_b
.\end{align*}
>
> Now take $a = \frac 2 p$ and this reduces to 
\begin{align*}
\norm{f}_p^p &\leq \norm{f}_2^p ~m(X)^{\frac 1 b} \\
\implies \norm{f}_p &\leq \norm{f}_2 \cdot O(m(X)) < \infty
.\end{align*}

Let $f\in L^2$ be arbitrary --
by the lemma, $\norm{f}_1 \leq C\norm{f}_2$ for some constant $C = O(m(X))$.

Since $\norm{\Lambda}_{1\dual} \definedas \displaystyle\sup_{\norm{f}_1 = 1} \abs{\Lambda(f)}$, given an arbitrary $f\in L^1$, we can define $\hat f = f/\norm{f}_1$, so $\norm{\hat f}_1 = 1$, and obtain

\begin{align*}
\abs{\Lambda(\hat f)} \leq \norm{\Lambda}_{1\dual}
,\end{align*}

since $\norm{\Lambda}_{1\dual}$ is the *least* such bound over all $f\in L^1$, and thus

\begin{align*}
\frac{\abs{\Lambda(f)}}{\norm{f}_1} &= \abs{\Lambda(\hat f)} \leq \norm{\Lambda}_{1\dual} \\
\implies \abs{\Lambda(f)} 
&\leq \norm{\Lambda}_{1\dual} \cdot \norm{f}_1 \\
&\leq \norm{\Lambda}_{1\dual} \cdot C \norm{f}_2 
,\end{align*}

which is finite by assumption.
So $\Lambda \in (L^2)\dual$ since it is bounded and thus continuous.

By Riesz Representation for $L^2$, there is a $g \in L^2$ such that for all $f\in L^2$,  $\Lambda(f) = \inner{f}{g}$ 

#### Step 2

By Holder, we already have

\begin{align*}
\norm{\Lambda}_{1\dual} 
&= \sup_{\norm{f}_1 = 1} \abs{\Lambda(f)} \\
&= \sup_{\norm{f}_1 = 1} \abs{\int_X fg} \\
&\leq \sup_{\norm{f}_1 = 1} \norm{fg}_1 \\
&\leq \sup_{\norm{f}_1 = 1} \norm{f}_1 \norm{g}_\infty \\
&= \norm{g}_\infty
,\end{align*}

so it just remains to show that $\norm{g}_\infty \leq \norm{\Lambda}_{1\dual}$.

Suppose otherwise, so $\norm{g}_\infty > \norm{\Lambda}_{1\dual}$.

Then there exists some $E\subseteq X$ with $m(E) > 0$ such that $x\in E \implies \abs{g(x)} > \norm{\Lambda}_{1\dual}$.

Define 
\begin{align*}
h = \frac{1}{m(E)} \frac{\overline{g}}{\abs g} \chi_E
.\end{align*}

\begin{align*}
\Lambda(h) &= \int_X hg \\
&= \int_X \frac{1}{m(E)} \frac{g \overline g}{\abs g} \chi_E \\
&= \frac{1}{m(E)} \int_E \abs{g} \\
&\geq \frac{1}{m(E)} \norm{g}_\infty m(E) \\
&= \norm{g}_\infty \\
&> \norm{\Lambda}_{1\dual}
,\end{align*}

a contradiction.

$\qed$