
# Friday January 10

Recall that $\CC$ is a field, where $$z = x + iy \implies \bar z = x - iy$$ and if $z\neq 0$ then $$z\inv = \frac{\bar z} {\abs{z}^2}$$

Lemma (Triangle Inequality)
: 	$$\abs{z + w} \leq \abs z + \abs w.$$

Proof
: 
	\begin{align*}
	(\abs z + \abs w)^2 - \abs{z+w}^2 = 2( \abs{z\bar w} - \Re z\bar w ) \geq 0
	.\end{align*}

Lemma (Reverse Triangle Inequality)
: $$\abs{\abs z - \abs w} \leq \abs{z-w}.$$

Proof
: 
	\begin{align*}
	\abs z = \abs{z-w + w} \leq \abs{z-w} + \abs w \implies \abs w - \abs z \leq \abs{z-w} = \abs{w-z}
	.\end{align*}

Fact
: $(\CC, \abs{\wait})$ is a normed space.

Definition (Limits of Complex Sequences)
: $$\lim z_n = z \iff \abs{z_n - z} \to 0 \in \RR.$$

Definition (Complex Discs)
: 	A *disc* is defined as $D_r(z_0) \definedas \theset{z\in\CC \suchthat \abs{z-z_0} < r}$, and a subset is open iff it contains a disc.
	By convention, $D_r$ denotes a disc about $z_0 = 0$.

Definition (Convergence in $\CC$)
: $\sum_k z_k$ *converges* iff $S_N \definedas \sum_{\abs k < N} z_k$ converges.

Note that $z_n \to z$ and $z_n = x_n + iy_n$, and $$\abs{z_n - z} = \sqrt{(x_n - x)^2 - (y_n - y)^2} < \varepsilon \implies \abs{x - x_n}, \abs{y - y_n} < \varepsilon.$$

Since $\RR$ is complete iff every Cauchy sequence converges iff every bounded monotone sequence has a limit.

> Note: This is useful precisely when you don't know the limiting term.

Note that $\sum_k z_k$ thus converges if $\abs{\sum_{k=m}^n z_k} < \varepsilon$ for $m, n$ large enough, so sums converges iff they have small tails.

Definition (Absolute Convergence)
: 	$S_N = \sum^N z_k$ *converges absolutely* iff $\tilde S \definedas \sum^N \abs{z_k}$ converges.

Note that the partial sums $\sum^N \abs{z_k}$ are monotone, so $\tilde S_N$ converges iff the partial sums are bounded above.

Definition (Power Series)
: 	A sum of the form $\sum_{k=0}^\infty a_k z_k$ is a *power series*.

*Examples*:

\begin{align*}
\sum x^k &= \frac 1 {1-x} \\
\sum (-x^2)^k &= \frac 1 {1+x^2}
.\end{align*}

Note that both of these have a radius of convergence equal to 1, since the first has a pole at $x=1$ and the second as a pole at $x = i$.

# Monday January 13th

Recall that $\sum z_k$ converges iff $s_n = \sum_{k=1}^n z_k$ converges.

Lemma
: Absolute convergence implies convergence.

The most interesting series: $f(z) = \sum a_k z^k$, i.e. power series.

Lemma (Divergence)
: If $\sum z_k$ converges, then $\lim z_k = 0$.

Corollary
: If $\sum z_k$ converges, $\theset{z_k}$ is uniformly bounded by a constant $C > 0$, i.e. $\abs{z_k} < C$ for all $k$.

**Proposition:**
If $\sum a_k z_k$ converges at some point $z_0$, then it converges for all $\abs z < \abs z_0$.

Note that this inequality is necessarily strict.
For example, $\sum \frac{z^{n-1}}{n}$ converges at $z=-1$ (alternating harmonic series) but not at $z=1$ (harmonic series).

Proof
: 	Suppose $\sum a_k z_1^k$ converges.
	The terms are uniformly bounded, so $\abs{a_k z_1^k} \leq C$ for all $k$.
	Then we have $$\abs {a_k} \leq C/\abs{z_1}^k$$, so if $\abs z < \abs{z_1}$ we have $$\abs{a_k z^k} \leq \abs{z}^k \frac{C}{\abs{z_1}^k} = C (\abs{z} / \abs{z_1} )^k.$$
	So if $\abs{z} < \abs{z_1}$, the parenthesized quantity is less than 1, and the original series is bounded by a geometric series.
	Letting $r = \abs{z} / \abs{z_1}$, we have

	\begin{align*}
	\sum \abs{a_k z^k} \leq \sum c r^k = \frac{c}{1-r}
	,\end{align*}

	and so we have absolute convergence.

Exercise (future problem set)
: Show that $\sum \frac 1 k z^{k-1}$ converges for all $\abs{z} = 1$ except for $z = 1$.
	(Use summation by parts.)

Definition (Radius of Convergence)
: The *radius of convergence* of a series is the real number $R$ such that $f(z) = \sum a_k z^k$ converges precisely for $\abs z < R$ and diverges for $\abs z > R$.

	We denote a disc of radius $R$ centered at zero by $D_R$.
	If $R=\infty$, then $f$ is said to be *entire*.

Proposition
: Suppose that $\sum a_k z^k$ converges for all $\abs{z} < R$.
	Then $f(z) = \sum a_k z^k$ is continuous on $D_R$, i.e. using the sequential definition of continuity, $\lim_{z\to z_0} f(z) = f(z_0)$ for all $z_0 \in D_R$.

Recall that $S_n(z) \to S(z)$ uniformly on $\Omega$ iff $\forall \varepsilon > 0$, there exists a $M\in \NN$ such that $$n> M \implies \abs{S_n(z) - S(z)} < \varepsilon$$ for all $z\in \Omega$

Note that arbitrary limits of continuous functions may not be continuous.
Counterexample: $f_n(x) = x^n$ on $[0, 1]$; then $f_n \to \delta(1)$.
This uniformly converges on $[0, 1-\varepsilon]$ for any $\varepsilon > 0$.

Exercise
: Show that the uniform limit of continuous functions is continuous.
	
	> Hint: Use the triangle inequality.

Proof (of proposition)
: Write $f(z) = \sum_{k=0}^N a_k z^k + \sum_{N+1}^\infty a_k z^k \definedas S_N(z) + R_N(z)$.
	Note that if $\abs{z} < R$, then there exists a $T$ such that $\abs{z} < T < R$ where $f(z)$ converges uniformly on $D_T$.

	> Check!

	We need to show that $\abs{R_N(z)}$ is uniformly small for $\abs{z} < s < T$.
	Note that $\sum a_k z^k$ converges on $D_T$, so we can find a $C$ such that $\abs{a_k z^k} \leq C$ for all $k$.
	Then $\abs{a_k} \leq C/T^k$ for all $k$, and so

	\begin{align*}
	\abs{\sum_{k=N+1}^\infty a_k z^k}
	&\leq \sum_{k=N+1}^\infty \abs{a_k} \abs{z}^k \\
	&\leq \sum_{k=N+1}^\infty  (c/T^k) s^k \\
	&= c\sum \abs{s/T}^k \\
	&= c \frac{r^{N+!}}{1-r}
	&= C \varepsilon_n \to 0
	,\end{align*}

	which follows because $0 < r = s/T < 1$.

	So $S_N(z) \to f(z)$ uniformly on $\abs{z} < s$ and $S_N(z)$ are all continuous, so $f(z)$ is continuous.

There are two ways to compute the radius of convergence:

- Root test: $\lim_k \abs{a_k}^{1/k} = L \implies R = \frac 1 L$.
- 
- Ratio test: $\lim_k \abs{a_{k+1} / a_k} = L \implies R = \frac 1 L$.

As long as these series converge, we can compute derivatives and integrals term-by-term, and they have the same radius of convergence.

# Wednesday January 15th

> See references:
> Taylor's Complex Analysis, Stein, Barry Simon (5 volume set), Hormander (technically a PDEs book, but mostly analysis)

> Good Paper: [Hormander 1955](https://projecteuclid.org/download/pdf_1/euclid.acta/1485892151)

We'll mostly be working from Simon Vol. 2A, most problems from from Stein's Complex.

## Topology and Algebra of $\CC$

To do analysis, we'll need the following notions:

1. Continuity of a complex-valued function $f: \Omega \to \Omega$

3. Complex-differentiability: For $\Omega \subset \CC$ open and $z_0 \in \Omega$, there exists $\varepsilon > 0$ such that $D_\varepsilon = \theset{z \suchthat \abs{z - z_0} < \varepsilon} \subset \Omega$, and $f$ is **holomorphic** (complex-differentiable) at $z_0$ iff $$\lim_{h\to 0} \frac 1 h (f(z_0 + h) - f(z_0))$$ exists; if so we denote it by $f'(z_0)$.

Example
: $f(z) = z$ is holomorphic, since $f(z+ h) - f(z) = z+h-z = h$, so $f'(z_0) = \frac h h = 1$ for all $z_0$.

Example
:   Given $f(z) = \bar z$, we have $f(z+h)-f(z) = \bar h$, so the ratio is $\frac{\bar h}{h}$ and the limit doesn't exist.

    Note that if $h\in \RR$, then $\bar h = h$ and the ratio is identically 1, while if $h$ is purely imaginary, then $\bar h = -h$ and the limit is identically $-1$.

We say $f$ is *holomorphic on an open set* $\Omega$ iff it is holomorphic at every point, and is holomorphic on a closed set $C$ iff there exists an open $\Omega \supset C$ such that $f$ is holomorphic on $\Omega$.

Fact
: If $f$ is holomorphic, writing $h = h_1 + ih_2$, then the following two limits exist and are equal:

  \begin{align*}
  \lim_{h_1 \to 0} \frac{f(x_0 + iy_0 + h_1) - f(x_0 + iy_0)}{h_1} = \dd{f}{x}(x_0, y_0) \\
  \lim_{h_2 \to 0} \frac{f(x_0 + iy_0 + ih_2) - f(x_0 + iy_0)}{ih_2} = \frac 1 i \dd{f}{y}(x_0, y_0) \\
  \implies \dd{f}{x} = \frac 1  i \dd{f}{y}
  .\end{align*}

  So if we write $f(z) = u(x, y) + i v(x, y)$, we have

  \begin{align*}
  \dd{u}{x} + i \dd{v}{x} \mid_{(x_0, y_0)} = \frac 1 i \qty{
  \dd{u}{y} + i \dd{v}{y}
  } \mid_{(x_0, y_0)}
  ,\end{align*}

  and equating real and imaginary parts yields **the Cauchy-Riemann equations**:

  \begin{align*}
  \dd{u}{x} + i \dd{v}{x} = -i \dd{u}{y} + \dd{v}{y} \\
  \iff \dd{u}{x} = \dd{v}{y} \quad\text{and}\quad \dd{u}{y} = - \dd{v}{x}
  .\end{align*}

The usual rules of derivatives apply:

1. $(\sum f)' = \sum f'$

Proof
: Direct.

2. $(\prod f)' =$ product rule
  
Proof
: Consider $(f(z+h)g(z+h) - f(z)g(z))/h$ and use continuity of $g$ at $z$.

3. Quotient rule
  
Proof
: Nice trick, write $$q = \frac f g$$ so $qg = f$, then $f' = q'g + qg'$ and $q' = \frac {f'} g - \frac{fg'}{g^2}$.

4. Chain rule

Proof
:   Use the fact that if $f'(g(z)) = a$, then $$f(z+h) - f(z) = a h + r(z, h),\quad \abs{r(z, h)} = o(\abs h) \to 0.$$

    Write $b = g'(z)$, then $$f(g(z + h)) = f(g(z) + b h + r_1 ) = f(g(z)) + f'(g(z))bh + r_2$$ by considering error terms, and so $$\frac 1 h (f(g(z+h)) - f(g(z))) \to f'(g(z)) g'(z)$$.


# Friday January 17th

## Antiholomorphic Derivative

> Reference:
> See Lang's Complex Analysis, there are plenty of solution manuals.
> Note: look for 13 statements equivalent to holomorphic: Springer GTM Lipman.

Let $f; \Omega \to \CC$ be a complex-valued function.
Recall that $f$ is *complex differentiable* iff the usual ratio/limit exists.
Note that $h = x+iy$ and $h\to 0 \iff x,y\to 0$.

We can write $$f'(z) = \dd{f}{x} = \frac 1 i \dd{f}{y}.$$
This follows from Cauchy-Riemann since $u_x = v_y$ and $u_y = -v_x$.


We want to define $\del, \bar \del$ operators.
We have the identities

\begin{align*}
x = \frac{z + \bar z}{z} \quad y = \frac{z - \bar z}{iz}
.\end{align*}

We can then write

\begin{align*}
dz &= dx + idy \\
d\bar z &= dx - i dy
.\end{align*}


We define the dual operators by $\inner{\dd{}{z}}{dz} = 1$ and similarly $\inner{ \dd{}{\bar z}  }{d\bar z} = 1$.

By the chain rule, we can write

\begin{align*}
f_z &= \dd{f}{x} \dd{x}{z} +  \dd{f}{y} \dd{y}{z} \\
&= \frac 1 2 \dd{f}{x} + \dd{f}{y} \frac{1}{2i} \\
&= \frac 1 2 \qty{\dd{}{x} + i \dd{}{y} }f 
,\end{align*}

and similarly 
\begin{align*}
f_{\bar z} 
&=  \dd{f}{x} \dd{x}{\bar z}  + \dd{f}{y}  \dd{z}{\bar z} \\
&= \frac 1 2 \qty{ \dd{}{x} - \frac{1}{2i} \dd{}{y}  }f
.\end{align*}

We thus find $\del_x = \del_z + \del_{\bar z}$ and $\del_y = i\qty{ \del_z - \del_{\bar z}  }$,
so define

\begin{align*}
\del f &\definedas \dd{f}{z} dz \\
\bar{\del} f &\definedas \dd{f}{\bar z} d\bar z \\
\implies df &= \dd{f}{z} dz + \dd{f}{\bar z} d\bar z
.\end{align*}

Definition (Holomorphic and Antiholomorphic Derivatives)
: 
	\begin{align*}
	\bd f &= \frac 1 2 \qty{\dd{}{x} + i \dd{}{y} }f\\
	\bar \bd f &= \qty{ \dd{}{x} - \frac{1}{2i} \dd{}{y}  }f
	.\end{align*}


Proposition (Holomorphic Functions have vanishing antiholomorphic derivatives)
: 	$f$ is holomorphic iff $\bar \del f = 0$.

This means that $f$ depends on $z$ alone and not $\bar z$.

Proof
: $\bar \del f = 0$ iff $\frac 1 2 (f_x + if_y) = 0$, so $(u_x  - v_y) + i (v_x + u_y) = 0$.

Application to PDEs:
we can write $$u_{xx} = v_{xy} \quad u_{yy} = v_{yx}$$ and so $$u_{xx} + u_{yy} = 0 = v_{xx} + v_{yy}.$$

Thus $\Delta f = 0$, sp $f$ satisfies Laplace's equation and is said to be *harmonic*.

Corollary (Holomorphic Functions Have Harmonic Components)
: 	If $f$ is analytic, then $u, v$ are both harmonic functions.

Theorem (Chain Rule)
: 	Let $w = f(z)$ and $g(w) = g(f(z))$.
	Then

	\begin{align*}
	h_z &= g_w f_z + g_{\bar w} \bar f_z \\
	h_{\bar z} &= g_w f_{\bar z} + g_{\bar w} \bar f_{\bar z}
	.\end{align*}

	If $f, g$ are holomorphic, $f_{\bar z} = g_{\bar w} = 0$, so $h_{\bar z} = 0$ and $h$ is holomorphic and $$h_z = g_w f_z.$$

Example
: 	Given a power series $f=\sum a_n (z- z_0)^n$.
	Then

	1. There exists a radius of convergence $R$ such that $f$ converges precisely on $D_R(z_0)$.
	2. $f$ is continuous on $D_R(z_0)^\circ$.
	3. By the root test, $R = (\limsup \abs{a_n}^{1/n})\inv = \liminf \abs{a_n/a_{n+1}} = (\limsup \abs{a_{k+1}/a_k})\inv$.

Recall the **ratio test**: 
$$\sum \abs{a_k} <\infty \iff \limsup \abs{a_{k+1} / a_k} < 1$$

Theorem (Holomorphic series can be differentiated term-by-term)
: 	If $f(z) = \sum_{n=0} a_n z^n$ is holomorphic on $\abs{z} < R$ for $R> 0$ then $$f'(z) = \sum_{n=1} a_n n z^{n-1}.$$

Proof
: 	Given $\abs z < R$, fix $r>0$ such that $\abs {z} < r < R$.
	Suppose that $\abs{w-z} < r - \abs{z}$, so $\abs w < r$.

	![Image](figures/2020-01-17-14:14.png)\

	We want to show 
	\begin{align*}
	\abs{S} = \abs{\frac{f(w) - f(z)}{w - z} - \sum_{n=1} a_n n z^{n-1}} \to 0 \quad \text{as } w\to z
	.\end{align*}

	Idea: write everything in terms of power series.
	Use the fact that $a^n - b^n = (a-b)(a^{n-1} + a^{n-2}b + \cdots)$, and so $\abs{(w^k-z^k)/(w-z)} \leq k r^{k-1}$.

	\begin{align*}
	S 
	&= \sum_{n=1} a_n \qty{ \frac{w^n - z^n}{w-z} - n z^{n-1}  } \\
	&= \sum a_n \qty{ w^{n-1} + w^{n-2}z + \cdots + z^{n-1} + nz^{n-1} } \\
	&=  \sum a_n \qty{ (w^{n-1} - z^{n-1}) + (w^{n-2} - z^{n-2})z + \cdots + (w-z) z^{n-2} }
	&= \sum a_n (w-z) \qty{ \cdots + z^{n-2} }\\
	&\leq \sum_{n=2} \abs{a_n} \frac 1 2 n(n-1) r^{n-2} \abs{z-w}
	.\end{align*}

Exercise
: Show $\lim_n n^{\frac 1 n} =  1$.
	
	Also tricky: show $\lim \sin(n)$ doesn't exist, and $\sin(n)$ is dense in $[-1, 1]$.
	
	Proof
	: Consider $\limsup \abs{a_n n}^{\frac 1 n}$.

Note that an analytic function is holomorphic in its domain of convergence, so analytic implies holomorphic.
The converse requires Cauchy's integral formula.

Next time: trying to prove holomorphic functions are analytic.

# Wednesday January 22nd

## Parameterized Curves

> Note: multiple complex variables, see Hormander or Steven Krantz

Recall from last time that if $$f(z) = \sum_{n=0}^\infty a_n z^n$$ with $z_0 \neq 0$ has radius of convergence $$R = (\limsup \abs{a_n}^{1/n})\inv > 0$$ then
$f'$ exists and is obtained by differentiating term-by-term.

We know that $f$ analytic $\implies$ $f$ holomorphic (and smooth), and we want to show the converse.
For this, we need integration.

Definition (Parameterized Curves)
: 	A *parameterized curve* is a function $z(t)$ which maps a closed interval $[a, b] \subset \RR$ to $\CC$.

Definition (Smooth Curves)
: 	The curve is said to be *smooth* iff $z'$ exists and is continuous on $[a,b]$, and $z'(t) \neq 0$ for any $t$.
	At the boundary $\theset{a, b}$, we define the derivative by taking one-sided limits.

Definition (Piecewise Smooth Curves)
: 	A curve is said to be *piecewise smooth* iff $z(t)$ is continuous on $[a, b]$ and there are $a < a_1 < \cdots < a_n = b$ with $z$ smooth on each $[a_k, a_{k+1}]$.

Note that such a curve may fail to have tangent lines at $a_i$.

Definition (Equivalent Parameterizations)
: 	Two parameterizations $z: [a,b] \to \CC, \tilde z: [c, d] \to \CC$ are *equivalent* iff there exists a $C^1$ bijection $s: [c, d] \to [a, b]$ where $s \mapsto t(s)$ such that $s'>0$ and $\tilde z(s) = z(s(t))$.

Note that $s' > 0$ preserves orientation and $s'<0$ reverses orientation.

Definition (Orientations of Curves)
: A curve in *reverse orientation* is defined by
	\begin{align*}
	\gamma: [a, b] \to \CC \implies 
	\gamma^-: [a,b] &\to \CC \\ t &\mapsto \gamma(a+b-t)
	.\end{align*}

Definition (Closed Curves)
: 	A curve is *closed* iff $z(a) = z(b)$, and is simple iff $z(t) \neq z_{t_1}$ for $t\neq t_1$.

Definition (Positively Oriented Curves)
: 	For $C_r(z_0) \definedas \theset{z\suchthat \abs{z-z_0} = r}$, the *positive orientation* is given by $z(t) = z_0 + re^{2\pi i t}$ for $t\in [0, 1]$.

## Definition of the Integral

Definition (The Complex Integral)
: 	The *integral* of $f$ over $\gamma$ is defined as

	\begin{align*}
	\int_\gamma f ~dz = \int_a^b f(z(t)) z'(t)~dt
	.\end{align*}

Note: this doesn't depend on parameterization, since if $t = t(s)$, then a change of variables yields
\begin{align*}
\int_\gamma f ~dz - \int_c^d f(z(t(s)))~z'(t(s))~t'(s) ~ds = \int_c^d f(\tilde z(s)) ~\tilde z'(s) ~ds
.\end{align*}

Definition (Length of a Curve)
: 	The *length* of $\gamma$ is defined as $\abs \gamma = \int \abs{z'(t)} ~dt$.

Proposition
: 	1. We can extend this definition to piecewise smooth curves by 
	$$
	\int_\gamma f~dz = \sum \int_{a_k}^{a_{k+1}} f ~dz
	$$

	2. This integral is linear and $\int_\gamma f = -\int_{\gamma^-} f$.

	3. We have an inequality

	\begin{align*}
	\abs{\int_\gamma f} \leq \max_{a\leq t \leq b} \abs{f(z(t))} \abs\gamma
	.\end{align*}

Definition (Primitive of a Function)
: 	A function $F$ is a *primitive* for $f$ on $\Omega$ iff $F$ is holomorphic on $\Omega$ and $F'(z) = f(z)$ on $\Omega$.

Recall that in $\RR$, we have $$F(x) =\int_a^x f(t)~dt$$ as an antiderivative with $F'(x) = f(x)$, and $\int f = F(b) - F(a)$.

Theorem (Evaluating Integrals with Primitives)
: 	If $f$ is continuous, has a primitive $F$ in $\Omega$, and $\gamma$ is a curve beginning at $w_0$ and ending at $w_1$, then $\int_\gamma f = F(w_1) - F(w_0)$.

Proof
: 	Use definitions, write $z(t)$ where $z(a) = w_1, z(b) = w_2$.
	Then

	\begin{align*}
	\int_\gamma f &= \int_a^b f(z(t)) z'(t) ~ dt \\
	&= \int_a^b F'(z(t)) z'(t) ~dt \\
	&= \int_a^b F_t ~dt \\
	&= F(z(b)) - F(z(a)) \quad\text{by FTC}\\
	&= F(w_1) - F(w_2)
	.\end{align*}

	Note that if $\gamma$ is piecewise smooth, the sum of the integrals telescopes to yield the same conclusion.

Corollary (Functions with Primitives Integrate to Zero Along Loops)
: 	If $f$ is continuous and $\gamma$ is a closed curve in $\Omega$, and $f$ has a primitive in $\Omega$, then $$\oint f = 0.$$


# Friday January 24th

Corollary
: 	If $\gamma$ is a closed curve on $\Omega$ an open set and $f$ is continuous with a primitive in $\Omega$ (i.e. an $F$ holomorphic in $\Omega$ with $F'=f$) then $\int_\gamma f ~dz = 0$.

Proof (easy)
: 
	\begin{align*}
	\int_\gamma f ~dz = \int_\gamma F' = F'(z) z(t) ~dt  = F(z(b)) - F(z(a)) = 0
	.\end{align*}

Corollary
: 	If $f$ is holomorphic with $f'=0$ on $\Omega$, then $f$ is constant.

Proof (easy)
: 	Pick $w_0 \in \Omega$; we want to fix $w_0 \in \Omega$ and show $f(w) = f(w_0)$ for all $w\in \Omega$.

	Take any path $\gamma: w_0 \to w$, then 

	\begin{align*}
	0 = \int_\gamma f' = f(w) - f(w_0)
	.\end{align*}

## Integral and Fourier Transform of $e^{-x^2}$

Example
: 	Let $f(z) = e^{-z^2}$, this is holomorphic.
	Write 
	$$
	f(z) = \sum  \frac{(-1)^nz^{2n}}{n!}
	,$$ so 
	$$
	\int f = \sum  \frac{ (-1)^n z^{2n+1} }{ n! (2n+1) }
	.$$
	
	Since $f$ is entire, $\int f$ is entire, and $(\int f)' = f$ so this function has a primitive.
	Thus $\int_\gamma f(z) = 0$ for *any* closed curve.
	So take $\gamma$ a rectangle with vertices $\pm a , \pm a + ib$.

	![Image](figures/2020-01-24-13:36.png)\

	So 

	\begin{align*}
	\int_\gamma f = \int_{-a}^a e^{-x^2} ~dx + \int e^{-(a+iy)^2} i ~dy - \int_{-a}^a e^{-(x+ib)^2} ~dx - \int_0^b e^{-(a+iy)^2} i dy = 0
	.\end{align*}

	We can do some estimates,

	\begin{align*}
	e^{-(a+iy)^2} 
	&= e^{-(a^2 + 2iay - y^2)} \\
	&= e^{-a^2 + y^2} e^{2iay} \\
	&\leq e^{-a^2 + y^2} \\
	&\leq e^{-a^2 + b^2}, \\ \\
	\abs {\int_0^b e^{-(a+ib)^2} i ~dy} 
	&\leq e^{-a^2 + b^2} \cdot b \\ \\
	\int_{-a}^a e^{-(x^2 + 2ib x)-b^2} 
	&= e^{b^2} \int_{-a}^a e^{-x^2} ( \cos(2bx) - i \sin(2bx) ) \\ \\
	&\equalsbecause{odd fn} e^{b^2} \int_{-a}^a e^{-x^2} \cos(2bx) ~dx
	.\end{align*}

	Now take $a\to \infty$ to obtain

	\begin{align*}
	\int_\RR e^{-x^2} ~dx = e^{b^2} \int_\RR e^{-x^2} \cos(2bx) ~dx
	.\end{align*}

	We can compute

	\begin{align*}
	\int_\RR e^{-x^2} = \left[ \qty{\int_\RR e^{-x^2}}^2 \right]^{1/2} = \qty{ \int_0^{2\pi} \int_0^\infty e^{r^2} r~dr~d\theta} = \sqrt{\pi}
	.\end{align*}

	and then conclude

	\begin{align*}
	\int_\RR e^{-x^2} \cos(2bx) = \sqrt{\pi} e^{-b^2}
	.\end{align*}

	Make a change of variables $2b = 2\pi \xi$, so $b = \pi \xi$, then

	\begin{align*}
	\int_\RR e^{-x^2} \cos(2\pi \xi x) ~dx = \sqrt{\pi} e^{-\pi^2 \xi^2}
	.\end{align*}

	Thus $\mcf(e^{-x^2}) = \sqrt{\pi} e^{-\pi^2 \xi^2}$, allowing computation of the Fourier transform.
	Note that this can be used to prove the Fourier inversion formula.

Exercise
: 	Show that this is an approximate identity and prove the Fourier inversion formula.

Exercise
: 	Show $\mcf(e^{-ax^2}) = \sqrt{\pi/a} e^{-\pi^2/a \cdot \xi^2}$, and thus taking $a = \pi$ makes $e^{\pi x^2}$ is an eigenfunction of $\mcf$ with eigenvalue $1$.

Theorem (Holomorphic Integrals Vanish)
: 	If $f$ has a primitive on $\Omega$ then $F(z)$ is holomorphic and $\int_\gamma f = 0$.
	If $f$ is holomorphic, then $$\int_\gamma f = 0.$$


Theorem (Green's)
: 	Take $\Omega \in \RR^2$ bounded with $\bd \Omega$ piecewise smooth.
	If $f, g\in C^1{\bar \Omega}$, then

	\begin{align*}
	\int_{\bd \Omega} f ~dx + g ~dy = \iint_{\Omega} \qty{g_x - f_y} ~dA
	.\end{align*} 

Proof
: 	Omitted.

Proof (that holomorphic integrals vanish)
: 	Write $\gamma = \bd \Gamma$, and noting that $f_z = f_x = \frac 1 i f_y$ implies that $\dd{f}{\bar z}$, so

	\begin{align*}
	\int_\gamma f ~dz 
	&= \int_\gamma f(z) ~(dx + i dy) \\
	&= \int f(z) ~dx + i f(z) ~dy \\
	&= \iint_\Gamma \qty{if_x - f_y} ~dA \\
	&= i \iint_\Gamma \qty{f_x - \frac 1 i f_y} ~dA \\
	&= i \iint 0 ~dA \\
	&= 0
	.\end{align*}


Next up, we'll prove that this integral over any triangle is zero by a limiting process.

# Monday January 27th

> Open question: does a PDE involving analytic functions always have solutions?
> Or does this hold with analytic replaced by smooth?

## Green's Theorem

Fix a connected domain $\Omega$ which is bounded with a piecewise $C^1$ boundary. 

Theorem (Green's)
: 	Given $f, g \in C^1 \bar \Omega$, we can take a vector field $F = \generators{f, g}$ and have

	\begin{align*}
	\int_{\bd \Omega} f~dx + g~dy &= \iint_{\Omega} \qty{ \dd{g}{x} - \dd{f}{y}  } ~dA \\
	\int_{\bd \Omega} - f~dx + g~dy &= \iint_{\Omega} \qty{ \dd{g}{x} + \dd{f}{y}  } ~dA \\
	\int_{\bd \Omega} f~dy - g~dy &= \iint_{\Omega} \qty{ \dd{f}{x} + \dd{g}{y}  } ~dA \\
	\int_{\bd \Omega} F \cdot \vector n ~ds &= \iint_{\Omega} \nabla \cdot F ~dA \\
	\int_{\bd \Omega} \mathrm{curl}(F) ~ds &= \iint_{\Omega} \mathrm{div}(F) ~dA
	,\end{align*}

	where we take $\vector n$ to be orthogonal to $\bd \Omega$.
The quantities appearing on the RHS are referred to as the flux.

For $f(z) \in C^1(\Omega)$ holomorphic, we can then write

\begin{align*}
\int_{\bd \Omega} f ~dz
&= \int_{\bd \Omega} f ~(dx + idy) \\
&= \int_{\bd \Omega} f ~dx + if~dy \\
&= \iint_\Omega \qty{if_x - f_y} ~dA \\
&= 0
,\end{align*}

which follows since $f$ holomorphic, we can write $$f'(z) = f_x = \frac 1 i f_y,$$ so $i f_x = f_y$ and thus $\dd{f}{\bar z} = 0$.

> See Taylor's Introduction to Complex Analysis

Theorem (Cauchy's Integral Formula):
: 	If $f\in C^1(\bar \Omega)$ and $f$ is holomorphic, then for any $z\in \Omega$

	\begin{align*}
	f(z) = \frac{1}{2\pi i} \int_{\bd \Omega} \frac{d(\xi)}{\xi - z} ~d\xi
	.\end{align*}

Proof
: Since $z\in \Omega$ an open set, we can find some $r> 0$ such that $D_r(z) \subset \Omega$.
	Then $\frac{f(\xi)}{\xi - z}$ is holomorphic on $\Omega\setminus D_r(z)$.
	Let $C_r = \bd D_r(z)$.

	**Claim**: 
	$$\int_{\bd \Omega} \frac{f(\xi)}{\xi - z} ~d\xi = \int_{C_r} \frac{f(\xi)}{\xi - z} ~ d\xi.$$

	If we can differentiate through the integral, we can obtain

	\begin{align*}
	\dd{}{z} f(z) = \frac 1 {2\pi i} \int_{\bd \Omega} \frac{f(\xi)}{(\xi - z)^2} ~d\xi
	.\end{align*}

	and thus inductively

	\begin{align*}
	(D_z)^n f(z) = \frac{n!}{2\pi i} \int_{\bd \Omega} \frac{ f(\xi) ~d\xi  }{ (\xi - z)^{n+1}  }
	.\end{align*}

	To prove rigorously, need to write

	\begin{align*}
	\Delta_h f(z) 
	= \frac 1 h \qty{ f(z+h) - f(z) } \\
	= \frac 1 {2\pi i h} \int_{\bd \Omega} f(\xi) \qty{ \frac{1}{\xi - (z+h)} - \frac{1}{\xi - z}  } ~d\xi
	= \frac 1 {2\pi i h} \int_{\bd \Omega} f(\xi) \qty{ \frac{1}{ (\xi - z- h)(\xi - z)  }  } ~d\xi
	,\end{align*}

	and show the integrand converges uniformly, where 
	$$
	\frac{1}{(\xi - z - h)(\xi - z)} \converges{u}\to \frac{1}{(\xi - z)^2}
	.$$

	Continuing inductively yields the integral formula. 

Proof (of claim used in main proof)
: 	Use the parameterization of $C_r$ given by $\xi = z + re^{i\theta}$.
	Then

	\begin{align*}
	\frac{1}{2\pi i} \int_{C_r} \frac{f(\xi)}{\xi - z} ~d\xi 
	&= \frac{1}{2\pi i} \int_0^{2\pi} \frac{f(z + re^{i\theta})}{re^{i\theta}} ~ird\theta \\
	&= \frac{1}{2\pi} \int_0^{2\pi} f(z + re^{i\theta}) ~d\theta \\
	&\converges{r \to 0}\to \frac{1}{2\pi} \int_{\bd \Omega} \frac{f(\xi)} {\xi - z}
	.\end{align*}

	where we use the fact that 
	$$f(z + re^{i\theta}) = f(z) + f'(z)re^{i\theta} + o(r) \converges{r\to 0}\to f(z)$$

	Letting $$F(\xi) = \frac{ f(\xi)}{\xi - z},$$ this is holomorphic on $\Omega\setminus D_r(z)$.
	Let $\Omega_r = \bd \Omega \union (-C_r)$.
	Take the following path integral:

	![Image](figures/2020-01-27-13:59.png)\

	Then
	\begin{align*}
	0 = \int_{\bd \Omega_r} F(\xi) ~d\xi = \int_{\bd \Omega} F(\xi) ~d\xi - \int_{C_r} F(\xi) ~d\xi
	,\end{align*}

	which forces these integrals to be equal.

Corollary ($C^1$ implies smooth)
: 	If $f$ is holomorphic, then $f\in C^1(\Omega)$ implies that $f \in C^\infty(\Omega)$.

Theorem (Holomorphic implies analytic)
: 	If $f$ is holomorphic in $\Omega$, then $f$ is equal to its Taylor series (i.e. $f(z_0$ is analytic.)

Proof
: 	Fix $z_0 \in \Omega$ and let $r = \abs{z- z_0}$.

	\begin{align*}
	\frac{1}{\xi - z} 
	&= \frac{1}{ \xi - z_0 - (z-z_0)  } \\
	&= \frac{1}{\xi - z_0} \frac{1}{1 - \qty{ \frac{z-z_0}{\xi - z_0}   }  } \\
	&= \frac{1}{\xi - z_0} \sum_n \qty{ \frac{z - z_0}{\xi - z_0}  }^n \quad\text{for } \abs{z - z_0} < \abs{\xi - z_0}
	.\end{align*}

	Note that $\sum z^n$ converges uniformly for any $\abs{z} < \delta < 1$.

	Thus

	\begin{align*}
	f(z) 
	&= \frac{1}{2\pi i} \int_{\xi \in \bd\Omega} f(\xi) \sum \frac{(z-z_0)^n}{(\xi - z_0)^{n+1}} ~d\xi \\
	&= \sum \qty{ \frac {1}{2\pi i} \int \frac{f(\xi)  }{(\xi - z_0)^{n+1}} ~d\xi} (z-z_0)^n \\
	&= \sum \frac{f^{(n)} (z_0)}{n!} (z-z_0)^n
	.\end{align*}

Corollary
: 	$f$ is holomorphic iff $f$ is analytic.

Counterexample to keep in mind:

\begin{align*}
f(x) = \begin{cases}
x^2 & x > 0 \\
0 & x\leq 0
\end{cases}
.\end{align*}

In the case of $\RR$, smooth and analytic are very different categories of functions.

# Wednesday January 29th

## Cauchy's Integral Formula

Theorem (Cauchy's Integral Formula)
: 	Let $f: \Omega \to \CC$ be holomorphic, so $f\in C^1(\bar \Omega)$.
	Then for any $z\in \Omega$,

	\begin{align*}
	f(z) = \frac{1}{2\pi i} \int_{\bd \Omega} \frac{f(\xi)}{\xi - z} ~d\xi
	.\end{align*}

	In general,
	\begin{align*}
	f^{(n)}(z) = \frac{n!}{2\pi i} \int_{\bd \Omega} \frac{f(\xi)}{\qty{\xi - z}^{n+1}} ~d\xi
	.\end{align*}

This implies that $f$ is analytic, i.e. 
$$
f(z) = \sum a_n (z-z_0)^n \quad\text{where}\quad a_n = \frac{f^{(n)}(z_0) }{n!}
.$$
Thus $f$ is holomorphic iff $f$ is analytic,

and

\begin{align*}
\int_{\bd \Omega} f = 0 \implies \int_{\bd \Omega_\gamma} \frac{f(\xi)}{\xi - z}~d\xi = 0
.\end{align*}

where $\Omega_r = \Omega\setminus D_r(z)$, and $\bd \Omega_r = \bd \Omega \union (-\bd D_r)$.

We can thus shrink integrals:

\begin{align*}
\int_{\bd \Omega} \frac{f(\xi)} {\xi - z} ~d\xi = \int_{C_r} \frac{f(\xi)} {\xi - z} ~d\xi
.\end{align*}

Proposition (Homotopy Invariance)
: 	Let $f\in C^1(\Omega)$ be holomorphic on $\Omega$.
	Let $\gamma_s(t)$ be a family of smooth curves in $\Omega$; then $\int_{\gamma_s} f$ is independent of $s$.

Proof
: 	Write $$\gamma_s(t) = \gamma(s, t): [a, b] \cross [0, 1] \to \Omega.$$
	
	We have $\gamma_s(0)  = \gamma_s(1)$ so $\dd{\gamma}{s}(s, 0) = \dd{\gamma}{s}(s, 1)$.
	Then 

	\begin{align*}
	\dd{\gamma}{s} 
	&= \int_0^1 \qty{ f'(r(s, t)) \dd{r}{s} \dd{r}{t} + f(r(s, t)) \frac{\partial^2 \gamma}{\partial s \partial t} } ~dt \\
	&= \int_0^1 \qty{ f'(r(s, t)) \dd{r}{s} \dd{r}{t} + f(r(s, t)) \frac{\partial^2 \gamma}{\partial \mathbf{t} \partial \mathbf{s}} } ~dt \\
	&= \int_0^1 \dd{}{t} \qty{ f(\gamma(s, t))  \gamma_s } \\
	&= f(\gamma(s, 1))\gamma_s(s, 1) - f(\gamma(s, 0)) \gamma_s(s, 0) \\
	&= 0
	.\end{align*}

	where we can just take the paths $\gamma(s, t) = z_0 \in \Omega$ for all $s, t$.

Proposition (Pointwise Limit of Locally Uniform is Locally Uniform)
: 	Let $\Omega \subset \CC$ be open and $f_v: \Omega \to \CC$.
	Suppose that each $f_v$ is holomorphic, $f_v \to f$ pointwise, and *locally uniform*, i.e. $f_v \to f$ uniformly on every compact $K \subset \Omega$.
	Then $f$ is holomorphic in $\Omega$ and $f$ is locally uniform.

Proof 
: 	Given a compact set $K \subset \Omega$, pick an $O$ with smooth boundary such that $K \subset O \subset \bar O \subset \Omega$.
	We have

	\begin{align*}
	f_v(z) &= \frac{1}{2\pi i} \int_{\bd O} \frac{f_v(\xi)}{\xi - z}~d\xi \\
	f_v^{(n)}(z) &= \frac{n!}{2\pi i} \int_{\bd O} \frac{f_v(\xi)}{\qty{ \xi - z}^{n+1} }~d\xi \\
	.\end{align*}

	Then on $\bd O$, we have uniform convergence

	\begin{align*}
	\frac{f_v(\xi)}{\qty{\xi - z}^{n+1}} \converges{u}\to
	\frac{f(\xi)}{\qty{\xi - z}^{n+1}}
	.\end{align*}

	By moving the limits inside, we obtain

	\begin{align*}
	f(z) &= \frac{1}{2\pi i} \int_{\bd O} \frac{f(\xi)}{\xi - z}~d\xi \\
	f^{(n)}(z) &= \frac{n!}{2\pi i} \int_{\bd O} \frac{f(\xi)}{\qty{ \xi - z}^{n+1} }~d\xi \\
	.\end{align*}

Theorem (Cauchy's Inequality)
: 	Given $z_0\in \Omega$, pick the largest disc $D_R(z_0) \subset \Omega$ and let $C_R = \bd D_R$.
	Using the integral formula, defining $\norm{f}_{C_R} = \max_{\abs{z-z_0} = R} \abs{f(z)}$

	\begin{align*}
	\abs{ f^{(n)}(z_0) } \leq \frac{n!}{2\pi} \int_0^{2\pi} \frac{\norm{f}_{C_R}}{R^{n+1}} R~d\theta = \frac{n! \norm{f}_{C_R}}{R^{n}}
	.\end{align*}

Corollary (Liouville's Theorem)
: 	If $f$ is entire and bounded, then $f$ is constant.

Proof
: 	For all $z_0 \in \CC$, there exists an $M$ such that $\abs{f(z)} \leq M$.
	Then $\abs{f'(z_0)} \leq \frac{M}{R}$ for any $R> 0$.
	Taking $R\to \infty$ yields $f'(z_0) = 0$, so $f$ is constant.

Corollary (Weak Fundamental Theorem of Algebra)
: 	Every non-constant polynomial $p(z) = a_0 + a_1z + \cdots a_n z^n$ has a root in $\CC$.

Remark: A general proof technique is when proving something for $f(z)$, consider $\frac{1}{f(z)}$ and $f(\frac 1 z)$.

Proof
: 	Suppose $p$ is nonconstant and does not have a root, $\frac 1 p$ is entire.
	Assume that $a_n \neq 0$, then

	\begin{align*}
	\frac{p(z)}{z^n} = a_n \qty{ \frac{a_{n-1}}{z} + \cdots + \frac{a_0}{z^n}  } \definedas a_n + y
	\end{align*}

	We can note that $\lim_{z\to \infty} \frac{a_{n-k}}{z^k} \to 0$, so there exists an $R>0$ such that 

	\begin{align*}
	\abs{ \frac{p(z)}{z^n}  } \geq \frac 1 2 \abs{a_n} \quad \text{ for } \abs{z} > R \\
	\implies \abs{p(z)} \geq \frac 1 2 \abs{a_n} \abs{z}^n \geq \frac 1 2 \abs{a_n} R^n
	.\end{align*}

	Since $p(z)$ is continuous and has no root in the disc $\abs{z} \leq R$, $\abs{p(z)}$ is bounded from below in this disc.
	Since $p(z)$ is continuous on a compact set, it attains a minimum, and so $\abs{p(z)} \geq \min_{\abs z \leq R} \abs{p(z)} = c_2 \neq 0$.
	Then $\abs{p(z)} \geq A = \min(C_2, \frac 1 2 \abs{a_n}R^n)$, so $\frac{1}{p}$ is bounded.
	Then $f$ is constant, a contradiction.



# Friday January 31st

## Fundamental Theorem of Algebra

Recall that if $f$ is holomorphic, we have Cauchy's integral formula.

Corollary (Weak Fundamental Theorem of Algebra)
: 	If $P(z)$ is a polynomial in $\CC$ then $P$ has a root in $\CC$.

Proof
: 	See previous notes.

Corollary (Fundamental Theorem of Algebra)
: 	Every polynomial of degree $n$ has precisely $n$ roots in $\CC$.

Proof
: 	By induction on the degree of $P$.
	From the first corollary, $P$ has a root $w_1$, so write $z = z-w_1 + w_1$.
	Then

	\begin{align*}
	p(z) 
	&= p(z - w_1 + w_1) \\
	&= \sum_k^n a_k(z -w_1 + w_1)^k \\
	&= \sum_k^n a_k \sum_{j}^k {k\choose j} w_1{k-j} (z-w_1)^j \\
	&= \sum_k^n \sum_j^k a_k {k\choose j} w_1^{k-j} (z-w_1)^j \\
	&= \sum_j^n \qty{\sum_{k\geq j} a_k {k\choose j}}(z-w_1)^j \\
	&= b_0 + b_1(z-w_1) + \cdots + b_n(z-w_1)^n 
	.\end{align*}

	Since $P(w_1) = 0$, we must have $b_0 = 0$, and thus this equals

	\begin{align*}
	b_1(z-w_1) + \cdots + b_n(z-w_1)^n 
	&= (z-w_1) \qty{ b_1 + \cdots + b_n (z-w_1)^{n-1}  } \\
	&\definedas  (z-w_1) \phi(z)
	,\end{align*}

	where $\phi(z)$ is degree $n-1$, which has $n-1$ roots by induction.

Definition (Characterizations of Limit Points)
: 	For a sequence $\theset{z_n}$, TFAE

	1. $z$ is a limit point.
	2. There exists a subsequence $\theset{z_{n_k}}$ converging to $z$.
	3. For every $\eps > 0$, there are infinitely many $z_i$ in $D_\eps(z)$. 

Theorem (Only the zero function vanishes on a sequence in a domain (Stein 4.8))
: 	Suppose $f$ is holomorphic on a bounded connected region $\Omega$ and $f$ vanishes on a sequence of distinct points with a limit point in $\Omega$. 
		Then $f$ is identically zero.

Proof
: 	WLOG by restricting to a subsequence, suppose that $\theset{w_k} \in \Omega$ with $f(w_i) = 0$ for all $i$ and $z_0$ is a limit point of $\theset{w_i}$.
	Let $U = \theset{ z\in \Omega \suchthat f(z) = 0 }$.
	Then

	1. $U$ is nonempty since $f(w_k) = f(z_0) = 0$.
	2. Since holomorphic functions are continuous, if $w_k \to z$ then $z\in U$, so $U$ is closed. 
	3. (To prove) $U$ is open.

	Since $U$ is closed and open, $U = \Omega$.

	We will first show that $f(z) \equiv 0$ in a disk containing $z_0$.
	Choose a disc $D$ containing $z_0$ and contained in $\Omega$.
	Since $f$ is holomorphic on $D$, we can write $$f(z) = \sum a_nn (z-z_0)^n.$$
	Since $f(z_0) = 0$, we have $a_0 = 0$.

	Suppose $f\not\equiv 0$.
	Then there exists a smallest $n\in \ZZ^+$ such that $a_n \neq 0$, so $f(z) = a_n(z-z_0)^n + \cdots$.
	Since $a_n \neq 0$, we can factor this as $a_n(z-z_0)^n \qty{ 1 + g(z-z_0)  }$ where $$g(z-z_0) = \sum_{k=n+1}^\infty \frac{a_k}{a_n} (z-z_0)^{k-n}.$$
	Note that $g$ is holomorphic, and $g(z_0 - z_0) = 0$.

	Choose some $w_k$ such that $f(w_k) = 0$ and $\abs{g(w_k - z_0)} \leq \frac 1 2$ by continuity of $g$.
	Then $$\abs{1 + g(w_k - z_0)} > 1 - \frac 1 2 = \frac 1 2.$$
	
	So $$\abs{f(w_k)} = \abs{ a_n(w_k - z_0)^n \qty{1 + g(w_k - z_0)  }  } > \abs{a_n} \abs{w_k - z_0}^n \frac 1 2 > 0,$$ a contradiction.
	So $U$ is open, closed, and nonempty, so $U = \Omega$.

Corollary
: 	Suppose $f, g$ are holomorphic in a region $\Omega$ with $f(z_k) = g(z_k)$ where $\theset{z_k}$ has a limit point.
	Then $f(z) \equiv g(z)$.

Theorem (Mean Value)
: 	Let $z_0$ be a point in $\Omega$ and $C_\gamma$  the boundary of $D_r(z_0)$. 
	Then

	\begin{align*}
	f(z_0)
	&= \frac{1}{2\pi i} \int_{C_\gamma} f(z)/(z-z_0) dz \\
	&= \frac {1}{2\pi i} \int_0^{2\pi} f(z_0 + re^{i\theta})/re^{i\theta} r i e^{i\theta} ~d\theta \quad\text{by } z = z_0 + re^{i\theta} \\
	&= \frac{1}{2\pi} \int_0^{2\pi} f(z_0 + re^{i\theta})~d\theta \\
	&= \frac{1}{2\pi r} \int_0^{2\pi} f(z_0 + re^{i\theta})~rd\theta \\
	&= \frac{1}{\abs{C_\gamma}} \int_0^{2\pi} f(z) ~ds
	,\end{align*}

	which is the average value of $f$ on the circle.

Note that there is another formula that averages over the disc (see book for derivation?)

\begin{align*}
f(z_0) &= \frac{1}{D_s(z_0)}  \int_{P_s} \int_{D_s} f(z) ~dA
.\end{align*}

These imply the maximum modulus principle, since the average can not be the max or min unless $f$ is constant.
Note that $\abs{f(z)}$ is continuous!

Next time: maximum modulus principle.

# Monday February 3rd

## Mean Value Theorem

Theorem (Mean Value for Holomorphic functions)
: 	$$f(z_0) = \frac{1}{\pi r^2} \iint_{D_r(z_0)} f(z) ~dA$$

Proof (of MVT?)
: 	Let $f: \Omega \to \CC$ be holomorphic where $\Omega$ is open and connected.
	Then by Cauchy's integral formula, we have $f(z_0) = \frac{1}{2\pi} \int_0^{2\pi} f(z_0 + re^{i\theta}) ~d\theta$ for any $z_0 \in \Omega$.
	
	We can consider $D_r(z_0)$, in which case we have for all $0 < s < r$,

\begin{align*}
f(z_0) &= \frac{1}{2\pi} \int_0^{2\pi} f(z_0 + se^{i\theta}) ~d\theta \\
\implies s\cdot f(z_0) &= \frac{1}{2\pi} \int_0^{2\pi} s\cdot f(z_0 + se^{i\theta}) ~d\theta \\
\implies \cdot f(z_0) \int_0^r s ~ds &= \frac{1}{2\pi} \int_0^{2\pi} \int_0^r f(z_0 + se^{i\theta})\cdot s ~ds~d\theta \\ 
\implies \frac 1 2 r^2 f(z_0) &= \frac{1}{2\pi} \iint_{D_r(z_0)} f(z) ~dA\\
\implies f(z_0) &= \frac{1}{\pi r^2} \iint_{D_r(z_0)} f(z) ~dA \\
\implies f(z_0) &= \frac{1}{2\pi} \int_0^{2\pi} f(z_0 + re^{i\theta}) ~d\theta
.\end{align*}

Proposition (Maximum in Interior Implies Constant)
: 	Let $f$ be holomorphic on $\Omega$ be open and connected, and suppose that there is a $z_0 \in \Omega$ such that $$\abs{f(z_0)} = \sup_{z\in \Omega} \abs{f(z)},$$ i.e. $z_0$ is a maximal point of $f$.
	Then $f$ is constant on $\Omega$.

	If $\Omega$ is additionally **bounded**, then $f$ is continuous on $\bar \Omega$, then $$\sup_{z \in \bar\Omega} \abs{f(z)} = \max_{z\in\bar\Omega} \abs{f(z)}.$$

Proof
: 	Since $\abs{f}$ is continuous and $\bar \Omega$ is compact, $\abs f$ attains a maximum at some point in $\bar \Omega$.
	We want to show that if $\abs{f(z_0)} = \sup_{z\in \Omega} \abs{f(z)}$, then $f$ is constant.

	Assume that there exists a $z_0 \in \Omega$ such that $f(z) = f(z_0)$.
	Let $O = \theset{ \xi\in \Omega \suchthat f(\xi) = f(z_0)  }$.

	Claim
	:	1. $O$ is not empty, since $z_0 \in O$.
	1. $O$ is closed, since if $\xi_n \to \xi$ then $f(\xi_n) = f(z_0)$ implies $f(\xi) = f(z_0)$ since $f$ is continuous.
	2. (**Claim**) $O$ is open.

	Suppose $\xi_0 \in O$, then there exists a disc $D_\rho(\xi_0) \subset \Omega$ such that $$f(\xi_0) = \frac{1}{\pi\rho^2} \int_{D_\rho(\xi_0)} f(z) dA.$$
	Then (claim) $\abs{f(\xi_0)} \geq \abs{f(z)}$ for all $z\in D_\rho(\xi_0)$, which forces $f(z)  = f(\xi_0)$ for all $z\in D_\rho(\xi_0)$.

Proof (of the claim):
: Suppose that $\sup_{a\in \Omega} \abs{f(z)} = \abs{f(\xi_0)}$ and write $f(\xi_0) = Be^{i\alpha}$ for $B>0$ and $\alpha \in \RR$.
	Then define $g(z) = f(z) e^{-i\alpha}$; then $g(\xi_0) = B$ is real, and thus

	\begin{align*}
	0 = g(\xi_0) - B = \frac{1}{\pi\rho^2} \iint_{D_\rho(\xi_0)} \Re( g(z) - B ) ~dA
	.\end{align*}

	Note that $\Re(g(z) - B) \leq 0$ implies that $\Re(g(z) - B) \equiv 0$ on $D_\rho(z_0)$, so we can write $g(z) = B + iI(z)$ for some real-valued function $I$.

	But then $\abs{g(z)}^2 = B^2 + I(z)^2 = B^2$ by the previous statement, and so $I(z) = 0$, forcing $g(z) = B$ and thus $f(z) = Be^{i\alpha}$.
	This shows that $O$ is open, and thus $O = \Omega$.

## Biholomorphisms of the Open Disc

Proposition (Biholomorphisms of the Open Disc are Contractions (Stein 2.1))
: 	Suppose $f$ is holomorphic on $D_1(0)$ and $\abs{f(z)} \leq 1$ for all $\abs{z} < 1$ with $f(0) = 0$.
	Then $\abs{f(z)} \leq \abs{z}$ for all $\abs{z} < 1$.

	Moreover, there is a point $z_0\in D_1(0)$  such that $\abs{f(z_0)} = \abs{z_0}$ iff $f(z) = c(z)$ for some $c \in S^1$.

Proof
: 	Define

	\begin{align*}
	g(z) =
	\begin{cases}
	\frac{f(z)}{z} & z\neq 0 \\
	f'(0) & z = 0
	\end{cases}
	.\end{align*}

	Then $g$ is holomorphic on $D_1(0)$ and $\abs{g(z)} \leq \frac{1}{\rho}$ for all $\abs{z} < \rho < 1$.
	Now apply the maximum principle: 
	since this is true for all $\rho < 1$, consider the limit $\rho\to 1^-$.
	
	Then $\abs{g(z)} \leq 1$, so $\abs{\frac{f(z)}{z}} \leq 1$ and $\abs{f(z)} \leq \abs{z}$.
	If $\abs{f(z_0)} = \abs{z_0}$ for any point, then $\abs{g(z_0)} = 1$ implies $g(z_0) = c$ and $c\in S^1$. 
	
	Thus $f(z) = cz$ for some $c\in S^1$.

Corollary (Characterization of Biholomorphisms of the Disc)
: 	Recall that $$\Phi_a(z) \definedas \frac{z-a}{1-az}.$$

	If $f: D_1(0) \to D_1(0)$ is a biholomorphism, then $$f(z) = c \Phi_a(z) = e^{i\theta} \Phi_a(z)$$
	So every such function is a rotated form of $\Phi_a$.

Let $\Omega$ be a connected open domain and $f: \Omega \to \CC$ holomorphic with $f\in C^1$.
Then $$\int_\gamma f(z) ~dz = 0$$ for every closed curve $\gamma \subset \Omega$, which implies that $f^{(k)} (z)$ exists for all $k\in \NN$ and $f$ is smooth/holomorphic.

## Morera

Theorem (Morera, Partial Converse to Cauchy's Integral Theorem)
: 	Suppose $g: \Omega \to \CC$ is continuous and $\int_\gamma g(z)~dz = 0$ whenever $\gamma = \bd R$ for some rectangle $R\subset \Omega$ with sides parallel to the axes:

	![Image](figures/2020-02-03-14:15.png)\

	Then $g(z)$ is holomorphic in $\Omega$.

Proof
: 	Fix a point $\alpha = a + ib$ and given $z = x+iy$, construct a rectangle $R$ containing $z$.
	Then by assumption, $\int_{\bd R} g(z) ~dz = 0$.
	Let $\gamma_{az}$ be the path given by traversing the bottom edge of $R$, and $\sigma_{az}$ by the top path.

	![Image](figures/2020-02-03-14:24.png)\

	Let 

	\begin{align*}
	f(z)
	&= \int_{\gamma_{az} } g(z) ~dz \\
	&= \int_a^x g(s+ib) ~ds + i \int_b^y g(x+it) ~dt
	.\end{align*}


	Since $$\int_{\bd R} g(z) ~dz = 0 = \int_{\gamma_{az}} \cdots - \int_{\sigma_{az}} \cdots,$$ we have

	\begin{align*}
	f(z) 
	&= \int_{\sigma_{az}} g(z) ~dz \\
	&= i \int_b^y g(a + it) ~dt + \int_x^a g(s + iy) ~ds
	.\end{align*}

	> Exercise: Apply $\dd{}{y}$ to the first identity and $\dd{}{x}$ to the second.

	This yields $$\dd{f}{x} = g(z) \quad\text{ and }\quad \dd{f}{y} = ig(z) = i \dd{f}{x}$$ by applying the FTC, which are precisely the Cauchy-Riemann equations for $f$.
	So $f$ is holomorphic, and thus $f(z) = g(z)$.

# Wednesday February 5th

## Cauchy/Morera Theorems 
Recall last time:
We have Cauchy's theorem, which says that if $f: \Omega \to \CC$ is holomorphic then $$\int_\gamma f~dz = 0.$$

We have a partial converse:

Theorem (Morera)
: 	If $g: \Omega \to \CC$ is continuous and $\int_R g~dz = 0$ for every rectangle $R\subset \Omega$ with sides parallel to the axes, then $g$ is holomorphic.

Proof (Morera)
: 	Fix a point $a\in\Omega$, then for any $z\in\Omega$ define $f(z) = \int_{\gamma_{a, z}} g(\xi) d\xi = \int_{\sigma_{a, z}} g(\xi) d\xi$.

	![Image](figures/2020-02-05-13:42.png)\

	Then $\dd{f}{z} = \dd{f}{x} = \frac 1 i \dd{f}{y} = g(z)$, making $g$ holomorphic.

## Schwarz Reflection

Theorem (Schwarz Reflection, Extending Holomorphic Functions Across Reflected Regions)
: 	Let $\Omega = \Omega^+ \union L \union \Omega^-$ be a region of the following form:

	![Image](figures/2020-02-05-13:45.png)\

	I.e., $L = \theset{z\in \Omega \suchthat \im z = 0}$, $\Omega^{\pm} = \theset{\pm \im z > 0}$ where $\Omega$ is symmetric about the real axis, i.e. $z\in \Omega \implies \bar z \in \Omega$.

	Assume that $f: \Omega^+ \union L \to \CC$ is continuous and holomorphic in $\Omega^+$ and real-valued on $L$.
	Define

	\begin{align*}
	g(z) = 
	\begin{cases}
	f(z) & z\in \Omega^+ \union L \\
	\bar{f(z)} & z\in \Omega^-
	\end{cases}
	.\end{align*}

	Then $g(z)$ is defined and holomorphic on $\Omega$.

Proof (Schwarz Reflection)
: 	Since $g$ is $C^1$ in $\Omega^-$, check that $g$ satisfies the Cauchy-Riemann equations on $\Omega^-$ and thus holomorphic there.
	To see that $g$ is holomorphic on all of $\Omega$, we'll show the integral over every rectangle is zero.

	It's clear that if $R\subset \Omega^{\pm}$, $\int_R g = 0$ since $g$ is holomorphic there, so it suffices to check rectangles intersecting the real axis.
	Write $R = R^+ \union R^-$:

	![Image](figures/2020-02-05-13:59.png)\

	We then have $R^+ = \lim_{\eps\to 0} R_\eps$  and $R^- = \lim_{\eps \to 0} R_{-\eps}$, and $\int_{R_{\pm \eps}} g = 0$ for all $\eps > 0$.
	By continuity of $f$ on $L$, we have $\lim \int_{R_{\eps}} g(z) ~dz = 0$.

## Goursat's Theorem

Theorem (Goursat, $C^1$ implies smooth)
: 	If $f: \Omega \to \CC$ is complex differentiable at each point of $\Omega$, then $f$ is holomorphic. 
	I.e., $$f\in C^1(\Omega) \implies f\in C^\infty(\Omega).$$

Proof (Goursat)
: 	We have $\int_R f ~dz = 0$ for all rectangles $R$.
	Write $I = \int_R f ~dz$.
	Break $R$ into 4 sub-rectangles:

	![Image](figures/2020-02-05-14:08.png)\

	Then rewriting the integral and applying the triangle inequality yields

	\begin{align*}
	I = \int_R f = \sum_{j=1}^4 \int_{R_j} f  = \sum_{j=1}^4 I_j \implies \abs{I} \leq \sum_j \abs{I_j}
	.\end{align*}

	So for at least one $j$, we have $\abs{I_j} \geq \frac 1 4 \abs{I}$; wlog call it $R_1$.
	By continuing to subdivide, we can write 

	\begin{align*}
	\abs I \leq 4 \abs {I_k} = 4 \abs{\int_{R_1} f} \leq 4\qty{4 \abs{ \int_{R_2} f }  } \cdots \leq 4^k \abs{\int_{R_k} f}
	.\end{align*}

	This is a sequence of nested compact intervals, so there is some $z_0 \in \intersect R_k$.

	Write $f(z) = f(z_0) + f'(z_0)(z-z_0) + \delta(z, z_0)$, and since

	\begin{align*}
	\lim_{z\to z_0} \frac{\abs{\delta(z, z_0)}}{z-z_0} = 0
	,\end{align*}

	we have $\delta(z, z_0) = o(z-z_0)$.
	Then $\abs I \leq 4^k \frac{1}{2^k} \abs{R}$.
	We then try to estimate the integral using the fact that $\abs{\delta(z, z_0)} \leq \delta_k \abs{z-z_0}$ for some constant $\delta_k \to 0$ as $k\to \infty$.

	\begin{align*}
	\int_{R_k} f i
	&= \int f(z_0) + f'(z_0)(z-z_0) + \delta(z, z_0) \\
	&= \int_{R_k} \delta(z, z_0) \quad\text{since the first two terms are holomorphic} \\
	&\leq \frac{1}{2^k} \abs{R} \delta_k \frac{C}{2^k} \abs{R} \\
	& = c/4^k \abs{R}^2 \delta_k  \\
	&\converges{k\to\infty}\to 0
	,\end{align*}

	where we use the fact that in $R_k$ we have

	![Image](figures/2020-02-05-14:23.png)\

	\begin{align*}
	R_k = 2(x+y) \implies R^2/4 = x^2 + y^2 + x + y \leq_{CS} x^2 + y^2 + x^2 + y^2 = 2(x^2 + y^2) \\
	\implies x^2 + y^2 \leq R^2 / 8 \implies L = \sqrt{x^2 + y^2} \leq R^8 /2\sqrt{2} \\
	\implies \abs{z-z_0} \leq \sqrt{x^2+y^2} \leq R_k/2\sqrt{2} \text{ and } R_k = \frac 1 {2^k} \abs{R}
	.\end{align*}

	> Note that triangles implies rectangles, but think about how to use triangles to prove it for rectangles (note that sides should be parallel to axes!)

# Friday February 7th

## Sequences of Holomorphic Functions

Theorem (The Uniform Limit of Holomorphic Functions is Holomorphic)
: 	Suppose $\theset{f_n}\to f$ is a sequence of holomorphic functions converging uniformly on any compact subset $K \subset \Omega$.
	Then $f$ is holomorphic.

Proof
: 	Let $D$ be any disc such that $\bar D \subset \Omega$.
	For any rectangle $R \subset D$, we have $$\int_R f_n ~dz = 0.$$
	Since $f_n \to f$ uniformly, $\int_R f ~dz = 0$ and thus $f$ is holomorphic in $D$.

![Image](figures/2020-02-07-13:36.png)\

Theorem (Uniform Convergence of Derivatives)
: 	Under the same hypotheses, $f_n' \to f$ uniformly on any compact subset $K \subset \Omega$.

Proof
: 	See Stein.

Corollary (When Functions Defined by Integrals are Holomorphic)
: 	Suppose $F(z, s): \Omega \cross [a, b] \to \CC$ and

	1. $F(z, s)$ is holomorphic in $z$ for each fixed $s \in [a, b]$.

	2. $F(z, s)$ is continuous in $\Omega \cross [a, b]$.

	Then $f(z) = \int_a^b F(z, s) ~ds$ is holomorphic on $\Omega$.

Proof
: 	Define $f_n(z) = \qty{ \sum_{k=1}^n F(z, s_k) } \frac{b-a}{n}$ where each $s_k = a + \frac{b-a}{n} k \in [a, b]$.
	Need to show $f_n(z)$ converges uniformly on any compact $K \subset \Omega$, i.e. it's uniformly Cauchy.
	Fix $K$ compact, then by a theorem in topology $K \cross [a,b]$ is again compact.
	
	Using the fact that $F$ is continuous on a compact set and thus uniformly continuous, fix $\eps > 0$ and find $\delta>0$ such that $\max_{z\in K} \abs{F(z, s) - F(z, t)} < \eps$ for all $s,t \in [a, b]$ with $\abs{t-s} < \delta$.

	Thus if $\frac{b-a}{n} < \delta$ and $z\in K$, we have an estimate

	\begin{align*}
	\abs{f_n(z) - f(z)} 
	&= \abs{ \sum_{k=1}^n \int_{s_{k-1}}^{s_k} F(z, s_k) - F(z, s) ~ds } \\
	&= \sum_{k=1}^n \int_{s_{k-1}}^{s_k} \abs{ F(z, s_k) - F(z, s) } ~ds \\
	&\leq \eps \qty{b-a} 
	.\end{align*}

	Thus $f_n \converges{u}\to f$.


Remark: this is useful for showing $$\Gamma(z) = \int_0^\infty e^{-s} s^{z-1} ~ds$$ is holomorphic for $\Re z > 0$.

## Uniform Approximation

**Question**: can every function be uniformly approximated by polynomials?

**Answer**: in general, no.
Take $f(z) = \frac 1 z$, which is holomorphic on $\CC \setminus 0$, but $\int_\gamma P_N(z) = 0$ for any polynomial (since )hey are entire) for any loop $\gamma$ around 0, but $\int_\gamma \frac 1 z = 2\pi i$.

Theorem (Uniform Approximation by Polynomials (Stein 5.2))
: 	If $f_n$ is a sequence of holomorphic functions converging uniformly on any compact subset $K$ of $\Omega$ then $f$ is holomorphic in $\Omega$ and if $f(z) = \sum a_n (z- z_0)^n$ then $P_N(z) = \sum^N a_n (z-z_0)^n$.

Theorem (Uniform Approximation by Rational Functions (Stein 5.7))
: 	Any holomorphic function in a neighborhood of a compact set $K$ can be approximated by a *rational* function with singularities only in $K^c$.
		If $K^c$ is connected, it can be approximated by a *polynomial*.

Lemma (5.8, ???)
: 	Suppose $f$ is holomorphic in an open set $\Omega$ with $K\subset \Omega$ compact.
		Then there exist finitely many segments $\theset{\gamma_i}_{i=1}^N$ in $\Omega\setminus K$ such that for all $z\in K$, ???.

Proof (of Lemma, Idea)
: 	Divide region into squares, take $\gamma_i$ to be line segments such that they enclose $K$.
	\begin{align*}
	f(z) 
	&= \frac{1}{2\pi i} \sum_{n=1}^N \int_{\omega_n} \frac{f(\xi)}{z-\xi} ~d\xi \\
	&= \frac{1}{2\pi i} \int_{\Gamma} \frac{f(\xi)}{z-\xi} ~d\xi
	.\end{align*}

	where we can rewrite 
	$$
	\int_{\gamma_n} \cdots = \int_0^1 \frac{f(\gamma_n(t))}{\gamma_n(t) - z_0} \gamma_n'(t) ~dt = \int_0^1 F(z, s) ~ds
	$$

	The idea is that we can then write $\frac 1 {\xi - z} = \frac 1 \xi \frac 1 {1-\frac{z}{\xi}} = \xi\inv \sum_k \qty{\frac{z}{\xi}}^k$, which allows uniform approximation by polynomials.

![Image](figures/2020-02-07-19:51.png)\

# Wednesday February 12th

## Singularities 

Let $f(z)$ be holomorphic on $\Omega$, then we have Cauchy's integral formula:

\begin{align*}
f(z) = \frac{1}{2\pi i} \int_\gamma \frac{f(\xi)}{\xi - z} ~d\xi
.\end{align*}

*Example:*
Note that $f(z) = \frac 1 z$ is holomorphic on $\CC\setminus 0$.

Let $\Omega$ be an open set containing a disk $D$ and $\Omega\setminus p$ be a punctured domain.

Definition (Isolated Singularities)
:   We say $f$ has an *isolated singularity* at $p$ iff $f$ is defined and holomorphic on some deleted neighborhood of $p$.


    Classification of singularities:

    1. **Removable**: $\abs{f(z)}$ is bounded on some $D_r(p) \setminus p$.
        
        *Example*: $f(z) = \sin(z)/z$.


    2. **Poles**: $\lim_{z\to p} \abs{f(z)} = \infty$.
      
        *Example*: $f_n(z) = \frac{1}{z^n}$ at $p=0$


    3. **Essential**: neither 1 nor 2.

        *Example*: $f(z) = e^{\frac 1 z}$ at $z=0$.

Note that for singularities at $\infty$, we can just make the change of variables $z\mapsto \frac 1 z$.
Defining $F(z) = f(\frac 1 z)$, the singularities at 0 of $f$ correspond to singularities at infinity for $F$.

## Spherical Projection

We can solve for a spherical projection map $S^2 \to \CC$.
Let $(0,0,1)$ be the North pole of the sphere; then to map to $(x, y, 0)$ on the plane we can take the parameterization $\ell: (tx, ty, 1-t)$.
This yields

\begin{align*}
t \mapsto \qty{ \frac{2\Re(z)}{1 + \abs z^2} , \frac{2\Im(z)}{1 + \abs z^2}, 1 - \frac{2}{1 + \abs z^2}}
.\end{align*}

![Image](figures/2020-02-12-14:05.png)\

From this we can induce a spherical metric:

\begin{align*}
\phi(z_1, z_2) &= \frac{z \abs{z_1 - z_2}} { \sqrt{\abs z_1^2 + 1} \sqrt{\abs z_2^2 + 1}  }
.\end{align*}


Proposition (Continuous Extension Over Removable Singularities)
:   Let $p$ be a removable singularity of $f$.
    Then

    1. $\lim_{z\to p} f(z)$ exists.

    2. The function 
    \begin{align*}
    \tilde f(x) = \begin{cases}f(z) & z\neq p \\ \lim_{z\to p} f(z) & z=p  \end{cases}
    .\end{align*}
    is holomorphic on $D_r(p)$.

Example
:   Consider $$\frac{\sin(z)}{z} \converges{z\to 0}\to 1.$$

Proof (of Proposition)
:   Take $p=0$ and consider $g(z) = z^2 f(z)$.
    We can verify directly that $g$ satisfies the Cauchy-Riemann equations on $D_r(0)$.
    Then $g$ is holomorphic on $D_r(0)$ and vanishes to order 2 at $z=0$,
    and $$f(z) = \frac{g(z)}{z^2}$$ is holomorphic on $D_r(0)$.

    If $f(z)$ has a pole at $z_0$, then $\lim_{z\to z_0} \abs{f(z)} \to \infty$ by definition, iff $\lim_{z\to z_0} \frac{1}{\abs{f(z)}} = 0$ and thus the reciprocal has a zero at $z=z+0$.
    If $z_0$ is a zero of a nontrivial holomorphic function $f$, then $z_0$ is isolated, i.e. there exists a punctured disc $D_r(z_0)\setminus z_0$ on which $f$ is nonzero.

Theorem (???)
:   If $f$ is holomorphic in a connected domain $\Omega$ with a zero $z_0$, then there exists a non-vanishing holomorphic function $g(z)$ and some $n\in \NN$ such that $$f(z) = (z-z_0)^n g(z)$$.

Proof
:   Since $f$ is holomorphic, expand its power series $f(z) = \sum a_k (z-z_0)^k$.
    Since $f(z_0) = 0$, we have $a_0 = 0$.
    Choose the smallest $n$ such that $a_n \neq 0$, so 
    \begin{align*}
    f(z) 
    &= a_n(z-z_0)^n + a_{n+1}(z-z_0)^{n+1} + \cdots \\
    &= (z-z_0)^n \qty{a_n + \cdots} \\
    &\definedas (z-z_0)^n g(z)
    .\end{align*}

    Then $g(z_0) \neq 0$, so by continuity there exists an $r$ such that $\abs{g(z)} \geq \abs{a_n}/2$.

Definition (Pole)
:   A function $f$ defined on a deleted neighborhood of $z_0$ has a **pole** at $z_0$ if the function $F = \frac 1 f$ with $F(z_0) \definedas 0$ is holomorphic in a full neighborhood of $z_0$.

# Friday February 14th

## Defining Residues

> Interesting open problems: dynamical systems on $\CC^2$.

If $f$ is holomorphic in $\Omega$ with $f(z_0) = 0$ then there exists a disc on which $f(z) = \sum a_n (z-z_0)^n$ where $a_0 = f(z_0) = 0$.
There is then a minimal $k$ such that $f(z) = (z-z_0)^k g(z)$ where $g(z_0)\neq 0$; this $k$ is the *order* of the zero $a_0$.

Recall the definition of a *pole*:
A function defined in a deleted neighborhood of $z_0$ has a *pole* at $z_0$ iff $F = \frac 1 f$ with $F(z_0) \definedas 0$ is holomorphic in a full neighborhood of $z_0$.

Theorem (Extraction of Holomorphic Part)
: 	If $f$ has a pole at $z_0$, then there exists a holomorphic function $h$ and a unique $k$ such that $f(z) = (z-z_0)^{-k} h(z)$.

Proof
: 	Write $$\frac 1 f = (z-z_0)^k g(z)$$ with $g(z_0) \neq 0$.
	Then there is an $r$ such that $\abs{g(z)} \geq \frac 1 2 \abs{g(z_0)}$ in a disc about $z_0$.
	Then $$f(z) = \frac{1}{\qty{z-z_0} g(z)} \definedas (z-z_0)^{-k} h(z)$$ where $h = 1/g$.

	We can then write $$f(z) = \qty{ \sum_{i=0}^{k-1} b_k (z-z_0)^{-k} } + b_k + \sum_{i=1}^\infty b_{k+i} (z-z_0)^i$$ for some fixed $k$, where $\sum b_i (z-z_0)^i$ is the power series expansion of $h$.
	Write this as $P(z) + G(z)$ where $G(z) = \sum_{i=0}^\infty b_{i+k}(z-z_0)^i$.
	Denote $P$ *the principal part* of $f$ at the pole $z=z_0$.

	Note that $$\int_{D_r(z_0)} f = \int_{D_r(z_0)} P(z) = 2\pi i ~a_{-1}.$$

Definition (Residue)
: 	The coefficient $a_{-1}$ is referred to as the *residue* of $f$ at $z=z_0$.


## Residues

Note that $$\int \frac{1}{\qty{z-z_0}^k} = \begin{cases} 2\pi i &k = 1 \\ 0 & \text{else}\end{cases}.$$

Residues can be computed using the following formula:
\begin{equation}
a_{-1} = \frac 1 {2\pi i} \int_{D_r(z_0)} f
.\end{equation}

Theorem (Residue Formula)
:
	\begin{align*}
	\Res_{z=z_0} f = \lim_{z\to z_0} \frac{1}{\qty{k-1}!} \qty{\dd{}{z}}^{k-1} (z-z_0)^k f(z)
	.\end{align*}

Proof
: 	Expand in power series, direct check.

A useful special case: if $z_0$ is a pole of order 1, then

\begin{align*}
\Res_{z=z_0} f = \lim_{z\to z_0} (z-z_0) f(z)
.\end{align*}

A useful formula:

\begin{align*}
\frac 1 {2\pi i} \int_{\Gamma(z_0)} f = \Res_{z=z_0} f
.\end{align*}

Theorem (Integral Residue Theorem)
: 	Suppose that $f$ is holomorphic in an open set containing a toy contour $\gamma$ and its interior except for finitely many poles $\theset{z_i}$.
	Then

	\begin{align*}
	\frac 1 {2\pi i} \int_\gamma f = \sum \Res_{z=z_i} f(z)
	.\end{align*}

Proof
: 	Omitted to cover some material needed for homework.


Note that if $f$ has a pole of order $k$, we can expand it in *Laurent series* as

\begin{align*}
\sum_{n=-k}^1 a_n (z - z_0)^n + \sum_{n=0}^\infty a_n(z-z_0)^k
.\end{align*}

How to determine the radius of convergence\index{Radius of convergence} of a Laurent series:

\begin{align*}
\sum_{-\infty}^\infty a_n z_n
&= \sum_{n\in \NN} c_n z^n + \sum_{n\in \NN} d_n z^{-n} 
.\end{align*}

Applying the root test,

\begin{align*}
\limsup_n \abs{c_n (z-a)}^{1/n} &< 1 \\
\iff \limsup_n \abs{c_n}^{1/n} \abs{z-z_0}^n &< 1 \\
\iff \abs{z-a} &\leq \frac{1}{\limsup_n \abs{c_n}^{1/n}} \definedas \rho_1
.\end{align*}


Similarly, we need 

\begin{align*}
\rho_2 \definedas \limsup_n \abs{d_n}^{1/n} < \abs {z-a}
.\end{align*}

If $\rho_1> \rho_2$, this will converge on an annulus.

# Monday February 17th

> See Hans Lewy 1957 Annals, Folland and Stein 1973. Does a linear system of PDEs with analytic functions have an analytic solution? What about just $C^\infty$?

## Getting a Holomorphic Function from a Laurent Series

We can write a formal series 
\begin{align*}
f(z) &= \sum_{n\in \ZZ}a_n (z-a)^n \\
&= \sum_{n\geq 0} a_n (z-z_0)^n + \sum{n\leq -1} a_n (z-z_0)^n \\
&\definedas A(z) + B(z)
.\end{align*}

Part $A$ converges for $$\abs{z-a} < R_1 = \qty{\limsup \abs{x_n}^{1/n}} \inv.$$
Part $B$ converges for $$\abs{z-a} > R_2 = \limsup \abs{c_{-n}}^{1/n}.$$

If $R_1 < R_2$, this does not converge.
Note that if $R_1 > R_2$, then $f$ converges and defines a holomorphic function on the annulus $R_2 < \abs{z-a} < R_1$.
Moreover, $f$ converges uniformly on any compact subset of this annulus, so it can be differentiated term-by-term, and the derivative has the same region of convergence.

Note that if $f$ equals its Laurent expansion, then $$c_n = \frac{f^{(n)}(a)}{n!} = \frac 1 {2\pi i} \int_\gamma \frac{f(\xi)}{\qty{\xi - a}^{n+1}} ~dz$$ where $\gamma$ is contained in the annulus of convergence, and $c_{n\leq -1}  0$.

We also have

\begin{align*}
\frac 1 {2\pi i} \int_\gamma \frac{f(z)}{(z-a)^m} ~dz 
&= \sum_{n\in \ZZ} \frac{c_n}{2\pi i} \int_\gamma \frac{1}{(z-a)^{m-n}}~dz \\
&=c_{m-1}
,\end{align*}

since
$$\int_\gamma \frac{1}{\qty{z-a}^k}~dz = \begin{cases} 2\pi i &k = 1 \\ 0 & \text{else}\end{cases},$$
we have the following formula for the coefficients:


\begin{align}
c_m &= \frac 1 {2\pi i} \int_\gamma \frac{f(z)}{\qty{z-a}^{m+1}} ~dz
.\end{align}

So we can start with a series and get a holomorphic function on some region.

## Obtaining a Laurent Series from a Holomorphic Function

We can also start with a holomorphic function and get a Laurent series.
Suppose $f$ is holomorphic on an annulus $R_2 < \abs {z} < R_1$.
We can then write

\begin{align*}
f(z) = \frac 1 {2\pi i} \int_{\abs{w-a} = R_1} \frac{f(w)}{w-z} ~dw - \int_{\abs{w-z} = R_2} \frac{f(w)}{w-z} ~dw
\end{align*}

![Image](figures/2020-02-17-14:07.png)\

Since $\abs{z-a}/\abs{w-a} < 1$, we have

\begin{align*}
\frac {1}{2\pi i} \int_{\abs{w-a} = R_1} \frac{f(w)}{w-z} ~dz 
&= \frac {1}{2\pi i} \int_{\abs{w-a} = R_1} \frac{f(w)}{(w-a) - (z-a)} ~dz \\
&= \frac {1}{2\pi i} \int_{\abs{w-a} = R_1} \frac{f(w)}{(w-a)} \sum_{n\in \NN} \frac{(z-a)^n}{(w-a)^n} ~dz \\
&= \sum_{n\in \NN} (z-a)^n \frac 1 {2\pi i} \int_{\abs{w-a} = R_1} \frac{f(w)}{(w-a)^{n+1}} ~dw \\
&= \sum_{n\in \NN} c_n (z-a)^n
.\end{align*}

Similarly,

\begin{align*}
-\frac 1 {2\pi i} \int_{\abs{w-a} = R_2}  \frac{f(w)}{w-z} ~dw  
&= -\frac 1 {2\pi i} \int_{\abs{w-a} = R_2} \frac{f(w)}{(w-a) - (z-a)} ~dw  \\ 
&= -\frac 1 {2\pi i} \frac {1}{z-a} \int_{\abs{w-a} = R_2} \frac {f(w)} {\frac{w-a}{z-a} - 1} ~dw  \\
&= \frac 1 {2\pi i} \frac {1}{z-a} \int_{\abs{w-a} = R_2}  \frac{f(w)} {1 - \frac{w-a}{z-a} } ~dw  \\
&= \frac 1 {2\pi i} \frac {1}{z-a} \int_{\abs{w-a} = R_2} f(w) \sum_{n\in \NN} \frac{(w-a)^n}{(z-a)^n} ~dw \\
&= \sum_{n\in\NN} \frac 1 {2\pi i} \frac {1}{(z-a)^{n+1}} \int_{\abs{w-a} = R_2} f(w) (w-a)^n ~dw  \\ 
&= \sum_{n=-\infty}^{-1} c_n (z-a)^n
.\end{align*}

This yields a formula

\begin{equation}
c_m = \frac {1}{2\pi i} \int_\gamma \frac{f(z)}{(z-a)^{m+1}} ~dz
.\end{equation}

In practice, we don't use this formula for extracting coefficients.

Example
: 	Let $f(z)  = \frac{1}{z(z-1)}$.
	This has four Laurent series.

	Let $C(a, R_1, R_2)$ be the annulus centered at $a$.
	Then at $C(0, 0, 1) = \DD\setminus \theset{0}$, we have 

	\begin{align*}
	f(z) = \frac 1 z \frac 1 {1-z} = -\frac 1 z \sum_{k\in \NN} z^k
	.\end{align*}

	In $C(1, 1, 0) = \DD(1, 1) \setminus\theset{1}$, we have

	\begin{align*}
	f(z) 
	&= \frac 1 {z-1} \frac 1 z \\
	&= \frac 1 {z-1} \frac 1 {1 + (z-1)} \\
	&= \frac 1 {z-1} \sum_{k\in \NN} (-1)^k (z-1)^k
	.\end{align*}

	In $C(0, 1, \infty)$, we can write

	\begin{align*}
	f(z) 
	&= \frac 1 {z^2} \frac 1 {1 - \frac 1 z} \\
	&= \frac 1 {z^2} \sum_{k\in \NN} \frac 1 {z^k}
	.\end{align*}

	And in $C(1,1,\infty)$ we have

	\begin{align*}
	f(z) &= \frac 1 {z-1} \frac{1}{z-1+1}
	.\end{align*}

# Friday February 21st

## Singularities

Recall that there are three types of singularities:

- Removable
- Poles
- Essential

Recall that a function $g$ is holomorphic at $z_0$ iff
$$
\lim_{z\to z_0}  (z-z_0) g(z) = 0
$$

Theorem (3.2)
: An isolated singularity $z_0$ of $f$ is a pole $\iff \lim_{z\to z_0} f(z) = \infty$.

Theorem (3.3, Casorati-Weierstrass)
: If $f$ is holomorphic in $D_r(z_0) \setminus \theset{z_0}$ and has an essential singularity $z_0$, then there exists a radius $r$ such that $f(D_r(\theset{z_0})\setminus \theset{z_0})$ is dense in $\CC$.

Proof
:   Proceed by contradiction.
    Suppose there exists a $w\in \CC$ and a $\delta > 0$ such that
    $$
    D_\delta(w) \intersect f(D_r(\theset{z_0})\setminus \theset{z_0}) = \emptyset
    .$$

    If $z \in D_r(w)\setminus{z_0}$, then $\abs{f(z) - w} > \delta$.
    Define $g(z) = \frac{1}{f(z) - w}$ on $D_r(z_0) \setminus\theset{z_0}$; then $\abs{g(z)} < \frac{1}{\delta}$.

    > Note that this implies that $g(z)$ is holomorphic on $D_r(z_0) \setminus \theset{z_0}$.
    > $g(z)$ being holomorphic here follows from $f$ being holomorphic here.

    Then $g(z)$ has a removable singularity at $z = z_0$ by theorem 3.1.

    If $g(z_0) \neq 0$, then $f(z) - w$ is holmorphic at $z_0$, contradicting the fact that $z_0$ is an essential singularity.

    If instead $g(z_0) = 0$, then $z_0$ is a pole, again a contradiction.

> Note: revisit why this is a contradiction.


## Singularities at Infinity

The point $z=\infty$ can be one of three types of singularities:

1. *Removable* $\iff$ $f(z) = \sum_{k=-1}^\infty c_k \frac{1}{z^k}$.

    - I.e. only one positive exponent.

2. *Pole* $\iff$ $f(z) = \sum_{k = -\infty}^n c_k z^k$

    - I.e. there are finitely many positive exponents.

3. *Essential* $\iff$ $f(z) = \sum_{k=-\infty}^\infty c_k z^k$

    - There are infinitely many positive exponents.

Definition (Meromorphic)
:   A function $f$ is **meromorphic** on $\Omega$ iff there exists a sequence $\theset{z_i} \subset \Omega$ with no limit point in $\Omega$ such that

    1. $f$ is holomorphic on $\Omega \setminus\theset{z_i}$, and
    2. $f$ has poles at each $z_i$.

Theorem (3.4, Meromorphic Functions are Rational)
: $f$ is meromorphic on $\CP^1$ iff $f$ is a rational function.

Proof
:   \hfill
    $\implies$:
    By part 1 of the definition above, the point $z=0$ is either a pole or a removable singularity of the function $F(z) = f\qty{\frac 1 z}$.
    By part 2, $F$ has finitely many poles $\theset{z_k}_{k=1}^N$.
    So for each $k$, write
    $$
    f(z) = f_k(z) + g_k(z)
    $$
    where $f_k$ is the principal part and $g_k$ is holomorphic in a neighborhood of $z_k$.
    Then $f_k(z)$ is a polynomial in $\qty{\frac 1 {z-z_k}}$, say of degree $m_k$.
    But then
    $$
    F(z) \definedas f\qty{\frac 1 z} = \tilde f_\infty(z) + \tilde g_\infty(z)
    $$
    where $\tilde f_\infty(z)$ is a polynomial in $z$, and $\tilde g_\infty(z)$ is holomorphic near zero.
    Thus $\tilde f_\infty\qty{\frac 1 z}$ is a polynomial in $\frac 1 z$.

    Define $f_\infty(z) = \tilde f_\infty \qty{\frac 1 z}$ and
    $$
    H(z) = f(z) - f_\infty (z) - \sum_k f_k(z)
    .$$

    Then $H$ is entire and bounded and thus constant, and since $\lim_{z\to \infty} H(z) = 0$, $H$ is identically zero.
    Thus
    $$
    f(z) = f_\infty(z) + \sum_k f_k(z)
    $$

    \

    $\impliedby$:
    To be continued, uses the argument principle, Rouche's theorem, and Jordan's lemma.

# Wednesday February 26th

## Argument Principle and Application

Let $f$ be holomorphic in $\Omega$ which is open, simple, and connected.
Then $f(z_0) = 0$ implies there exists an integer $m$ such that $f(z) = (z-z_0)^m g(z)$ where $g(z_0) \neq 0$.

Let $N_\Omega(f)$ be the number of zeros of $f$ inside $\Omega$, and $N_\Omega(f, a)$ be the number of zeros of $f-a$ in $\Omega$.
Writing $f = f_1 f_2$ where $f_1 = (z-z_0)^m$ and $f_2 = g(z)$, we have

\begin{align*}
\frac {f'} f
&= \frac {f_1'} {f_1} + \frac {f_2'} {f_2} \\
&= \frac m {z-z_0} + \frac {g'} g
.\end{align*}

Now integrating both sides yields

\begin{align*}
\frac 1 {2\pi i } \int_{D_r(z_0)} \frac{f'(z)}{f(z)} ~dz = m
,\end{align*}

so the integral of this function counts the number of zeros of $f$ in $D_r(z_0)$.

Proposition (Argument Principle)
: Let $f$ be holomorphic in a neighborhood of $\bar{D_r(z_0)}$ and suppose that $f$ is non-vanishing on all of $\bd D_r(z_0)$.
  Then

  \begin{align*}
  \frac 1 {2\pi i } \int_{D_r(z_0)} \frac{f'(z)}{f(z)} ~dz = N_{D_r(z_0)}(f)
  .\end{align*}

  More generally, if $q(z)$ is another holomorphic function in a neighborhood of $\bar{D_r(z_0)}$ and $z_1, \cdots, z_k$ are the distinct zeros of $f$ in $D_r(z_0)$ with orders $m_1, \cdots, m_k$, then

  \begin{align*}
  \frac 1 {2\pi i } \int_{D_r(z_0)} q(z) \frac{f'(z)}{f(z)} ~dz
  = \sum_{j=1}^k q(z_k) m_k
  .\end{align*}

Proof
: Write $f(z) = \prod_{j=1}^k (z-z_j)^{m_j} g(z)$.
  By Leibniz's rule, if $h = f_1 \cdots f_\ell$, then

  \begin{align*}
  \frac {h'} h
  &= \sum_{j=1}^\ell \frac {f_j'} {f_j} \\
  \implies q\frac {f'} f &= 1\frac {g'} g + \sum_{j=1}^k \frac{m_j q}{z-z_j}
  .\end{align*}

  Since $\frac {g'} g$ is holomorphic in the closed disc, integrating both sides yields the desired formula.

Note that if we replace $f$ by a family $f_t$ of continuous functions, an integer-valued continuous function must be constant.

Corollary
: Let $f_t(z)$ for $0\leq t \leq 1$ be a family of holomorphic functions on $D_{r+\eps}(z_0)$ for some $\eps > 0$.)
  Suppose $f_t(z)$ is continuous for all $z$ in this disc, uniformly in $z$, and for all $t$, $f_t(z)$ is nonvanishing on the boundary.

  Then the following integral is independent of $t$:

  \begin{align*}
    \frac 1 {2\pi i } \int_{D_r(z_0)} \frac{f_t'(z)}{f_t(z)} ~dz
  .\end{align*}

Theorem (Rouché's Theorem)
:   Let $f, g$ be holomorphic in a neighborhood of $\bar{D_r(z_0)}$ and suppose that on $\bd D_r(z_0)$ we have

    \begin{align*}\label{star}
    \abs{f(z) - g(z)} < \abs{f(z)} + \abs{g(z)}
    .\end{align*}

    Then $f$ and $g$ are nonvanishing on $\bd D_r(z_0)$ and
    \begin{equation}
    N_{D_r(z_0)} (f) =
    N_{D_r(z_0)} (g)
    .\end{equation}

Proof
:  If $f(w) = 0$ for some $w\in \bd D_r(z_0)$, then $\abs{-g(w)} = \abs{g(w)}$, but this contradicts condition \ref{star}.

  So let $t\in [0, 1]$ with $f_t(z) = (1-t)f(z) + t g(z)$.
  Then (claim) $f_t$ is nonvanishing on the boundary, so we can apply the previous corollary.

  Suppose otherwise that there exists $w$ on the boundary such that $f_t(w) = 0$ for some $t$, so $(1-t)f(w) + tg(w) = 0$.
  Then rearranging terms yields

  \begin{align*}
  f(w) &= t(g(w) - f(w)) \\
  g(w) &= (1-t)(g(w) - f(w))
  .\end{align*}

  But then

  \begin{align*}
  \abs{f(w) + g(w)}
  &= t\abs{g(w) - f(w)} + (1-t) \abs{g(w) - f(w)} \\
  &= \abs{g(w) - f(w)}
  ,\end{align*}
  which contradicts condition \ref{star}

  By the corollary, the integral is continuous in $t$ and integer-valued, and thus constant.

Corollary (Fundamental Theorem of Algebra)
: Let $p(z) = \sum_{j=1}^n a_j z^j$ be a polynomial of degree $n$, so $a_n \neq 0$.
  Let $f(z) = a_n z^n$ and $g(z) = p(z)$.
  If
  $$
  \abs{z} > \frac{\abs a_0 + \cdots + \abs a_m}{\abs a_n} > 1
  $$
  then
  \begin{align*}
  \abs{f(z) - g(z)}
  &= \abs{ a_0 + \cdots + a_{n-1}z^{n-1} }\\
  &\leq \abs{z}^{n-1} \qty{ \abs a_0 + \cdots + \abs a_{n-1} } \\
  &< \abs{a_n} \abs{z}^n \\
  &= \abs{f} \\
  &\leq \abs{f} + \abs{g}
  .\end{align*}


Note that this is useful because it tells you where the zeros are, namely in the disc $\abs{z} < \frac{\sum \abs a_i}{\abs a_n}$.

Example
: Let $p(z) = 9 - 8 z + 20z^2$, then all of the zeros are in a disc of radius $r = \frac 7 4$.

> Qual alert: problems about power series, Rouché's, linear mapping, integration.

Example
: Let $f(z) = z^9 - 2z^6 + z^2 -8z - 2$.

  How many zeros are in the unit disc?
  Take $g(z) = -8z$, the largest term.
  Then $\abs{f(z) - g(z)} \leq 1+2+1+2 = 6 < \abs{f} + \abs{g} = 8$,
  so condition \ref{star} is satisfied.
  Thus they both have the same number of zeros, but $g$ has exactly one zero.

  What about $\abs{z} = 2$?
  Then set $g(z) = z^9$, then check $\abs{f(z) - z^9} \leq 150 < 152$, so all 9 zeros lie in this disc.

Exercise
: Let $g(z) = z^4 - 4z - 5$, how many zeros are in $\abs{z} \leq 1$?
  Note the root on the boundary.

# Friday February 28th

## Rouche, Open Mapping, and Maximum Modulus

Theorem (Rouche's Theorem)
:   Suppose $f, g$ are holomorphic in $D_r(z_0)$ and $\abs{f(z)} > \abs{g(z)}$ on $\bd D_r(z_0)$.
    Then $f$ and $f+g$ have the same number of zeros in $D_r(z_0)$.

Proof
: Let $f_t(z) = f(z) + tg(z)$ and use the argument principle.


Theorem (Open Mapping Theorem (Stein 4.4))
: If $f$ is holomorphic and nonconstant then $f$ is an open map.

Proof
: Let $w_0 \in \im(f)$ and say $f(z_0) = w_0$.
  We want to show that all $w$ near $w_0$ are also in $\im(f)$.
  Define $g(z) = f(z) - w = f(z) - w_0 + w_0 - w \definedas F(z) + G(z)$.

  Now choose $\delta>0$ such that $D_\delta(z_0) \subset \Omega$ and $f(z) \neq w_0$ on $\bd D_\delta(z_0)$.
  We then select $\delta$ such that $\abs{f(z) - w_0} \geq \eps > 0$ on $\bd D_\delta(z_0)$.
  We have $\abs{F(z)} = \abs{f(z) - w_0} \geq \eps$.
  
  Now choose $w$ such that $\abs{G(z)} = \abs{w-w_0} < \eps$, nothing that $G(z)$ is a constant function (?).
  Then $\abs{F(z)} \geq \eps > \abs{w-w_0} = \abs{G(z)}$.
  So apply Rouche's theorem and conclude that there exists $z\in D_\delta(z_0)$ such that $f(z) = w$.

> Qual alert, some questions related to the Open Mapping Theorem.

Theorem (Stein 4.5: Maximum Modulus)
: If $f$ is holomorphic and nonconstant on $\Omega$, then $\abs{f}$ can not attain a maximum in $\Omega$.

Proof
:   Suppose toward a contradiction that $\abs{f}$ attains a maximum in $\Omega$, say at $z_0$. 
    Since $f$ is holomorphic, it is an open mapping, and therefore if $D_\delta(z_0) \subset \Omega$ then $f(D_\delta(z_0))$ contains a disc.
    Thus there exists a $z\in D_\delta(z_0)$ such that $\abs{f(z)} > \abs{f(z_0)}$.
    But this contradicts maximality of $f$ at $z_0$.
  
Corollary
:   If $\abs{f(z)} = 0$ on $\bd U$ and is nonconstant, then $f$ has a zero in $U$.

Proof
:   Let $c = \abs{f(z)}$ for $z\in \bd U$.
    Suppose that $f(z)$ has no zeros in $U$.
    Then $g(z) = \frac{1}{f(z)}$ is continuous and holomorphic in $U$.
    Then for all $z_0 \in U$, $\abs{g(z)} = \frac{1}{\abs{f(z)}} = \frac{1}{\abs{f(z_0)}} > \frac 1 c$, since $c = \abs{f(z)}$ for $z\in \bd U$ implies $\abs{f(z_0)} < C$.
    But this contradicts the maximum principle.

> Proof technique: use the fact that the reciprocal is holomorphic.
> Note that this is stronger than $f$ just being smaller in the interior, the modulus actually takes on the smallest value.

## The Complex Logarithm

For $x>0$, we define $\log(x) = \int_1^x \frac 1 t ~dt$, which is the inverse of $e^x$.
For $z\neq 0$, we'd like to define $\log(z) = \log(re^{i\theta}) = \log(r) + i \theta$, but the argument $\theta$ is not uniquely defined.

Theorem (Existence of Logarithm)
:   Suppose $\Omega$ is simply connected with $1\in \Omega$ and $0\not\in\Omega$.
    Thin in $\Omega$, there is a branch of the logarithm $F(z) = \log_\Omega(z)$ such that

    1. $F(z)$ is holomorphic on $\Omega$.
    2. $e^{F(z)}  = z$ for all $z\in \Omega$
    3. $F(r) = \log(r)$ for all $r>0\in \RR$ near 1.

Proof
:   **Part 1**:

    We define $F(z)$ as a primitive of the function 

    \begin{align*}
    F(z) = \int_\gamma \frac 1 w ~dw
    .\end{align*}

    where $\gamma$ is any curve in $\Omega$ connecting $1$ and $z$.
    We have 

    \begin{align*}
    \frac{dF}{dz} = \frac 1 z = \lim_{h\to 0} \frac{F(z+h) - F(z)}{h}
    .\end{align*}

    Noting that $F(z+h) - F(z) = \int_\eta \frac 1 w ~dw$, we can parameterize $\eta$ as $w = (1-s) z + s(z+h) = z + sh$.
    Then

    \begin{align*}
    \int\eta \frac{1} {w} ~dw &= \int_0^1 \frac{1}{z+sh} ~hds \\
    \implies \frac{1} {h} \int_0^1 \frac {1} {w} ~dw 
    &= \int_0^1 \frac{1}{z + sh} ~ds \\
    &= \int_0^1 \qty{\frac {1} {z} + \frac{1}{z + sh} - \frac {1} {z} }~ds \\
    &= \frac {1} {z} - \frac {h} {z} \int_0^1 \frac{d}{z+sh} ~ds \\
    &\converges{h\to 0}\to \frac {1} {z}
    .\end{align*}

    **Part 2**:

    Note that $\qty{ z e^{F(z)} }' = e^{F(z)}  +ze^{-F(z)} \qty{- \frac 1 z } = 0$.

    Part 3:

    To do.
  
Next time: once we have the log we can say more about the argument principle.

# Friday March 6th

## The Fourier Transform

Recall $\hat f(\xi) =  \int_\RR f(x) e^{2\pi i x\ cdot \xi} ~dx$.
Define $\mcf_a = ??$.

Definition (Decay)
:  $f\in \mcf_a$ iff
  1. $f$ is holomorphic in the strip $S_a = \theset{z = x + iy \suchthat \abs{y} < a}$.
  2. There exists an $A>0$ such that $\abs{f(x + iy)} < \frac{A}{1+x^2}$.

Examples:

- $e^{-z^2} \in \mcf_a$ for all $a$
- $\frac{1}{c^2 + z^2} \in \mcf_a$ for all $a > c$
- $\frac {1}{\cosh(\pi z)} \in \mcf_a$ for $a< \frac 1 2$.

Lemma
: If $f\in \mcf_a$, then $f^{(n)}(z) \in \mcf_b$ for all $b < a$.

Theorem (Boundedness of ?? Functions)
: If $f\in \mcf_a$, then $\abs{\hat f(\xi)} \leq B e^{-2\pi b \abs \xi}$ for some constants $b, B$.

Proof
:   If $\xi = 0$,
    \begin{align*}
    \abs{ \hat f(\xi) }
    &= \abs{\int_\RR f(x) e^{2\pi i x \cdot \xi}} \\
    &\leq \int_\RR \abs{f(x)} ~dx \\
    &\leq A \int_\RR \frac 1 {1+x^2} ~dx \\
    &= A\pi
    .\end{align*}

    For $\xi > 0$, integrate over the box $[-R, R]\cross i[-b, 0]$:

    \begin{center}
    \input{figures/RectangleIntegrate.tikz}
    \end{center}

    Define $g(z) = f(z) e^{-2\pi i z \cdot \xi}$.
    The integral over the rectangle is zero, since $g$ is holomorphic, so we can equate
    $$
    \int_R^{R-ib} f(z) e^{-2\pi i z \cdot \xi} ~dz = \int_0^b f(R - it) e^{-2\pi i (R-it)\cdot \xi} (-i)~dt
    $$
    We can use the estimate in $\mcf_a$ to obtain
    \begin{align*}
    \int_0^b \cdots 
    &\leq \int_0^b \frac{A}{1+R^2} e^{-2\pi s \xi} ~ds \\
    &\leq O(R^{-2})
    .\end{align*}


    Then
    
    \begin{align*}
    \int_\RR f(x) e^{-2\pi i x \cdot \xi} ~d\xi 
    &= \int_{-\infty - ib}^{\infty - ib} \cdots ~dz\\
    &= \int_\RR f(x-ib) e^{2\pi i (x - ib)\cdot \xi} ~dx \\ 
    &\leq \int_\RR \frac{A}{1+x^2} e^{-2\pi b \xi} ~dx \\
    &= A\pi e^{-2\pi b \xi}
    ,\end{align*}

    so we can take $B = A\pi$.

    For $\xi > 0$, the same argument works with the rectangle above the axis.

## Fourier Inversion

Theorem (Fourier Inversion)
: If $f\in \mcf_a$, then $f(x) = \int \hat f(\xi) e^{2\pi i x\cdot \xi} ~d\xi$.

Proof
:  Letting $L_1 = \theset{x-ib}$ and $L_2 = \theset{x+ib}$
    \begin{align*}
    I 
    &= \int_0^\infty \hat f \cdots + \int_{-\infty}^0 \hat f \cdots \\
    &= \int_0^\infty e^{2\pi i x \cdot \xi} \qty{ \int_{L_1} f(z) + e^{-2\pi i z \cdot \xi} ~dz } ~d\xi
    + \int_{\infty}^0 e^{2\pi i x \cdot \xi} \qty{ \int_{L_1} f(z) + e^{-2\pi i z \cdot \xi} ~dz } ~d\xi \\
    &= \int_{L_1} \int_0^\infty e^{2\pi i x \xi - 2\pi i (s-ib)\xi} ~d\xi ~ds 
    + \int_{L_2} f(z) \int_{-\infty}^0 e^{2\pi i x \cdot \xi - 2\pi i (s + ib)\xi} ~d\xi ds\\
    & \quad \quad\text{ by absolute convergence, where } z = s-ib \\
    &= \int_{L_1} f(z) \int_0^\infty e^{2\pi i (x - s + ib)\xi} ~d\xi ~ds 
    + \int_{L_2} f(z) \int_{-\infty}^0 e^{2\pi i (x - s + ib)\xi} ~d\xi ~ds \\
    &= \int_{L_1} f(z) \frac{1}{2\pi i (x - i + ib)} ~ds
    + \int_{L_2} f(z) \frac{1}{2\pi i (x - s - ib)} \\
    &= \frac{1}{2\pi i} \int \frac{f(z)} {z - x} ~dz \\
    &= f(x)
    ,\end{align*}

    noting that 

    \begin{align*}
    \int_0^\infty e^{as} ~ds = \frac 1 a \quad\text{for }\Re(a) > 0
    .\end{align*}

Note the similar trick: for $\xi < 0$, move up, and $\xi > 0$ move down to form a rectangle.
Use the fact that integration along the vertical edges is zero. 

# Monday March 30th

## Conformal Equivalence

We'll be following Stein, around Chapter 8 currently but skip section 4.
We'll discuss Kobe's proof of the Riemann Mapping Theorem.

Definition
: A bijective holomorphic function $f: U \to V$ is called a *conformal map* or *biholomorphism*.
  Given such a map, we say that $U$ and $V$ are *conformally equivalent* or *biholomorphic*.

Note that this gives an equivalence relation on subsets of $\CC$.

Proposition (1.1)
: If $f: U \to V$ is holomorphic and injective, then for every $z\in U$, $f'(z) \neq 0$.
  In particular, the inverse of $f$ defined on its image is holomorphic, and thus the inverse of a conformal map is holomorphic.

This is not an iff, take $f(z) = z^2$, then $2z\neq 0$ on $\CC\setminus 0$ but $\sqrt{z}$ has two values for every $z$, failing to be injective.

Proof
:   Toward a contradiction, suppose $f'(z_0) = 0$ for some $z_0 \in U$.
    Then since $f$ is holomorphic, we can expand about $z_0$ to obtain
    $$
    f(z) - f(z_0) = a_k(z-z_0)^j + G(z), \quad\quad a_k \neq 0,~k\geq 2
    $$
    for all $z$ near $z_0$, where $G(z)$ vanishes to order $k+1$ at $z_0$.

    For sufficiently small $w$, we write
    $$
    f(z) - f(z_0) - w = F(z) + G(z) \quad\text{where}\quad F(z) = a_k (z-z_0)^k - w
    $$
    Because $\abs{G(z)} < \abs{F(z)}$ on a small disc centered at $z_0$ and $G(z)$ vanishes to order $k+1$ at $z_0$ (where $k> 1$),  we can conclude that $F(z)$ h as at least two distinct zeros inside this disc.
    Applying Rouche's theorem, we conclude that $f(z) - f(z_0) - w$ has at least two zeros as well.
    But this contradicts the injectivity of $f$.

    Now let $g = f\inv$ on the range of $f$, which we can assume is $V$.
    For $w$ close to $w_0$, write $w = f(z)$ and $w_0 = f(z_0)$, yielding

    ????? See notes

Example (Cayley Transform, Important)
: The unit disc and upper half plane are mapped to each other via $F(z) = {i - z \over i + z}$ with inverse $G(w) = i {1 - w \over 1 + w}$.

Note that this is a fractional linear transformation.


Theorem (1.2)
: The map $F: \HH \to \DD$ is a conformal map with inverse $D$.

Proof
:   Both maps are holomorphic on their domains.
    Any point in $\HH$ is closer to $i$ than $-i$, and we want to show that $\abs{F(z)} < 1$ for every $z\in \HH$.
    We also need to show $\Re G(z) > 0$.
    \begin{align*}
    \im G(w)
    &= \Re\qty{ 1 + u -iv \over 1 + u + iv } \\
    &= \cdots \\
    &= {1 - v^2 - u^2 \over \qty{1+u}^2 + v^2} \\
    &> 0 \quad \text{ if } u^2 + v^2 < 1
    .\end{align*}

    This also shows that $u^2  +v^2 = 1 \implies G(w) = 0$.

Definition (Fractional Linear Transform)
:   A function of the form $f(z) = {az + b \over cz + d}$ where $ad-bc\neq 0$ is called a**fractional linear transformation**.
    The determinant condition here is to insure injectivity; otherwise this just yields the constant map.
    Note that $d = {bc \over a}$

Example
: $\GL(2, \CC), \SL(2, \CC)$, etc

Fact
:   Fractional linear transformations are determined by their values on $0, 1, \infty$.
    Thus they form a group $\SL(2, \CC) / \theset{\pm 1} = \PSL(2, \CC)$.


We can define $\PP\CC^1$ by taking $(u, v) \in \CC^2\setminus 0$ and setting $u\sim v$ iff $u = \lambda v$ for $\lambda \neq 0$.
In this case, FLTs are linear maps $\PP\CC^1 \selfmap$ where we send $f(z)$ to $[a, b; c, d] \cdot [z, 1]$.
Note that $f(-d \over c) = \infty = [1, 0]$.

The four basic types of FLT are

- Translation: $T(z) = z+b$
- Rotation: $T(z) = e^{i\theta} z$
- Dilation $T(z) = az$ for $a> 0$.
- Inversion $T(z) = {1 \over z}$.

In the special case that $c=0$, we have $T(z) = {a \over d}z + {b\over d}$ which is a rotation followed by a translation.
If $c=0$, ???

Proposition
: LFTs form a group under function composition.

Proof
: Just need to check that $w\inv = {aw - b \over -cw + a}$.

> Qual alert.

Theorem
: If $f$ is holomorphic on $\CC \setminus \theset{z_0}$ and injective, then $f$ is an FLT.

Proof
:   Up to a translation, we can assume that $z_0 = 0$.
    Then $f$ has a Laurent series expansion $f(z) = \sum_{-\infty}^\infty a_n z^n$.

    If $f$ has an essential singularity at zero, then by Casorati-Weierstrass implies that the image of over punctured disc is dense in $\CC$.
    In particular, $B \definedas \theset{z \suchthat \abs{z-1} < {1 \over 2}}$ and there exists a $\zeta \not\in B$ such that $f(\zeta)$ in $f(B)$.
    But then there exists a $z\in B$ such that $f(z) = f(\zeta)$, contradicting injectivity of $f$.

    If $f$ has a pole, it must be order at most 1, otherwise the reciprocal will have a zero of order 2 and fail injectivity, and $f$ is injective iff $1/f$ is injective.
    Then the Laurent series has at most 3 terms, $az\inv + b + cz$.
    But $a=0$, otherwise solving by the quadratic formula yields two roots.

# Wednesday April 1st

We call $f: U\to V$ biholomorphic if it admits a bijective holomorphic inverse.

Proposition
: If $f: U\to V$ is holomorphic and injective, then $f'(z) \neq 0$, $f$ is biholomorphic onto its image, and thus the inverse of a conformal map is also holomorphic.

Proof
:   We argue by contradiction and suppose $f'(z_0) =0$ for some $z_0 \in U$.
    Then $f(z) - f(z_0) = a(z-z_0)^k + G(z)$ for all $z$ near $z_0$,
    with $a\neq 0, k \geq 2$, and $G$ v anishing to order $k+1$ at $z_0$.
    For $w$ small enough, we write $f(z) - f(z_0) - w = F(z) + G(z)$ where $F(z) = a(z-z_0)^k - w$.

    \

    Since $\abs G < \abs F$ on the boundary of a small disc $D_\eps(z_0)$ and $F$ has at least two zeros in $D_\eps(z_0)$, Rouche's theorem implies that $f(z) - f(z_0) - w$ has at least two zeros in this disc.

    \

    Since $f'(z) \neq 0$ for all $z$ in a small punctured neighborhood of $z_0$, it follows that that roots of $f(z) - f(z_0) - w$ are distinct.
    But then $f$ is not injective, a contradiction.

    \

    Now let $g = f\inv$ be the inverse of $f$ on its range, which we can assume is $V$.
    The second part of the proof follows from a Calculus argument, see slides.


Definition
: Two open sets are *conformally equivalent* iff there exist biholomorphic functions composing to the identity.

Recall the Cayley transform $w = F(z) = {i - z \over i + z}$ with inverse $z = G(w) = i {1-w \over 1 + w}$.

Theorem
: The map $F: \HH \to \DD$ is a conformal map with inverse $G$.

Proof (Sketch)
:   Use the fact that any point in $\HH$ is closer to $i$ than $-i$, so $\abs F < 1$.
    Then show $\Im G(w) > 0$ by expanding $w = u + iv$ and using that fact that $u^2 + v^2 < 1$.

The Cayley transform is a special case of a FLT $f(z) = {az + b \over cz + d}$.
Note that $f(-{d \over c}) = \infty$ is a pole, so $f$ should be defined with values in $\hat \CC \cong \CP^1$.
Since $\lim_{\abs z \to \infty}$ exists, the domain is naturally $\hat \CC$ as well.

Identify $\CP^1$ as the space of lines through $0$ in $\CC^{n+1}$.
Explicitly, take $\vector v, \vector w \in (\CC^{n+1})^\bullet$ and set $\vector v \sim \vector w \iff \vector v = \lambda \vector w$ for some $\lambda \in \CC\units$.
Define open sets using the quotient topology, and this yields a metric defined by
\begin{align*}
d([u], [v]) = \qty{ q - {\abs{ \inner{u}{v}  }} \over \norm{u} \cdot \norm{v} }
.\end{align*}

Let $\infty$ denote the point $(1, 0)^t \in \CP^1$, then every other point corresponds uniquely to an element of the form $(z, 1)^t$.
For any $A\in \GL(2, \CC)$, then $A$ acts on such an element by $L_A(a) = (az+b, cz+d)^t = {az+b \over cz + d} \in \CC$ (by dividing through the second term).

Under function composition, these are Lie groups, and the map $A \mapsto L_A$ is a group morphism.
For any $s\in \CC$, $L_{sA} = L_A$, and $L_A = L_{A_1}$ for some matrix $A_1$ of determinant 1, so $A_1 \in \SL(2, \CC)$.
Finally, $L_{A_1} = L_{A_2} \iff A_2 = \pm A_1$, so the group of FLTs is given by $\PSL(2, \CC) = \SL(2, \CC)/ \theset{\pm I}$.

Now consider taking $a,b,c,d \in\RR$, yielding the subgroup $\SL(2, \RR)$.
Then for any $A\in \GL(2, \RR)$, we have $L_A = L_{A_1}$ iff $A_1 \in \SL(2, \RR)$ and $\det A > 0$.
Moreover, each such $A$ preserves $\HH$.

In particular,
\begin{align*}
\frac{a z+b}{c z+d}=\frac{(a z+b)(z \bar{z}+d)}{(c z+d)(c \bar{z}+d)}=\frac{R}{P}+i y \frac{a d-b c}{P}
.\end{align*}

with
\begin{align*}
R=a c|z|^{2}+b d+(a d+b c) x \in \mathbb{R}, P=|c z+d|^{2}>0, \quad \text { if } y>0
.\end{align*}

Thus $z\in \HH \implies f(z) \in \HH$, and $\aut_\CC(\HH) = \SL(2, \RR)$.
What is $\aut_\CC(\DD)$?

We single out the transform $\phi(z) = {z-i \over z+i}$ represented by
$A_0 \definedas \begin{bmatrix}
1 & -i \
1 & i
\end{bmatrix}$
Conjugating the $\SL(2, \RR)$ action on $\HH$ by $\phi$ yields a map $M_A: \DD \to \DD$.

Letting $A \in \SL(2, \RR)$ and computing $A_0 A A_0\inv$, we find that

\begin{align*}
A_{0} S L(2, \mathbb{R}) A_{0}^{-1}=\left\{\left(\begin{array}{cc}
\alpha & \beta \\
\bar{\beta} & \bar{\alpha}
\end{array}\right) \in G L(2, \mathbb{C}):|\alpha|^{2}-|\beta|^{2}=1\right\}=S U(1,1)
.\end{align*}

It turns out that this is $\aut_\CC(\DD)$.
It can be checked directly that for any matrix $B$ in this group, it in fact send $\bd \DD \to \bd \DD$ by computing the modulus.

Recall that there are four basic types of FLT:

- Translation
- Rotation
- Dilation
- Inversion

Moreover, any FLT can be decomposed as a composition of these 4 types:

- If $c=0$, then $T(z) = {a \over d}z + {b\over d}$ which is a dilation, a rotation, then a translation
- If $c\neq 0$, then long division yields $T(z)=\frac{b c-a d}{c^{2}} \cdot \frac{1}{z+\frac{d}{c}}+\frac{a}{c}$.

Theorem
: If $f$ is holomorphic on $\CC\setminus\theset{z_0}$ and injective, then $f$ is a FLT.


Proof
:   Up to translation, assume $z_0 = 0$.
    Then $f$ has a Laurent series expansion $f(z) = \sum_{n=i\infty}^\infty a_n z^n$.

    \

    **Case 1:**
    If $f$ has an essential singularity at 0, then by Casorati-Weierstrauss, the image of every punctured neighborhood of 0 is dense in $\CC$.

    \

    In particular, then if $B \definedas \theset{z \suchthat \abs{z-1} < {1 \over 2}}$, there exists a $\zeta\not\in B$ with $f(\zeta) \in f(B)$.
    But then there is a $z\in B$ such that $f(z) = f(\zeta)$, contradicting injectivity.

    \

    **Case 2:**
    Suppose $f$ has a pole of order $n$ at 0, then $\frac 1 f$ has a zero of order $n$ at 0.
    Since $1 \over f$ is injective, we must have $n\leq 1$ by a previous proposition showing that the derivative can not be zero.

    \

    Applying the same argument to $f(1/z)$ we conclude that $f(z) = \frac a z + b + cz$ for some constants $a,b,c\in \CC$.
    If both $a\neq 0, c\neq 0$ then $cz^2 + (b-w)z + a = 0$ has two roots (up to multiplicity), contradicting injectivity.

    \

    So either $a=0$ or $c=0$, but not both since $f$ is not constant.
    But in either case, $f$ is an FLT.

Proposition
:   Suppose $f$ is holomorphic at $z_0$.
    Then $f(z) - f(z_0) = \sum_{m=n}^\infty a_m(z-z_0)^m$ with $a_n \neq 0 \iff$ for $\eps$ small enough, there exists $\delta > 0$ such that $f(z) - w$ has distinct roots in $\theset{z\suchthat 0 < \abs{z-z_0} < \eps}$ whenever $0 < \abs{w - f(z_0)} < \delta$.

This states that $f(d_\eps(z_0))$ covers $D_\delta(w_0) \setminus\theset{w_0}$ exactly $n$ times.
In particular, $f$ is injective in a neighborhood of $z_0 \iff f'(z_0) \neq 0$.

# Friday April 3rd

## Conformal Mappings

> Qual Alert: basically everything today.
> E.g. Show that the conformal maps $\CC\to \CC$ are linear.

The three basic types are translation, dilations, and rotation.

For any $n\in \NN$, the map $z\mapsto z^n$ is conformal in the sector $S = \theset{z \suchthat 0 < \arg(z) < {\pi \over n}}$.
For $0 < \alpha < 2$, the map takes $\HH$ to $\theset{0 < \arg{z} < \alpha\pi}$.

The map $z \mapsto {1 +z \over 1 - z}$ takes the upper half-disc $\DD^+$ to the first quadrant $\HH^+$.
The inverse is $w- 1 \over w +1$ which is clearly holomorphic for $w\neq 1$, and its image is contained in the unit disc since the distance from $w$ to $-1$ is always greater than the distance from $w$ to $1$.

Note that
\begin{align*}
f\left(e^{i \theta}\right)=\frac{1+e^{i \theta}}{1-e^{i \theta}}=\frac{e^{-i \theta / 2}+e^{i \theta / 2}}{e^{-i \theta / 2}-e^{i \theta / 2}}=\frac{2 \cos \frac{\theta}{2}}{-2 i \sin \frac{\theta}{2}}=i \cot \frac{\theta}{2}
\end{align*}

and thus as $\theta$ travels from $0$ to $\pi$ along $S^1$, $f(e^{i\theta})$ travels from $i\infty$ to 0.

The logarithm $z\mapsto \log z$ (taking the branch cut along the negative imaginary axis) maps $\HH$ to the strip $\theset{z \suchthat x\in \RR, 0 < y < \pi}$.
The inverse is given by $w \mapsto e^w$, and as $x$ travels from $-\infty$ to $0$, $f(x)$ travels from $\infty + i\pi$ to $-\infty + i\pi$.
When $x$ travels from $0\to\infty$, $f(x)$ travels from $-\infty_\RR \to \infty_\RR$.


The map $z \mapsto \log z$ also defined as map from the half disc $\DD^+$ to the half-strip $\SS = \theset{x <0, 0 < y < \pi}$.
We have $[1, -1]_\RR \mapsto [-\infty ,0]$ and $S^1_+ \mapsto i[0, \pi]$.

The map $z \mapsto -{1 \over 2}\qty{z + {1 \over z}}$ takes $\DD^+ \to \HH$.
We have $[0, 1] \mapsto [1 ,\infty]$ and $S^1_+ \mapsto [-1, 1]\subset \RR$, and $[0, -1] \mapsto [-1, -\infty] \subset \RR$.


The map $z\mapsto \sin z$ takes $\theset{-\pi/2 < x < \pi/2, y>0}$ onto $\HH$.
Then $[-\pi/2 + i\infty, -\pi/2 + 0] \mapsto [-\infty, 1]$ and $[-\pi/2, \pi/2] \mapsto [-1, 1]$, and $[\pi/2 + 0i, \pi/2 + o\infty] \mapsto [1, \infty]$.


> Just need to know these 8 examples of conformal mappings.

# Monday April 6th

## Automorphisms of the Disc

Lemma (Schwarz)
:   Let $f: \DD \to \DD$ be holomorphic with $f(0) = 0$, then

    1. $\abs{f(z)} \leq \abs{z}$ for all $z\in \DD$.
    2. If for some $z_0 \neq 0$ we have $\abs{f(z_0)} = \abs{z_0}$, then $f$ is a rotation (i.e. $f(z) = e^{i\theta}z$)
    3. $\abs{f'(0)} \leq 1$ and is equality holds, $f$ is a rotation.

Proof
:   \hfill

    1. Expand $f(z) = a_1 z + a_2 z^2 + \cdots$ using $f(0) = 0 \implies a_0 = 0$.
      Then $f(z)/z$ is holomorphic in $\DD$ and bounded in modulus by $1/r$ for $r = \abs{z} < 1$.
      By the maximum modulus principle, this is true for any $\abs{z} < r$, so letting $r\to 1$ yields (1).

    2. Since $\abs{f(z)} < 1$, the modulus of $f(z)/z$ attains its maximum in $\DD^\circ$ and thus is constant.
      So $f(z) = cz$ and at $z_0$ we have $\abs{f(z) / (z-0)} = 1$, so $\abs{c} = 1$ and $f(z)$ is a rotation.

    3. If $g(z) = f(z)/z$ then $\abs{g(z)} < 1$ for all $z\in \DD$ and $g(0) = \lim_{z\to 0} {f(z) f(0) \over z} = f'(0)$.
      If $\abs{f'(0)} = 1$ then $\abs{g(0)} =1$, ???.

We proved that $\aut \DD = \SU(1, 1)$, which preserves a certain Hermitian form and is a non-compact group.
We also showed that $\aut \HH = \SL(2, \RR)$.

Note that the rotations $r_\theta: z \mapsto e^{i\theta} z \in \Aut \DD$.
There are also functions of the form $\psi_\alpha: z \mapsto {\alpha - z \over 1 - \bar \alpha z}$ where $\alpha \in \DD$.
It is holomorphic in $\DD$ with a simple pole at $z= 1/\bar \alpha$.

Writing $z= e^{i\theta}$ yields

\begin{align*}
\psi_{\alpha}
\left(e^{i \theta}\right)=\frac{\alpha-e^{i \theta}}{1-\bar{\alpha} e^{i \theta}}=-e^{-i \theta} \frac{\alpha-e^{i \theta}}{\bar{\alpha}-e^{-i \theta}} \quad \Longrightarrow\left|\psi_{\alpha}\left(e^{i \theta}\right)\right|=1
.\end{align*}

By the MMP, $\abs{\psi_\alpha(z)} < 1$ for all $z\in \DD$.
The inverse can be solved for, and it turns out that $\psi_\alpha\inv = \psi_\alpha$ where $0 \tofrom \alpha$.

Theorem
: \hfill
  \begin{align*}
  \operatorname{Aut}(\mathbb{D})=\left\{f(z)=e^{i \theta} \frac{\alpha-z}{1-\bar{\alpha} z}: \theta \in \mathbb{R},|\alpha|<1\right\}
  .\end{align*}

Note that this group is not compact, since it's homeomorphic to $\RR \cross \DD$.

Proof
:   Given $f\in \Aut(\DD)$, there must be some $\alpha$ such that $f(\alpha) = 0$.
    Consider $g = f\circ \psi_\alpha$, then $g(0) = 0$ and applying the Schwarz lemma yields $\abs{g(z)} \leq \abs z$ for all $z \in \DD$.
    Since $g\inv(0) = 0$, applying this lemma again to $g\inv$ shows $\abs{g\inv(w)} \leq \abs{w}$ for all $w\in \DD$.
    Letting $w = g(z)$ we obtain $\abs{g(z)} = \abs{z}$ for all $z\in \DD$, so by Schwarz $g(z) = e^{i\theta}z$ is a rotation.
    Thus $f(z) = e^{i\theta} \psi_\alpha(z)$.

Recall that $F(z) = {i-z \over i+z}: \HH \to \DD$ has inverse $i {1 - w \over 1 + w}$, so we can define a map $\Gamma: \aut(\DD) \to \aut(\HH)$ where $\phi \mapsto F\inv \phi F$.
This can be shown directly using algebra

# Wednesday April 8th

What are the necessary conditions on $\Gamma$ to ensure a conformal map $F$ to $\DD$?

1. $\Omega \neq \CC$, because this would force $F$ to be constant.
2. Since $\DD$ is connected, $\Omega$ must be connected.
3. Since $\DD$ is simply-connected, $\Omega$ must be simply connected.


Theorem
: If $\Omega \subsetneq \CC$ is simply connected and $z_0 \in \Omega$, there exists a unique conformal map $F: \Omega \to \DD$ such that $F(z_0) = 0$ and $F'(z_0) > 0$.

Corollary
: Any two proper simply connected open subsets in $\CC$ are conformally equivalent.

Proof
: Produce $F_i: \Omega_i \to \DD$ and define $F = F_2\inv \circ F_1: \Omega_1 \to \Omega_2$.

To show uniqueness in the theorem, suppose $F, G: \Omega \to \DD$ satisfy the hypotheses.
Then $H \definedas F\circ G\inv: \DD \to \DD$ satisfies $H(0) = 0$.
By a previous theorem, we must have $H(z) = e^{i\theta} {\alpha - z \over ?}$, and the previous statement forces $\alpha = 0$.
By the chain rule, $H'(z) > 0$.
This implies $H(z) = e^{i\theta} z$ and $H'(z) = e^{i\theta} > 0$ (?), this $e^{i\theta} = 1$ and $H = \id$.

To show existence, consider all injective maps $f: \Omega \to \DD$ with $f(z_0) = 0$, and search for a surjective such $f$.
This can be achieved by maximizing $f'(z_0) > 0$.
We'll extract $f$ as a limit of a given sequence of functions.

We define a family $\mff(\Omega)$ by the following conditions:

a. $\mff(\Omega) \neq g: \Omega \to \DD$ is holomorphic and injective.
b. $\abs{g(z)} < 1$ for all $z\in \Omega$.
c. $g(z_0) = 0$ and $g'(z_0) > 0$.

We need to show:

1. $\mff(\Omega)$ is not empty.
2. There exists a maximal $f \in \mff$ in the sense that $g\in \mff \implies g'(z_0) \leq f'(z_0)$.
3. The above $f$ is a Riemann mapping, i.e. $f(\Omega) = \DD, f(z_0) = 0, f'(z_0) > 0$.

> The difficult part is proving part 2.

Proof (of (a))
:   Choose $a\not\in \Omega$ and let $g(z) \definedas \sqrt{z-a}$ be a branch of the square root of $z-1\neq 0$ for $z\in \Omega$.
    Then $g$ is holomorphic and injective on $\Omega$.
    Moreover, $g$ is single-valued: if $g(z) = w$, $g$ does not take on the value $-w$ on $\Omega$.
    Since $g(\Omega)$ is open, there exists a radius $r$ such that

    \begin{align*}
    D_{r}\left(g\left(z_{0}\right)\right)=\left\{w:\left|w-g\left(z_{0}\right)\right|<r\right\} \subset g(\Omega)
    .\end{align*}

    Thus
    \begin{align*}
    D_{r}\left(-g\left(z_{0}\right)\right)=\left\{w:\left|w+g\left(z_{0}\right)\right|<r\right\} \cap g(\Omega)=\emptyset
    \end{align*}

   ![](figures/image_2020-04-08-14-05-50.png)\

    and hence $\abs{g(z) + g(z_0)} \geq r$ for all $z\in \Omega$.
    Then the function $g_1(z) \definedas {\eps \over g(z) + g(z_0)}$ is holomorphic and injective in $\Omega$, for $\abs{\eps} < r$ satisfies $\abs{g_1(z)} < 1$.
    So $g_1$ satisfies properties (a) and (b).

    \

    We now take $g_0 \definedas \psi \circ g_1$ where $\psi \in \Aut \DD$; we want $g_0(z_0) = 0$ with positive derivative.
    Choosing $\alpha = g_1(z_0)$ forces $g_0(z_0) = 0$, and using the chain rule to compute the derivative explicitly shows
    \begin{align*}
    g_{0}^{\prime}\left(z_{0}\right)=\frac{\left|g_{1}^{\prime}\left(z_{0}\right)\right|}{1-\left|g_{1}\left(z_{0}\right)\right|^{2}}>0
    .\end{align*}



# Friday April 10th

Continuing the proof from last time.
Existence involved

- The square root function
- Reciprocal functions
- Automorphisms of the disc

Definition
:   Let $\Omega \subset \CC$ be open.
    A family $\mcf(\Omega)$ of holomorphic functions on $\Omega$ if every sequence has a subsequence that converges uniformly on every compact subset of $\Omega$, where the limit need not be in $\mcf(\Omega)$.

Proving that a family of functions is normal is a consequence of

- Uniform boundedness
- Equicontinuity

Definition
:   A family $\mcf$ is said to be uniformly bounded on compact subset iff for each compact $K \subset \Omega$ there exists $B_K > 0$ such that
    \begin{align*}
    \abs{f(z)} \leq B_k \quad\text{for all} \quad z\in K, f\in\mcf
    .\end{align*}

Definition
:   A family $\mcf$ is equicontinuous if for every $\eps > 0$ there exists $\delta > 0$ (not depending on the point) such that for all $z, w\in K$,
    \begin{align*}
    \abs{z-w} < \delta \implies \abs{f(z) - f(w)} < \eps \quad\forall f\in\mcf
    .\end{align*}

Examples:

1. The family $f_n: I \to \CC$ with $\abs{f_n'} \leq M$ for some fixed constant is uniformly bounded and equicontinuous (by the MVT).
2. The family $f_n(x) \definedas x^n$ for $x\in I$ is uniformly bounded but not equicontinuous since $\lim_{n\to\infty} \abs{f_n(1) - f_n(x_0)} = 1$ for any $x_o \in I^\circ$.

Theorem (Montel)
:   Suppose $\mcf(\Omega)$ is uniformly bounded on compact subsets, then

    1. $\mcf$ is equicontinuous on every compact subset,
    2. $\mcf$ is a normal family.

The proof of the theorem consists of two parts:

1.Apply the Cauchy integral formula and use that $\mcf$ is comprised of holomorphic functions.

  > Note the contrast to $\RR$, where $f_n(x) = \sin(nx), \abs{f_n(x)} \leq 1$ is uniformly bounded but not equicontinuous and has no convergent subsequences on *any* compact subinterval of $I^\circ$.

2. Use the fact that uniform bounded + equicontinuous implies existence of convergent subsequences by Arzela-Ascoli (which uses diagonalization).

  > Not complex-analytic, works in $\RR$.

Definition
:   A sequence $\theset{K_\ell}$ of compact subsets is called an *exhaustion* of $\Omega$ iff

    1. $K_\ell \subset (K_{\ell+1})^\circ$ for all $\ell$,
    2. Any compact $K\subset \Omega$ is contained in some $K_\ell$, and $\union_\ell K_\ell = \Omega$


Lemma
: Any open $\Omega \subset \CC$ admits an exhaustion.

Proof
:   If $\Omega$ is bounded, take $K_\ell = \theset{\dist(z, \bd \Omega) > \frac 1 \ell}$.
    Otherwise, take $\tilde K_\ell = K_\ell \intersect B_\ell(0)$.

### Proof of Montel's Theorem

Proving part 1.

Let $K \subset \Omega$ be compact, choose $r> 0$ such that $D_{3r}(z) \subset \Omega$ for all $z\in K$, e.g. $3r < \dist(K, \bd \Omega)$.
Let $z, w\in K$ with $\abs{z-w} < r$ and let $\gamma = \bd D_{2r}(w)$.

Then Cauchy's integral formula yields
\begin{align*}
  f(z)-f(w)=\frac{1}{2 \pi i} \int_{\gamma} f(\zeta)\left[\frac{1}{\zeta-z}-\frac{1}{\zeta-w}\right] d \zeta
.\end{align*}

Then since $\xi \in \gamma$ and $\abs{z-w} < r$, we have

\begin{align*}
  \left|\frac{1}{\zeta-z}-\frac{1}{\zeta-w}\right|=\frac{|z-w|}{|\zeta-z||\zeta-w|} \leq \frac{|z-w|}{r^{2}}
.\end{align*}

Letting $B$ be the uniform bound on $\mcf$ and using $\abs{\gamma} = 4\pi r$, we can apply this estimate to obtain

\begin{align*}
  |f(z)-f(w)| \leq \frac{1}{2 \pi} \frac{2 \pi r}{r^{2}} B|z-w|
.\end{align*}

Then $f$ is uniformly Lipschitz with the constant given above, and the family is equicontinuous.

> Application: show that derivative uniformly bounded implies function uniformly bounded by applying Cauchy's integral formula.

Proving part 2.

Let $\ts{f_n}$ be a sequence in $\mcf$ and $K\subset \Omega$ compact.
Choose a dense sequence $\ts{w_j}$, and use uniform boundedness to obtain a subsequence $\ts{f_{n, 1} }$ such that $\ts{f_{n, 1}(w_1)}$ converges.
Repeat these to get $\ts{f_{n, j}(w_j)}$ all converge, and set $g_n = f_{n, n}$.
The claim is that equicontinuity implies $g_n$ converges uniformly on $K$.

Given $\eps>0$, choose $\delta$ from equicontinuity and note that $K \subset D_\delta(w_1) \union \cdots \union D_\delta(w_J)$ for some $J$ by density of $\ts{w_i}$ and compactness of $K$.
Pick $N \gg 0$ such that
\begin{align*}
\abs{g_m(w_j) - g_n(w_j)} < \eps \forall j=1,2,\cdots, J
.\end{align*}

Then any $z\in K$ is in some $D_\delta(w_j)$, then
\begin{align*}
\begin{aligned}
\left|g_{n}(z)-g_{m}(z)\right| \leq \left|g_{n}(z)-g_{n}\left(w_{j}\right)\right|+\left|g_{n}\left(w_{j}\right)-g_{m}\left(w_{j}\right)\right|+\left|g_{m}\left(w_{j}\right)-g_{m}(z)\right| <& 3 \epsilon
\end{aligned}
,\end{align*}

so $\ts{g_n}$ converges uniformly on $K$.


# Monday April 13th

Goal: put together pieces for the Riemann mapping theorem.

Today: normal families.
Recall that normal families on $\Omega$ are holomorphic functions for which every sequence uniformly on every compact subset of $\Omega$.
The family is uniformly bounded iff for every $K$ there exists a $B_K$ bounding $f$ in $K$, and is equicontinuous iff they are continuous with a parameter $\delta$ uniform for the family.

We had Montel's theorem: families that are uniformly bounded on compact subsets are equicontinuous and normal.
This used Arzela-Ascoli and a diagonalization argument.

Theorem (Hurwitz)
: Suppose $g_n$ are holomorphic and nonzero on $\Omega$, then if $g_n \to g$ uniformly on compact subset, then either $g \equiv 0$ or $g$ is nonzero on $\Omega$.

Proof
:   The limit function $g$ is holomorphic on $\Omega$ by the Weierstrass theorem.
    If $g\not\equiv 0$, then the zeros of $g$ are isolated.
    If $\gamma \sim 0$ is a simply curve on which $g\neq 0$, $g'_n \to g'$ and hence $g_n' / g_n \to g'/g$ uniformly on $\gamma$.
    By the argument principle, for $n\gg 0$ the number of zeros of $g_n, g$ enclosed by $\gamma$ are equal.
    Since $g_n \neq 0$, the theorem follows.

Corollary (Hurwitz)
:   If $g_n$ are holomorphic and injective, then either $g$ is injective or constant.

Proof
: Fix $w\in \Omega$ and apply Hurwitz to $g - g(w)$ on $\Omega \setminus \theset w$.

Proof (of part (B) of Riemann Mapping)
:   By Montel's theorem, $\mcf(\Omega)$ is normal since $\abs f < 1$ for all $f\in \mcf$.
    Let $M = \sup{g'(z_0) \suchthat g\in \mcf} \leq M$.
    By definition, we can find a sequence $g_n$ such that $\lim g_n'(z_0) = M$.
    By normality, there exists a subsequence uniformly convergent on compact subsets to some function $f$.

    \

    In particular, $M < \infty$ since otherwise this would yield a simple pole for $f$ (which is holomorphic) and $f'(z_0) = M$.
    By Hurwitz, $f$ is either injective or constant because the subsequence is injective.
    But since $f' = M > 0$, $f$ is not constant.

    \

    Moreover, since $f(z_0) = \lim g_n(z_0) = 0$ and $f'(z_0) = M > 0$, $f$ injective implies $f\in \mcf$.
    This gives the existence of $f\in\mcf$ such that $g' \leq f'$ at $z_0$ for all $g\in \mcf$.

Proof (of part (C) in Riemann Mapping)
:   We want to show that $f(\Omega) = \DD$.
    Toward a contradiction, suppose not, then there exists a $w_0 \in \DD \setminus f(\Omega)$.
    We will construct a function $g_1 \in \mcf$ with $g_1' > f'$ at $z_0$, which is a contradiction.

    The function $-\psi_{w_0}(f(z)) = {f(z) - w_0 \over 1 - \bar w_0 f(z)}: \Omega \to \DD$ is holomorphic, injective (since all such $\psi$ are), and nonvanishing since $w_0 \not\in f(\Omega)$.
    Thus there is a branch of the square root for which $g(z) \definedas \sqrt{-\psi_{w_0}(f(z))}: \Omega \to \DD$ is injective.

    Finally, normalize $g$ so that its derivative at $z_0$ is positive and real by setting
    \begin{align*}
    g_1(z) = { \abs{g'(z_0)} \over g'(z_0)} \qty{g(z) - g(z_0) \over 1 - \bar{g(z_0)} g(z) }
    .\end{align*}

    Then $g_1$ has the same properties as $g$ with $g_1 = 0, g_1' > 0$ at $z_0$.
    The first claim is easy to check, and the second follows from using $\dd{}{z} \qty{z - \alpha \over 1 - \bar \alpha z} = {1 - \abs{alpha}^2 \over \qty{1 - \bar \alpha z}^2 }$ and applying the chain rule.

    We now compare $f'$ and $g'$ at $z_0$.
    Note that $f = 0, f' > 0, g^2 = -w_0$ at $z_0$.
    Take $\dd{}{z} g^2$ to obtain
    \begin{align*}
    2 g(z) g^{\prime}(z)=\frac{1-\left|w_{0}\right|^{2}}{\left(1-\bar{w}_{0} f(z)\right)^{2}} \cdot f^{\prime}(z)
    .\end{align*}

    Evaluate at $z=z_0$ to obtain
    \begin{align*}
    2 g\left(z_{0}\right) g^{\prime}\left(z_{0}\right)=\left(1-\left|w_{0}\right|^{2}\right) f^{\prime}\left(z_{0}\right) \Rightarrow\left|g^{\prime}\left(z_{0}\right)\right|=\frac{1-\left|w_{0}\right|^{2}}{2\left|g\left(z_{0}\right)\right|} f^{\prime}\left(z_{0}\right)
    .\end{align*}

    Combining this with the previous formula obtained from the chain rule
    \begin{align*}
    g_{1}^{\prime}\left(z_{0}\right)=\frac{\left|g^{\prime}\left(z_{0}\right)\right|}{1-\left|g\left(z_{0}\right)\right|^{2}}=\frac{1-\left|w_{0}\right|^{2}}{2\left|g\left(z_{0}\right)\right|} \cdot \frac{f^{\prime}\left(z_{0}\right)}{1-\left|g\left(z_{0}\right)\right|^{2}} \\
    &=\frac{1-\left|w_{0}\right|^{2}}{2 \sqrt{\left|w_{0}\right|}} \cdot \frac{f^{\prime}\left(z_{0}\right)}{1-\left|w_{0}\right|} \quad \text{ using } g^2(z_0) = - w_0 \\
    &=\frac{1+\left|w_{0}\right|}{2 \sqrt{\left|w_{0}\right|}} f^{\prime}\left(z_{0}\right) \\
    & > f^{\prime}\left(z_{0}\right)
    .\end{align*}


    Where we've used the Schwarz inequality,
    \begin{align*}
    \frac{1+\left|w_{0}\right|}{2 \sqrt{\left|w_{0}\right|}}>1
    .\end{align*}

    But then $g_1' > f'$, a contradiction.

Note that this is a long proof in the book -- seven pages!

# Wednesday April 15th

Last time: finished proof of Riemann mapping theorem.
Needed concept of normal families, the rest was computations.


Proposition
:   Suppose $f: \Omega \to \DD$ is a holomorphic diffeomorphism.
    Then $z \to \bd \Omega \implies \abs{f(z)} \to 1$.

Proof
:   For each $\eps > 0$, $\bar D_{1-\eps} = \theset {\abs z < 1- \eps}\subset \DD$ is compact and $K_\eps \definedas f\inv (\bar D_{1-\eps}) \subset \Omega$ is compact by continuity of $f$.
    If $z\not\in K_\eps$, then $\abs{f(z)} > 1-\eps$ by definition.

Definition
: For $I = (a, b) \subset \RR$ an interval, a function $f: I \to \CC$ is real analytic iff for each $x_0 \in I$ there exists a $\delta > 0$ such that in a $\delta$ neighborhood of $x_0$, $f(x) = \sum a_k(x_0) (x-x_0)^k$ is given by a convergent power series.

In this case, $a_k(x_0)$ is given by the $k$th Taylor coefficient.

Lemma
: For $f$ real analytic, there is a neighborhood $U$ such that ?.

Proof
:   Fix $x_0 \in I$, let $U_{x_0}$ be a disc of radius $\delta(x_0)$ centered at $x_0$ in $\CC$ such that $f$ equals its power series on $D_\delta(x_0) \intersect \RR$.
    Set $F(z) = \sum a_k(x_0) (z - x_0)^k$ for $z \in D_\delta(x_0)$.
    Take $U = \union_{x_0 \in I} D_\delta(x_0)$
    Then $F: U \to \CC$ extends $F_{x_0}$ for each $x_0$, need to show it is well-defined.
    This follows from Theorem 4.5, Chapter 2 -- we have two functions taking the same values on a sequence with an accumulation point, namely their common restrictions to $\RR$, and the function is defined as every accumulation point in $\RR$.

Theorem
:   Assume $\gamma: I\to \CC$ is a simple real analytic curve with $\gamma'(t) \neq 0$ for all $t$ and bounds a region $\Omega$ such that

    - Points to the left of $\gamma$ are in $\Omega$
    - Points to the right of $\gamma$ are in $\CC \setminus \bar \Omega$

    So $\gamma$ separates $\CC$.
    Then there is a neighborhood $V$ of $\gamma$ and a holomorphic extension $F$ of $f$ to $\Omega \union V \to \CC$ with $F(\gamma) \subset \bd \DD$ and $F'(\gamma) \neq 0$.

![](figures/image_2020-04-15-14-05-21.png)

Proof

- Use the lemma to get a neighborhood $O$ of $(a, b)$ in $\CC$ and a univalent holomorphic extension $\Gamma$; set $V = \Gamma(O)$
- Assume $O$ is symmetric about $\RR$, say $O^+$ is the part in $\HH$.
- Extend to $G$.
- ?

Theorem
:   Assume $\Omega$ is bounded and $\bd \Omega$ is simple, closed, a finite union of real analytic curves.
    Then the Riemann mapping function $f$ extends to a homeomorphism $f:\bar\Omega \to \bar\DD$.


    

# Friday April 17th

Last time: extending a real-analytic function into $\CC$.

![](figures/image_2020-04-17-13-40-45.png)\

Theorem
:   Assume $\Omega$ is bounded and $\bd \Omega$ is a finite union of simple closed curves.
    Then the Riemann mappying function $f$ extends to a homeomorphism $\bar f: \bar \Omega \to \bar \DD$.


Proof:
Apply the previous theorem to the real analytic part of $\bd \Omega$, then map these diffeomorphically onto open arcs in $\bd \DD$.
Let $J_1, J_2$ be real analytic curves in $\bd \Omega$ meeting at $p$ and let $I_1, I_2$ denote their images in $\bd \DD$:

![](figures/image_2020-04-17-13-44-28.png)\

We want to show that $I_1$ meets $I_2$ and their endpoints $q_1, q_2$ coincide.
We have $\ell(r) = \int_{\gamma_r} \abs{f'}$, where $\gamma_r$ is as in the figure, and applying Cauchy-Schwarz yields
\begin{align*}
\abs{\ell(r)}^2 
&\leq_{CS} \int 1^2 \cdot \int \abs{f'}^2 \\
&\leq 2\pi r \int \abs{f'}^2 \\
\implies {\ell(r)^2 \over r} \leq 2\pi \int \abs{f'}^2
.\end{align*}

Then taking $\ell(r) \geq \delta$ for $\eps \leq r \leq R$  and integrating over $r\in (\eps, R)$ yields
\begin{align*}
\delta^2 \log\qty{R \over \eps} \leq 2\pi \iint_{\Omega(\eps, R)} \abs{f'}^2 = 2 \pi ~\mathrm{Area}(f(\Omega(\eps, R))) \leq 2\pi
\end{align*}
where $\Omega(\eps, R) = \Omega \intersect \theset{\eps \leq \abs{z-p} \leq R}$.

Since $\log\qty{R\over \eps} \converges{\eps\to 0}\to_? 0$ there exists a small $r>0$ such that $\ell(r) < \delta$.
Then $\abs{q_1 - q_2} < \delta$, so $q_1 = q_2$.

> Note that the classification of domains is nontrivial in higher dimension.

Next goal: Picard's theorem. 
Best proof is Picard's original, which comes from Ahlfors.

Recall the notion of covering maps from topology: for $\pi: E\to X$ is a covering map iff for every $p\in X$ there is a $U_x$ such that $\pi\inv(U) = \disjoint S_j \subset E$, where $\pi(S_j) = U$ is a homeomorphism.

Proposition
: If $E, X, Y$ are connected and locally path-connected and $E\mapsvia{\pi} X$ is a covering map, then if $Y$ is simply connected then any $f: Y\to X$ lifts to $\tilde f: Y\to E$.

Proposition
: Any continuous lift of a holomorphic map is also continuous.

Proof
:   Take $q\in U, p= f(q) \in \OO$.
    Let $V \ni p$ be a neighborhood such that $\pi\inv(V)$ satisfies the covering condition with the projections holomorphic homeomorphisms.
    Then $\tilde f(q) \in S_k$ for some $k$, and $\tilde f\inv(S_k) = f\inv V = U_1$ is a neighborhood of $q\in U$.
    So the restrictions of $\tilde f, \pi\inv \circ f$ to $U_q$ are equal and thus $\tilde f$ is holomorphic on each $U_q$.

Example: $e^z$ and $z^n$.

Proposition
: There exists a holomorphic covering map $\Phi: \DD \to \CC\setminus \theset{0, 1}$.

![](figures/image_2020-04-17-14-18-10.png)

Let $\omega = \exp({2\pi i \over 3})$, then define the LFT
\begin{align*}
\phi(z) = \omega{1 - z\over z - w^2}: \DD\to \HH
\end{align*}

which satisfies
\begin{align*}
\phi(1) = 0\\
\phi(\omega) = 1
\phi(\omega^2) = \infty
.\end{align*}

and the image of the above disc is

![](figures/image_2020-04-17-14-23-25.png)\

Then by the Riemann mapping theore, there is a holomorphic diffeomorphism $\psi: \Omega \to \DD$ and by the previous theorem, this lifts to $\bar \psi: \bar \Omega \to \bar \DD$, and $\psi$ can be chosen to fix $1, \omega$.
Conjugating by $\phi$ gives a holomorphic diffeomorphism $\Psi: \Omega^\sharp \to \HH$ which extends to a map $\bd \Omega^{\sharp}$ onto $\RR$ which fixes $0, 1$.

Idea: continue on a fractal-like manner to cover the unit disc.

# Monday April 20th

Goal: Picard's theorem, 

# Monday April 27th

See Simon's book and Donald for examples on definite integrals.
See also problem book, contains problems from many qual areas, although these are more difficult.

Springer link, Ponnusamy, complex variables and applications 

Stein, page 79, example 2 
