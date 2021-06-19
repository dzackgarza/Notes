---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
---

Tags: #symplectic #floer #reading_notes #talk

Outline
- Sketch proof of 8.6.3
- Statement of Somewhere Injectivity
- Statement of Continuation Principle
- Statement of Similarity Principle
- 8.7
- 8.8

What we're trying to prove
8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

# 8.8 

- Define
\begin{align}
L: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\end{align}

- By the end of 8.8: replace the Fredholm operator $L$ by an operator $L_1$ with the same *index* (not the same kernel/cokernel)
  - Compute the index of $?$ because we can explicitly describe its kernel and cokernel

- Use the fact $S: \RR \cross S^1 \to \mat(2n;\RR)$ and 
  $$
  S(s, t) \converges{s\to\pm\infty}\to S^{\pm}(t)
  $$ 
  which are symmetric.
  - Take corresponding symplectic paths $R^\pm: I \to \Sp(2n; \RR)$.
  - If 
  $$
  R^\pm \in \mcs \definedas \theset{R: I \to \Sp(2n; \RR) \suchthat R(0) = \id, \det(R(1) - \id)\neq 0}
  ,$$ 
  then $L$ is a Fredholm operator

- Theorem 8.8.1: $\ind(L) = \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y)$.

- Prop 8.8.2: Define an operator
\begin{align*}
L_{1}: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\end{align*}
where $S: \RR \to\mat(2n; \RR)$ is a path of diagonal matrices depending on $\ind(R^\pm(t))$; then $\ind(L_1) = \ind(L)$.

  - Then $\ind(L_1) = \ind(R^-(t)) - \ind (R^+(t))$.
  - Idea of proof: take a homotopy of operators
    \begin{align*}
    L_{\lambda}: W^{1, p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
    Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S_{\lambda}(s, t) Y
    \end{align*}
    which are all Fredholm and all have the same index, then take time 1.
  - Use the fact that $\coker L_1 \cong \ker L_1^*$, and we can explicitly write the adjoint of $L_1$.
  - Get a formula that resembles the Morse case: counting the number of eigenvalues that change sign.

- Summary:
  - Replace $L$ by $L_0$, which is modified in a neighborhood of zero in the $s$ variable. Use invariance of index under small perturbations.
  - Homotope $L_0$ to $L_1$, where $S$ is replaced by a diagonal matrix $S(s)$ that is a constant matrix outside the neighborhood of zero in $s$. Use invariance of index under homotopy.

# 8.7

- Goal: Toward 8.1.5, show that $L \definedas \bar \del + S(s, t): W^{1, p} \to L^p$  is a Fredholm operator, i.e. the index makes sense (finite-dimensional kernel and cokernel).
- Statement: if $\det(\id - R^\pm_1) \neq 0$ then the operator
  \begin{align*}
  L: W^{1, p}(\RR\cross S^1; \RR^{2n}) \to L^p(\RR\cross S^1; \RR^{2n})\\
  .\end{align*}
  given by $L = \bar\del + S(s, t)$ is Fredholm for every $p>1$.
  > Most of the work goes into showing that $\dim(\ker L) < \infty$ and $\im(L)$ is closed.

- $\dim \ker L < \infty$:
  - Use elliptic regularity and consequence of Calderón-Zygmund inequality.
    - Elliptic regularity: If $Y \in L^p$ is a weak solution of the linearized Floer equation $LY = 0$, then $Y\in W^{1, p}$ and is smooth.
    - Consequence: If $Y\in W^{1, p}$ and $p>1$ then $\norm{Y}_{W^{1, p}} = O(\norm{LY}_{L^p} + \norm{Y}_{L^p}  )$.
  - Case 1: $S(s, t) = S(t)$ doesn't depend on $s$.
    - Then $L$ is a bijective for every $p>1$
    - Invertibility allows replacing the weak solution $Y \in L^p(\RR \cross S^1; \cdot)$ with $Y\in L^p([-M, M] \cross S^1, \cdot)$ for $M\gg 0$
    - Restriction $\bar L: W^{1, p}(\RR\cross S^1) \to L^p([-M, M] \cross S^1)$ is a compact operator, it is "semi-Fredholm"
    - Apply a theorem: if the inequality is satisfies, the kernel is finite-dimensional and the image is closed.

- $\dim \coker L < \infty$:
  - Take
  \begin{align*}
  L: W^{1, p}(\RR\cross S^1; \RR^{2n}) \to L^p(\RR\cross S^1; \RR^{2n})\\
  \end{align*}
  and consider the adjoint operator
  \begin{align*}
  L^{\star}: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \longrightarrow L^{q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right)
  \end{align*}
  where $p\inv + q\inv = 1$, which appeared in 8.5.1.
  - Use the fact that $\coker L = \ker L^\star$
  - Show $\dim \ker L^\star < \infty$ since it satisfies the conditions of 8.7.4.

# 8.6

- Start with $u \in C^\infty(\RR \cross S^1; W)$ a solution to the equation 
$$\dd{u}{s} + J_1(t, u) \qty{\dd{u}{t} - X(t, u)} = 0$$

- "Unwrap the cylinder" to a map $v\in C^\infty(\RR^2; W)$ which is a solution to $\qty{\dd{}{s} + J\dd{}{t}}u = 0$
  - No longer periodic; instead $v(s, t+1) = \phi(v(s, t))$.
  - Built by precomposing $u$ with the inverse flow $\psi_t$ of $X_t$
  - Conjugate original $J$ with $\psi$ to get $J_1$

- Define regular points $R(v)$ as $\dd{}{s}v \neq 0$ with injectivity condition: $s \neq s' \implies v(s, t) \neq v(s', t)$.

- Prove "injectivity result": $R(v) \subseteq \RR^2$ is dense and open

## 8.6.3, Part 1: R(v) is Open

- Prove $R(v)$ is open: contradict zero derivative
  - Proof uses sequential characterization of being a closed set
  - Construct a sequence in the complement converging to a regular point
  - Since first two conditions of $R(v)$ are open, extract a sequence of points failing injectivity
  - Show it is bounded
  - Apply Bolzano-Weierstrass to extract a convergent subsequence
  - Use quotient definition of derivative, show it is zero, contradiction.

## 8.6.3, Part 2: R(v) is Dense in R2 (p.258)


## Step 1: Exclude critical points that are also multiple points

- Definition: *Multiple points* are where injectivity fails in $s$.
  - Characterize $R(v)$ as those in $C(v)^c$ that are not multiples.

- Suffices to show $R(v)$ is dense in $C(v)^c$
  -- Every $(s, t) \in C(v)^c \subseteq \RR^2$ is the limit of $(s_n, t) \in C(v)^c$ where $v(s_n, t) \neq x^\pm(t)$.
    - Why? $v(s + {1\over n}, t) = x^+(t) \implies \dd{v}{s} = 0 \implies (s+{1\over n}, t)\in C(v)$. 
  - Then suffices to show every $(s_0, t_0) \in \RR \cross I$ with (importantly)
  \begin{align}
  \dd{v}{s}{(s_0, t_0)} \neq 0 \qtext{and} v(s_0, t_0) \neq x^{\pm}(t_0)
  .\end{align} {#eq:eq1}
  is the limit of a sequence of points in $R(v)$.
  - Proceed by assuming this is not the case, toward a contradiction.

### A Small Ball Avoids Critical Points in the Image
- Surround every point $(s_0, t_0)$ by a ball $B_\eps(s_0, t_0)$ missing $R(v)$
- We can choose $\eps$ small enough and $M\gg 1$ big enough (defining $\mathbf{M} = [-M, M] \subset \RR$) such that
  1. Translate to far enough to get a point outside the image of the ball: 
    \begin{align*}
(s, t) \in \mathbf{M}^c &\cross [t_0-\eps, t_0+\eps]\subset \RR \cross I \implies \\
    v(s, t) \intersect v(B_\eps(s_0, t_0) = \emptyset &\qtext{and} x^\pm(t) \not \in v(B_\eps(s_0, t_0))
    .\end{align*}
    - Idea: If not, can cook up sequences that force $v(s_0, t_0) = x^\pm(t_0)$, a contradiction to @eq:eq1.
  2. For $t \in B_\eps(t_0)$, $B_\eps(s_0) \injects W$ is an injective immersion
  - Combine 1 and 2 to show that 
    - $v$ is locally constant 
    - $(s_0 ,t_0) \in C(v)$
    - Every point in $B_\eps(s_0, t_0)$ satisfies [@eq:eq1]
  3. 
    - Show 
        $$\abs{\mathbf{M}_C}\definedas \abs{\qty{\mathbf{M} \cross I} \intersect C(v)} < \infty$$ 
        since it's the intersection of a compact and a discrete set
    - Perturb $(s_0, t_0)$ so that $(s, t) \in \mathbf{M}_C \implies v(s_0, t_0) \neq v(s, t)$.
      - Possible since $(s_0, t_0) \not\in C(v) \implies v$ is non-constant in a neighborhood of $(s_0, t_0)$.
    - Decrease $\eps$ so that 
      $$v(B_\eps(s_0, t_0)) \intersect v(\mathbf{M}_C) = \emptyset.$$

- This means that in the thick strip containing $(s_0, t_0)$, no critical points land in its image.

- Conclude that we only have to consider injectivity, not critical points that are also multiple points

## Step 2: Failure of Injectivity in Small Boxes

- Define $$\mathbf{S}_M(t_0) = \theset{s_1, \cdots, s_N} =\theset{s_i \in [-M, M] \suchthat v(s_i, t_0) = v(s_0, t_0)},$$
  the set of multiple points over $s_0$.
  - This is finite, since infinite $\implies$ has a limit point $\implies \dd{v}{s} = 0$, contradiction.

- Lemma: For every $\eps >0$ there exists a $\delta > 0$ such that defining
  $$\Delta_0 = [s_0-\delta, s_0 + \delta] \cross [t_0-\delta, t_0 + \delta]$$
  then $$(s, t)\in \Delta \implies \exists s' \in B_\eps(s_j) \text{ s.t. } v(s, t) = v(s', t)$$
  for some $1 \leq j \leq N$.

  - In English: for every epsilon, we can find a delta box $\Delta_0 \ni (s_0, t_0)$ such that every point in $\Delta_0$ is a multiple point over *some* point in an epsilon ball around *some* point in $\mathbf{S}_M(t_0)$.

  - Proof idea: otherwise, construct a sequence $(\sigma_n, t_n) \to (s_0, t_0)$, use properties 1 and 2 from earlier, extract a limit point $\sigma$ *not* in $\mathbf{S}_M(t_0)$ which satisfies $v(\sigma, t_0) = v(s_0, t_0)$, a contradiction (since that set contained exactly the multiple finitely many points).

- Fix $\eps' <\eps/2$ form Step 1 and apply the lemma to $\eps'$ to produce a $\delta$ and a box $\Delta_0$.
- Apply the lemma: shrink the delta box $\Delta_0$ to a closed delta ball $\bar B_\delta(s_0, t_0)$. 
  - Every point in the delta box is a multiple point over some $s_j$.
- So partition the ball up: define $\Sigma_j$ to be all of the multiple points over $s_j \in \mathbf{S}_(t_0)$.
- Take a smaller $\rho\dash$ball around some point $(s_\star, t_\star) \in \Sigma_1^\circ$, making sure to choose $\eps'$ small enough such that 
  $$
  B_\rho(s_\star, t_\star) \intersect \qty{ [s_1-\eps', s_1 + \eps'] \cross [t_0-\delta, t_0 + \delta] } = \emptyset
  .$$
  In other words, the shaded region is disjoint from the $\rho\dash$ball.

- Then every point in the $\rho\dash$ball is a multiple point over some point in the box around $(s_1, t_0)$. Pick on such point $(s_\star', t_\star)$ on the $t_\star$ line.


## Step 3: Final Contradiction
- Construct $v_1, v_2$ which 
  - Satisfy the same Cauchy-Riemann equations
  - Are equal at the origin 
  - Have nonzero derivative at the origin.
- We want to show they are equal on $\RR^2$
- Constructing them: use points from step 2 to translate
  - Obtain $(s_\star, t_\star)$ and $(s_\star', t_\star)$ from previous step.
  - Define
    \begin{align*}
    \begin{array}{ll}
    v_{1}(s, t)=v\left(s+s_{\star}, t+t_{\star}\right) &\implies v_1(z) = v(z + w_1)\\
    v_{2}(s, t)=v\left(s+s_{\star}^{\prime}, t+t_{\star}\right) &\implies v_2(z) = v(z + w_2)
    \end{array}
    \end{align*}
  - Satisfy the same CR equations
  - By construction, they coincide at $(0, 0)$ since $v(s_\star, t_\star) = v(s_\star', t_\star)$.
  - Derivatives at the origin are nonzero, coming from the fact that $\dd{v}{s}(s_\star, t_\star) \neq 0$.

- Now work at zero: for every $(s, t) \in B_\rho(0, 0)$ there exists a multiple point $s' \in B_{2\eps'}(0)$ over $s$.

- Use the following extension lemma, consequence of **Continuation Principle**: in this situation, with $X_t \equiv 0$ on $B_\eps(\vector 0)$, then 
  $$z\in B_\eps(\vector 0) \implies v_1(z) = v_2(z).$$

- Define
\begin{align*}
\mathcal{F}: \mathrm{C}^{\infty}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbf{R} \times S^{1} ; \mathbf{R}^{2 n}\right) \\
w &\longmapsto \qty{\dd{}{s} + J\cdot \dd{}{t}  }w
\end{align*}

- Since $v_1, v_2$ satisfy the same CR equation, $\mcf(v_1) = \mcf(v_2)$ 
- Linearize $\mcf$ as we did for the Floer operator to obtain 
\begin{align*}
\qty{d\mcf}_{\cdots}(Y) = \qty{ \dd{}{s} + J_0 \cdot \dd{}{t} + \tilde S } Y
.\end{align*}
where $\tilde S: I \cross \RR^2 \to \endo(\RR^{2n})$

- Set $Y = v_1 - v_2$, then
  $$
  S = \int_{[0, 1]} \tilde S  \implies S\qty{ \dd{}{s} + J_0 \cdot \dd{}{t} + S } Y = 0
  $$
- From above, $Y \equiv 0$ in $B_\eps(\vector 0)$, apply **Continuation Principle** to obtain $v_1 = v_2$ on $\RR^2$
- Inductive argument to show 
  $$
  \forall k\in\ZZ,\quad v(s, t) = v(k(s_\star' - s_\star), t) \converges{k\to \infty}\longrightarrow x^\pm(t),
  $$
  which is the desired contradiction. $\qed$

BREAK

## The Continuation Principle

- Take the perturbed CR equation
\begin{align*}
\qty{\dd{}{s} + J_0 \cdot \dd{}{t} + S }Y &= 0 \qtext{where}
S: \RR^2 \longrightarrow \endo(\RR^{2n}) 
\end{align*}
where $J_0$ is the standard complex structure on $\RR^{2n}$.

- Define an *infinite-order zero* $z$ of an arbitrary function $f$ as 
\begin{align*}
z_0 \in Z_\infty \iff \sup_{B_r(z_0)} {\abs{f(z)} \over r^k} \converges{r\to 0}\to 0 \quad \forall k\in \ZZ^{\geq 0}
,\end{align*}
or for a smooth function,
\begin{align*}
z_0\in Z_\infty \iff f^{(k)}(z_0)= 0 \quad \forall k \in \ZZ^{\geq 0}
.\end{align*}

- Statement: If $Y$ solves CR on $U \subset \RR^2$ then the set
\begin{align*}
C \definedas \theset{(s, t)\in U \suchthat ~Y \text{ is an infinite-order zero at } (s, t)}
.\end{align*}

- Explanation: for $f$ smooth, $Z_\infty$ is closed. For $f$ holomorphic, it is clopen.
  - From complex analysis: for a connected domain $\Omega$, the only clopen subsets are $\emptyset,\Omega$, so nonempty and $f =g$ on a connected subset implies $f = g$ on $\Omega$.
  - In particular, $Y = 0$ on $U' \subseteq U$ implies $Y = 0$ on $U$.

- Prove is a consequence of the **Similarity Principle**

## Similarity Principle


- Statement:
  - Recall definition of perturbed CR equation: 
  \begin{align*}
  \qty{\dd{}{s} + J_0 \cdot \dd{}{t} + S }Y &= 0 \qtext{where}
  S: \RR^2 \longrightarrow \endo(\RR^{2n}) 
  \end{align*}

  - Let 

  - $Y \in C^\infty(B_\eps; \CC^n)$, or more generally $W^{1, p}( B_\eps; \CC^n)$, be a solution 
  - $S \in C^\infty(\RR^2, \endo(\RR^2) )$ or more generally $L^p(B_\eps; \endo_\RR(\RR^{2n}))$
  - $p > 2$

  Then there exist
  \begin{align*}
  \delta &\in (0, \eps), \\
  \sigma &\in C^\infty(B_\delta, \CC^n) \\
  A &\in W^{1, p}(B_\delta, \GL(\RR^{2n}))
  .\end{align*}
  such that 
  \begin{align*}
  \forall(s, t) \in B_{\delta}, ~~\quad Y(s, t)=A(s, t) \cdot \sigma(s+i t) \qtext { and } 
  J_0 A(s, t) = A(s, t)J_0
  .\end{align*}

- Used to prove:
  - $C(v)$ is discrete
  - "Extension" lemma used to prove $R(v)$ is dense

- Some ideas from proof:
  - Matrix $A$ will look like the fundamental matrix of solutions to the equation
  - Compactify to get $B_\delta \subset S^2$, if $Y: S^2 \to \CC^n$ then we can consider the section

\begin{center}
\begin{tikzcd}
\left(A^{0,1} T^{\star} S^{2}\right)^{n}=\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n} \ar[d]\\
X \ar[u, "\bar \del Y"', bend right=50, dotted]
\end{tikzcd}
\end{center}

  - $\bar Y = 0$ makes $Y$ a holomorphic sphere in $\CC^n$.

## Odds and Ends

- Theorem: the following is a surjective Fredholm operator for every $p> 1$:
\begin{align*}
\bar{\partial}: W^{1, p}\left(S^{2}, \mathbb{C}^{n}\right) \longrightarrow L^{p}\left(\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n}\right)
.\end{align*}

  - Computation will show that $\dim \ker \bar \del = \dim \coker \bar \del = 2n$, so $\ind \bar \del = 0$.
