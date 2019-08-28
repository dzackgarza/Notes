Summary for GRE exam:

- Limits,
- Continuity,
- Boundedness,
- Compactness,
- Definitions of topological spaces,
- Lipschitz continuity
- Sequences and series of functions.

Notation used throughout: $f: \RR \to \RR,~\mathbf{f}:\RR^n \to \RR^m$, $K$ is a compact set, and "integrable" or $L_R(K)$ denotes "Riemann integrable on $K$".

## Big Ideas
- Want to know the interactions between the following major operations:
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

## Big Theorems / Formulas
- **Generalized Mean Value Theorem**
$$f,g\text{ differentiable on } [a,b] \implies \exists c\in[a,b] :
\left[f ( b ) - f ( a ) \right] g' ( c ) = \left[g ( b ) - g ( a )\right] f' ( c )
$$
	- Recover MVT: #todo
- **Bolzano-Weierstrass**: every bounded sequence has a convergent subsequence.
- **Heine-Borel**: in $\RR^n, X$ is compact $\iff X$ is closed and bounded.

## Big Examples
- A function continuous and discontinuous at infinitely many points:
$$
f(x) = \cases{
	0 & $x\in\RR-\QQ$ \\
	\frac{1}{q} & $x = \frac{p}{q} \in \QQ$
}
$$
	- Then $f$ is discontinuous on $\QQ$ and continuous on $\RR-\QQ$. Proof
	- Fix $\varepsilon$, let $x_0 \in \RR-\QQ$, choose $n: \frac{1}{n} < \varepsilon$ using Archimedean property.
		- Define $S = \theset{x\in\QQ: x\in (0,1), x=\frac{m}{n'}, n' < n}$
		- Then $\abs{S} \leq 1+2+\cdots (n-1)$, so choose $\delta = \min_{s\in S}\abs{s-x_0}$
		- Then $$x \in N_\delta(x_0) \implies f(x) < \frac{1}{n} < \varepsilon \qed$$
		- #todo, revisit and spell out more
	- Let $x_0 = \frac{p}{q} \in \QQ$ and $\theset{x_n} = \theset{x-\frac{1}{n\sqrt 2}}$. Then $$x_n \uparrow x_0\text{ but } f(x_n) = 0 \to 0 \neq \frac{1}{q} = f(x_0) \qed$$

## Motivation: Commuting Limit Operations

- Suppose $f_n \to f$ (pointwise, not necessarily uniformly)
- Let $F(x) = \int f(t)$ be an antiderivative of $f$
- Let $f'(x) = \frac{\partial f}{\partial x}(x)$ be the derivative of $f$.

Then consider the following possible ways to commute various limiting operations:

---

Does taking the derivative of the integral of a function always return the original function?
$$
[\frac{\partial}{\partial x}, \int dx]:\qquad\qquad \frac{\partial}{\partial x}\int f(x, t)dt =_? \int \frac{\partial}{\partial x} f(x, t)dt\\
\text{}
$$

**Answer**: Sort of (but possibly not).

**Counterexample**: $$f(x) = \cases{1 & $x > 0$ \\ -1 & $x \leq 0$} \implies \int f \approx \abs{x},$$ which is not differentiable. (This is remedied by the so-called "weak derivative")

**Sufficient Condition**: If $f$ is continuous, then both are always equal to $f(x)$ by the FTC.

---

Is the derivative of a continuous function always continuous?
$$
[\frac{\partial}{\partial x}, \lim_{x_i\to x}]:\qquad\qquad
\lim_{x_i \to x} f'(x_n) =_? f'(\lim_{x_i\to x} x)
$$
**Answer**: No.

**Counterexample**:
$$
f ( x ) = \left\{ \begin{array} { l l } { x ^ { 2 } \sin ( 1 / x ) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
\implies f ^ { \prime } ( x ) = \left\{ \begin{array} { l l } { 2 x \sin \left( \frac { 1 } { x } \right) - \cos \left( \frac { 1 } { x } \right) } & { \text { if } x \neq 0 } \\ { 0 } & { \text { if } x = 0 } \end{array} \right.
$$
which is discontinuous at zero.

**Sufficient Condition**: There doesn't seem to be a general one (which is perhaps why we study $C^k$ functions).


---

Is the limit of a sequence of differentiable functions differentiable **and** the derivative of the limit?

$$
[\frac{\partial}{\partial x}, \lim_{f_n \to f}]:\qquad\qquad \lim_{f_n \to f}\frac{\partial}{\partial x}f_n(x) =_? \frac{\partial }{\partial x}\lim_{f_n \to f} f_n(x)
$$
**Answer**: *Super* no -- even the uniform limit of differentiable functions need not be differentiable!

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows f = 0$ but $f_n' \not\to f' = 0$

**Sufficient Condition**: $f_n \rightrightarrows f$ and $f_n \in C^1$.

---

Is the limit of a sequence of integrable functions integrable **and** the integral of the limit?

$$
[\int dx, \lim_{f_n \to f}](f):\qquad\qquad
\lim_{f_n \to f}\int f_n(x) dx =_? \int \lim_{f_n \to f} f_n(x) dx
$$

**Answer**: No.

**Counterexample**: Order $\QQ\intersect[0,1]$ as $\theset{q_i}_{i\in\NN}$, then take
$$f_n(x) = \sum_{i=1}^n \indicator{q_n} \to \indicator{{\QQ\intersect[0,1]}}$$ where each $f_n$ integrates to zero (only finitely many discontinuities) but $f$ is not Riemann-integrable.

**Sufficient Condition**:
- $f_n \rightrightarrows f$, or
- $f$ integrable and $\exists M: \forall n, \abs{f_n} < M$ ($f_n$ uniformly bounded)

---

Is the integral of a continuous function also continuous?

$$
[\int dx, \lim_{x_i \to x}]:\qquad\qquad
\lim_{x_i \to x} F(x_i) =_? F(\lim_{x_i \to x} x_i)
$$

**Answer**: Yes.

**Proof**: $|f(x)| < M$ on $I$, so given $c$ pick a sequence $x\to c$. Then $$\abs{f(x)} < M \implies \left\vert \int_c^x f(t)dt \right\vert < \int_c^x M dt \implies \abs{F(x) - F(c)} < M(b-a) \to 0$$

---

Is the limit of a sequence of continuous functions also continuous?

$$
[\lim_{x_i \to x}, \lim_{f_n \to f}]: \qquad\qquad
\lim_{f_n \to f}\lim_{x_i \to x} f(x_i) =_? \lim_{x_i \to x}\lim_{f_n \to f} f_n(x_i)\\
\text{}\\
$$

**Answer**: No.

**Counterexample**: $f_n(x) = x^n \to \delta(1)$

**Sufficient Condition**: $f_n \rightrightarrows f$

---

Does a sum of differentiable functions necessarily converge to a differentiable function?

$$
\left[\frac{\partial}{\partial x}, \sum_{f_n}\right]: \qquad\qquad
\frac{\partial}{\partial x} \sum_{k=1}^\infty f_k =_? \sum_{k=1}^\infty \frac{\partial}{\partial x} f_k \\
\text{} \\
\text{}\\
$$

**Answer**: No.

**Counterexample**: $f_n(x) = \frac{\sin(nx)}{\sqrt{n}} \rightrightarrows 0 \definedas f$, but $f_n' = \sqrt{n}\cos(nx) \not\to 0 = f'$ (at, say, $x=0$)

**Sufficient Condition**: When $f_n \in C^1, \exists x_0: f_n(x_0) \to f(x_0), $ and $\sum \norm{f_n'}_\infty < \infty$ (continuously differentiable, converges at a point, and the derivatives absolutely converge)

---

## Continuity

Definitions

- Limit definition:
$$
f\text{ continuous } \iff \lim_{x \to p} f(x) = f(p)
$$

- Epsilon-Delta Definition:
$$
f:(X, d_X) \to (Y, d_Y) \text{ continuous } \iff \forall \varepsilon,~ \exists \delta \mid ~
d_X(x,y) < \delta \implies d_Y(f(x), f(y)) < \varepsilon
$$
- The preimage of every open set is open
- The preimage of every closed set is closed

Examples:

- A function discontinuous at a point: $\sin(\frac{1}{x})$ at $x=0$
- A nowhere continuous function: $f(x) = \indicator{\QQ}$
  - Not Riemann integrable

Some Facts:

- A continuous function on a compact space attains its extrema.
- There are functions that are continuous on $\RR-\QQ$ but discontinuous on $\QQ$.
- There are no functions that are continuous on $\QQ$ but discontinuous on $\RR-\QQ$

Uniform continuity #todo

## Differentiability
$$
f'(p) \definedas \frac{\partial f}{\partial x}(p) = \lim_{x\to p} \frac{f(x) - f(p)}{x-p}
$$

- For multivariable functions: existence **and continuity** of $\frac{\partial \mathbf{f}}{\partial x_i} \forall i \implies \mathbf{f}$ differentiable
	- Necessity of continuity: example of a continuous functions with all partial and directional derivatives that is not differentiable:
$$
f(x, y) = \cases{\frac{y^3}{x^2+y^2} & $(x,y) \neq (0,0)$ \\ 0 & else}
$$

## Properties, strongest to weakest
$$
C^\infty \subsetneq C^k \subsetneq \text{ differentiable } \subsetneq C^0 \subset L_R(K)
$$

- Example showing $f\in C^0 \not\implies f$ is differentiable **and** $f$ not differentiable $\not\implies f \not\in C^0$.
	- Take $f(x) = \abs{x}$ at $x=0$.
- Example showing that $f$ differentiable $\not\implies f \in C^1$:
	- Take $$f(x) = \cases{x^2\sin(\frac{1}{x}) & $x \neq 0$ \\ 0 & $x =  0$}\implies f'(x) = \cases{-\cos(\frac{1}{x}) + 2x\sin(\frac{1}{x}) & $x \neq 0$\\ 0 & $x=0$}$$ but $\lim_{x\to 0}f'(x)$ does not exist and thus $f'$ is not continuous at zero.

Proof that $f$ differentiable $\implies f \in C^0$:
	$$f(x) - f(p) = \frac{f(x)-f(p)}{x-p}(x-p) \stackrel{\tiny\mbox{hypothesis}}{=} f'(p)(x-p) \stackrel{\tiny\mbox{$x\to p$}}\rightrightarrows 0$$

## Giant Table of Relations
Bold are assumed hypothesis, regular text is the strongest conclusion you can reach, strikeout denotes implications that aren't necessarily true.

$$\begin{align*}
f' && f && \therefore f && F \\
\hline \\
\strike{\text{exists}} && \mathbf{continuous} &&  \text{K-integrable} && \text{exists} \\
\strike{\text{continuous}} && \mathbf{differentiable}  && \text{continuous} && \text{exists} \\
\strike{\text{exists}} && \mathbf{integrable} && \strike{\text{continuous}} && \text{differentiable} \\
\end{align*}$$

Explanation of items in table:
- K-integrable: compactly integrable.
- $f$ integrable $\implies F$ differentiable $\implies F \in C_0$
	- By definition and FTC, and differentiability $\implies$ continuity
- $f$ differentiable and $K$ compact $\implies f$ integrable on $K$.
	- In general, $f$ differentiable $\not\implies f$ integrable. Necessity of compactness: $$f(x) = e^x \in C^\infty(\RR)\text{ but }\int_\RR e^x dx \to \infty$$
- $f$ integrable $\not\implies f$ differentiable
	- An integrable function that is not differentiable: $f(x) = |x|$ on $\RR$
- $f$ differentiable $\implies f$ continuous a.e.

## Integrability
- Sufficient criteria for Riemann integrability:
	- $f$ continuous
	- $f$ bounded and continuous almost everywhere, or
	- $f$ uniformly continuous
- $f$ integrable $\iff$ bounded and continuous a.e.
- FTC for the Riemann Integral.
	- If $F$ is a differentiable function on the interval $[a,b]$, and $F'$ is bounded and continuous a.e., then $F′ \in L_R([a, b])$ and $$\forall x\in [a,b]: \int_a^x F'(t)~dt=F(x)−F(a)$$

	- Suppose $f$ bounded and continuous a.e. on $[a,b]$, and define $F(x) \definedas \int_a^x f(t)~dt$. Then $F$ is absolutely continuous on $[a,b]$, and for $p \in [a,b]$,
	$$f \in C^0(p) \implies F \text{ differentiable at } p,~ F'(p) = f(p), \text{ and } F' \stackrel{\tiny\mbox{a.e}}{=} f.$$

	- A function that is not Riemann integrable but Lebesgue integrable: $f(x) = \indicator{x \in \QQ}$


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

## Pointwise convergence
$$f_n \to f = \lim_{n\to\infty} f_n$$
Summary:
$$
\lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) \neq \lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i)
$$

$$
\lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n
$$
- Pointwise convergence is strictly weaker than uniform convergence.
	- Example of a function that converges pointwise but not uniformly: $f_n(x) = x^n$ on $[0, 1]$
	- Proof: towards a contradiction let $\varepsilon = \frac{1}{2}$. Then let $n = N(\frac{1}{2})$ and $x = \left(\frac{3}{4}\right)^\frac{1}{n}$: then $f(x) = 0$ but $\abs{f_n(x) - f(x)} = x^n = \frac{3}{4} > \frac{1}{2}$. $\qed$
- $f_n$ continuous $\not\implies f$ is continuous
	- i.e. "the pointwise limit of continuous functions is not necessarily continuous"
	- Take $$f_n(x) = x^n,\quad f_n(x) \to \indicator[x = 1]$$
- $f_n$ differentiable $\not\implies f'_n$ converges
	- Take $$f_n(x) = \frac{1}{n}\sin(n^2 x) \to 0,\quad f'_n = n\cos(n^2 x) ~\text{does not converge}$$
- $f_n$ integrable $\not\implies \lim_{f_n \to f} \int_I f_n \neq \int_I \lim_{f_n \to f} f_n$
	- May fail to converge to same value, take $$ f_n(x) = \frac{2n^2x}{(1+n^2x^2)^2} \to 0, \quad \int_0^1 f_n = 1 - \frac{1}{n^2 + 1} \to 1$$



## Uniform Convergence

Notation:
$$f_n \rightrightarrows f= \lim_{n\to\infty} f_n \text{ and } \sum_{n=1}^\infty f_n \rightrightarrows S$$

Summary:
$$
\lim_{x_i \to x} \lim_{f_n \to f} f_n(x_i) = \lim_{f_n \to f} \lim_{x_i \to x} f_n(x_i) = \lim_{f_n \to f} f_n(\lim_{x_i \to x} x_i)
$$

$$
\lim_{f_n \to f} \int_I f_n = \int_I \lim_{f_n \to f} f_n
$$

$$
\sum_{n=1}^\infty \int_I f_n = \int_I \sum_{n=1}^\infty f_n
$$

"The uniform limit of a(n) $x$ function is $x$", for $x \in$ {continuous, bounded}

- Equivalent to convergence in the uniform metric on the metric space of bounded functions on $X$: $$f_n \rightrightarrows f \iff \sup_{x\in X} \abs{f_n(x) - f(x)} \to 0$$
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
- $f_n \rightrightarrows f_n \not\implies f'_n$ converges
	- Says nothing about it general
- $f_n' \rightrightarrows f' \not\implies f_n \rightrightarrows f$
	- Unless $f$ converges at one or more points.

## Sequences and Metric Spaces
- Big Theorems:
	- **Bolzano-Weierstrass**: every bounded sequence has a convergent subsequence.
	- **Heine-Borel**: in $\RR^n, X$ is compact $\iff X$ is closed and bounded.
		- Necessity of $\RR^n$: $X = (\ZZ, d(x,y) = 1)$ is closed, complete, bounded, but not compact since $\theset{1,2,\cdots}$ has no convergent subsequence
		- Converse holds iff bounded is replaced with totally bounded
	- $X$ compact $\iff X$ sequentially compact
- $\theset{x_i} \to p \implies $ every subsequence also converges to $p$.
- $\theset{x_i} \to p \implies \theset{x_i}$ is Cauchy
	- Converse holds in complete metric spaces. Example of a Cauchy sequence that doesn't converge: $x_i = \pi$ truncated to $i$ decimal places in $\QQ \subset \RR$.
- $X$ complete and $X \subset Y \implies X$ closed in $Y$
	- Necessity of completeness: $\QQ\subset \QQ$ is closed but $\QQ\subset\RR$ is not.
- $X$ compact $\implies X$ complete and bounded.
	- Holds for any metric space, converse generally does not
- $X$ compact and $Y \subset X \implies Y$ compact $\iff$ $Y$ closed.
- Definition of a metric:
	- $d(x,y) \geq 0,$
		- $d(x,y) = 0 \iff x = y$
	- $d(x,y) = d(y,x)$
	- $\forall p,~ d(x,y) \leq d(x,p) + d(p,y) $


## Series
- Define $s_n(x) = \sum_{k=1}^n f_k(x)$ and $S(x) = \lim_{n\to\infty} s_n(x)$, which can converge pointwise or uniformly.


## Sequences and Series of Functions

Notation:$\sum_{k\in\NN} f_k$ is a "series"

- $\limsup \abs{f_k(x)} \neq 0 \implies $ not convergent
