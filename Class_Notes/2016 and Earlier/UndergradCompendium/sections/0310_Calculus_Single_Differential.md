# Differential Calculus

##  Big Theorems / Tools:

:::{.proposition title="Fundamental Theorem of Calculus I"}
\[
\frac{\partial}{\partial x} \int_a^x f(t) dt = f(x) \\ \\
\]
:::

:::{.proposition title="Generalized Fundamental Theorem of Calculus"}

\[
\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(x, t) dt - \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt &=
f(x, t) \cdot \frac{\partial}{\partial x}(t) \bigg\rvert_{t=a(x)}^{t=b(x)} \\ \\
&= f(x, b(x))\cdot b'(x) - f(x, a(x))\cdot a'(x) \\ \\
\]

If \(f(x,t) = f(t)\) doesn't depend on $x$, then $\dd{f}{x} = 0$ and the second integral vanishes:

\[
\frac{\partial}{\partial x} \int_{a(x)}^{b(x)} f(t) dt 
&= f(b(x))\cdot b'(x) - f(a(x))\cdot a'(x)
\]
:::

\todo[inline]{Find examples.}

:::{.remark}
Note that you can recover the original FTC by taking
\[  
a(x) &= c \\
b(x) &= x \\
f(x,t) &= f(t)
.\]
:::

:::{.corollary title="?"}
\[
	\frac{\partial}{\partial x} \int_{1}^{x} f(x, t) dt = \int_{1}^{x} \frac{\partial}{\partial x} f(x, t) dt + f(x, x)
\]
:::

:::{.proposition title="Extreme Value Theorem"}
Todo
:::

\todo[inline]{Todo}

:::{.proposition title="Mean Value Theorem"}
\[  
f \in C^0(I) &\implies \exists p\in I: f(b) - f(a) = f'(p)(b-a) \\
          &\implies \exists p\in I: \int_a^b f(x)~dx = f(p)(b-a)
.\]
:::

:::{.proposition title="Rolle's Theorem"}

:::

\todo[inline]{todo}

:::{.proposition title="L'Hopital's Rule"}
If

- \(f(x)\) and \(g(x)\) are differentiable on $I - \pt$, and

\[
  \lim_{x\to \pt} f(x) = \lim_{x\to \pt} g(x) \in \theset{0, \pm \infty}, &&
  \forall x \in I, g'(x) \neq 0, && 
  \lim_{x\to\pt} \frac{ f'(x)}{\ g'(x)} \text{ exists}, \\
\]

Then it is necessarily the case that
\[
\lim _ { x \rightarrow \pt } \frac { f ( x ) } { g ( x ) } 
= \lim _ { x \rightarrow \pt } \frac { f ^ { \prime } ( x ) } { g ^ { \prime } ( x ) }.
\]

:::

:::{.remark}
Note that this includes the following indeterminate forms:
\[  
\frac{0}{0}, \quad \frac{\infty}{\infty}, \quad 0 \cdot \infty, \quad 0^{0}, \quad \infty^{0}, \quad 1^{\infty}, \quad \infty-\infty
.\]


For $0\cdot \infty$, can rewrite as ${0 \over {1\over \infty}} = {0\over 0},$ or alternatively ${\infty \over {1\over 0}} = {\infty \over \infty}.$

For $1^\infty, \infty^0,$ and $0^0$, set 
\[
L \da \lim f^g \implies \ln L = \lim g \ln(f)
\]
to recover $\infty\cdot 0, 0 \cdot \infty,$ or $0\cdot 0$.
:::


:::{.proposition title="Taylor Expansion"}
\[
T(a, x) &= \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }  \\
&= f ( a ) + f'(a)( x - a ) + \frac { 1 } { 2 }f ^ { \prime \prime } ( a ) ( x - a ) ^ { 2 } \\ 
& \quad \quad + \frac { 1} { 6 } f ^ { \prime \prime \prime } ( a ) ( x - a ) ^ { 3 } + \frac{1}{24}f^{(4)}(a)(x-a)^4 + ~\cdots
\]
There is a bound on the error: 
\[
\abs{f(x) - T_k(a,x)} \leq \abs{\frac{f^{(k+1)}(a)}{(k+1)!}}
\]
where 
$T_k(a, x) = \sum _ { n = 0 } ^ { k } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }$ is the $k$th truncation.

:::

:::{.remark}
Approximating change: $\Delta y \approx f'(x) \Delta x$
:::


## Limits


## Tools for finding limits

\todo[inline]{Examples}

How to find $\lim_{x\to a} f(x)$in order of difficulty:

- Plug in: if $f$ is continuous, \(\lim_{x\to a} f(x) =  f(a)\).

- Check for indeterminate forms and apply L'Hopital's Rule.


- Algebraic rules

- Squeeze theorem

- Expand in Taylor series at \(a\)

- Monotonic + bounded

- One-sided limits: $\lim_{x\to a^-} f(x) = \lim_{\varepsilon \to 0} f(a-\varepsilon)$

- Limits at zero or infinity: 
\[
\lim_{x\to\infty} f(x) = \lim_{\frac{1}{x}\to 0} f\qty{\frac{1}{x}} \text{ and } 
\lim_{x\to 0} f(x) = \lim_{x\to\infty} f\qty{1 \over x}
\]

	- Also useful: if $p(x) = p_nx^n + \cdots$ and $q(x) = q_nx^m + \cdots$,
\[
\lim_{x\to\infty} \frac{p(x)}{q(x)} = 
\begin{cases}
  0 & \deg p < \deg q \\
  \infty & \deg p > \deg q \\
  \frac{p_n}{q_n} & \deg p = \deg q
\end{cases}
\]

:::{.warning}
Be careful: limits may not exist!!
Example $:\lim_{x\to 0} \frac{1}{x} \neq 0$.
:::

## Asymptotes

- Vertical asymptotes: at values \(x=p\) where $\lim_{x\to p} = \pm\infty$
- Horizontal asymptotes: given by points \(y=L\) where $L \lim_{x\to\pm\infty} f(x) < \infty$
- Oblique asymptotes: for rational functions, divide - terms without denominators yield equation of asymptote (i.e. look at the asymptotic order or "limiting behavior").
  - Concretely: 

\[
f(x) = \frac{p(x)}{q(x)} = r(x) + \frac{s(x)}{t(x)} \sim r(x)
\]


## Recurrences

- Limit of a recurrence: $x_n = f(x_{n-1}, x_{n-2}, \cdots)$
	- If the limit exists, it is a solution to \(x = f(x)\)

## Derivatives

:::{.proposition title="Chain Rule"}
\[
\dd{}{x}(f\circ g) = (f' \circ g) \cdot g'
\]
:::

:::{.proposition title="Product Rule"}
\[
\dd{}{x} f\cdot g =f'\cdot g + g' \cdot f
\]
:::

:::{.proposition title="Quotient Rule"}
\[
\dd{}{x} \frac{f(x)}{g(x)} = \frac{f'g - g'f}{g^2}
\]

> Mnemonic: Low d-high minus high d-low

:::

:::{.proposition title="Inverse Rule"}
\[
\dd{f^{-1}}{x}(f(x_0)) = \left( \dd{f}{x} \right)^{-1}(x_0) = 1/f'(x_0)
\]
:::

## Implicit Differentiation

\[
(f(x))' = f'(x)~dx, (f(y))' = f'(y)~dy
\]
- Often able to solve for $\dd{y}{x}$ this way.

- Obtaining derivatives of inverse functions: if \(y = f^{-1}(x)\) then write \(f(y) = x\) and implicitly differentiate.


## Related Rates
General series of steps: want to know some unknown rate \(y_t\)

- Lay out known relation that involves \(y\)
- Take derivative implicitly (say w.r.t \(t\)) to obtain a relation between \(y_t\) and other stuff.
- Isolate $y_t = \text{ known stuff }$

:::{.example title="?"}
Example: ladder sliding down wall

- Setup: \(l, x_t\) and \(x(t)\) are known for a given \(t\), want \(y_t\).
\[
x(t)^2 + y(t)^2 = l^2 \implies 2xx_t +2yy_t = 2ll_t = 0
\]
(noting that $l$ is constant)
  - So $y_t = -\frac{x(t)}{y(t)}x_t$
  - \(x(t)\) is known, so obtain $y(t) = \sqrt{l^2 - x(t)^2}$ and solve.


:::

