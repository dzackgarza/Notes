## Techniques Overview
$$\begin{align*}
p(y)y' = q(x) && \hspace{10em} \text{separable} \\ \\
y'+p(x)y = q(x) && \text{integrating factor} \\ \\
y' = f(x,y), f(tx,ty) = f(x,y) && y = xV(x)\text{ COV reduces to separable} \\ \\
y' +p(x)y = q(x)y^n && \text{Bernoulli, divide by $y^n$ and COV $u = y^{1-n}$} \\ \\
M(x,y)dx + N(x,y)dy = 0 && M_y = N_x: \phi(x,y) = c (\phi_x =M, \phi_y = N) \\ \\
P(D)y = f(x,y) && x^ke^{rx} \text{ for each root }
\end{align*}$$

*Where $e^{zx}$ yields $e^{ax}\cos bx, e^{ax}\sin bx$*

## Ordinary Differential Equations
- Separable equations:
$$p(y)\frac{dy}{dx} - q(x) = 0 \implies \int p(y) dy = \int q(x) dx + C$$
$$
\frac{dy}{dx} = f(x)g(y) \implies \int \frac{1}{g(y)}dy = \int f(x) dx + C
$$
	- Population growth: $$\frac{dP}{dt} = kP \implies \qquad P = P_0 e^{kt}$$
	- Logistic growth:
		- General form: $\frac{dP}{dt} =(B(t) - D(t))P(t)$
		- Assume birth rate is constant $B(t) = B_0$ and death rate is proportional to instantaneous population $D(t) = D_0 P(t)$. Then let $r = B_0, C = B_0/D_0$ be the *carrying capacity*:
		$$\frac{dP}{dt} = r\left( 1 - \frac{P}{C} \right)P \implies \qquad P(t) = \frac{P_0}{\frac{P_0}{C} + e^{-rt}(1 - \frac{P_0}{C})}$$
- First order linear: $$\frac{dy}{dx} + p(x)y = q(x) \implies I(x) = e^{\int p(x) dx},\qquad y(x) = \frac{1}{I(x)}\left(\int q(x)I(x) dx + C\right)$$
- Exact:
	- $M(x,y)dx + N(x,y)dy = 0 \text{ is exact } \iff \exists \phi: \frac{\partial\phi}{\partial x} = M(x, y),~\frac{\partial\phi}{\partial y} = N(x, y) \\ \iff \frac{\partial M}{\partial y} = \frac{\partial N}{x}$
	- General solution: $$\phi(x, y) = \int^x M(s, y) ds + \int^y N(x, t) dt - \int^y \frac{\partial}{\partial t} \left(\int^x M(s, t) ds\right)dt$$
	(where $\int^x f(t) dt$ means take the antiderivative of $f$ and consider it a function of $x$)
- Cauchy Euler: #todo
- Bernoulli: $todo

## Linear Homogeneous
General form:
$$
y^{(n)} + c_{n-1} y^{(n-1)} + \cdots + c_2y'' + cy' + cy = 0 \\
p(D)y = \prod (D-r_i)^{m_i} y= 0
$$
where $p$ is a polynomial in the differential operator $D$ with roots $r_i$:

- Real roots: contribute $m_i$ solutions of the form
	$$e^{rx}, xe^{rx}, \cdots, x^{m_i-1}e^{rx}$$

- Complex conjugate roots: for $r=a+bi$, contribute $2m_i$ solutions of the form
	$$e^{(a\pm bi)x}, xe^{(a\pm bi)x}, ~\cdots,~ x^{m_i-1}e^{(a\pm bi)x} \\
	= e^{ax}\cos(bx), e^{ax}\sin(bx),~ xe^{ax}\cos(bx), xe^{ax}\sin(bx),~ \cdots,~
	$$


Example: by cases, second order equation of the form $$ay'' + by' + cy = 0$$
- Two distinct roots: $c_1 e^{r_1 x} + c_2 e^{r_2 x}$
- One real root: $c_1 e^{rx} + c_2 x e^{rx}$
- Complex conjugates $\alpha \pm i \beta$: $e^{\alpha x}(c_1 \cos \beta x + c_2 \sin \beta x)$

## Linear Inhomogeneous
General form:
$$
y^{(n)} + c_{n-1} y^{(n-1)} + \cdots + c_2y'' + cy' + cy = F(x) \\
p(D)y = \prod (D-r_i)^{m_i} y= 0
$$

Then solutions are of the form $y_c + y_p$, where $y_c$ is the solution to the associated homogeneous system and $y_p$ is a particular solution.

Methods of obtaining particular solutions

### Undetermined Coefficients
- Find an operator $p(D)$ the annihilates $F(x)$ (so $q(D)F = 0$)
- Find solution of $q(D)p(D) = 0$, subtract of known solutions from homogeneous part to obtain the form of the trial solution $A_0f(x)$, where $A_0$ is the undetermined coefficient
- Substitute trial solution into original equation to determine $A_0$

Useful Annihilators:
$$\begin{align*}
&F(x) = p(x): & D^{\deg(p)+1} \\
&F(x) = p(x)e^{ax}: & (D-a)^{\deg(p)+1}\\
&F(x) = \cos(ax) + \sin(ax): & D^2 + a^2\\
&F(x) = e^{ax}(a_0\cos(bx) + b_0\sin(bx)): & (D-z)(D-\conjugate{z}) = D^2 -2aD + a^2 + b^2 \\
&F(x) = p(x)e^{ax}\cos(bx) + p(x)e^{ax}\cos(bx): & \left( (D-z)(D-\conjugate{z})\right)^{\max(\deg(p), \deg(q))+ 1}
\end{align*}$$


### Variation of Parameters
	#todo

### Reduction of Order
	#todo

## Systems of Differential Equations
General form: 
$$
\frac{\partial \vector{x}(t) }{\partial t} = A\vector {x}(t) + \vector {b}(t) \iff \vector{x}'(t) = A\vector{x}(t) + \vector{b}(t)
$$

General solution to homogeneous equation:
$$
c_1\vector{x_1}(t) + c_2\vector{x_2}(t)+ \cdots +c_n\vector{x_n}(t) = \vector X(t)\vector{c}
$$


If $A$ is a matrix of constants: $\vector{x}(t) = e^{\lambda_i t}~\vector{v}_i$ is a solution for each eigenvalue/eigenvector pair $(\lambda_i, \vector v_i)$
- If $A$ is defective, you'll need generalized eigenvectors.

Inhomogeneous Equation: particular solutions given by 
$$
\vector{x}_p(t) = \vector X(t) \int^t \vector X^{-1}(s)\vector{b}(s) ~ds
$$

## Laplace Transforms
Definitions:
$$ H_ { a } ( t ) = \left\{ \begin{array} { l l } { 0 , } & { 0 \leq t < a } \\ { 1 , } & { t \geq a } \end{array} \right.\\
\delta(t): \int_\RR \delta(t-a)f(t)~dt = f(a),\quad \int_\RR \delta(t-a)~dt = 1\\
(f \ast g )(t) = \int_0^t f(t-s)g(s)~ds
$$
Useful property: for $a\leq b$, $H_a(t) - H_b(t) = \indicator[a,b]$.
$$\begin{align*}
t^n, n\in\NN \quad&\iff  &n!\frac{1}{s^{n+1}},\quad &s > 0 \\
t^{-\frac{1}{2}} \quad&\iff &\sqrt{\pi} s^{-\frac{1}{2}}\quad & s>0\\
e^{at} \quad&\iff &\frac{1}{s-a},\quad &s > a \\
\cos(bt) \quad&\iff &\frac{s}{s^2+b^2},\quad &s>0 \\
\sin(bt) \quad&\iff &\frac{b}{s^2+b^2},\quad &s>0 \\
\delta(t-a) \quad&\iff &e^{-as} \quad& \\
H_a(t) \quad&\iff &s^{-1}e^{-as}\quad& \\
e^{at}f(t) \quad&\iff &F(s-a)\quad & \\
H_a(t)f(t-a) \quad&\iff &e^{-as}F(s)& \\
f'(t) \quad&\iff & sL(f) - f(0) & \\
f''(t) \quad&\iff &s^2L(f) -sf(0) - f'(0) &\\
f^{(n)}(t) \quad&\iff & s^nL(f) - \sum_{i=0}^{n-1} s^{n-1-i}f^{(i)}(0) & \\
f(t)g(t) \quad&\iff &F(s) \ast G(s)\quad &
\end{align*}$$

- For $f$ periodic with period $T$, $L(f) = \frac{1}{1+e^{-sT}}\int_0^T e^{-st}f(t)~dt$
