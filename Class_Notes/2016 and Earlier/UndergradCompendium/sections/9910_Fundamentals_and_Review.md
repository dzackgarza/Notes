## Algebra

- Looking at real roots:

  - Let $p$ be number of sign changes in $f(x)$;
  - Let $q$ be number of sign changes in $f(-x)$;
  - Let $n$ be the degree of $f$.
  - Then $p$ gives the maximum number of positive real roots, $q$ gives the maximum number of negative real roots, and $n-p-q$ gives the _minimum_ number of complex roots.
  - Rational Roots Theorem: If $p(x) = ax^n +\cdots + c$ and $r = \frac{p}{q}$ where $p(r) = 0$, then $p \mid c$ and $q \mid a$.



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
