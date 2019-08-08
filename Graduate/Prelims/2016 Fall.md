# Fall 2016

1. Parts:
   1. Negating:
$$\begin{align*}
\neg (f \rightrightarrows f) &\iff \neg (\forall\varepsilon, \exists N(\varepsilon) \suchthat \forall x\in X, \quad & n > N \implies \abs{f_n(x) - f(x)} < \varepsilon)\\
&\iff \neg (\forall\varepsilon, \exists N(\varepsilon) \suchthat \forall x\in X, \quad &\abs{f_n(x) - f(x)} < \varepsilon \text{ or } n \leq N)\\
&\iff \exists \varepsilon \suchthat \forall N, \exists x\in X \suchthat \quad  &n \geq N ~\&~ \abs{f_n(x) - f(x)} \geq \varepsilon  
\end{align*}$$
In words: there is some $\varepsilon$ such that no matter what $N$ you choose, there is at least one point $x$ where $f_n(x)$ is not $\varepsilon\dash$close to $f(x)$ for every $n \geq N$.
   2. Can use any function that converges pointwise but not uniformly. Example on $[0, 1]$:
   $$
   f_n(x) = x^n \implies f_n(x) \to \begin{cases}0 & x\in [0, 1) \\ 1 & x=1 \end{cases} \definedas f(x).
   $$ 
   Proof that $f_n$ converges to $f$ pointwise:
      - Note that $f_n(1) = 1, f_n(0) = 0$, so no issues there.
      - For $x\in (0, 1)$, need to show
      $$
      f_n \to f \iff \forall \varepsilon, \forall x\in X, \exists N(\varepsilon, x) \suchthat n > N \implies \abs{f_n(x) - f(x)} < \varepsilon
      $$
      In this case, $f(x) = 0$, so just need to show $\abs{f_n(x)} < \varepsilon$. To get $x^n < \varepsilon$, just take $n > \frac{\ln\varepsilon}{\ln x}$.
  Proof that $f_n$ does not converge uniformly:
     - Let $\varepsilon = \frac {1}{10}$ and $N$ be arbitrary, so $f_n(x) = x^N$. Then consider $x = \frac{9}{10}^{\frac 1 N}$, so $f_n(x) = \frac{9}{10}$, and we have $\abs{f_n(x)} = \frac 9 {10} \geq \frac 1 {10} = \varepsilon$. 

1. Apply the spectral theorem: $D$ will have the eigenvalues on the diagonal, and $A$ will be the column of eigenvectors. Thus
$$
A = \left[ \begin{array} { l l } { 2 } & { 1 } \\ { 1 } & { 1 } \end{array} \right], \quad D = \left[\begin{array}{rr}
1 & 0 \\
0 & -2
\end{array}\right].
$$

1. We want some power series centered at 4 with convergence radius 1, so something of the form $\sum_n f(n)(x-4)^n$ with $L = \lim \frac{a_{n+1}}{a_n} = 1$. 

    Then, by plugging in $5$ and $3$, we find that we want $\sum (-1)^n f(n)$ to converge but $\sum f(n)$ to diverge. The canonical example of this is the harmonic series with $f(n) = \frac 1 n$, so we can just take 
$$f(x) = \sum_n \frac{(x-4)^n}{n}. \qed$$ 

1. We need to show
    $$
    \forall \varepsilon \exists \delta(\varepsilon) \suchthat \quad \abs{x-2} < \delta \implies \abs{\frac 1 {3+x} - \frac 1 5} < \varepsilon
    $$

    Choose $\delta = 20 \varepsilon$. Then note that we can take $1 < x < 3$, and so $\abs{5(3+x)} < 20$. Then
    $$
    \abs{\frac 1 {3+x} - \frac 1 5} = \abs{\frac{x-2}{5(3+x)}} < \frac 1 {20} \abs{x-2} < \frac 1 {20} (20 \varepsilon) < \varepsilon. \qed
    $$

1. Parts
   1. We have
    $$ \int_C F_1 dx + F_2 dy + \cdots = 
    \int _ { C } \vec { F } \cdot d \vec { r } = \int _ { a } ^ { b } \vec { F } ( \vec { r } ( t ) ) \cdot \vec { r } ^ { \prime } ( t ) d t
    $$
    and we can paramaterize a line segment $r(t) = t[2, 1] + (1-t)[3, 5] = [3-t, 5-4t]$, so just plug everything in to get 
    $$
    \int_0^1 22t-31~dt = -20
    $$

   2. $F = [P, Q] = [2x+y, y]$ is conservative iff there is a potential function $\phi$ satisfying $\nabla \phi = F$ iff $P_y = Q_x$. Here we see that $(2x+y)_y = 1$ but $(y)_x = 0$, so the integral is path-dependent.

1. Use the fact that $\sum_{i=1}^n i = \frac 1 2 n(n+1)$, so
$$\begin{align*}
\sum_{i=1}^{n+1} i^3 &= \sum_{i=1}^{n} i^3 + (n+1)^3 \\ 
&= \left( \sum_{i=1}^{n} i \right)^2 + (n+1)^3 \\
&= \left( \frac 1 2 n(n+1) \right)^2 + (n+1)^3 \\
&= \frac 1 4 n^2(n+1)^2 + (n+1)(n+1)^2 \\
&= \frac 1 4 (n+1)^2 (n^2 + 4(n+1)) \\
&= \frac 1 4 (n+1)^2(n+2)^2 \\ 
&= \left( \frac 1 2 (n+1)(n+2)\right)^2 \\
&= \left( \sum_{i=1}^{n+1} i \right)^2. \qed
\end{align*}$$

1. Claim: this holds iff $f$ is injective iff $f$ has a left inverse.
   1. $\implies$: Suppose this holds, and let $x_1,x_2 \in X$. Then suppose $f(a) = f(b)$. We have $f^{-1}(f(\theset{a})) = \theset{a}$ and $f^{-1}(f(\theset{b})) = \theset{b}$ by assumption, so combining these we have 
   $$
   a = \theset{a} = f\inv f(\theset{a}) = f^{-1}f(a) = f^{-1}f(b) f\inv f(\theset b)= \theset{b} = b,
   $$
   so $f$ is injective.
   1. $\neg \implies$ Suppose that this does not hold, then there is some $S \subset X$ such that $f\inv f(S) \neq S$. Then $S - f\inv f(S) \neq \emptyset$,  so pick an element $x$ from it. 
   
        Then $f(x) \definedas y \in f(S)$ since $x\in S$, but $f\inv (y) \in f\inv f(S)$ and so there is some $x'$ such that $f\inv (y) = x'$, where $x' \in f\inv(f(S))$. Since $x \in S-f\inv f(S)$ but $x' \in f\inv f (S)$, we have $x\neq x'$, and by definition we have $f(x) = y = f(x')$, we must conclude that $f$ is not injective.

2. The gradient $\nabla f = [y, x]$ will be orthogonal to level curves: ![](2019-06-16-23-42-19.png)

3. $A = \left[ \begin{array} { r r r } { 1 } & { - 2 } & { 1 } \\ { 0 } & { 5 } & { - 3 } \\ { 0 } & { 0 } & { 0 } \end{array} \right]$; a straightforward computation of $\mathrm{nullspace}(A)$ shows that $\ker A = \mathrm{span}(\thevector{1,3,5})$.
