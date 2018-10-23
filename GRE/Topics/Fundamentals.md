## Pre-Calculus or Proof Fundamentals
- Parabolas: $y = \frac{1}{4p}x^2 \implies $ focus at $(0, p)$ and directrix is the line given by $y = -p$. #todo add image

- Equation of circle: $x^2+y^2=r^2$

- Ellipses: defined as locus of points where the **sum** of distances to two focii are constant. Equation: $\frac{x^2}{w^2} + \frac{y^2}{h^2} = 1$, foci at $(\pm\sqrt{w^2-h^2}, 0)$

- Hyperbolas: defined as locus of points where the **difference** between the distances to two focii are constant. Equation: $\frac{x^2}{w^2}-\frac{y^2}{h^2} = 1$, focii at $(\pm\sqrt{w^2+h^2}, 0)$

- Common locii of points
	- Distance to a point is constant: circle
	- Distances between two focii are equal: a line bisecting the midpoint of the line connecting them
	- Sum of distances to two focii are constant: Ellipse
	- Differences between distances to two focii are constant: hyperbola

- Vieta's Formulas: Write $p(x) = \sum a_k x^k = \prod(x_k - r_k)$ and expand the product to obtain $$ p(x) = a_n x^n - (\sum_k r_k)x^{n-1} + (\sum_{i<j} r_i r_j)x^{n-1} + \cdots = \sum_{k=1}^n (-1)^k \sigma_{n-k}(\theset{r_i}_{i=1}^n) x^k$$
	where $\sigma_i$ is the $i\dash$th elementary symmetric sum.

	- Example :$$p(x) = x^2 + bx + c = x^2 - (r_1 + r_2)x + (r_1r_2)$$
	- Example: $$p(x) = a_3x^3 + a_2x^2 + a_1x + a_0 \\ = a_3 x^3 -a_3(r_1+r_2+r_3)x^2 + a_3(r_1r_2 + r_1r_3 + r_2r_3)x - a_3(r_1r_2r_3) \\ \implies -\frac{a_2}{a_3} = r_1+r_2+r_3 \\ \implies \frac{a_1}{a_3} = r_1r_2 + r_1r_3 + r_2r_3 \\ \implies \frac{a_0}{a_3} = r_1r_2r_3$$
	- Quick conclusions:
		- Sum of roots of a monic polynomial is the **negative** of the coefficient of $x^{n-1}$
		- Product of roots of a monic polynomial is the constant coefficient.

- Properties of logs:
	- $\ln(\prod) = \sum \ln$ but $\prod \ln \neq \ln \sum$
	- $\log_b x = \frac{\ln x}{\ln b}$
	- Stuff I always forget
		- $\frac{\ln x}{\ln y} \neq \ln\frac{x}{y} = \ln x - \ln y$


- Trig Values
	- Useful note: $\frac{1}{2} < \frac{\sqrt 2}{2} < \frac{\sqrt 3}{2}$
	$$\begin{array}{c|ccc}
	 && \sin && \cos && \tan \\ \hline \\
	0 && \frac{\sqrt 0}{2} && \frac{\sqrt 4}{2} && 0\\ \\
	\frac{\pi}{6} && \frac{\sqrt 1}{2} && \frac{\sqrt 3}{2} && \frac{1}{\sqrt 3}\\ \\
	\frac{\pi}{4} && \frac{\sqrt 2}{2} && \frac{\sqrt{2}}{2} && 1 \\ \\
	\frac{\pi}{3} && \frac{\sqrt 3}{2} && \frac{\sqrt 1}{2} && \frac{\sqrt 3}{1}\\ \\
	\frac{\pi}{2} && \frac{\sqrt 4}{2} && \frac{\sqrt 0}{2} && \infty
	\end{array}$$
- Trig Identities
	- $\tan2\theta = \frac{2\tan\theta}{1-\tan^2\theta}$
	- $\csc^2\theta - 1 = \cot^2\theta$
	- $\tan(a+b) = \frac{\tan a + \tan b}{1-\tan a\tan b}$

- Useful shortcuts:

$$\begin{align}
(a+b)^2 = && \hspace{20em} a^2 + b^2 + 2ab \\
(a-b)^2 = && a^2 + b^2 - 2ab \\
a^2+b^2 = && (a+b)^2 + 2ab \\
a^2- b^2 = && (a+b)(a-b) \\
(a+b)^3 = &&  a^3 + b^3 + 3(a^2b + ab^2) \\
(a-b)^3 = &&  a^3 -b^3 + 3(-a^2b +ab^2) \\
a^3 + b^3 = &&  (a+b)(a^2+b^2-ab) \\
a^3 - b^3 = &&  (a-b)(a^2+ b^2 + ab) \\
(\sqrt a + \sqrt b)^2 = &&  a + b + 2\sqrt{ab} \\
(\sqrt a - \sqrt b)^2 = &&  a + b - 2\sqrt{ab} \\
(a+\sqrt{b})(a-\sqrt{b}) = &&  a^2 - b \\
(a+i\sqrt{b})(a-i\sqrt{b}) = &&  a^2 + b \\
(a+b)(a-b) = && a^2 + b^2
\end{align}$$

- Completing the square
- Polynomial long division
- Rational roots theorem
- Areas of certain figures:
	- Circle:
	- Cylinder:
	- Trapezoid:
	- Right triangle:
	- Isosceles triangle:
	- Generic triangle:
	- Ellipse:
	- Parallelograms:
	- Cones:

- Polar coordinates: $(x,y) \mapsto (\sqrt{x^2 + y^2}, \tan^{-1}(\frac{y}{x}))$
- Synthetic Division: #todo

## General Techniques:
- Gather everything and interpret as a polynomial in some variable
	- Example: given $\sinh(x) = \frac{1}{2}e^x - e^{-x}$, find $\sinh^{-1} x$
		- Let $u=e^x$, and note that $u > 0$ and $x = \ln u$.
		$$
		x = \frac{1}{2}u+u^{-1} \implies \\
		u-u^{-1} = 2x \implies \\
		u - u^{-1} - 2x = 0 \implies \\
		\mathbf{u}^2 -2x\mathbf{u} -1 = 0 \implies \\
		u  = \frac{1}{2}(2x \pm \sqrt{4x^2 +4})
		$$
		so $\sinh^{-1} x = \ln(x+\sqrt{x^2+1})$
	- Example: you don't always need the quadratic formula. Given $\cosh x = e^x+e^{-x}$, find $\tanh^{-1}(x)$.
	$$
	x = \frac{u-u^{-1}}{u+u^{-1}} \implies  \\
	x(u+u^{-1})- (u-u^{-1}) = 0 \implies \\
	x(u^2+1) - (u^2 - 1) = 0 \implies \\
	\mathbf{u}^2(x-1) + (x+1) = 0 \implies \\
	u^2 = \frac{1+x}{1-x}
	$$
- If you see $x^2+y^2$, try adding $2xy$ to reduce to $(x+y)^2$
- Finding the minimal polynomial of a number $a+b$: #todo
