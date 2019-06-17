

$$
\begin{align*}
	\frac{\partial}{\partial x} \int_{1}^{x} f(x, t) dt = \int_{1}^{x} \frac{\partial}{\partial x} f(x, t) dt + f(x, x)
\end{align*}$$


##  Big Theorems / Tools:
- The Fundamental Theorem of Calculus:
	$$
	\frac{\partial}{\partial x} \int_a^x f(t) dt = f(x) \\ \\
	\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} g(t) dt = g(b(x))b'(x) - g(a(x))a'(x)
	$$
- The generalized Fundamental Theorem of Calculus
	$$
	\begin{align*}
	\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(x, t) dt - \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt &=
	f(x, \cdot)\frac{\partial}{\partial x}(\cdot) \bigg\rvert_{a(x)}^{b(x)} \\ \\
	&= f(x, b(x))~b'(x) - f(x, a(x))~a'(x)
	\end{align*}
	$$
	- Recover FTC by taking $a(x) = c, b(x) = x, f(x,t) = f(t)$.
		- Note that if $f(x,t) = f(t)$ alone, then $\dd{x} f(t) = 0$ and the second integral vanishes
- Extreme Value Theorem
- Involving the Derivative:
	- Mean Value Theorem: 
$$
f \in C^0(I) \implies \exists p\in I: f(b) - f(a) = f'(p)(b-a)
$$
  - Useful variant for integrals and average value: $$f \in C^0(I) \implies \exists p\in I: \int_a^b f(x)~dx = f(p)(b-a)$$
	- Rolle's Theorem
- L'Hopital's Rule: If
	- $f(x),g(x)$ differentiable on $I - \pt$
	- $\lim_{x\to pt} f(x) = \lim_{x\to \pt} g(x) \in \theset{0, \pm \infty}$
	- $\forall x \in I, g'(x) \neq 0$
	- $\lim_{x\to\pt} \frac{ f'(x)}{\ g'(x)}$ exists
	$$
	\implies \lim _ { x \rightarrow \pt } \frac { f ( x ) } { g ( x ) } 
	= \lim _ { x \rightarrow \pt } \frac { f ^ { \prime } ( x ) } { g ^ { \prime } ( x ) }
	$$
- Taylor Expansions:
	$$ 
	\begin{align*}
	T(a, x) &= \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }  \\
	&= f ( a ) + f'(a)( x - a ) + \frac { 1 } { 2 }f ^ { \prime \prime } ( a ) ( x - a ) ^ { 2 } \\ 
	& \quad \quad + \frac { 1} { 6 } f ^ { \prime \prime \prime } ( a ) ( x - a ) ^ { 3 } + \frac{1}{24}f^{(4)}(a)(x-a)^4 + ~\cdots
	\end{align*}
	$$
	Bounded error: $\abs{f(x) - T_k(a,x)} < \abs{\frac{1}{(k+1)!}f^{(k+1)}(a)}$ where $T_k(a, x)$ is the Taylor series truncated up to and including the $x^k$ term.

## Differential

### Limits
- Tools for finding $\lim_{x\to a} f(x)$, in order of difficulty:
	- Plug in: equal to $f(a)$ if continuous
	- L'Hopital's Rule (only for indeterminate forms $\frac 0 0, \frac \infty \infty$)
		- For $\lim f(x)^{g(x)} = 1^\infty, \infty^0, 0^0$, let $L = \lim f^g \implies \ln L = \lim g \ln f$
	- Algebraic rules
	- Squeeze theorem
	- Expand in Taylor series at $a$
	- Monotonic + bounded
- One-sided limits: $\lim_{x\to a^-} f(x) = \lim_{\varepsilon \to 0} f(a-\varepsilon)$
- Limits at zero or infinity: $$\lim_{x\to\infty} f(x) = \lim_{\frac{1}{x}\to 0} f(\frac{1}{x})\text{ and } \lim_{x\to 0} f(x) = \lim_{x\to\infty} f(1/x)$$
	- Also useful:
	$$
	\lim_{x\to\infty} \frac{p(x)}{q(x)} = \cases{
		0 & $\deg p < \deg q$ \\
		\infty & $\deg p > \deg q$ \\
		\frac{p_n}{q_n} & $\deg p = \deg q$
	}
	$$
- Be careful: limits may not exist!!
	- Example $:\lim_{x\to 0} \frac{1}{x} \neq 0$
- Asymptotes:
	- Vertical asymptotes: at values $x=p$ where $\lim_{x\to p} = \pm\infty$
	- Horizontal asymptotes: given by points $y=L$ where $L \lim_{x\to\pm\infty} f(x) < \infty$
	- Oblique asymptotes: for rational functions, divide - terms without denominators yield equation of asymptote (i.e. look at the asymptotic order or "limiting behavior").
		- Concretely: $f(x) = \frac{p(x)}{q(x)} = r(x) + \frac{s(x)}{t(x)} \sim r(x)$
- Limit of a recurrence: $x_n = f(x_{n-1}, x_{n-2}, \cdots)$
	- If the limit exists, it is a solution to $x = f(x)$

### Derivatives
- Chain rule: $\dd{}{x}(f\circ g)(x) = f'(g(x))g'(x)$
- Product rule: $\dd{x}f(x)g(x) =f'g + g'f$
	- Note for all rules: always prime the first thing!
- Quotient rule: $\dd{}{x} \frac{f(x)}{g(x)} = \frac{f'g - g'f}{g^2}$
	- Mnemonic: Low d-high minus high d-low
- Inverse rule: $\dd{f^{-1}}{x}(f(x_0)) = \left( \dd{f}{x} \right)^{-1}(x_0) = 1/f'(x_0)$
- Implicit differentiation: $(f(x))' = f'(x)~dx, (f(y))' = f'(y)~dy$
	- Often able to solve for $\dd[y]{x}$ this way.
- Obtaining derivatives of inverse functions: if $y = f^{-1}(x)$ then write $f(y) = x$ and implicitly differentiate.
- Approximating change: $\Delta y \approx f'(x) \Delta x$

### Related Rates
General series of steps: want to know some unknown rate $y_t$

- Lay out known relation that involves $y$
- Take derivative implicitly (say w.r.t $t$) to obtain a relation between $y_t$ and other stuff.
- Isolate $y_t = \text{ known stuff }$
- Example: ladder sliding down wall
	- Setup: $l, x_t$ and $x(t)$ are known for a given $t$, want $y_t$.
	- $x(t)^2 + y(t)^2 = l^2 \implies 2xx_t +2yy_t = 2ll_t = 0$ (noting that $l$ is constant)
	- So $y_t = -\frac{x(t)}{y(t)}x_t$
	- $x(t)$ is known, so obtain $y(t) = \sqrt{l^2 - x(t)^2}$ and solve.

## Integral

- Average values: 
	$$
	f_{\text{avg}}(x) = \frac{1}{b-a}\int_a^b f(t) dt
	$$
	- Proof: apply MVT to $F(x)$.
- Area Between Curves
	- Area in polar coordinates: $$A = \int_{r_1}^{r_2} \frac{1}{2}r^2(\theta) ~d\theta$$
- Solids of Revolution
	- Disks: $A = \int \pi r(t)^2 ~dt$
	- Cylinders: $A = \int 2\pi r(t)h(t) ~dt$
- Arc lengths
	$$
	ds = \sqrt{dx^2 + dy^2}\qquad L = \int ~ds \\
	= \int_{x_0}^{x_1}\sqrt{1 + \dd{y}{x}}~dx \\
	= \int_{y_0}^{y_1}\sqrt{\dd{x}{y} + 1}~dy
	$$
	- $SA = \int 2 \pi r(x) ~ds$
- Center of Mass
	- Given a density $\rho(\mathbf x)$ of an object $R$, the $x_i$ coordinate is given by
	$$
	x_i = \frac{\int_R x_i\rho(x) ~dx}{\int_R \rho(x)~dx}
	$$

### Big List of Integration Techniques

Given $f(x)$, we want to find an antiderivative $F(x) = \int f$ satisfying $\frac{\partial}{\partial x}F(x) = f(x)$

- Guess and check: look for a function that differentiates to $f$.
- $u\dash$ substitution
	- More generally, any change of variables
	$$
	x = g(u) \implies \int_a^b f(x)~dx = \int_{g^{-1}(a)}^{g^{-1}(b)} (f\circ g)(x) ~g'(x)~dx
	$$
- Integration by Parts:
	- The standard form:
	$$
	\int u dv = uv - \int v du
	$$

	- A more general form for repeated applications: let $v^{-1} = \int v$, $v^{-2} = \int\int v$, etc.
	$$
	\begin{align*}
	\int_a^b uv &= uv^{-1}\bigg\rvert_a^b  - \int_a^b u^{1} v^{-1}\\
	&= uv^{-1} - u^1v^{-2}\bigg\rvert_a^b + \int_a^b u^2v^{-2} \\
	&= uv^{-1} - u^1v^{-2} + u^2v^{-3}\bigg\rvert_a^b - \int_a^b u^3v^{-3} \\
	&\quad\vdots \\
	\implies \int_a^b uv &= \sum_{k=1}^n (-1)^k u^{k-1}v^{-k} \bigg\rvert_a^b + (-1)^n\int_a^b u^nv^{-n} 
	\end{align*}
	$$
	- Generally useful when one term's $n$th derivative is a constant.
	- Shoelace method:
	- Note: you can choose $u$ or $v$ equal to 1! Useful if you know the derivative of the integrand.

- Differentiating under the integral
	$$
	\begin{align*}
	\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(x, t) dt - \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt 
	&= f(x, \cdot)\frac{\partial}{\partial x}(\cdot) \bigg\rvert_{a(x)}^{b(x)} \\
	&= f(x, b(x))~b'(x) - f(x, a(x))~a'(x)
	\end{align*}
	$$

	- Proof: let $F(x)$ be an antiderivative and compute $F'(x)$ using the chain rule.
	- #todo for constants, this should allow differentiating under the integral when $f, f_x$ are "jointly continuous"
	- LIPET: Log, Inverse trig, Polynomial, Exponeitial, Trig: generally let $u$ be whichever one comes first.
- The ridiculous trig sub: for any integrand containing only trig terms
	- Transforms *any* such integrand into a rational function of $x$
	- Let $u = 2\tan^{-1}x, ~du = \frac{2}{x^2+1}$, then
	$$
	\int_a^b f(x)~dx = \int_{\tan\frac{a}{2}}^{\tan\frac{b}{2}} f(u)~du
	$$
		- Example: $\int_0^{\pi/2} \frac{1}{\sin \theta}~d\theta = 1/2$

Derivatives  | Integrals  |  Signs | Result
---|---|--|---|---
$u$ | $v$  | NA |  NA
$u'$  | $\int v$  |  $+$ | $u\int v$
$u''$  | $\int\int v$  |  $-$ |  $-u'\int\int v$
$\vdots$  | $\vdots$  |$\vdots$   |$\vdots$

Fill out until one column is zero (alternate signs). Get the result column by multiplying diagonally, then sum down the column.

- Trigonometric Substitution
	$$
	\begin{align*}
	\sqrt{a^2-x^2} && \Rightarrow && x = a\sin(\theta) &&dx = a\cos(\theta)~d\theta \\
	\sqrt{a^2+x^2} && \Rightarrow && x = a\tan(\theta) &&dx = a\sec^2(\theta)~d\theta \\
	\sqrt{x^2 - a^2} && \Rightarrow && x = a \sec(\theta) &&dx = a\sec(\theta)\tan(\theta)~d\theta
	\end{align*}
	$$
- Partial Fractions
- Completing the Square #todo
- Trig Formulas
	- Double angle formulas:
	$$
	\begin{align*}
	\sin^2(x) && = && \frac{1}{2}(1-2\cos x) \\
	&& = && \\
	&& = && \\
	&& = && \\
	&& = && \\
	\end{align*}
	$$

- Products of trig functions
	- Setup: $\int \sin^a(x) \cos^b(x) ~dx$
		- Both $a,b$ even: $\sin(x)\cos(x) = \frac{1}{2} \sin(x)$
		- $a$ odd: $\sin^2 = 1-\cos^2,~u=\cos(x)$
		- $b$ odd: $\cos^2 = 1-\sin^2,~u=\sin(x)$
	- Setup: $\int \tan^a(x) \sec^b(x) ~dx$
		- $a$ odd: $\tan^2 = \sec^2 - 1,~ u = \sec(x)$
		- $b$ even: $\sec^2 = \tan^2 - 1, u = \tan(x)$




Other small but useful facts:
$$
\int_0^{2\pi} \sin \theta~d\theta = \int_0^{2\pi} \cos \theta~d\theta = 0
$$


### Optimization
- Critical points: boundary points and wherever $f'(x) = 0$
- Second derivative test:
	- $f''(p) > 0 \implies p$ is a min
	- $f''(p) < 0 \implies p$ is a max
