# Definitions

## Set Theory

- Injectivity
	$$
	f:X \to Y \text{ injective } \iff \forall x_1,x_2 \in X,\quad  f(x_1) = f(x_2) \implies x_1 = x_2 \\ \iff \forall x_1,x_2 \in X,\quad x_1 \neq x_2 \implies f(x_1) \neq f(x_2)
	$$

- Surjectivity
	$$
	f:X \to Y \text{ surjective } \iff \forall y\in Y,~ \exists x\in X : f(x) = y
	$$

- Preimage
	$$
	f:X \to Y, U \subseteq Y \implies f^{-1}(U) = \theset{x \in X : f(x) \in U}
	$$

## Calculus

- Limit
	$$\lim_{x \to p} f(x) = L \iff \forall\varepsilon,~\exists\delta:\\
	d(x, p) < \delta\implies d(f(x), L) < \varepsilon
	$$

- Continuity

	- Epsilon-delta definition:
	$$
	f:X \to Y \text{ continuous at } p \iff
	\forall \varepsilon,~ \exists\delta:\\
	d_X(x, p) < \delta \implies d_Y(f(x), f(p)) < \varepsilon
	$$

	- Limit/Sequential definition:
	$$
	f:X \to Y \text{ continuous at } p \iff
	\forall \theset{x_i}_{i\in \NN}\subseteq X: \theset{x_i}\to p,\\
	\lim_{i\to\infty}f(x_i) = f(\lim_{i\to\infty}x_i) = f(p)
	$$

	- Topological Definition:
	$$
	f:X \to Y \text{ continuous } \iff U \text{ open in } \im(f) \subseteq Y \implies f^{-1}(U) \text{ open in } X  
	$$

- Differentiability and the Derivative

	- For single variable functions:
	$$
	f:\RR \to \RR ~\text{differentiable at } p \iff
	\forall \theset{x_i}_{i\in \NN}\to p,\\
	f'(p) \definedas \lim_{i\to\infty} \frac{f(x_i) - f(p)}{x_i - p}< \infty
	$$

	- For multivariable functions:
	$$
	\mathbf{f}:\RR^n \to \RR^m ~\text{differentiable at } \mathbf{p} \iff \exists \text{ a linear map } \mathbf{J}:\RR^n \to \RR^m \text{ such that: } \\ \lim _ { \mathbf{h} \rightarrow 0 } \frac { \left\| \mathbf { f } \left( \mathbf{p} + \mathbf { h } \right) - \mathbf { f } \left( \mathbf { p } \right) - \mathbf { J } ( \mathbf { h } ) \right\|_{\RR^n}} { \| \mathbf { h } \| _{\RR^m} } = 0
	$$

- Gradient $$\nabla f = [f_x, f_y, f_z]$$
- Divergence
- Curl
- Taylor Series (at a point $a$)
	- Single Variable $\RR \to \RR$
	$$
	T_a(x) = f ( a ) + \frac { f ^ { \prime } ( a ) } { 1 ! } ( x - a ) + \frac { f ^ { \prime \prime } ( a ) } { 2 ! } ( x - a ) ^ { 2 } + \frac { f ^ { \prime \prime \prime } ( a ) } { 3 ! } ( x - a ) ^ { 3 } + \cdots \\ \implies T_a(x) = \sum _ { n = 0 } ^ { \infty } \frac { f ^ { ( n ) } ( a ) } { n ! } ( x - a ) ^ { n }
	$$
	- Multivariable $\RR^n \to \RR$:
	$$
	T_a(\mathbf x) = f(\mathbf a) + (\mathbf x - \mathbf a)^T\nabla f(\mathbf a)
	$$
	- Multivariable $\RR^n \to \RR^m$:
	$$
	T_{(a,b)} ( x , y ) = f ( a , b ) + ( x - a ) f _ { x } ( a , b ) + ( y - b ) f _ { y } ( a , b ) + \\ \frac { 1 } { 2 ! } \left( ( x - a ) ^ { 2 } f _ { x x } ( a , b ) + 2 ( x - a ) ( y - b ) f _ { y y  } ( a , b ) + ( y - b ) ^ { 2 } f _ { y x } ( a , b ) \right) + \cdots
	$$
	$$
	T_a ( \mathbf { x } ) = f ( \mathbf { a } ) + ( \mathbf { x } - \mathbf { a } ) ^ { \mathrm { T } } \mathbf{J} ( \mathbf { a } ) + \frac { 1 } { 2 ! } ( \mathbf { x } - \mathbf { a } ) ^ { \mathrm { T } } \mathbf{H} ( \mathbf { a } ) ( \mathbf { x } - \mathbf { a } ) + \cdots \\
	\implies T_a ( \mathbf { x } ) = \sum _ { | \alpha | \geq 0 } \frac { ( \mathbf { x } - \mathbf { a } ) ^ { \alpha } } { \alpha ! } \left( \partial ^ { \alpha } f \right) ( \mathbf { a } )
	$$

## Analysis

- Archimedean Property: $x \in \RR \implies \exists n\in \NN:~ x < n \and x > 0 \implies \exists n:~ \frac{1}{n} < x$

- Upper Bound (for S $\subseteq \RR$)
	$$
	\alpha\text{ is an upper bound for } S \iff s \in S \implies s < \alpha
	$$

- Triangle Inequality
	- $ { | a + b | \leq | a | + | b | }$
	- ${ | a - b | \leq | a | + | b | }$

- Reverse Triangle Inequality
	- ${\abs{| a | - | b |} \leq | a - b | }$

- Least Upper Bound / Supremum (for S $\subseteq \RR$)
	$$
	\alpha\text{ is a LUB for } S \iff s \in S \implies s < \alpha \and \forall t : (s \in S \implies s < t),~ \alpha < t
	$$

- Greatest Lower Bound / Infimum (for S $\subseteq \RR$)
	$$
	\alpha\text{ is a GLB for } S \iff s \in S \implies \alpha < s \and \forall t : (s \in S \implies t < s),~ t < \alpha
	$$

- Open Set
- Closed Set
- Limit Point
- Interior Point
- Closure of a Set
- Boundary
- Metric
- Cauchy Sequence: 
$$\theset{a_i} \text{ is a cauchy sequence } \iff \forall \varepsilon~\exists N\in\NN: \quad m,n > N \implies d(x_m, x_n) < \varepsilon $$

- Connected: 
$S$ is connected $\iff$ $\not\exists U,V\subset S$ nonempty, open, disjoint such that $S = U \cup V$

- Compact:
Every open cover has a finite subcover:
$$
X \subseteq \union_{j\in J} V_j \implies \exists I \subseteq J: \abs{I} < \infty \and X\subseteq \union_{i\in I} V_i
$$

- Sequential Compactness
Every sequence has a convergent subsequence:
$$
\theset{x_i}_{i\in I}\subseteq X \implies \exists J\subseteq I,~ \exists p\in X: \quad \theset{x_j}_{j\in J} \to p
$$

- Bounded (sequences, subsets, metric spaces)
$$
U \subseteq X \text{ is bounded } \iff \exists x\in X, \exists M \in \RR :\quad u\in U \implies d(x, u) < M
$$

- Totally Bounded
asdsa#todo

- Pointwise Convergence
$$
\text{For}~\{f_n: X \to Y\}_{n\in\NN},\\ f_n \to f \iff
\forall \varepsilon > 0,~\forall x\in X,~ \exists N(x, \varepsilon)\in\NN :
\quad n > N \implies d_Y\left(f_n(x),f(x)\right) < \varepsilon
$$

- Uniform Convergence
$$
\text{For}~\{f_n: X \to Y\}_{n\in\NN}, \\
f_n \rightrightarrows f \iff \forall \varepsilon > 0,~ \exists N(\varepsilon)\in\NN :
\quad \forall x\in X,~ n > N \implies d_Y(f_n(x), f(x)) < \varepsilon
$$

- Generalized Mean Value Theorem
$$
(f ( b ) - f ( a ) ) g' ( c ) = (g ( b ) - g ( a )) f' ( c )
$$

## Linear Algebra
Convention: always over a field $k$, and $T: k^n \to k^m$ is a generic linear map (or $m\times n$ matrix).

- Consistent
	A system of linear equations is *consistent* when it has at least one solution.

- Inconsistent
	A system of linear equations is *inconsistent* when it has no solutions.

- Rank
	The number of nonzero rows in RREF
- Elementary Matrix
- Row Equivalent
- Pivot
- Cofactor
$$\mathrm{cofactor}(A)_{i,j} = (-1)^{i+j} M_{i, j}$$ where $M_{i, j}$ is the minor obtained by deleting the $i\dash$th row and $j\dash$th column of $A$.

- Adjugate
	$$
	\mathrm{adjugate}(A) = \mathrm{cofactor}(A)^T = (-1)^{i+j} M_{j, i}
	$$

- Vector Space Axioms
	- Let $k$ be a field and $\vec{u},\vec{v},\vec{w} \in V$ and $r,s,t\in k$. A vector space $V$ over $k$ satisfies:
		1. Closure under addition: $\vec{v} + \vec{w} \in V$
		2. Closure under scalar multiplication: $r\vec{v} \in V$
		3. Commutativity of addition: $\vec{v} + \vec{w} = \vec{w} + \vec{v}$
		4. Associativity of addition: $\vec{u} + (\vec{v} + \vec{w}) = (\vec{u}+\vec{v}) + \vec{w}$
		5. Existence of an additive zero $\vec{0}$ satisfying $\vec{v} + 0 = 0 + \vec{v} = \vec{v}$
		6. Existence of additive inverse $-\vec{v}$ satisfying $v + (-\vec{v}) = 0$
		7. Unit property: $1\vec{v} = \vec{v}$
		8. Associativity of scalar multiplication: $(rs)\vec{v} = r(s\vec{v})$
		9. Distribution of scalars multiplication over vector addition: $r(\vec{v} + \vec{w}) = r\vec{v} + r\vec{w}$
		10. Distribution of scalar multiplication over scalar addition: $(r+s)\vec{v} = r\vec{v} + s\vec{v}$

- Subspace

	- A nonempty subset $W \subseteq V$ that is a vector space and satisfies $\theset{ \sum_i c_i \vec x_i \mid x_i \in W} \subseteq W$

	- Quick counter-check: find $\vec x, \vec y$ such that $a\vec x + b\vec y \not\in W$

- Span
	- Given a set of $n$ vectors $S = \theset{\vec x_i}_{i=1}^n$, defined as $\mathrm{Span}(S) = \theset{\sum_{i=1}^nc_i \vec x_i \mid c_i \in k}$

- Row Space
	- The range of the linear map $T$.
	- Given $T =
\begin{bmatrix} \vec x_1 \rightarrow \\ \vec x_2 \rightarrow \\ \vdots \\ \vec x_m \rightarrow \end{bmatrix}$, defined as $\mathrm{Span}(\theset{\vec x_i}_{i=1}^m) \subseteq k^m$
	- $\mathrm{rowspace}(T)^\perp = \mathrm{null}(T)$
	- $\abs{\mathrm{rowspace}(T)} = \mathrm{Rank}(T)$

- Column Space

- Null Space
	- Defined as $\mathrm{null}(T) = \theset{\vec{x} \in k^n \mid T(\vec{x}) = 0 \in k^m}$
	- $\mathrm{null}(T)^\perp = \mathrm{rowspace}(T)$

- Eigenvalue
	- A value $\lambda$ such that $Ax = \lambda x$
	- Invariant under similarity.

- Eigenspace
	- For a linear map $T$ with eigenvalue $\lambda$, defined as $E_\lambda = \theset{\vec x \in k^n \mid T(\vec x) = \lambda \vec x}$

- Dimension
	- The cardinality of a basis of $V$

- Basis
	- A linearly independent set of vectors $S = \theset{\vec x_i} \subset V$ such that $\mathrm{Span}(S) = V$

- Linear independence
	- A set of vectors $\theset{\vec x_i}_{i=1}^n$ is linearly independent $\iff \sum_{i=1}^n c_i \vec x_i = 0 \implies c_i = 0$ for all $i$.
	- Can be detected by considering the matrix
	$$
	T = \begin{bmatrix} \vec x_1 \rightarrow \\ \vec x_2 \rightarrow \\ \vdots \\ \vec x_m \rightarrow \end{bmatrix}
	$$
	(linearly independent iff $T$ is singular)

- Rank
	- Dimension of rowspace

- Rank-Nullity Theorem
	- $\abs{\mathrm{Nullspace}(A)} + \abs{\mathrm{Rank}(A)} = \abs{\mathrm{Codomain}(A)}$

- Nullspace
	- $\mathrm{nullspace}(A) = \theset{\vec{x}\in \RR^n : A \vec{x} = \vec 0}$

- Singular
	- A square $n\times n$ matrix $T$ is singular iff $\mathrm{Rank}(T) < n$

- Similarity
	- Two matrices $A, B$ are similar iff there exists an invertible matrix $S$ such that $B = SAS^{-1}$

- Diagonalizable
	- A matrix $X$ is diagonalizable if it can be written $X = EDE^{-1}$ where $D$ is diagonal.
	- If $X$ is $n\times n$ and has $n$ linearly independent eigenvectors $\vec\lambda_i$, then $D_{ii} = \vec\lambda_i$, and $E  =
\begin{bmatrix} \vec\lambda_1 & \vec\lambda_2 & \cdots  & \vec \lambda_n \\ \downarrow & \downarrow &\cdots & \downarrow \end{bmatrix}$

- Positive Definite
	- A matrix $A$ is positive definite iff $\forall \vec x \in k^n,$ we have the scalar inequality $\vec x^T A \vec x > 0$

- Projection
	- The projection of a vector $\vec v $ onto $\vec u$ is given by $P_{\vec u}(\vec v) = \left< \vec u, \vec v \right> \hat u$
	- The projection of a vector $\vec v$ onto a space $U = \mathrm{Span}(\theset{\vec u_i})$ is given by
	$$
	P_U(\vec v) = \sum_i P_{\vec u_i}(\vec v) = \sum_i \left< \vec u_i, \vec v\right> \hat u_i
	$$

- Orthogonal Complement
	- Given a subspace $U \subseteq V$, defined as $U^\perp = \theset{\vec v \in V \mid \forall \vec u \in U, \left<\vec u, \vec v\right> = 0}$

- Determinant
	$$
	\det(A) = \sum_{\tau \in S^n}\prod_{i=1}^n \sigma(\tau) a_{i, \tau(i)}
	$$

- Trace
	$$\mathrm{Tr}(A) = \sum_{i=1}^n A_{ii}$$

- Characteristic Polynomial
	- $p_A(x) = \det(xI - A)$
	- Roots of $p_A$ are eigenvalues of $A$

- Symmetric: $A = A^T$

- Skew-Symmetric: $A = -A^T$

- Inner Product
	- $\inner[\vec x]{\vec x} \geq 0$
	- $\inner[\vec x]{\vec x} = 0 \iff \vec x = \vec 0$
	- $\inner[\vec x]{\vec y} = \conjugate{\inner[\vec y]{\vec x}}$
	- $\inner[k\vec x]{\vec y} = k\inner[\vec x]{\vec y} = \inner[\vec x]{k\vec y}$
	- $\inner[\vec x + \vec y]{\vec z} = \inner[\vec x]{\vec z} + \inner[y]{\vec z}$
	- $\inner[a\vec x]{b\vec y} = \inner[\vec x]{\vec x} + \inner[a\vec x]{y} + \inner[\vec x]{b\vec y} + \inner[\vec y]{\vec y}$
	- Defines a norm: $\norm{\vec x} = \sqrt{\inner[\vec x]{\vec x}} \implies \norm{\vec x}^2 = \inner[\vec x]{\vec x}$

- Cauchy-Schwarz Inequality: $\abs{\inner[\vec x]{\vec y}} \leq \norm{\vec x}\norm{\vec y}$

- Orthogonality:
	- For vectors: $\vec x \perp \vec y \iff \inner[\vec x]{\vec y} = 0$
	- For matrices: $A$ is orthogonal $\iff A^{-1} = A^T$

- Orthogonal Projection of $\vec x$ onto $\vec y$: $$P(\vec x, \vec y) = \inner[\vec x]{\vec y} \hat y = \inner[\vec x]{\vec y} \frac{\vec y}{\norm{\vec y}^2}$$
	- Note $\norm{P(\vec x, \vec y)} = \norm{\vec x}\cos\theta_{x,y}$

- Defective: An $n\times n$ matrix $A$ is defective $\iff$ the number of linearly independent eigenvectors of $A$ is less than $n$.

## Differential Equations
- Homogeneous
	$$
	f(x, y) \text{ homogeneous of degree } n \iff \exists n\in\NN : f(tx, ty) = t^nf(x, y).
	$$

- Separable
	$$
	p(y)\frac{dy}{dx} - q(x) = 0
	$$

- Wronskian:
$$
W \left[ f _ { 1 } , f _ { 2 } , \ldots , f _ { k } \right] ( x ) = \left| \begin{array} { c c c c } { f _ { 1 } ( x ) } & { f _ { 2 } ( x ) } & { \dots } & { f _ { k } ( x ) } \\ { f _ { 1 } ^ { \prime } ( x ) } & { f _ { 2 } ^ { \prime } ( x ) } & { \dots } & { f _ { k } ^ { \prime } ( x ) } \\ { \vdots } & { \vdots } & { } & { \vdots } \\ { f _ { 1 } ^ { ( k - 1 ) } ( x ) } & { f _ { 2 } ^ { ( k - 1 ) } ( x ) } & { \dots } & { f _ { k } ^ { ( k - 1 ) } ( x ) } \end{array} \right|
$$

- Laplace Transform: 
$$
L_f(s) = \int_0^\infty e^{-st} f(t) ~dt
$$

## Algebra
- Ring
- Group
- Subgroup
	- Two step subgroups test:
- Integral Domain
- Division Ring
- Principal Ideal Domain
- Tensor Product: #todo insert construction

## Complex Analysis
- Analytic
- Harmonic
- Cauchy-Euler Equations
- Holomorphic
- The Complex Derivative
- Meromorphic
- The Gamma Function: Satisfies $\Gamma(p+1) + p\Gamma(p)$ and $\Gamma(1) = 1$, defined as
	$$\Gamma ( p ) = \int _ { 0 } ^ { \infty } t ^ { p - 1 } e ^ { - t } d t , \quad p > 0$$
