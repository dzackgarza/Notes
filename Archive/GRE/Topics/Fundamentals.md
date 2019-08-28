## Algebra

- Properties of logs:
	- $\ln(\prod) = \sum \ln$ but $\prod \ln \neq \ln \sum$
	- $\log_b x = \frac{\ln x}{\ln b}$

Be careful! $\frac{\ln x}{\ln y} \neq \ln\frac{x}{y} = \ln x - \ln y$

- Completing the square:
	- $p(x) = ax^2 + bx + c \implies p(x) =  a(x+\frac{b}{2a})^2 + -\frac{1}{2}\left(\frac{b^2-4ac}{2a}\right)$

## Geometry

- Generic Conic Sections

	$$A x ^ { 2 } + B x y + C y ^ { 2 } + D x + E y + F = 0$$

	$$\frac{(x-x_0)^2}{w_0} \pm \frac{(y-y_0)^2}{h_0} = c$$

- Circles: $$ Ax^2 + By^2 + C = 0 \hspace{5em} (x-x_0)^2 + (y-y_0)^2 = r^2$$
	- Defining trait: locus of points at a constant distance from the **center**
	- **Center** at $(x_0, y_0)$

- Parabolas: $$Ax^2 + Bx + Cy + D = 0 \hspace{5em} y = ax^2$$
	- Defining Trait:
		- Locus of points equidistant from the **focus** (a point) and the **directrix** (a line)
		- #todo add image
	- **Focus** at $(0, \frac{1}{4a})$
	- **Directrix** at the line $y = -\frac{1}{4a}$
		- For an arbitrary quadratic: complete the square to write in the form $y = a(x - w_0)^2 + h_0$, and translate points of interest by by $(x+w_0, y+h_0)$

- Ellipses: $$\frac{x^2}{w^2} + \frac{y^2}{h^2} = 1$$
	- Defining trait:
		- The locus of points where the *sum* of distances to two **focii** are constant.
	- **Center** at $(0,0)$ (can translate easily)
	- **Vertices** at $(\pm w, 0)$ and $(0, \pm h)$
	- **Focii** at $F_1 = (\sqrt{w^2-h^2}, 0), F_2 = (-\sqrt{w^2-h^2}, 0)$
	- Another useful shortcut form:

- Hyperbolas: $$\frac{x^2}{w^2}-\frac{y^2}{h^2} = 1$$
	- Defining trait:
		- Locus of points where the *difference* between the distances to two **focii** are constant.
	- **Vertices** at $(0, \pm h)$ and $(\pm w, 0)$
	- **Focii** at $F_1 = (\sqrt{w^2+h^2}, 0), F_2 = (-\sqrt{w^2+h^2}, 0)$

- Summary of Traits:
	- One point $p$:
		- Distance to $p$ is constant: circle
	- Two points $a,b$:
		- Distance to $a$ equal to distance to $b$ equals a constant: a line bisecting the midpoint of the line connecting them
		- Difference of distances constant: ellipse
		- Sum of differences constant: hyperbola
	- Point $p$ and a line $l$:
		- Distance to $p$ equals distance to $l$ equals a constant: parabola

- Areas of certain figures:

Shape  | Area / Volume
--|--
Circle |  $\pi r^2$
Annulus  | $\pi(r_0 - r_1)^2$  
Cylinder  | $2\pi r h$  
Ellipse  | $\frac 1 2 wh$  
Trapezoid:  | $\frac{a+b} 2 h$
Any Triangle: | $\frac 1 2 bh$
Parallelograms: | $bh$
Cones: | $\frac {\pi r^2} h$

- Polar coordinates: $(x,y) \mapsto (\sqrt{x^2 + y^2}, \tan^{-1}(\frac{y}{x}))$
- Spherical Coordinates: $[\rho, \phi, \theta]$ where
	$$
	x^2+y^2+z^1 = \rho^2 \\
	x = \rho \sin\phi\cos\theta \\
	y = \rho \sin\phi\sin\theta
	$$


## Trigonometry

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

- Identities
	- $\sin^2 x + \cos^2 x = 1$ (from Pythagorean theorem)
		- Divide through by $\cos^2 x$ or $\sin^2 x$ to obtain:
			- $\tan^2 + 1 = \sec^2$
			- $1 + \cot^2 x = \csc^2 x$
		- Just listing what conclusions you can pull out of these permutations:
		$$\begin{align*}
		\sin^2 x &= 1-\cos^2 x \\
		\cos^2 x &= 1-\sin^2 x \\
		\tan^2 x &= \sec^2 - 1 \\
		\csc^2 x &= 1 + \cot^2 x \\
		\sec^2 x &= 1 + \tan^2 x \\
		\cot^2 x &= \csc^2 - 1 \\ \\ \hline \\
		1 + \cos^2 x &= \text{nothing!} \\
		1 + \sin^2 x &= \text{nothing!} \\
 		1 - \tan^2 x &= \text{nothing!} \\
		1 - \cot^2 x &= \text{nothing!} \\
		\tan^2x - 1 &= \text{nothing!} \\
		\cot^2x - 1 &= \text{nothing!}
		\end{align*}$$

	- A derivation with multiple payoffs:
		$$\begin{align*}
		\cos(a+b) + i\sin(a+b) &= e^{i(a-b)} \\
		&=(\cos a + i\sin a)(\cos b - i\sin b) \\
		&= (\cos a\cos b + \sin a \sin b) + i(\sin a \cos b + \cos a \sin b)
		\end{align*}$$
		- $\sin(a+b) = \sin a \cos b + \cos a \sin b$
		- $\cos(a+b) = \cos a \cos b - \sin a \sin b$
		- $a=b \implies \sin(2a) = 2\sin a \cos a$
		- $a=b \implies \cos(2a) = \cos^2 a - \sin^2 a$
	- $\sin^2 x = \frac{1}{2}(1 - \cos 2x)$
	- $\cos^2 x = \frac{1}{2}(1+ \cos 2x)$
	- $\sin 2x = 2\sin x \cos x$
	- Less useful: $\tan(a+b) = \frac{\tan a + \tan b}{1-\tan a\tan b}$
		- $\tan 2x = \frac{2\tan x}{1-\tan^2 x}$
	- Half-Angle identities
		- $\sin (x/2) = \pm \sqrt{(1/2)(1-\cos x)}$
		- $\cos (x/2) = \pm \sqrt{(1/2)(1+\cos x)}$
		- $\tan (x/2) = \sin x / (1 + \cos x)$

- Law of Cosines $$ a^2 = b^2 + c^2 - 2bc\cos\theta_A$$
	- Totally symmetric under any swap of two symbols
	- Derivation: pick the vertex corresponding to $A$, label the vectors to the other two vertices $\mathbf x, \mathbf y$, then
		$$\begin{align*}
		\abs{\mathbf x - \mathbf y}^2 &= \inner[\mathbf x - \mathbf y]{\mathbf x - \mathbf y} \\
		&= \abs{\mathbf x}^2 + \abs{\mathbf y}^2 - 2\inner[\mathbf x]{\mathbf y} \\
		&= \abs{\mathbf x}^2 + \abs{\mathbf y}^2 - 2\abs{\mathbf x}\abs{\mathbf y}\cos\theta
		\end{align*}$$


## Polynomials

- Elementary Symmetric Polynomials / Sums: #todo

- Vieta's Formulas: Write $p(x) = \sum a_k x^k = \prod(x_k - r_k)$ and expand the product to obtain $$ p(x) = a_n x^n - (\sum_k r_k)x^{n-1} + (\sum_{i<j} r_i r_j)x^{n-1} + \cdots = \sum_{k=1}^n (-1)^k \sigma_{n-k}(\theset{r_i}_{i=1}^n) x^k$$
	where $\sigma_i$ is the $i\dash$th elementary symmetric sum.

	- Example :$$p(x) = x^2 + bx + c = x^2 - (r_1 + r_2)x + (r_1r_2)$$

	- Example: $$p(x) = a_3x^3 + a_2x^2 + a_1x + a_0 \\ = a_3 x^3 -a_3(r_1+r_2+r_3)x^2 + a_3(r_1r_2 + r_1r_3 + r_2r_3)x - a_3(r_1r_2r_3) \\ \implies -\frac{a_2}{a_3} = r_1+r_2+r_3 \\ \implies \frac{a_1}{a_3} = r_1r_2 + r_1r_3 + r_2r_3 \\ \implies \frac{a_0}{a_3} = r_1r_2r_3$$

	- Quick conclusions:
		- Sum of roots of a monic polynomial is the **negative** coefficient of $x^{n-1}$
		- Product of roots of a monic polynomial is the constant coefficient.

- Common enough to memorize:
$$\begin{align*}
(a \pm b)^2 = && a^2 \pm 2ab +b^2 \\
a^2 + b^2 = && (a+b)^2 + 2ab \\
a^2 - b^2 = && (a+b) (a-b) \\
(a\pm b)^3 = &&  a^3 \pm 3a^2b + 3ab^2 \pm b^3 \\
a^3 \pm b^3 = && (a \pm b)(a^2 \mp 2ab + b^2) ~~\text{(SOAP: Same/Opposite/Always Positive)}\\
(\sqrt a \pm \sqrt b)^2 = &&  a + b \pm 2\sqrt{ab} \\
(a + \sqrt{b}) (a - \sqrt{b})   = &&  a^2 - b \\
(a + i\sqrt{b}) (a - i\sqrt{b}) = &&  a^2 + b \\
(a+b)(a-b) = && a^2 - b^2
\end{align*}$$

- Polynomial long division
- Rational roots theorem
	- Let $p(x) = \sum_{i=1}^n a_i x^i$, then if $p$ has a rational root $r$, then $r \in \theset{\frac{s}{t} : s\mid a_0,~ t \mid a_n}$
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
