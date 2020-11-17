# Real Analysis

## Notation

:::{.definition title="Continuously Differentiable"}
A function is **continuously differentiable** iff $f$ is differentiable and $f'$ is continuous.

Conventions:

- *Integrable* means *Riemann integrable*.

:::
\[  
f && \text{a functional }\RR^n \to \RR \\
\vector{f} && \text{a function } \RR^n\to \RR^m \\
A, E, U, V && \text{open sets} \\
A' && \text{the limit points of }A \\
\bar{A} && \text{the closure of }A \\
A\interior\da A\sm A' && \text{the interior of }A \\
K && \text{a compact set} \\
\mathcal{R}_A && \text{the space of Riemann integral functions on }A \\
C^j(A) && \text{the space of }j\text{ times continuously differentiable functions }f: \RR^n \to \RR \\
\ts{f_n} && \text{a sequence of functions} \\
\ts{x_n} && \text{a sequence of real numbers}\\
f_n \to f && \text{pointwise convergence} \\
f_n \uniformlyconverges f && \text{uniform convergence} \\
x_n \increasesto x && x_i\leq x_j \text{ and }x_j\text{ converges to }x \\
x_n \decreasesto x && x_i\geq x_j \text{ and }x_j\text{ converges to }x \\
\sum_{k\in \NN} f_k && \text{a series}\\
D(f) && \text{the set of discontinuities of }f
.\]


## Big Ideas

Summary for GRE:

- Limits,
- Continuity,
- Boundedness,
- Compactness,
- Definitions of topological spaces,
- Lipschitz continuity
- Sequences and series of functions.


- Know the interactions between the following major operations:
  - Continuity (pointwise limits)
  - Differentiability
  - Integrability
  - Limits of sequences
  - Limits of series/sums
- The derivative of a continuous function need not be continuous
- A continuous function need not be differentiable
- A uniform limit of differentiable functions need not be differentiable
- A limit of integrable functions need not be integrable
- An integrable function need not be continuous
- An integrable function need not be differentiable


:::{.theorem title="Generalized Mean Value Theore"}
\[
f,g\text{ differentiable on } [a,b] \implies \exists c\in[a,b] :
\left[f ( b ) - f ( a ) \right] g' ( c ) = \left[g ( b ) - g ( a )\right] f' ( c )
\]
:::

:::{.corollary title="Mean Value Theorem"}
?
\todo[inline]{todo}
:::

:::{.theorem title="Lagrange Remainder Theorem"}
If $f$ is smooth on $(-R, R)$ and define
\[  
a_n \da {f^{(n)}(0) \over n! } && S_N(x) \da \sum_{j=0}^N a_n x^n && E_N(x) \da  f(x) - S_N(x)
.\]
Then given $x\neq 0$, there exists a point $\xi$ with $\abs{\xi} < \abs{x}$ such that
\[  
E_N(x) = {f^{(N+1)}(\xi) \over (N+1)! }x^{N+1}
.\]
:::



## Important Examples


## Limits

\todo[inline]{todo}

## Commuting Limits


- Suppose $f_n \to f$ (pointwise, not necessarily uniformly)
- Let $F(x) = \int f(t)$ be an antiderivative of $f$
- Let $f'(x) = \frac{\partial f}{\partial x}(x)$ be the derivative of $f$.

Then consider the following possible ways to commute various limiting operations:

Does taking the derivative of the integral of a function always return the original function?
\[
[\frac{\partial}{\partial x}, \int dx]:\qquad\qquad \frac{\partial}{\partial x}\int f(x, t)dt =_? \int \frac{\partial}{\partial x} f(x, t)dt\\
\text{}
\]

**Answer**: Sort of (but possibly not).

**Counterexample**: 
\[
f(x) = 
\begin{cases}
1 & x > 0 \\ 
-1 & x \leq 0
\end{cases}
\implies \int f \approx \abs{x},
\]
which is not differentiable. (This is remedied by the so-called "weak derivative")

**Sufficient Condition**: If $f$ is continuous, then both are always equal to $f(x)$ by the FTC.

---

Is the derivative of a continuous function always continuous?
\[
[\frac{\partial}{\partial x}, \lim_{x_i\to x}]:\qquad\qquad
\lim_{x_i \to x} f'(x_n) =_? f'(\lim_{x_i\to x} x)
\]
**Answer**: No.

**Counterexample**:
\[
f ( x ) = \left\{ \begin{array} { l l } { x ^ { 2 } \sin ( 1 / x ) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
\implies f ^ { \prime } ( x ) = \left\{ \begin{array} { l l } { 2 x \sin \left( \frac { 1 } { x } \right) - \cos \left( \frac { 1 } { x } \right) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
\]
which is discontinuous at zero.

**Sufficient Condition**: There doesn't seem to be a general one (which is perhaps why we study $C^k$ functions).


---

Is the limit of a sequence of differentiable functions differentiable **and** the derivative of the limit?

\[
[\frac{\partial}{\partial x}, \lim_{f_n \to f}]:\qquad\qquad \lim_{f_n \to f}\frac{\partial}{\partial x}f_n(x) =_? \frac{\partial }{\partial x}\lim_{f_n \to f} f_n(x)
\]
**Answer**: *Super* no -- even the uniform limit of differentiable functions need not be differentiable!

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows f = 0$ but $f_n' \not\to f' = 0$

**Sufficient Condition**: $f_n \rightrightarrows f$ and $f_n \in C^1$.

---

Is the limit of a sequence of integrable functions integrable **and** the integral of the limit?

\[
[\int dx, \lim_{f_n \to f}](f):\qquad\qquad
\lim_{f_n \to f}\int f_n(x) dx =_? \int \lim_{f_n \to f} f_n(x) dx
\]

**Answer**: No.

**Counterexample**: Order $\QQ\intersect[0,1]$ as $\theset{q_i}_{i\in\NN}$, then take
\[
f_n(x) = \sum_{i=1}^n \indic{q_n} \to \indic{{\QQ\intersect[0,1]}}
\]
where each $f_n$ integrates to zero (only finitely many discontinuities) but $f$ is not Riemann-integrable.

**Sufficient Condition**:
- $f_n \rightrightarrows f$, or
- $f$ integrable and $\exists M: \forall n, \abs{f_n} < M$ ($f_n$ uniformly bounded)

---

Is the integral of a continuous function also continuous?

\[
[\int dx, \lim_{x_i \to x}]:\qquad\qquad
\lim_{x_i \to x} F(x_i) =_? F(\lim_{x_i \to x} x_i)
\]

**Answer**: Yes.

**Proof**: $|f(x)| < M$ on $I$, so given $c$ pick a sequence $x\to c$. Then 
\[
\abs{f(x)} < M \implies \left\vert \int_c^x f(t)dt \right\vert < \int_c^x M dt \implies \abs{F(x) - F(c)} < M(b-a) \to 0
\]

---

Is the limit of a sequence of continuous functions also continuous?

\[
[\lim_{x_i \to x}, \lim_{f_n \to f}]: \qquad\qquad
\lim_{f_n \to f}\lim_{x_i \to x} f(x_i) =_? \lim_{x_i \to x}\lim_{f_n \to f} f_n(x_i)\\
\text{}\\
\]

**Answer**: No.

**Counterexample**: $f_n(x) = x^n \to \delta(1)$

**Sufficient Condition**: $f_n \rightrightarrows f$

---

Does a sum of differentiable functions necessarily converge to a differentiable function?

\[
\left[\frac{\partial}{\partial x}, \sum_{f_n}\right]: \qquad\qquad
\frac{\partial}{\partial x} \sum_{k=1}^\infty f_k =_? \sum_{k=1}^\infty \frac{\partial}{\partial x} f_k \\
\text{} \\
\text{}\\
\]

**Answer**: No.

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows 0 \definedas f$, but $f_n' = \sqrt{n}\cos(nx) \not\to 0 = f'$ (at, say, $x=0$)

**Sufficient Condition**: When $f_n \in C^1, \exists x_0: f_n(x_0) \to f(x_0)$ and $\sum \norm{f_n'}_\infty < \infty$ (continuously differentiable, converges at a point, and the derivatives absolutely converge)

---

## Continuity


:::{.definition title="Limit definition of continuity"}
\[
f\text{ continuous } \iff \lim_{x \to p} f(x) = f(p)
\]
:::

:::{.definition title="$\eps\dash\delta$ definition of continuity"}
\[
f:(X, d_X) \to (Y, d_Y) \text{ continuous } \iff \forall \varepsilon,~ \exists \delta \mid ~
d_X(x,y) < \delta \implies d_Y(f(x), f(y)) < \varepsilon
\]
:::

:::{.example title="A nonobviously discontinuous function"}
\[
f(x) = \sin\qty{ \frac{1}{x} } \implies 0\in D(f)
\]
:::

:::{.proof title="?"}
\todo[inline]{todo}
:::

:::{.example title="The Dirichlet function"}
The Dirichlet function is nowhere continuous:
\[
f(x) = \indic{\QQ}
\]
:::


:::{.proposition title="Thomae's function: the set of points of continuity and of discontinuity can both be infinite"}
The following function continuous at infinitely many points and discontinuous at infinitely many points:
\[
f(x) = 
\begin{cases}
0 & x\in\RR\sm\QQ \\
\frac{1}{q} & x = \frac{p}{q} \in \QQ
\end{cases}
\]
Then $f$ is discontinuous on $\QQ$ and continuous on $\RR\sm\QQ$.
:::

:::{.proof title="?"}
\envlist
**$f$ is continuous on $\QQ$**:

- Fix $\varepsilon$, let $x_0 \in \RR-\QQ$, choose $n: \frac{1}{n} < \varepsilon$ using Archimedean property.
  - Define $S = \theset{x\in\QQ: x\in (0,1), x=\frac{m}{n'}, n' < n}$
  - Then $\abs{S} \leq 1+2+\cdots (n-1)$, so choose $\delta = \min_{s\in S}\abs{s-x_0}$
  - Then 
\[
x \in N_\delta(x_0) \implies f(x) < \frac{1}{n} < \varepsilon
.\]

**$f$ is discontinuous on $\RR\sm\QQ$**:

- Let $x_0 = \frac{p}{q} \in \QQ$ and $\theset{x_n} = \theset{x-\frac{1}{n\sqrt 2}}$. Then 
\[
x_n \uparrow x_0\text{ but } f(x_n) = 0 \to 0 \neq \frac{1}{q} = f(x_0)
\]
:::


:::{.remark}
There are no functions that are continuous on $\QQ$ but discontinuous on $\RR-\QQ$
:::


:::{.definition title="Uniform Continuity"}
\todo[inline]{todo}
:::

:::{.definition title="Absolute Continuity"}

:::

:::{.theorem title="Extreme Value Theorem"}
A continuous function on a compact space attains its extrema.
:::


### Lipschitz Continuity

## Differentiability

\[
f'(p) \definedas \frac{\partial f}{\partial x}(p) = \lim_{x\to p} \frac{f(x) - f(p)}{x-p}
\]

- For multivariable functions: existence **and continuity** of $\frac{\partial \mathbf{f}}{\partial x_i} \forall i \implies \mathbf{f}$ differentiable
	- Necessity of continuity: example of a continuous functions with all partial and directional derivatives that is not differentiable:
\[  
f(x, y) = 
\begin{cases}
\frac{y^3}{x^2+y^2} & (x,y) \neq (0,0) \\ 
0 & \text{else}
\end{cases}
.\]

### Properties, strongest to weakest
\[  
C^\infty \subsetneq C^k \subsetneq \text{ differentiable } \subsetneq C^0 \subset \mathcal{R}_K
.\]

- Example showing $f\in C^0 \notimplies f$ is differentiable **and** $f$ not differentiable $\notimplies f \not\in C^0$.
	- Take $f(x) = \abs{x}$ at $x=0$.
- Example showing that $f$ differentiable $\notimplies f \in C^1$:
	- Take 
\[
f(x) = 
\begin{cases}
x^2\sin\qty{ \frac{1}{x} } & x \neq 0 \\ 
0 & x =0
\end{cases}
\implies f'(x) = 
\begin{cases}
-\cos\qty{\frac{1}{x}} + 2x\sin\qty{ \frac{1}{x} } & x \neq 0 \\ 
0 & x=0
\end{cases}
\]
  but $\lim_{x\to 0}f'(x)$ does not exist and thus $f'$ is not continuous at zero.

Proof that $f$ differentiable $\implies f \in C^0$:
\[
f(x) - f(p) = \frac{f(x)-f(p)}{x-p}(x-p) \stackrel{\tiny\mbox{hypothesis}}{=} f'(p)(x-p) \stackrel{\tiny\mbox{$x\to p$}}\rightrightarrows 0
\]

## Giant Table of Relations

Bold are assumed hypothesis, regular text is the strongest conclusion you can reach, strikeout denotes implications that aren't necessarily true.

\[
f' && f && \therefore f && F \\
\hline \\
\cancel{\text{exists}} && \mathbf{continuous} &&  \text{K-integrable} && \text{exists} \\
\cancel{\text{continuous}} && \mathbf{differentiable}  && \text{continuous} && \text{exists} \\
\cancel{\text{exists}} && \mathbf{integrable} && \cancel{\text{continuous}} && \text{differentiable} \\
\]

Explanation of items in table:

- K-integrable: compactly integrable.
- $f$ integrable $\implies F$ differentiable $\implies F \in C_0$
	- By definition and FTC, and differentiability $\implies$ continuity
- $f$ differentiable and $K$ compact $\implies f$ integrable on $K$.
	- In general, $f$ differentiable $\notimplies f$ integrable. Necessity of compactness: 
  \[  
  f(x) = e^x \in C^\infty(\RR)\text{ but }\int_\RR e^x dx \to \infty
  .\]
- $f$ integrable $\notimplies f$ differentiable
	- An integrable function that is not differentiable: $f(x) = |x|$ on $\RR$
- $f$ differentiable $\implies f$ continuous a.e.

## Integrability

- Sufficient criteria for Riemann integrability:
	- $f$ continuous
	- $f$ bounded and continuous almost everywhere, or
	- $f$ uniformly continuous
- $f$ integrable $\iff$ bounded and continuous a.e.

:::{.theorem title="FTC for the Riemann Integral"}
If $F$ is a differentiable function on the interval $[a,b]$, and $F'$ is bounded and continuous a.e., then $F' \in L_R([a, b])$ and 
\[
\forall x\in [a,b]: \int_a^x F'(t)~dt=F(x)-F(a)
\]

Suppose $f$ bounded and continuous a.e. on $[a,b]$, and define 
\[
F(x) \definedas \int_a^x f(t)~dt
\]
Then $F$ is absolutely continuous on $[a,b]$, and for $p \in [a,b]$,
\[
f \in C^0(p) \implies F \text{ differentiable at } p,~ F'(p) = f(p), \text{ and } F' \stackrel{\tiny\mbox{a.e}}{=} f.
\]
:::

:::{.proposition}
The Dirichlet function is Lebesgue integrable but not Riemann integrable:
\[
f(x) = \indic{x \in \QQ}
\]
:::

:::{.proof title="?"}
\todo[inline]{todo}
:::



## List of Free Conclusions:

- $f$ integrable on $U \implies$:
	- $f$ is bounded
	- $f$ is continuous a.e. (finitely many discontinuities)
	- $\int f$ is continuous
	- $\int f$ is differentiable
- $f$ continuous on $U$:
	- $f$ is integrable on compact subsets of $U$
	- $f$ is bounded
	- $f$ is integrable
- $f$ differentiable at a point $p$:
	- $f$ is continuous
- $f$ is differentiable in $U$
	- $f$ is continuous a.e.

- Defining the Riemann integral: #todo

## Convergence

### Sequences and Series of Functions

:::{.definition title="Convergence of an infinite series"}
Define 
\[
s_n(x) \da \sum_{k=1}^n f_k(x)
\]
and 
\[
\sum_{k=1}^\infty f_k(x) \da \lim_{n\to\infty} s_n(x),
\]
which can converge pointwise, absolutely, uniformly, or not all.
:::

:::{.proposition title="?"}
If $\limsup_{k\in \NN} \abs{f_k(x)} \neq 0$ then $f_k$ is not convergent.
:::

:::{.proposition title="?"}
If $f$ is injective, then $f'$ is nonzero in some neighborhood of ???
:::



### Pointwise convergence

\[  
f_n \to f = \lim_{n\to\infty} f_n
.\]
Summary:
\[  
\lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) \neq \lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i)
.\]

\[  
\lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n
.\]

:::{.proposition title="?"}
Pointwise convergence is strictly weaker than uniform convergence.
:::
:::{.proof title="?"}
$f_n(x) = x^n$ on $[0, 1]$ converges pointwise but not uniformly.

- Towards a contradiction let $\varepsilon = \frac{1}{2}$. 
- Let $n = N\qty{\frac{1}{2} }$ and $x = \left(\frac{3}{4}\right)^\frac{1}{n}$.
- Then $f(x) = 0$ but 
\[
\abs{f_n(x) - f(x)} = x^n = \frac{3}{4} > \frac{1}{2}
\]
:::

:::{.proposition title="A pointwise limit of continuous functions is not necessarily continuous."}
\[  
f_n \text{ continuous} \notimplies f\da \lim_n f_n \text{ is continuous}
.\]
:::

:::{.proof title="?"}
Take 
\[  
f_n(x) = x^n,\quad f_n(x) \to \indic[x = 1]
.\]
:::

:::{.proposition title="The limit of derivatives need not equal the derivative of the limit"}
\[  
f_n \text{ differentiable} &\notimplies  f'_n \text{ converges} \\
f'_n \text{ converges} &\not\implies \lim f'_n = f'
.\]
:::

:::{.proof title="?"}
Take 
\[  
f_n(x) = \frac{1}{n}\sin(n^2 x) \to 0,&& \text{but }
f'_n = n\cos(n^2 x) \text{ does not converge}
.\]
:::

:::{.proposition title="?"}
\[  
f_n\in \mathcal{R}_I \notimplies \lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n
.\]
:::

:::{.proof title="?"}
May fail to converge to same value, take 
\[  
f_n(x) = \frac{2n^2x}{(1+n^2x^2)^2} \to 0 && \text{but }\int_0^1 f_n = 1 - \frac{1}{n^2 + 1} \to 1\neq 0
.\]

:::




### Uniform Convergence

Notation:
\[  
f_n \rightrightarrows f= \lim_{n\to\infty} f_n \text{ and } \sum_{n=1}^\infty f_n \rightrightarrows S
.\]

Summary:
\[  
\lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i) = \lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) = \lim_{f_n \to f} f_n(\lim_{x_i \to x} x_i)
.\]

\[  
\lim_{f_n \to f} \int_I f_n = \int_I \lim_{f_n \to f} f_n
.\]

\[  
\sum_{n=1}^\infty \int_I f_n = \int_I \sum_{n=1}^\infty f_n
.\]

"The uniform limit of a(n) $x$ function is $x$", for $x \in$ {continuous, bounded}

- Equivalent to convergence in the uniform metric on the metric space of bounded functions on $X$: 
\[  
f_n \rightrightarrows f \iff \sup_{x\in X} \abs{f_n(x) - f(x)} \to 0
.\]
	- $(B(X,Y), \norm{}_\infty)$ is a metric space and $f_n \rightrightarrows f \iff \norm{f_n - f}_\infty \to 0$
(where $B(X,Y)$ are bounded functions from $X$ to $Y$ and $\norm{f}_\infty = \sup_{x\in I}\theset{f(x)}$

- $f_n \rightrightarrows f \implies f_n \to f$ pointwise

- $f_n$ continuous $\implies f$ continuous
	- i.e. "the uniform limit of continuous functions is continuous"

- $f_n \in C^1$, $\exists x_0: f_n(x_0) \to f(x_0)$, and $f'_n \rightrightarrows g$ $\implies f$ differentiable and $f' = g~$ (i.e. $f'_n \to f'$)

	- Necessity of $C^1$ -- look at failures of $f'_n$ to be continuous:
		- Take $f_n(x) = \sqrt{\frac{1}{n^2} + x^2} \rightrightarrows |x|$, not differentiable
		- Take $f_n(x) = n^{-\frac{1}{2}}\sin(nx) \rightrightarrows 0$ but $f'_n \not\to f' = 0$ and $f' \neq g$

- $f_n$ integrable $\implies f$ integrable and $\int f_n \to \int f$
- $f_n$ bounded $\implies f$ bounded
- $f_n \rightrightarrows f_n \notimplies f'_n$ converges
	- Says nothing about it general
- $f_n' \rightrightarrows f' \notimplies f_n \rightrightarrows f$
	- Unless $f$ converges at one or more points.



:::{.proposition title="All subsequences of a convergent sequence share a limit"}
$\theset{x_i} \to p \implies$ every subsequence also converges to $p$.
:::

:::{.definition title="Cauchy Sequence"}
\todo[inline]{todo}
:::


:::{.proposition title="?"}
Every convergent sequence in $X$ is a Cauchy sequence.
:::

:::{.remark}
The converse need not hold in general, but if $X$ is complete, every Cauchy sequence converges.
An example of a Cauchy sequence that doesn't converge: take $X=\QQ$ and set $x_i = \pi$ truncated to $i$ decimal places.
:::

:::{.remark}
If any subsequence of a Cauchy sequence converges, the entire sequence converges.
:::

:::{.definition title="Metric"}
\[  
d(x,y) &\geq 0 && \text{Positive}\\
d(x,y) &= 0 \iff x = y && \text{Nondegenerate}\\
d(x,y) &= d(y,x) && \text{Symmetric}\\
d(x,y) &\leq d(x,p) + d(p,y) \quad \forall p && \text{Triangle Inequality}
.\]
:::

:::{.definition title="Complete"}
? \todo[inline]{todo}
:::

:::{.definition title="Bounded"}
? \todo[inline]{todo}
:::

## Topology


:::{.definition title="Axioms for a Topology"}
**Open Set Characterization**:
Arbitrary unions and finite intersections of open sets are open. 


**Closed Set Characterization**:
Arbitrary intersections and finite unions of closed sets are closed.

:::


:::{.remark}
The best source of examples and counterexamples is the open/closed unit interval in $\mathbb{R}$. Always test against these first!
:::

:::{.remark}
If $f$ is a continuous function.
the preimage of every open set is open and
the preimage of every closed set is closed.
:::

:::{.proposition title="?"}
In $\RR$, singleton sets and finite discrete sets are closed.
:::

:::{.proof title="?"}
A singleton set can be written
\[  
\ts{p_0} = (-\infty, p) \union (p, \infty)
.\]
A finite discrete set $\ts{p_0}$, which wlog (by relabeling) can be assumed to satisfy $p_0 < p_1 < \cdots$, can be written
\[  
\ts{p_0, p_1, \cdots, p_n} = (-\infty, p_0) \union (p_0, p_1) \union \cdots \union (p_n, \infty)
.\]
:::

:::{.proposition title="?"}
This yields a good way to produce counterexamples to continuity.
:::

In $\mathbb{R}$, singletons are closed. This means any finite subset is closed, as a finite union of singleton sets! 

:::{.proposition title="?"}
If $X$ is a compact metric space, then $X$ is complete and bounded.
:::

:::{.proposition title="?"}
If $X$ complete and $X \subset Y$, then $X$ closed in $Y$.
:::

:::{.remark}
The converse generally does not hold, and completeness is a necessary condition.
Counterexample: $\QQ\subset \QQ$ is closed but $\QQ\subset\RR$ is not.
:::

:::{.proposition title="?"}

If $X$ is compact, then $Y \subset X \implies Y$ is compact $\iff$ $Y$ closed.
:::

:::{.definition title="Sequential Compactness"}
A topological space $X$ is **sequentially compact** iff every sequence $\ts{x_n}$ has a subsequence converging to a point in $X$.
:::

:::{.proposition title="Compactness and sequential compactness"}
If $X$ is a metric space, $X$ is compact iff $X$ is sequentially compact.
:::

:::{.remark}
Note that in general, neither form of compactness implies the other.
:::

