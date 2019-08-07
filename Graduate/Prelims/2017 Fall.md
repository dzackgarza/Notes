# Fall 2017 

1. 
   1. Negate $\forall x\in \RR,~\exists y\in \RR \suchthat \abs{x-y} \geq 2017$
   $$\exists x\in \RR \suchthat \forall y\in \RR,~ \abs{x-y} < 2017$$

   1. Note that $p\implies q \iff q \vee \neg p$, so we have $\neg(p \implies q) \iff \neg(q \vee \neg p) \iff p ~\&~ \neg q$.
$$
f: \RR \to \RR \text{ is continuous } \iff \\ 
\forall (x, y) \in \RR^2, ~\forall \varepsilon,~\exists \delta \suchthat \quad d(x,y) < \delta \implies d(f(x), f(y)) < \varepsilon \iff \\ 
\forall (x, y) \in \RR^2, ~\forall \varepsilon,~\exists \delta \suchthat \quad  d(x,y) \geq \delta ~~\vee~~   d(f(x), f(y)) < \varepsilon  ,
$$
so
$$
f: \RR \to \RR \text{ is not continuous } \iff \\ \exists (x,y) \in \RR^2, \exists \varepsilon \suchthat \forall \delta, \quad d(x,y) < \delta ~\&~ d(f(x), f(y)) \geq \varepsilon. \qed
$$

1. $V = \theset{\vector v \in \RR^3 \suchthat \inner{\vector v}{\thevector{3,4,5}} = \vector 0}$
   1. Subspace test: $V \subset X$ is a linear subspace iff $\theset{t\vector v_1 + \vector v_2 \suchthat t\in \RR, \vector v_i \in V} \subseteq V$.
   $$
   \inner{t\vector v_1 + \vector v_2}{\thevector{3,4,5}} = t\inner{\vector v_1}{\thevector{3,4,5}} + \inner{\vector v_2}{\thevector{3,4,5}} = t\vector 0 + \vector 0 = \vector 0.\qed
   $$
      1. Alternatively, just note that it is the kernel of the linear map $\inner{\wait}{\thevector{3,4,5}}: \RR^3 \to \RR^1$, and kernels are always sub-things.
   1. Yes, note $V$ defines a plane $P \cong \RR^2 \subset \RR^3$, so a projection onto $P^\perp = \thevector{3,4,5}$ will work:
   $$
   A = \left[ \begin{array}{ccc} 3 & 4 & 5 \\ 0 & 0 & 0 \\ 0 & 0 & 0\end{array}\right]
   $$
   Then $A\vector x = \thevector{3x + 4y + 5z, 0, 0}$ and if $\vector x \in V$ then $3x+4y+5z = 0$ by definition and thus $A\vector x = \vector 0$.
   1. Yes, first we look for a matrix that annihilates $\thevector{3,4,5}$ and has rank 2, since its rows will span the 2-dimensional subspace $V$. One that works is
   $$
    A = \left[ \begin{array}{ccc} 2 & 1 & -2 \\ 0 & -5 & 4 \\ 0 & 0 & 0\end{array}\right]
   $$
   So now we know that $\thevector{2,1,-2}, \thevector{0,-5,4} \in V$, and since $A$ is rank 2, they in fact span $V$. Thus we can take $A^T$, whose columns are these vectors. Then the columnspace of $A^T$ is $V$, and thus the linear map corresponding to $A^T$ has image $V$. $\qed$
   1. No, by rank nullity: $\abs{\im A} + \abs{\ker A} = \abs{\mathrm{domain} A}$, but $\abs{V} = 2$, so this would force the contradiction $2+2 = 3$.
   
2. Induct on $n$, integrate by parts and use L'Hopital:
   Base case: 
   $$n=1 \implies \int_0^\infty xe^{-x} = -xe^{-x}\bigg\rvert_0^\infty - \int_0^\infty -e^{-x} = \lim_{x\to\infty} \frac x {e^x}  + \lim_{x\to\infty} \frac 1 {e^x} + 1 \\ \equalsbecause{L.H.} \lim_{x\to\infty} \frac 1 {e^x}  + 0 + 1 = 1$$

   Inductive step:
   $$
   \int_0^\infty x^ne^{-x} = -x^ne^{-x}\bigg\rvert_0^\infty - \int_0^\infty -nx^{n-1}e^{-x} = -x^ne^{-x}\bigg\rvert_0^\infty + n \int_0^\infty x^{n-1}e^{-x} \\
   \equalsbecause{I.H.} -x^ne^{-x}\bigg\rvert_0^\infty + n (n-1)! \\
   \equalsbecause{L.H.$\times n$}0 + n(n-1)! = n!. \qed
   $$

3. 
   1. Since $A$ is $2\times 2$ and has 2 eigenvalues, noting that $\deg \chi_A(x) = 2$, we have $\chi_A(x) = (x-1)(x+1) = x^2 -1$. The minimal polynomial of $A$ divides $\chi_A(x)$, so we have $\chi_A(A) = 0$ and thus $A^2 - I_2 = 0 \implies A^2 = I_2$.

   2. This will happen when $x^2-1 = (x+1)(x-1)$ is not the minimal polynomial, and we can force the minimal polynomial to be degree 3 by inserting a nontrivial Jordan block to a diagonal matrix containing just the eigenvalues $\pm 1$. An example that works:
   $$
   \left(\begin{array}{rr|r}
      1 & 1 & 0 \\
      0 & 1 & 0 \\
      \hline
      0 & 0 & -1
      \end{array}\right),~ A^2 = \left(\begin{array}{rrr}
        1 & 2 & 0 \\
        0 & 1 & 0 \\
        0 & 0 & 1
        \end{array}\right), \quad
      \spec(A) = [-1, 1, 1]
   $$
   1. Every symmetric matrix with $A$ real spectrum admits a real eigendecomposition $\Lambda D \Lambda^T$, where $D$ is diagonal with entries the eigenvalues of $A$ and $\Lambda$ are orthogonal (which are also invertible). Here, we only need the fact that $A$ is diagonalizable by invertible matrices. In our case we have $[D^2]_{ii} = (\pm 1)^2 = 1$ so $D^2 = I_n$. Thus we have 
   $$A^2 = (\Lambda D \Lambda\inv)^2 = \Lambda D^2 \Lambda\inv = \Lambda I_n \Lambda\inv = I_n. \qed$$ 

4. 
   - Definition of uniform convergence:
  $$
  \theset{f_n}_{i=1}^\infty\rightrightarrows f \text{ on } X  \iff \forall \varepsilon > 0,~ \exists N(\varepsilon) \suchthat n\geq N(\varepsilon) \implies \forall x \in X,~ \abs{f_n(x) - f(x)} < \varepsilon
  $$
    - **Theorem** (Riemann-Lebesgue): A bounded function on a compact set is integrable iff its set of discontinuities has measure zero.

    - **Theorem**: 
  $$
  f_n \rightrightarrows f \implies \lim_{n\to\infty} \int_X f_n(x) ~dx = \int_X  \lim_{n\to\infty} f_n(x) ~dx = \int_X f(x) ~dx
  $$
    - *Proof* (Pugh 218): 
    
      - We first show $f$ is integrable. Fix $f_n$; by the Riemann-Lebesgue theorem, since $f_n$ is integrable, it is bounded and discontinuous only at finitely many points $Z_n$, and thus bounded and continuous on $[a,b] - Z_n$ where $\mu(Z_n) = 0.$ 
      
        Let $Z = \union_n Z_n$, which is a countable union of countable sets and thus countable, so $\mu(Z) = 0$. A uniform limit of continuous functions is continuous, so $\lim f_n = f$ is a continuous function on $S = [a,b] - Z$. 
      
        Since $f$ is a uniform limit of bounded functions, it is bounded, and since $f$ is both bounded and continuous off of a null set, it is integrable. 
  
      - We now show $\int f_n \rightrightarrows \int f$. Let $C_b(X, \RR) = \theset{f:X \to \RR \suchthat f\text{ is bounded }}$, which is a complete normed space under the norm $\norm{f}_\infty = \displaystyle\sup_{x\in X}\theset{\abs{f(x)}}$ which induces the metric 
      $$d(f,g) = \norm{f-g}_\infty = \sup_{x\in X}\theset{\abs{f(x) - g(x)}}.$$

      - Now $f_n \rightrightarrows f \iff \norm{f-f_n}_\infty \to 0$, so we can thus compute
      $$\begin{align*}
      \abs{\int_a^b f(x)~dx - \int_a^b f_n(x)~dx} 
      &= \abs{\int_a^b f(x) - f_n(x)~dx} \\
      &\leq \int_a^b \abs{f(x) - f_n(x)}~dx \\
      &\leq \norm{f-f_n}_\infty \abs{b-a}
       \to ~0 \abs{b-a} = 0.
      \end{align*}$$

      Applying this to $f = 0$, we have $f_n \rightrightarrows 0 \implies \int f_n \rightrightarrows \int 0 = 0$. $\qed$

5. Let $\delta = \min\theset{\frac 1 2, \sqrt{\frac \varepsilon 2}}$, then 
$$\abs{x-1} < \frac 1 2 \implies \frac 1 2 < x < \frac 3 2 \implies \abs{x} > \frac 1 2 \implies \frac 1 {\abs x} < 2$$ and so
  $$\begin{align*}
  \abs{x-1} < \delta \implies \abs{\frac{x^2+1}{x} - 2} 
  &= \abs{\frac{(x-1)^2}{x}} \\
  &= \frac{\abs{x-1}^2}{\abs{x}} \\
  &< 2{\abs{x-1}^2} \\
  &< 2{\delta^2} \\
  &= 2 \left(\frac{\varepsilon} 2\right) \\ 
  &= \varepsilon. \qed
  \end{align*}$$

1. Definitions:
  - $f: \RR^2 \to \RR, \quad (x,y) \mapsto z = f(x,y)$
  - Level curves are given by $f(x, y) = c$; 
  - $\nabla f: \RR^2 \to \RR^2, \quad \nabla f(\vector p) = \thevector{f_x(\vector p), f_y(\vector p)}$
  - $\gamma(t): \RR \to \RR^2, \quad \gamma(t) = \thevector{x(t), y(t)}, \quad \gamma_t(t) = \thevector{x_t(t), y_t(t)}$
  - $g(t) = f \circ \gamma:\RR \to \RR, \quad (f \circ \gamma)(t) = f(x(t), y(t)), \quad g_t(t) = f_t(\gamma(t))\cdot \gamma_t(t)$
  - A vector $v$ is perpendicular to a surface at a point $p$ iff $v$ is perpendicular to the tangent vector of every curve passing through $p$.

  - Proof of actual statement
    - Let $\vector p = \thevector{x_0, y_0}$ be a point on the level surface, so $f(\vector p) = c$ for some constant.

    - Let $\gamma(t) = \thevector{x(t), y(t)}$ be a curve on the level surface, so $\gamma(t_0) = \vector p$ for some $t_0$. Let $\gamma'(t)$ be its tangent vector.

    - Let $g(t) = f(x(t), y(t)) = (f \circ \gamma)(t)$, and note that for some $\vector x$ on the level surface, and so we have $g(t_0) = f(\vector x) = c$ and thus $\dd{g}{t}(t) = 0$.

    - By the chain rule, compute 
    $$\begin{align*}
    \dd{g}{t}(t)
    &= \left(\dd{f}{x}\dd{x}{t} + \dd{f}{y}\dd{y}{t}\right)(t) \\
    &= \inner{ \thevector{\dd{f}{x}(x(t), y(t)), \dd{f}{y}(x(t), y(t))} } { \thevector{\dd{x}{t}(t), \dd{y}{t}(t)} } \\ 
    &= \inner{\nabla f(\gamma(t))}{\dd{\gamma}{t} (t)}.
    \end{align*}$$ 

    From above, we know that this is zero. Now note that we have 
    $$ 
    \dd{g}{t}(t_0) =  \inner{\nabla f(\gamma(t_0))}{\dd{\gamma}{t}(t_0)} = \inner{\nabla f(\vector p)}{\gamma'(t_0)}
    $$
    but by the previous statement, $\dd{g}{t}(t_0) = 0$, which exacty says that the gradient of $f$ is orthogonal to $\gamma$ at $\vector p$. But $\vector p$ was an arbitrary point on the level surface, and $\gamma$ was an arbitrary curve through it. So $\nabla f$ is orthogonal to *every* level curve through $\vector p$, and this orthogonal to the tangent plane at $\vector p$, and thus normal to the surface at $\vector p$. Since $\vector p$ was an arbitrary point on the level curve, this holds everywhere on the level curve, and for arbitrary level curves. Thus $\nabla f$ is orthogonal to every level curve. $\qed$

1. Parts:
   1. Let $x, y \in X$ and suppose $f(x) = f(y)$. By assumption, $g(f(x)) = x$ and $g(f(y)) = y$, and since we also have $g(f(x)) = g(f(y))$ we have $g(f(y)) = x$. But $g(f(y)) = y$, so $y=x$.
   2. Let $y\in Y$, we will find an $x\in X$ such that $g(x) = y$. We can consider $f(y)$, so let $x = f(y)$. We have $g(f(y)) = y$ by assumption, so $g(x) = g(f(y)) = y$ as desired.
   3. We need to have $f$ fail surjectivity and $g$ fail injectivity, so take $X = [1],~ Y = [2]$ where
   $$
   f(1) = 1, \\ 
   g(1) = 1, ~g(2) = 1
   $$
   ![](2019-07-13-22-08-59.png)
   then $g(f(1)) = 1$, and this exhausts $X$. Since $\abs{X} \neq \abs{Y}$, these don't form a bijection -- in particular, $2\not\in\im f \subsetneq Y$.




