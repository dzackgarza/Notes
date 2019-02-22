# Elementary Algebra

- Looking at real roots:

  - Let $p$ be number of sign changes in $f(x)$;
  - Let $q$ be number of sign changes in $f(-x)$;
  - Let $n$ be the degree of $f$.
  - Then $p$ gives the maximum number of positive real roots, $q$ gives the maximum number of negative real roots, and $n-p-q$ gives the _minimum_ number of complex roots.
  - Rational Roots Theorem: If $p(x) = ax^n +\cdots + c$ and $r = \frac{p}{q}$ where $p(r) = 0$, then $p \mid c$ and $q \mid a$.

# Abstract Algebra

- Order $p$: One, $Z_p$
- Order $p^2$: Two abelian groups, $Z_{p^2}, Z_p^2$
- Order $p^3$:

  - 3 abelian $Z_{p^3}, Z_p \times Z_{p^2}. Z_p^3$,
  - 2 others $Z_p \rtimes Z_{p^2}$.

    - The other is the quaternion group for p = 2 and a group of exponent p for p > 2.

- Order $pq$:

  - $p \mid q-1$: Two groups, $Z_{pq}$ and $Z_q \rtimes Z_p$
  - Else cyclic, $Z_{pq}$

- Every element in a permutation group is a product of disjoint cycles, and the order is the lcm of the order of the cycles.

- The product ideal $IJ$ is _not_ just elements of the form $ij$, it is all sums of elements of this form! The product alone isn't enough.

- The intersection of any number of ideals is also an ideal

# Complex Numbers

- $\lim_{z\rightarrow z_0} f(z) = x_0 + iy_0$ iff the component functions limit to $x_0$ and $y_0$ respectively. Moreover, both ways are equal!

# Analysis

- $f$ injective implies $f$ has a nonzero derivative (in neighborhoods)
- In $\mathbb{R}$, singletons are closed. This means any finite subset is closed, as a finite union of singleton sets! Good for counterexamples to continuity.
- Definition of topology: arbitrary unions and finite intersections of open sets are open. Equivalently, arbitrary intersections and finite unions of closed sets are closed.
- The best source of examples and counterexamples is the open/closed unit interval in $\mathbb{R}$. Always test against these first!
- Every Cauchy sequence converges in a complete metric space

# Combinatorics and Probability

- Counting non-isomorphic things: Pick a systematic way. Can descend my maximum vertex degree, or ascend by adding nodes/leaves.

# Linear Algebra

- An $m\times n$ matrix is a map from $n$-dimensional space to $m$-dimensional space. Number of _rows_ tell you the dimension of the codomain, the number of _columns_ tell you the dimension of the _domain_.
- The column space of $A$ (i.e. linear combinations of the columns) are a basis for the _image_ of $A$.
- The row space is a basis for the _coimage_, which is nullspace perp.
- Not enough pivots implies columns don't span the entire target domain
- The determinant of an RREF matrix is the product of the diagonals
- An $n\times n$ matrix $P$ is diagonalizable iff its eigenspace is all of $\mathbb{R}^n$ (i.e. there are $n$ linearly independent eigenvectors, so they span the space.) Equivalently, if there is a basis of eigenvectors for the range of $P$
- Projections decompose the range into the into the direct sum of its nullspace and nullspace perp.
- The space of matrices is not an integral domain!
- The transition matrix from a given basis $\mathcal{B} = {b_i}$ to the standard basis is given by just creating a matrix with each $b_i$ being a column.

  - The transition matrix from the standard basis to $\mathcal{B}$ is just the inverse of the above!

- Inverting matrices quickly:

$$
\left(\begin{array}{cc} a& b \\ c& d \end{array}\right)^{-1} = {1 \over a d - b c} \left(\begin{array}{rr} d&-b \\ -c&a \end{array}\right)~,~~\text{ where } ad-bc \ne 0
$$

The pattern?

1. Always divide by determinant
2. Swap the diagonals
3. Hadamard product with checkerboard $\left(\begin{array}{rr} +&-\ -&+ \end{array}\right)$

$\left(\begin{array}{ccc} a&b&c\\ d&e&f\\ g&h&i \end{array}\right)^{-1} = {1 \over {\rm{det}}} \left(\begin{array}{rrr} e i - f h& -(b i - c h)& b f - c e\\ -(d i - f g)&a i - c g&-(a f -c d)\\ d h - e g & -(a h - b g)& a e - b d \end{array}\right).$

The pattern:

1. Divide by determinant
2. Each entry is determinant of submatrix of $A$ with corresponding col/row deleted
3. Hadamard product with checkerboard
$$
\left(\begin{array}{rrr} +&- & +\\ -&+ & -\\ +& -&+ \end{array}\right)
$$
4. Transpose at the end!!

# Calculus

- Inflection points of $h$ occur where the _tangent_ of $h'$ changes sign. (Note that this is where $h'$ itself changes sign.)
- Inverse function theorem: The slope of the inverse is reciprocal of the original slope
- If two equations are equal at exactly one real point, they are tangent to each other there - therefore their derivatives are equal. Find the $x$ that satisfies this; it can be used in the original equation.
- Fundamental theorem of Calculus: If $\int f(x) dx = F(b) - F(a)$, then $F'(x) = f(x)$.
- Min/maxing - either derivatives of Lagranage multipliers!
- Distance from origin to plane: equation of a plane $P$ is given by $ax+by+cz=d$, and you can always just read off the normal vector $\mathbf{n} = (a,b,c)$. So we have $\mathbf{n}\mathbf{x} = d$. Since $t\mathbf{n}$ is normal to $P$ for all $t$, solve $\mathbf{n}t\mathbf{n} = d$, which is $t = \frac{d}{\mid n \mid^2}$
- A plane can be constructed from a point $p$ and a normal $n$ by the equation $np = 0$.
- In a sine wave $f(x) = \sin(\omega x)$, the period is given by $2\pi/\omega$. If $\omega > 1$, then the wave makes exactly $\omega$ full oscillations in the interval $[0, 2\pi]$.
- The directional derivative is the gradient dotted against a _unit vector_ in the direction of interest
- Related rates problems can often be solved via implicit differentiation of some constraint function
- The second derivative of a parametric equation is not exactly what you'd intuitively think!
- For the love of god, remember the FTC! $\frac{\partial}{\partial x} \int_0^x f(y) dy = f(x)$.
- Technique for asymptotic inequalities: WTS $f < g$, so show $f(x_0) < g(x_0)$ at a point and then show $\forall x > x_0, f'(x) < g'(x)$. Good for big-O style problems too.
