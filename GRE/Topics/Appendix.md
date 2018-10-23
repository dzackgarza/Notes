## Neat Tricks
- Commuting differentials and integrals:
	$$\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt$$
	- Need $f, \frac{df}{dx}$ to be continuous in both variables. Also need $a(x),b(x) \in C_1$.
	- If $a,b$ are constant, boundary terms vanish.
	- Recover the fundamental theorem with $a(x) = a, b(x) = b, f(x,t) = f(t)$.

## Useful Series and Sequences
Notation: $\uparrow, \downarrow$: monotonically converges from below/above.
- Taylor Series: $$ f ( x ) = \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } \left( x _ { 0 } \right) } { n ! } \left( x - x _ { 0 } \right) ^ { n } $$
- Cauchy Product:
	$$
	\left( \sum_{k=0}^\infty a_k x^k \right)\left( \sum_{k=0}^\infty b_i x^n \right) = \sum_{k=0}^\infty \left( \sum_{i=0}^k a_{n} b_{n} \right)x^k
	$$
- Differentiation: $$\frac{\partial}{\partial x} \sum_{k=i}^\infty a_kx^k = \sum_{k=i+1}^\infty k\,a_k x^{k-1}$$
- Common Series
		$$\begin{align}
		&\sum_{k=0}^{N} x^k &= \frac{1-x^{N+1}}{1-x} &\\
		&\sum_{k=1}^\infty x^k &= \frac{1}{1-x}& \quad\text{ for } \abs{x} < 1 \\
		&\sum _ { k = 1 } ^ { \infty } k x ^ { k - 1 } &= \frac { 1 } { ( 1 - x ) ^ { 2 } }& \quad \text { for } | x | < 1 \\
		&\sum _ { k = 2 } ^ { \infty } k ( k - 1 ) x ^ { k - 2 } &= \frac { 2 } { ( 1 - x ) ^ { 3 } } & \quad \text { for } | x | < 1  \\  
	  &\sum _ { k = 3 } ^ { \infty } k ( k - 1 ) ( k - 2 ) x ^ { k - 3 } &= \frac { 6 } { ( 1 - x ) ^ { 4 } } & \quad \text { for } | x | < 1   \\
		&\sum_{k=1}^\infty {n\choose k} x^k y^{n-k} &= (x+y)^n& \\   
		&\sum _ { k = 1 } ^ { \infty } \frac { x ^ { k } } { k } &= -\log ( 1 - x )& \\
	  &\sum _ { k = 0 } ^ { \infty } \frac { x ^ { k } } { k ! } &= e^x & \\
		&\sum _ { n = 0 } ^ { \infty } \frac { ( - 1 ) ^ { k } } { ( 2 n + 1 ) ! } x ^ { 2 k + 1 } \quad = x - \frac { x ^ { 3 } } { 3 ! } + \frac { x ^ { 5 } } { 5 ! } &= \sin(x) & \\
		&\sum _ { k = 0 } ^ { \infty } \frac { ( - 1 ) ^ { k } } { ( 2 n ) ! } x ^ { 2 k } \quad = 1 - \frac { x ^ { 2 } } { 2 ! } + \frac { x ^ { 4 } } { 4 ! } &= \cos(x)& \\
		&\sum _ { k = 0 } ^ { \infty } \frac { ( - 1 ) ^ { k } } { 2 n + 1 } x ^ { 2 k + 1 } \quad = x - \frac { x ^ { 3 } } { 3 } + \frac { x ^ { 5 } } { 5 } &= \arctan(x) & \\
		&\sum _ { k = 0 } ^ { \infty } \frac { 1 } { ( 2 k + 1 ) ! }x ^ { 2 n + 1 } \quad = x + \frac { x ^ { 3 } } { 3 ! } + \frac { x ^ { 5 } } { 5 ! } + \cdots &= \sinh(x) & \\
		&\sum _ { k = 0 } ^ { \infty } \frac { 1 } { ( 2 k ) ! }x ^ { 2 k } \quad = 1 + \frac { x ^ { 2 } } { 2 ! } + \frac { x ^ { 4 } } { 4 ! } + \cdots & = \cosh(x) & \\
		&\sum _ { k = 0 } ^ { \infty } \frac { x ^ { 2 k + 1 } } { 2 k + 1 } &= \operatorname { arctanh } x  & \\
		&\sum_{k=1}^\infty \frac{1}{k} &= \infty &\\
		&\sum_{k=1}^\infty (-1)^k \frac{1}{k} &= \ln (2) & \\
		&\sum_{k=1}^N \frac{1}{k} &\approx \ln(N) + \gamma + \frac{1}{2N} & \\
		&\sum _ { k = 1 } ^ { \infty } \frac { 1 } { k ^ { 2 } } &= \frac { \pi ^ { 2 } } { 6 }& \\
		\end{align}
		$$

## Rational Roots Theorem
## Partial Fraction Decomposition
Given $R(x) = \frac{p(x)}{q(x)}$, factor $q(x)$ into $\prod q_i(x)$.
- Linear factors of the form $q_i(x) = (ax+b)^n$ contribute $$r_i(x) = \sum_{k=1}^n \frac{A_k}{(ax+b)^k} = \frac{A_1}{ax+b} + \frac{A_2}{(ax+b)^2} + \cdots$$
- Irreducible quadratics of the form $q_i(x) = (ax^2+bx+c)^n$ contribute $$r_i(x) = \sum_{k=1}^n \frac{A_k x + B_k}{(ax^2+bx+c)^k} = \frac{A_1x+B_1}{ax^2+bx+c} + \frac{A_2x+B_2}{(ax^2+bx+c)^2} + \cdots$$
	- Note: $ax^2+bx+c$ is irreducible $\iff b^2 < 4ac$
- Write $R(x) = \frac{p(x)}{\prod q_i(x)} = \sum r_i(x)$, then solve for the unknown coefficients $A_k, B_k$.
	- IMPORTANT SHORTCUT: don't try to solve the resulting linear system: for each $q_i(x)$, multiply through by that factor and evaluate at its root to zero out many terms!
	- For linear terms $q_i(x) = (ax+b)^n$, define $P(x) = (ax+b)^nR(x)$; then
	$$A_{k} =  \frac{1}{(n-k)!}P^{(n-k)}(a), \quad k = 1,2,\cdots n \\ \implies A_n= P(a),~ A_{n-1} = P'(a),~ \cdots,~ A_1 = \frac{1}{(n-1)!}P^{(n-1)}(A)$$
	- Note: #todo check, might need to evaluate at $-b/a$ instead, extend to quadratics.
