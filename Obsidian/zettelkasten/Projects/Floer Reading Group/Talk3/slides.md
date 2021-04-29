---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
theme: Warsaw
colortheme: beetle
---

# Intro 

## Outline

What we're trying to prove:

- 8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

\begin{center}
\includegraphics[width = 0.3\textwidth]{figures/image_2020-05-11-00-55-25.png} 
\end{center}

Used to show:

\scriptsize
- 8.1.4: $\Gamma: W^{1, p} \cross C_\eps^\infty \to L^p$ has a continuous right-inverse and is surjective
- 8.1.3: $\mcz(x, y, J)$ is a Banach manifold
- 8.1.1: $h\in \mch_{\text{reg}}, H_0 + h$ nondegenerate and $$(d\mcf)_u \text{ surjective } \forall ~u\in \mcm(H_0 + h, J).$$
- 8.1.2: For $h \in \mch_{\text{reg}}$ and $x, y\sim \pt$ of $H_0$, $$\dim_{\text{mfd}} \mcm(x, y, H_0 + h) = \mu(x) - \mu(y).$$
\normalsize

## Map
\begin{center}
\includegraphics[width = 0.7\textwidth]{figures/image_2020-05-13-18-45-19.png} 
\end{center}

\tiny
\begin{align*}
8.1.4: & \Gamma: W^{1, p} \cross C_\eps^\infty \to L^p \text{ cts right-inverse}
\qquad 8.1.3: \mcz(x, y, J)  \text{a Banach manifold} \\
8.1.1: & h\in \mch_{\text{reg}}, H_0 + h \text{ nondegenerate and } (d\mcf)_u \text{ surjective } \forall ~u\in \mcm(H_0 + h, J) \\
8.1.2: & h \in \mch_{\text{reg}}\text{ and } x, y\sim \pt \text{ of } H_0 \implies  \dim_{\text{mfd}} \mcm(x, y, H_0 + h) = \mu(x) - \mu(y)
.\end{align*}
\normalsize

## Destination 

What we're working toward now:

- 8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

Outline for today:

- 8.6: Filling in lemmas used in previous sections
  - Sketch proof of 8.6.3, statement of **Somewhere Injectivity**
  - Statement of **Continuation Principle**
  - Statement of **Similarity Principle**
- High-level outlines
  - 8.7: Proving the operator is Fredholm
  - 8.8: Computing its index


## Review From Last Time


- $u \in C^\infty(\RR \cross S^1; W)$ is a solution to the Floer equation 
- $C(u)$ the critical points and $R(u)$ the regular points of $u$:
\scriptsize
\begin{align*}
C(u) &\definedas \theset{(s_0, t_0) \in \RR\cross S^1 \suchthat \dd{u}{s}(s_0, t_0) = 0 } \\
R(u) &\definedas \theset{(s_0, t_0) \in C(u)^c \suchthat v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}
.\end{align*}
\normalsize

**WTS**: $C(u)$ is discrete and $R(u)$ is open/dense in $\RR \cross S^1$

- Strategy: "unwrap" $u$ to an easier solution $v$ on $\RR^2$. 

## Strategy

\scriptsize
Strategy:

1. "Unwrapping" $u$. Replace 
    \begin{align*}
\dd{u}{s} + J(t, u) \qty{\dd{u}{t} - X(t, u)} = 0 \qtext{where} u \in C^\infty({\color{blue}\RR\cross S^1}; W)
    \end{align*}
    with a Cauchy-Riemann equation on $\RR^2$:
    $$\dd{v}{s} + J \dd{v}{t} = 0 \qtext{where} v\in C^\infty({\color{blue}\RR^2}; W)$$
    *(Reduces to showing statements for $v$ instead of $u$)*

2. Show $R(v)\subset \RR^2$ is open (short)
3. Show $R(v) \subset \RR^2$ is dense (main obstacle)

Main Ingredients:

- Continuation Principle
- Similarity Principle
\normalsize

# 8.6 Review

## Review: 8.6.1, Unwrapping/Reduction

\scriptsize
If $u$ is a solution to the following equation:
\begin{align*}
\frac{\partial u}{\partial s}+J(t, u)\left(\frac{\partial u}{\partial t}-X(t, u)\right)=0
\end{align*}
Then there exist

- An almost complex structure $J_1$
- A diffeomorphism $\varphi$ on $W$ ?
- A map $v \in C^\infty(\RR^2; W)$

where
\begin{align*}
\dd{v}{s} + J_1(v) \dd{v}{t} &= 0 \\
v(s, t+1) &= \varphi(v(s, t)) \\
C(u) = C(v) \quad &\text{and }\quad  R(u) = R(v)
.\end{align*}

- Recall definition of $v$:
  $$v(s, t) \definedas \psi_t\inv \qty{ u(s, t) }$$


\normalsize

## Toward 8.6.3, Injectivity: $R(v)$ is Open

\begin{align*}
C(u) &\definedas \theset{(s_0, t_0) \in \RR\cross S^1 \suchthat \dd{u}{s}(s_0, t_0) = 0 } \\
R(u) &\definedas \theset{(s_0, t_0) \in C(u)^c \suchthat v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}
.\end{align*}

\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-05-13-23-51-21.png} 
\end{center}


## Sketch of Proof: $R(v)$ is Open

\scriptsize
\begin{align*}
C(u) &\definedas \theset{(s_0, t_0) \in \RR\cross S^1 \suchthat \dd{u}{s}(s_0, t_0) = 0 } \\
R(u) &\definedas \theset{(s_0, t_0) \in C(u)^c \suchthat v(s, t) \neq x^\pm(t),~~s\neq s_0 \implies u(s, t_0) \neq u(s_0, t_0)}
.\end{align*}
Proving $R(v)$ is open: contradict zero derivative.

- Use sequential characterization of being a closed set
- Construct a sequence in $R(v)^c$ converging to a point in $R(v)$.
- First two conditions of $R(v)$ are open, so extract a sequence failing injectivity
- Show it is bounded
- Apply Bolzano-Weierstrass to extract a convergent subsequence
- Use quotient definition of $\dd{v}{s}$, show it is zero, contradiction.
\normalsize

$\qed$

## Toward 8.6.3, Injectivity: $R(v)$ is Dense

Define **multiple points**:

- Set $\bar \RR = \RR \disjoint \theset{\pm \infty}$, extend $v: \RR^2 \to W$ to 
\begin{align*}
v: \bar \RR \cross \RR &\to W \\
v(\pm \infty, t) &= x^\pm(t)
.\end{align*}
- Define the set of *multiple points over $(s_0, {\color{red}t_0})$*:
\scriptsize
$$
M(s_0, {\color{red}t_0}) \definedas \theset{ (s', {\color{red}t_0}) \in \RR^2 \suchthat s\neq s'\in \bar \RR, \quad v(s', {\color{red}t_0}) = v(s_0, {\color{red}t_0}) }
$$

- *Multiple points* are where injectivity fails in $s$.

- Characterizes $R(v) \subset C(v)^c$ as points which don't admit multiples.
\normalsize

# 8.6.3: $R(v)$ is dense in $\RR^2$


## Step 1: Exclude critical points $\intersect$ multiple points

\scriptsize
- Suffices to show $R(v)$ is dense in $C(v)^c$
\begin{align*}
(s, t) \in C(v)^c \implies \exists (s_n ,t)\subset C(v)^c  \converges{n\to\infty}\to (s, t)~ 
\text{ with } v(s_n, t) \neq x^\pm(t)~\forall n
.\end{align*}
- Why? E.g.
$$
v(s + {1\over n}, t) = x^+(t) \implies \dd{v}{s} = 0 \implies (s+{1\over n}, t)\in C(v)
.$$ 
- Then suffices to show every $(s_0, t_0) \in \RR \cross [0, 1]$ with (importantly)
\begin{align}
\dd{v}{s}{(s_0, t_0)} \neq 0 \qtext{and} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align} 
is the limit of a sequence of points in $R(v)$.
- Proceed by assuming this is not the case, toward a contradiction.
\normalsize


## Step 1: Exclude critical points $\intersect$ multiple points

\begin{align}
\dd{v}{s}{(s_0, t_0)} \neq 0 \qtext{and} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align} 

A Small Ball Avoids Critical Points in the Image

- Surround $(s_0, t_0)$ by a ball $B_\eps(s_0, t_0) \subset R(v)^c$
- We can choose $\eps$ small enough and $M\gg 1$ big enough, defining $$\mathbb{M} = [-M, M] \subset \RR,$$ such that several properties hold:

## Step 1: Exclude critical points $\intersect$ multiple points
\scriptsize
\begin{align*}
\dd{v}{s}{(s_0, t_0)} \neq 0 \qtext{and} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align*} 

1. Translate to far enough to get a point outside the image of the ball: 
  \begin{align*}
(s, t) \in \mathbb{M}^c &\cross [t_0-\eps, t_0+\eps]\subset \RR \cross I \implies \\
  v(s, t) \intersect v(B_\eps(s_0, t_0) = \emptyset &\qtext{and} x^\pm(t) \not \in v(B_\eps(s_0, t_0))
  .\end{align*}
  \scriptsize
  - Idea: else, cook up sequences forcing $v(s_0, t_0) = x^\pm(t_0)$, contradicting open conditions 
  \normalsize
2. For $t \in B_\eps(t_0)$, $B_\eps(s_0) \injects W$ is an injective immersion
\normalsize



## Step 1: Exclude critical points $\intersect$ multiple points

\scriptsize 
1. Translated boxes that miss the image of $B_\eps(s_0, t_0)$ *and* contain no multiple points over $(s_0, t_0)$
2. $B_\eps(s_0) \injects W$ immersively

\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-18-58.png} 
\end{center}

Combine 1 and 2 to show that 

- $v$ is locally constant 
- $(s_0 ,t_0) \in C(v)$
- Every point in $B_\eps(s_0, t_0)$ satisfies open conditions 
\begin{align*}
\dd{v}{s}{(s_0, t_0)} \neq 0 \qtext{and} v(s_0, t_0) \neq x^{\pm}(t_0)
.\end{align*}

\normalsize

## Step 1: Exclude critical points $\intersect$ multiple points

\scriptsize 

3. $$\abs{\mathbb{M}_C}\definedas \abs{\qty{\mathbb{M} \cross I} \intersect C(v)} < \infty$$ 
      since it's the intersection of a compact and a discrete set
  - Perturb $(s_0, t_0)$ so that $$(s, t) \in \mathbb{M}_C \implies v(s_0, t_0) \neq v(s, t).$$
    - Possible since $(s_0, t_0) \not\in C(v) \implies v$ is non-constant in a neighborhood of $(s_0, t_0)$.
  - Decrease $\eps$ so that 
    $$v(B_\eps(s_0, t_0)) \intersect v(\mathbb{M}_C) = \emptyset.$$

## Step 1: Exclude critical points $\intersect$ multiple points

$$v(B_\eps(s_0, t_0)) \intersect v(\mathbb{M}_C) = \emptyset.$$
\scriptsize
This means that in the thick strip containing $(s_0, t_0)$, no critical points land in its image.

\begin{center}
\includegraphics[width = 0.7\textwidth]{figures/image_2020-05-21-16-27-40.png} 
\end{center}

Conclude that we *only* have to consider injectivity, not critical points that are also multiple points.


## Step 2: Failure of Injectivity in Small Boxes

\scriptsize 

- Define the set of multiple points over $s_0$:
$$
\mathbb{S}_M(t_0) = \theset{s_1, \cdots, s_N} =\theset{s_i \in [-M, M] \suchthat v(s_i, t_0) = v(s_0, t_0)}
,$$
  
  - Finite, since infinite $\implies$ limit point $\implies \dd{v}{s} = 0.~ \Rightarrow\!\Leftarrow$

- Lemma: For every $\eps >0$ there exists a $\delta > 0$ such that defining
  $$\Delta_0 = [s_0-\delta, s_0 + \delta] \cross [t_0-\delta, t_0 + \delta]$$
  then $$(s, t)\in \Delta_0 \implies \exists s' \in B_\eps(s_j) \text{ s.t. } v(s, t) = v(s', t)$$
  for some $1 \leq j \leq N$.


\normalsize


## Step 2: Failure of Injectivity in Small Boxes

\scriptsize 

- In words: for every $\eps$, we can find a $\delta\dash$box $\Delta_0 \ni (s_0, t_0)$ such that every point in $\Delta_0$ is a multiple point over *some* point in an epsilon ball around *some* point in $\mathbb{S}_M(t_0)$.

- Fix $\eps' <\eps/2$ form Step 1 and apply the lemma to $\eps'$ to produce $\delta$ and $\Delta_0$.
- Apply the lemma: shrink $\Delta_0$ to a closed delta ball $\bar B_\delta(s_0, t_0)$. 
  - **Upshot**: Every point in $\Delta_0$ is a multiple point over some $s_j$.

\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-35-57.png} 
\end{center}

\normalsize


## Step 2: Failure of Injectivity in Small Boxes

\scriptsize
$$
\mathbb{S}_M(t_0) = \theset{s_1, \cdots, s_N} =\theset{s_i \in [-M, M] \suchthat v(s_i, t_0) = v(s_0, t_0)}
$$
  

- So partition the ball up: define $\Sigma_j$: all multiple points over $s_j \in \mathbb{S}_M(t_0)$.
- Take smaller $\rho\dash$ball some $(s_\star, t_\star) \in \Sigma_1^\circ$, choose $\eps'$ small enough such that 
  $$
  B_\rho(s_\star, t_\star) \intersect \qty{ [s_1-\eps', s_1 + \eps'] \cross [t_0-\delta, t_0 + \delta] } = \emptyset
  .$$
  
**Upshot**: the shaded region is disjoint from the $\rho\dash$ball.

\begin{center}
\includegraphics[width = 0.4\textwidth]{figures/image_2020-05-21-16-35-57.png} 
\end{center}
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-05-21-16-38-55.png} 
\end{center}
\normalsize

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

## Step 3: Final Contradiction
- Now work at zero: for every $(s, t) \in B_\rho(0, 0)$ there exists a multiple point $s' \in B_{2\eps'}(0)$ over $s$.

- Use the following extension lemma, consequence of **Continuation Principle**: in this situation, with $X_t \equiv 0$ on $B_\eps(\vector 0)$, then 
  $$z\in B_\eps(\vector 0) \implies v_1(z) = v_2(z).$$

- Define
\begin{align*}
\mathcal{F}: \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
w &\longmapsto \qty{\dd{}{s} + J\cdot \dd{}{t}  }w
\end{align*}

- Since $v_1, v_2$ satisfy the same CR equation, $\mcf(v_1) = \mcf(v_2)$ 

## Step 3: Final Contradiction
\begin{align*}
\mathcal{F}: \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathrm{C}^{\infty}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
w &\longmapsto \qty{\dd{}{s} + J\cdot \dd{}{t}  }w
\end{align*}

Linearize $\mcf$ as we did for the Floer operator to obtain 
\begin{align*}
\qty{d\mcf}_{\cdots}(Y) = \qty{ \dd{}{s} + J_0 \cdot \dd{}{t} + \tilde S } Y
.\end{align*}
where $\tilde S: I \cross \RR^2 \to \endo(\RR^{2n})$


## Step 3: Final Contradiction

- Set $Y = v_1 - v_2$, then
  $$
  S = \int_{[0, 1]} \tilde S  \implies S\qty{ \dd{}{s} + J_0 \cdot \dd{}{t} + S } Y = 0
  $$
- From above, $Y \equiv 0$ in $B_\eps(\vector 0)$, apply **Continuation Principle** to obtain $v_1 = v_2$ on $\RR^2$
- Inductive argument to show 
  $$
  \forall k\in\ZZ,\quad v(s, t) = v(k(s_\star' - s_\star), t) \converges{k\to \infty}\longrightarrow x^\pm(t),
  $$
  which contradicts an open condition. $\qed$


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

## The Continuation Principle

- Statement: If $Y$ solves CR on $U \subset \RR^2$ then the set
\begin{align*}
C \definedas \theset{(s, t)\in U \suchthat ~Y \text{ is an infinite-order zero at } (s, t)}
.\end{align*}

- Explanation: for $f$ smooth, $Z_\infty$ is closed. For $f$ holomorphic, it is clopen.
  - From complex analysis: for a connected domain $\Omega$, the only clopen subsets are $\emptyset,\Omega$, so nonempty and $f =g$ on a connected subset implies $f = g$ on $\Omega$.
  - In particular, $Y = 0$ on $U' \subseteq U$ implies $Y = 0$ on $U$.

- Proof is a consequence of the **Similarity Principle**

## Similarity Principle

\scriptsize
- Recall definition of perturbed CR equation: 
\begin{align*}
\qty{\dd{}{s} + J_0 \cdot \dd{}{t} + S }Y &= 0 \qtext{where}
S: \RR^2 \longrightarrow \endo(\RR^{2n}) 
\end{align*}


Let 
  
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

\normalsize

## Similarity Principle

Used to prove:

- $C(v)$ is discrete
- "Extension" lemma used to prove $R(v)$ is dense

Some ideas from proof:

- Matrix $A$ will look like the fundamental matrix of solutions to an equation

- Compactify to get $B_\delta \subset S^2$, if $Y: S^2 \to \CC^n$ then we can consider $\bar Y$ as a section of the bundle

\begin{align*}
\left(A^{0,1} T^{\star} S^{2}\right)^{n}=\Lambda^{0,1} T^{\star} S^{2} \otimes \mathbb{C}^{n} 
.\end{align*}

- $\bar Y = 0$ makes $Y$ a holomorphic sphere in $\CC^n$.


# 8.7


## 8.7 Outline

What we're trying to prove

- 8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

\scriptsize
- Setup
\begin{align*}
S^\pm(t) &= \lim_{s\to \pm \infty} S(s, t), \\
R^\pm_t &\text{a solution to the IVP} \\ 
\dd{}{t}R &= J_0 S^\pm R,\quad R_0^\pm  = \id
.\end{align*}

- Statement: if $\det(\id - R^\pm_1) \neq 0$ then the operator
  \begin{align*}
  L: W^{1, p}(\RR\cross S^1; \RR^{2n}) &\to L^p(\RR\cross S^1; \RR^{2n})\\
  L&= \bar\del + S(s, t) &
  .\end{align*}
  is Fredholm for every $p>1$.
  
  > *(i.e. index makes sense, $\dim \ker L, \dim \coker L < \infty$)*

- Most of the work: $\dim(\ker L) < \infty$ and $\im(L)$ closed.

\normalsize

## 8.7 Outline: Step 1, $\dim \ker L < \infty$

- Main ingredients: 
  - **Elliptic regularity**: For $Y \in L^p(\RR\cross S^1)$ a weak solution of the linearized Floer equation $$LY = 0 \implies Y\in W^{1, p}(\RR\cross S^1)\intersect C^\infty.$$
  - A consequence of the **Calderón-Zygmund (CZ) Inequality**: For $Y\in W^{1, p}(\RR\cross S^1; \RR^{2n})$ and $p>1$,
  \begin{align}
  \norm{Y}_{W^{1, p}(\RR\cross S^1; \RR^{2n})} \leq C \qty{\norm{LY}_{L^p(\RR\cross S^1)} + \norm{Y}_{L^p({\color{blue}\RR} \cross S^1)}}
  \end{align}
  for some constant $C$.
\scriptsize
- Strategy: split into cases
  - Case 1: $S(s, t) = S(t)$ doesn't depend on $s$.
  - Case 2: $S(s, t)$ *does* depend on $s$
\scriptsize

## 8.7 Outline: $\dim \ker L < \infty$

CZ inequality:
\begin{align}
\norm{Y}_{W^{1, p}(\RR\cross S^1; \RR^{2n})} \leq C \qty{\norm{LY}_{L^p(\RR\cross S^1)} + \norm{Y}_{L^p({\color{blue}\RR} \cross S^1)}}
\end{align}

Step 1: $S(s, t) = S(t)$ doesn't depend on $s$, prove improved estimate.

- Consider the "asymptotic operator"
\begin{align*}
D: W^{1, p}(\RR\cross S^1; \RR^{2n}) &\to L^p(\RR\cross S^1) \\
D = \bar \del + S(t) &= \lim_{s\to \pm\infty} L \definedas \lim_{s\to \pm\infty} \qty{\bar \del + S(s, t)}
.\end{align*}
- Show for $p>1, D$ is invertible.
- Invertibility improves estimate: replace $\color{blue}\RR$ with $\color{blue} [-M, M]$.

## 8.7 Outline: $\dim \ker L < \infty$

- Step 2: $S(s, t)$ does depend on $s$
- Improved estimate in Step 1 allows replacing weak soln:
\begin{align*}
Y \in L^p({\color{blue}\RR} \cross S^1; \cdot) &\leadsto Y\in L^p({\color{blue}[-M, M]} \cross S^1, \cdot)
.\end{align*}

- Then restrict
\begin{align*}
L: W^{1, p}(\RR\cross S^1; \RR^{2n}) &\to L^p(\RR\cross S^1; \RR^{2n})\\
L&\definedas \bar\del + S(s, t) & \\ \\
\leadsto L_M : W^{1, p}(\RR\cross S^1) &\to L^p({\color{blue}[-M, M]} \cross S^1) 
.\end{align*}
- Since the restriction is a *compact* operator, it is "semi-Fredholm", apply a theorem:
$$
\text{CZ inequality satisfied} \implies \dim \ker L_M < \infty, \im L_M \text{ closed}
.$$


## 8.7 Outline: $\dim \ker L < \infty$

- Will need some real/functional analysis to invert operators:
  - "Variation of constants"
  - Hilbert spaces and Spectrum of an operator
  - *Hille-Yosida* theory: existence and uniqueness for operator IVPs, e.g. $\dd{Y}{s} = -AY$
  - Young's Inequality (some convolution integrals)
  - Holder's Inequality
  - Distribution theory
  - Rellich's Theorem (Multiple uses)
  - Hahn-Banach Theorem
  - Riesz Representation Theorem
- Conclude 8.7 by showing $L$ is Fredholm:
  - $\dim \ker L < \infty$ (long) 
  - $\dim \coker L < \infty$ (very short) 

$\qed$

# 8.8

## 8.8: Outline

What we're trying to prove

- 8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

- Define
\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\end{align*}

- 8.7: Shows $L$ is Fredholm

- By the end of 8.8: replace $L$ by $L_1$ with the same *index* 
  - *(not the same kernel/cokernel)*
- Compute $\ind L_1$: explicitly describe $\ker L_1, \coker L_1$. 

## 8.8: Replacing $L$

\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\end{align*}


- Replace in two steps:
  - $L \leadsto L_0$, modified in a $B_\eps(0)$ in $s$. 
    - Use invariance of index under small perturbations.
  - $L_0 \leadsto L_1$ by a homotopy, where $S_\lambda: S \leadsto S(s)$ a diagonal matrix that is a constant matrix *outside* $B_\eps(0)$.
    - Use invariance of index under homotopy.


## 8.8: Replacing $L$

\scriptsize

\begin{align*}
  S(s, t) \converges{s\to\pm\infty}\to S^{\pm}(t) \\
R^\pm_t \text{a solution to the IVP} \quad \quad &\dd{}{t}R = J_0 S^\pm R,\quad R_0^\pm  = \id
.\end{align*}


- Use the fact $S: \RR \cross S^1 \to \mat(2n;\RR)$ and $S^\pm(t)$ are symmetric.
- Take corresponding symplectic paths $R^\pm: I \to \Sp(2n; \RR)$.
- $L$ will be a Fredholm operator if 
\begin{align*}
R^\pm \in \mcs \definedas \theset{R: I \to \Sp(2n; \RR) \suchthat R(0) = \id, ~~\det(R(1) - \id)\neq 0}
.\end{align*}
\normalsize
- Theorem 8.8.1: $$\ind(L) = \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y).$$

## 8.8: $L_0 \leadsto L_1$

\scriptsize
- Prop 8.8.2: Construct an operator
\begin{align*}
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\end{align*}
where $S: \RR \to\mat(2n; \RR)$ is a path of diagonal matrices depending on $\ind(R^\pm(t))$; then 
$$\ind(L) = \ind(L_1) = \ind(R^-(t)) - \ind (R^+(t)).$$

- Idea of proof: take a homotopy of operators
  \begin{align*}
  L_{\lambda}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
  Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S_{\lambda}(s, t) Y
  \end{align*}
  which are all Fredholm and all have the same index, then take time 1.
\normalsize

## 8.8: Index of $L_1$

\begin{align*}
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\end{align*}


- Use the fact that $$\coker L_1 \cong \ker L_1^*,$$ and we can explicitly write the adjoint of $L_1$.
- Get a formula that resembles the Morse case 
  - *(Counting number of eigenvalues that change sign).*

$\qed$

