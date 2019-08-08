# Fall 2015

1. Lemma: $f$ is injective $\iff f$ has a left inverse $f\inv$ satisfying $f\inv f(a) = a$.
   
   Suppose $f,g: A \to A$ are injective and $x,y \in A$, we want to show that $(f\circ g)(x) = (f\circ g)(y) \implies x = y$. So suppose $f(g(x)) = f(g(y))$. Since $f$ is injective, $f$ has a left inverse, so $g(x) = g(y)$, and since $g$ is injective $x = y$. $\qed$

2. Claim: take $\delta < \min(1, \sqrt{\frac{\varepsilon}{5}})$. Then $\abs{x-2} < \delta \implies 1 < x < 2 \implies 1 > \frac 1 x > \frac 1 2$, so in particular $\frac 1 x < 1$ and
   $$\begin{align*}
   \abs{x + \frac 1 x - \frac 5 2} &= \abs{\frac{2x^2 - 5x + 2}{2x}}\\
   &< \frac 1 2 \abs{(2x^2-4x + 2) - x}\\
   &= \frac 1 2 \abs{2(x-2)^2 + 3(x-2)} \\
   &< \abs{2(x-2)^2 + 3(x-2)} \\
   &\leq 2\abs{x-2}^2 + 3\abs{x-2} \\
   &< 2\delta^2 + 3\delta \\ 
   &< 5\delta^2  \hspace{10em} \text{since } \delta < 1 \implies \delta^2 < \delta \\
   &< 5 \left(\sqrt{\frac{\varepsilon}{5}}\right)^2 \\
   &= \varepsilon.
   \end{align*}$$
   $\qed$

1. Denoting $D^n f \definedas \dd{^n f}{x^n}$ and noting that $D^1 D^n f = D^{n+1}f$, we have
  $$\begin{align*}
  D^0f &= xe^{2x} \\
  D^1f &= e^{2x} + 2D^0f \\
  D^2f &= 2e^{2x} + 2D^1f \\
  D^3f &= 4e^{2x} + 2D^2f \\
  \end{align*}$$

    and (claim) so we find that 
  $$D^n f = 2^{n-1}e^{2x} + 2D^{n-1}f.$$
  
    This is trivially the case for $n=1$, where we've computed $D^1 f = e^2x + 2xe^{2x} = 2^0e^{2x} + 2D^0 f$, and the inductive step holds exactly because 
  $$
  D^{n+1}f = DD^{n}f \\
  = D(2^{n-1}e^{2x} + 2D^{n-1}f) \\
  =2^n e^{2x} + 2D^n f.
  $$
  $\qed$

1. It will exactly be the row space of 
$$
A = \left(\begin{array}{rrrr}
1 & 1 & 1 & 1 \\
3 & 4 & 6 & 7 \\
5 & 6 & 8 & 9
\end{array}\right),
$$ 
where we could note that $R_3 = 2R_1 + R_2$ but $R_1 \neq \lambda R_2$ and so the first two rows span the correct subspace. We can also easily compute the RREF, which has the same rowspace, $$\tilde A = \left(\begin{array}{rrrr}
1 & 0 & -2 & -3 \\
0 & 1 & 3 & 4 \\
0 & 0 & 0 & 0
\end{array}\right)$$
from which we find that $\vector v_1 = \thevector{1,0,-2,-3}$ and $\vector v_2 = \thevector{0,1,3,4}$ also do the job. $\qed$

1. We have $p_A(x) = (x+1)(x-1)(x) = x^3 - x$ and so by Cayley-Hamilton, $A^3 - A = 0 \implies A^3 = A$. $\qed$

1. We first need the derivatives of $\arctan$, since
    $$
    T(p, x) = \sum_{n=0}^\infty \frac{f^{(n)}(p)}{n!}(x-p)^n \implies T(0, x) = \sum_{n=0}^\infty \frac{f^{(n)}(0)}{n!}x^n 
    $$

    Starting with $y=\arctan x$, we can write $\tan y - x = 0 \implies \sec^2y~dy - 1~dx = 0$ by implicit differentiation and the chain rule, and so $\dd{y}{x} = y' = \sec^{-2}y = \cos^2(\arctan x))$. Embed this in a triangle with angle $y$ to find that 
    $$y' = (1+x^2)^{-1}.$$

    Computing higher derivatives of $\arctan$ directly is tedious, so instead we'll take a power series of $y'$ and differentiate that instead: 

    $$\begin{align*}
    f'(x) = (1+x^2)\inv 
      & =1 - x^2 + x^4 - x^6 + x^8 - x^{10} + \cdots 
      = \sum_{i=0} (-1)^{i}x^{2i} \\
    \implies f''(x) = \dd{}{x} (1+x^2)\inv 
      &= -2x + 4x^3 - 6x^5 + \cdots 
      = \sum_{i=1}^\infty (2i)(-1)^{i}x^{2i-1} \\
    \implies f^{(3)}(x) = \dd{^2}{x^2} (1+x^2)\inv 
      &= -2 + 12x^2 - 30x^4 + \cdots 
      = \sum_{i=1}^\infty (2i )(2i-1)(-1)^{i}x^{2i-2} \\
    \implies f^{(4)}(x) = \dd{^3}{x^3} (1+x^2)\inv 
      &= 24x - 120x^3 + \cdots 
      = \sum_{i=2}^\infty (2i)(2i-1)(2i-2)(-1)^{i}x^{2i-3} \\
    \implies f^{(5)}(x) = \dd{^4}{x^4} (1+x^2)\inv 
      &= 24 - 360x^2 + \cdots 
      = \sum_{i=2}^\infty (2i)(2i-1)(2i-2)(2i-3)(-1)^{i}x^{2i-4} \\
    \end{align*}$$ 

    so recalling that we'll be evaluating at $x=0$, we can notice that whenever $n+1$ is even (and thus $n$ is odd), there is no constant term. So for $n+1$ odd, we can extract the general pattern:
    $$\begin{align*}
    f^{(n)}(0) &= \restrictionof{ \dd{^{n}}{x^{n}} (1+x^2)\inv}{x = 0}
    &= \begin{cases} (n-1)! & n-1 \equiv 0 \mod 4 \\
    -(n-1)! & n -1 \equiv 2 \mod 4 
    \end{cases}
    \end{align*}$$


    Thus the desired Taylor expansion will be 
    $$
    T(0, x) = \sum_{n=0}^\infty \frac{f^{(n)}(0)}{n!}x^n \\
    = \arctan(0) + \sum_{n>0\text{ odd}} \sigma_n \frac{(n-1)!}{n!} x^n \\
    =\sum_{n>0\text{ odd}} \frac{\sigma_nx^n}{n}
    $$

    where $\sigma_n = -1 \iff n \equiv 3 \mod 4$.

    We can then start writing this out:
    $$
    T(0, x) = x - \frac 1 3 x^3 + + \frac{1}{5}x^5 - \frac 1 7 x^7 
    $$

    We then want an $n$ such that 
    $$\frac{(\frac{n-1}{2})!}{(n-1)!} (\frac 1 {10^2})^n \leq \frac 1 {10^5}.$$ 
    
    Checking manually, $i=1$ does not work, but $i=2$ does, so we take the approximation 
    $$\widehat f(x) = x - \frac 1 3 x^3.$$ 
    $\qed$

  1. Suppose $f_n \rightrightarrows g$ with each $f_n$ bounded; we want to show that all of the $f_n$ are uniformly bounded by some $M$, i.e.
  $$
  \exists M \suchthat \forall x\in \RR, \forall n\in \NN, \quad \abs{f_n(x)} \leq M.
  $$
  - Since each $f_n$ is bounded, we can produce some $M_n$ such that $\abs{f_n(x)} \leq M < \infty$.
  - Since $f_n \rightrightarrows g$, we can give ourselves an epsilon of room and get an $N$ such that $n\geq N \implies \abs{f_n(x) - g(x)} < \varepsilon$. We then write
  $$
  f_n(x) = f_n(x) - g(x) + g(x) - f_N(x) + f_N(x) \\
  \implies \abs{f_n(x)} \leq \abs{f_n(x) - g(x)} + \abs{g(x) - f_N(x)} + \abs{f_N(x)} \\
  \leq \varepsilon + \varepsilon + M_N
  $$

  by the above two statements. But $N<\infty$, so we can choose $M = \max\theset{M_1, M_2, \cdots M_{N-1}, 2\varepsilon + M_N}$ as a uniform bound. Then just take $\varepsilon \to 0$. (Maybe not necessary?)

1. Write $f$ as $f(x,y)$, we are then given that $f_x, f_y \in C_0(\theset{0})$. It has the type
  $$
  f: \RR^2 \to \RR \\
  (x,y) \mapsto f(x,y)
  $$
   
   Definition:
$$
\vector u = \thevector{a, b} \implies D _ { \vector u } f = \lim _ { h \rightarrow 0 } \frac { f ( x + a h , y + b h ) - f ( x , y ) } { h }
$$
  Definition: 
$$
\dd{}{x}f(x,y) = f_x(x,y) = \lim_{h\to 0} \frac{f(x+h, y) - f(x,y)}{h}
$$

    We need to show that $D_{\vector u}f$ exists for arbitrary $\vector u$. Wlog, assume $\norm{\vector u} = 1$, and let $D_{\vector u}f$ denote the directional derivative of $f$ in the direction $\vector u$. Fix some $\vector p \in \RR^2$ and define the curve
$$
\gamma(t): \RR \to \RR^2 \\t \mapsto \vector p + t \vector u
$$

    Then define 
$$
g: \RR \to \RR \\ t \mapsto f(\gamma(t)) = f(\vector p + t\vector u).
$$

    Note that $g(0) = f(\vector p)$.

    **Since the partial derivatives of $f$ exist and are continuous**, $f$ is differentiable with derivative 
$$
Df = \sum_{i=1}^2 \dd{f}{x_i} \vector e_i \definedas \nabla f.
$$ 

    Thus by the multivariate chain rule, $g$ is differentiable as well and can be computed as 
$$
g'(t) = Df(\gamma(t)) ~ D\gamma(t) = \inner{\nabla f(\gamma(t))}{\gamma'(t)}.
$$ 

    Note that $\gamma(0) = \vector p$, and $\gamma$ is a linear function of $t$ that is differentiable, with derivative/tangent vector $\gamma'(t) = \vector u$.

    From this, we can compute 
$$
g'(0) = \inner{\nabla f(\vector p)}{\vector u}
$$ 
    in the above expression.

    Since $g$ is differentiable, we can write
$$\begin{align*}
g'(0) &= \restrictionof{g'(t)}{t=0} \\ 
&= \restrictionof{\lim_{h\to 0} \frac{g(t+h) - g(t)}{h}}{t=0} \\ 
&= \lim_{h\to 0} \frac{g(h) - g(0)}{h} \\
&\definedas \lim_{h\to 0} \frac{f(\vector p + h\vector u) - f(\vector p)}{h}
\end{align*}$$

    In particular, since $g'(0)$ exists, the limit in the last term does as well, and by definition is $D_{\vector u}(\vector p)$. Now letting $\vector p = \vector x$ be variable, we combine these to obtain 
$$
D_{\vector u}(\vector p) = \inner{\nabla f(\vector p)}{\vector u}
$$
  Since $\vector u$ was arbitrary, this shows that the directional derivative exists in any direction and is given by the above expression. $\qed$

1. Note that $8=2^3$ is a prime power $p^n$, so we can get this as a quotient of a polynomial algebra. In particular, since $p=2$, we'll want to look at $\FF_2[t]$, and we'll want to quotient it by a polynomial of degree $n=3$ that is irreducible in the base field $\FF_2$.

    We could use Rabin's test: $f$ is irreducible over $F$ iff
  $$
  x^{p^n} - x \equiv 0 \mod f \quad\text{ and }\quad
  \left( f , x ^ { p ^ { n / q } } - x \right) = 1 ~~\forall \text{ prime $q$ dividing $n$}
  $$

    But I'm bad at polynomial division. With some work, we can brute force by listing out all of the $2^4 = 16$ polynomials over $\FF_2$ of degree at most 3. Then start multiplying together low-degree terms to cross off higher degree terms; using degree arguments you can show that the irreducible polynomials are:
  $$
  x \\
  x+1 \\
  x^2 + 1 \\
  x^2 + x + 1 \\
  x^3 + x + 1 \\
  x^3 + x^2 + 1.
  $$

    So we can pick one of the degree 3 ones to obtain our desired field:
  $$
  GF(8) = \frac{\FF_2[t]}{\generators{t^3+t+1}}. \qed
  $$
    **General Principle** Trinomials of the form $x^n + ax^{<n} + b$ with $a,b \in \FF_p$ are usually irreducible.
