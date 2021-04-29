---
title: Linearization and Transversality
subtitle: Sections 8.3 and 8.4
author: D. Zack Garza
date: April 2020
theme: Berkeley 
colortheme: default 
fontfamily: noto-sans
aspectratio: 169
header-includes:
- \usepackage{cmbright}
fontsize: 10pt
---

[Floer Reading Group Fall 2020](../../../../zets/Floer%20Reading%20Group%20Fall%202020.md)

# Review

## Recalling Notation

- The Floer equation is given by
  \begin{align*}
  \frac{\partial u}{\partial s}+J(u) \frac{\partial u}{\partial t}+\operatorname{grad} H_{t}(u)=0
  .\end{align*}
 
- Critical points of the action functional $\mca_H$ are given by orbits, i.e. contractible loops $x, y \in \mcl W$
- In general, $x, y$ are two periodic orbits of $H$ of period 1.
- Solutions are functions $u \in C^\infty(\RR \cross S^1; W) = C^\infty(\RR; \mcl W)$
- $\mcm(x, y)$ is the moduli space of solutions of the Floer equation connecting orbits $x$ and $y$.
-  $W^{1, p}(x, y)$ and $\mcp^{1, p}(x, y)$ were completions of $C^\infty(?)$ with respect to certain norms.

## The "Program" for Chapter 8

- Show that $\mcm(x, y)$ is a manifold of dimension $\mu(x) - \mu(y)$
- Define $\mcm(x, y)$ as the inverse image of a regular value of some map
- Perturb $H$ to apply the Sard-Smale theorem
- Show the tangent maps are Fredholm operators and compute their index.

# Section 8.3: The Space of Perturbations of H

## Goal

**Goal**: Given a fixed Hamiltonian $H\in C^\infty(W\cross S^1; \RR)$, perturb it (without modifying the periodic orbits) so that $\mcm(x, y)$ are manifolds of the expected dimension.

## Goal

\tiny Start by trying to construct a subspace $\mcc_\eps^{\infty}(H) \subset \mcc^\infty(W\cross S^1; \RR)$, the space of perturbations of $H$ depending on a certain sequence $\eps = \theset{\eps_k}$, and show it is a dense subspace.
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-04-14-23-36-58.png} 
\end{center}

## Define an Absolute Value  

Idea: similar to how you build $L^2(\RR)$, define a norm $\norm{\wait}_\eps$ on $C_\eps^{\infty}(H)$ and take the subspace of finite-norm elements.

- Let $h(\vector x, t) \in C_\eps^\infty(H)$ denote a perturbation of $H$.
- Fix $\eps = \theset{\eps_k \mid k\in \ZZ^{\geq 0}} \subset \RR^{>0}$ a sequence of real numbers, which we will choose carefully later.

- For a fixed $\vector x \in W, t\in \RR$ and $k \in \ZZ^{\geq 0}$, define 
  $$
  \abs{d^k h(\vector x, t)} = \max \theset {d^\alpha h(\vector x, t) \suchthat \abs{\alpha} = k}
  ,$$
  the maximum over all sets of multi-indices $\alpha$ of length $k$.

  > Note: I interpret this as 
  $$
  d^{\alpha_1, \alpha_2, \cdots, \alpha_k}h = \frac{\del^k h}{\del x_{\alpha_1} ~\del x_{\alpha_2} \cdots \del x_{\alpha_k}}
  ,$$
  the partial derivatives wrt the corresponding variables.

## Define a Norm

- Define a norm on $C^\infty(W\cross S^1; \RR)$:

  \begin{align*}
  \|h\|_{\vector \eps}
  &= \sum_{k \geq 0} \eps_{k} \sup _{(x, t) \in W \times S^{1}}\left|d^{k} h(x, t)\right|
  .\end{align*}

- Since $W\cross S^1$ is assumed compact (?), fix a finite covering $\theset{B_i}$ of $W\cross S^1$ such that 
  $$
  \union_i B_i^\circ = W \cross S^1
  .$$

  - Choose them in such a way we obtain charts 
    \begin{align*}
    \Psi_i: B_i &\to \bar{B(0, 1)} \subset \RR^{2n + 1} ~(?)
    .\end{align*}
  
- Obtain the computable form
  \begin{align*}
  \norm{h}_{\vector \eps} &= \sum_{k \geq 0} \eps_{k} \sup _{(x, t) \in W \times S^{1}} \sup_{i, z\in B(0, 1)} \abs{ d^k (h\circ \Psi_i\inv)(z)}
  .\end{align*}

## Define a Banach Space

- Define 
    $$
    C_\eps^\infty = \theset{h\in C^\infty(W\cross S^1; \RR) \suchthat \norm{h}_\eps < \infty} \subset C^{\infty}(W\cross S^1; \RR)
    ,$$ 
   which is a Banach space (normed and complete). 

- Show that the sequence $\theset{\eps_k}$ can be chosen so that $C_\eps^\infty$ is a *dense* subspace for the $C^\infty$ topology, and in particular for the $C^1$ topology.


Theorem
: Such a sequence $\theset {\eps_k}$ can be chosen.

Lemma
: $C^\infty(W \cross S^1; \RR)$ with the $C^1$ topology is separable as a topological space (contains a countable dense subset).

## Sketch Proof of Theorem 


- By the lemma, produce a sequence $\theset{f_n} \subset C^\infty(W\cross S^1; \RR)$ dense for the $C^1$ topology.

- Using the norm on $C^n(W\cross S^1; \RR)$ for the $f_n$, define

  \begin{align*}
  \frac 1 {\eps_n} = 2^n \displaystyle\max \theset {\norm{f_k} \suchthat k\leq n}
  \implies \eps_n \sup \abs{d^n f_k(x, t)} \leq 2^{-n}
  \end{align*}

  which is summable.

$\qed$

> Why does this imply density? I don't know.

## Modified Theorem

The next proposition establishes a version of this theorem with compact support:

Theorem
: For any $(\vector x, t) \subset U \in W \cross S^1)$ there exists a $V\subset U$ such that every $h\in C^{\infty}(W\cross S^1; \RR)$ can be approximated in the $C^1$ topology by functions in $C_\eps^\infty$ supported in $U$.

Then fix a time-dependent Hamiltonian $H_0$ with nondegenerate periodic orbits and consider 
$$
\theset{ h\in C_\eps^\infty(H_0) \suchthat h(x, t) = 0 \text{ in some $U\supseteq$ the 1-periodic orbits of $H_0$}}
$$
Then $\supp(h)$ is "far" from $\per(H_0)$, so 
$$
\norm{h}_\eps \ll 1 \implies \per(H_0 + h) = \per(H_0)
$$ 
and are both nondegenerate.

# Section 8.4: Linearizing the Floer Equation: The Differential of F

## Goal

Choose $m> n = \dim (W)$ and embed $TW \injects \RR^m$ to identify tangent vectors (such as $Z_i$, tangents to $W$ along $u$ or in a neighborhood $B$ of $u$) with actual vectors in $\RR^m$.

> Why? Bypasses differentiating vector fields and the Levi-Cevita connection.

We can then identify 
$$
\im \mcf = C^\infty (\RR \cross S^1; \RR^m) \qtext{or} L^p(\RR\cross S^1; W)
,$$ 
and we seek to compute its differential $d \mcf$.

> We've just replaced the codomain here.


## Definitions 

Recall that 

- $x, y$ are contractible loops in $W$ that are nondegenerate critical points of the action functional $\mca_H$, 
- $u \in \mcm(x, y) \subset C_\loc^\infty$ denotes a fixed solution to the Floer equation, 
- $C_{\searrow}(x ,y) \subset \theset{u \in C^\infty(R\cross S^1; W)}$ is the set of smooth solutions $u: \RR\cross S^1 \to W$ satisfying some conditions:

\begin{align*}
&\lim_{s\to -\infty}u(s, t) = x(t),~ \lim_{s\to\infty}u(s, t) = y(t) \\ \\
&\text{and } \abs{\dd{u}{t}(s, t)}, ~~ \abs{\dd{u}{t}(s, t) - X_H(u)}  \sim \exp(\abs{s})
\end{align*}

## Compactify to Sphere

Fix a solution
$$
u\in \mcm(x, y) \subset C_{\loc}^\infty(\RR\cross S^1; W)
.$$

We lift each solution to a map 
$$
\tilde u: S^2 \to W
$$ 
in the following way:

The loops $x, y$ are contractible, so they bound discs.
So we extend by pushing these discs out slightly:


## Lift to 2-Sphere

$$
u \in C^\infty(S^1\cross \RR; W) \quad\mapsto\quad \tilde u \in C^\infty(S^2; W) 
$$ 
\begin{center}
\includegraphics[width = 1.02\textwidth]{figures/image_2020-04-15-18-10-40.png} 
\end{center}

## Trivialize the Pullback

From earlier in the book, we have

**Assumption (6.22)**:

For every $w\in C^\infty(S^2, W)$ there exists a symplectic trivialization of the fiber bundle $w^* TW$, i.e. $\inner{c_1(TW)}{\pi_2(W)} = 0$ where $c_1$ denotes the first Chern class of the bundle $TW$.

> \tiny Note: I don't know what this pairing is. The top Chern class is the Euler class (obstructs nowhere zero sections) and are defined inductively: 
$$
c_1(TW) = e(\Lambda^n(TW)) \in H^2(W; \ZZ)
$$
> Assumption is satisfied when all maps $S^2 \to W$ lift to $B^3$ $\iff \pi_2(W) = 0$.


We have a pullback that is a symplectic fiber bundle:
\begin{center}
\begin{tikzcd}[ampersand replacement=\&]
\tilde u^* TW \ar[r, "d\tilde u"] \ar[d]
\arrow[dr, phantom, "\scalebox{1.5}{\color{black}$\lrcorner$}" , very near start, color=black]
\& TW\ar[d] \\
S^2 \ar[r, "\tilde u"] \& W
\end{tikzcd}
\end{center}

## Choose a Frame

- Using the assumption, trivialize the pullback $\tilde u ^* TW$ to obtain an orthonormal unitary frame $$\theset{Z_i}_{i=1}^{2n} \subset T_{u(s, t)} W$$ where
  - The frame depends smoothly on $(s, t) \in S^2$, 
  - $\lim_{s\to \infty} Z_i$ exists for each $i$.
  - $$\dd{}{s}, \quad \frac{\del^2}{\del s^2}, \quad \frac{\del^2}{\del s~\del t} \quad \actson Z_i \converges{s\to \pm\infty}\to 0\quad \text{for each } i$$


Claim: such trivializations exist, "using cylinders near the spherical caps in the figure".

## Define "Banach Manifold Charts"

Recall we had $W^{1, p}(x, y)$ a completion of $C^\infty$ 
\begin{align*}
\mcm(x, y) \subset C_{\searrow}^\infty(x, y) \subset \mcp^{1, p}(x , y) \underset{\text{defn}}\subset \theset{ (s, t) \mapsvia{\varphi} \exp_{w(s, t)} Y(s, t)}
.\end{align*}  

where we restrict to
 
  - $Y \in W^{1, p}(w^* TW)$, 
  - $w\in C_{\searrow}^\infty(x, y)$

Use the chosen frame $\theset{Z_i}$ to define a chart centered at $u$ of $\mcp^{1, p}(x, y)$ given by
\begin{align*}
\iota: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow \mathcal{P}^{1, p}(x, y) \\
\vector{y} = \left(y_{1}, \dots, y_{2 n}\right) & \longmapsto \exp _{u}\left(\sum y_{i} Z_{i}\right)
.\end{align*}

  - Note that the derivative at zero is $\sum_{i=1}^{2n} y_i Z_i$.

## Define the Floer Map in Charts

Define and compute the differential of the composite map $\tilde\mcf$ defined as follows:
  \begin{center}
  \begin{tikzcd}[ampersand replacement=\&]
  \mathcal{P}^{1, p}(x, y) \ar[r, "\mathcal{F}"] \ar[rr, dotted, "\tilde \mcf", bend left]
  \& L^{p}\left(\mathbb{R} \times S^{1} ; T W\right) \ar[r]
  \& L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{m}\right) \\
  u \ar[rr, "\tilde \mcf"] \& \&\frac{\partial u}{\partial s}+J(u)\left(\frac{\partial u}{\partial t}-X_{t}(u)\right)
  \end{tikzcd}
  \end{center}

  - From now on, let $\mcf$ denote $\tilde \mcf$.

## Add a Tangent

- Take the vector $$Y(s, t) \definedas (y_1(s, t), \cdots) \in \RR^{2n} \subset \RR^m$$
  
    - View $Y$ as a vector in $\RR^m$ tangent to $W$, given by $Y = \sum_{i=1}^{2n} y_i Z_i$.

- Plug $u + Y$ into the equation for $\mcf$, directly yielding

## Add a Tangent

\begin{center}
\begin{tikzcd}[ampersand replacement=\&, matrix scale=0.002]
\mcf(u) =
\& \frac{\partial u}{\partial s} 
\& + J(u) \frac{\partial u}{\partial t} 
\& - J(u)X_{t}(u) \\
\mathcal{F}(u+Y) =
\& \frac{\partial(u+Y)}{\partial s}
\&+ J(u+Y) \frac{\partial(u+Y)}{\partial t}
\&- J(u+Y) X_{t}(u+Y)
\end{tikzcd}
\end{center}

## Extract Linear Part

Extract the part that is linear in $Y$ and collect terms:
\begin{align*}
&(d \mathcal{F})_{u}(Y)  \\
& = {\color{red}\frac{\partial Y}{\partial s}} +(d J)_{u}(Y) \frac{\partial u}{\partial t} + {\color{red} J(u) \frac{\partial Y}{\partial t}} -(d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y) \\ 
& = 
\qty{ {\color{red}\frac{\partial Y}{\partial s}} + {\color{red} J(u) \frac{\partial Y}{\partial t}}}  \\
& \quad + \qty{ (d J)_{u}(Y) \frac{\partial u}{\partial t} - (d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y)} \\
.\end{align*}


- This is a sum of two differential operators:
  - One of order 1, one of order 0 (Perspective 1)
  - The Cauchy-Riemann operator, and one of order zero (Perspective 2, not immediate from this form)

## Leibniz Rule

- Now compute in charts. Need a lemma:

Lemma (Leibniz Rule)
:   For any source space $X$ and any maps
    \begin{align*}
    J: X &\to \endo(\RR^m) \\
    Y, v: X &\to \RR^m
    \end{align*}
    
    we have
    \begin{align*}
    (dJ)(Y) \cdot v = d(Jv)(Y) - J dv(Y)
    .\end{align*}

## Sketch: Proof of Leibniz Rule

Differentiate the map 
\begin{align*}
J\cdot v: X &\to \RR^m \\
x &\mapsto J(x)\cdot v(x)
\end{align*}

to obtain
\begin{align*}
&J(x + Y) v(x + y)  \\ 
&= \qty{J(x) + (dJ)_{x} (Y) } ~\cdot~ \qty{v(x) + (dv)_x(Y)} + \cdots \\
&= J(x) \cdot v(x) + {\color{blue} J(x) \cdot (dv)_x(Y) + (dJ)_x(Y) \cdot v(x)}  \\
&\quad + (dJ)_x(Y)\cdot (dv)_x(Y) + \cdots \\ \\ 
&\implies d(J\cdot v)_x(Y) =  (dJ)_x(Y) \cdot v(x) + J(x) \cdot (dv)_x(Y) 
.\end{align*}

$\qed$

## Decompose by Order 

Using the chart $\iota$ defined by $\theset{Z_i}$ to write $Y = \sum_{i=1}^{2n} y_i Z_i$ and thus
\begin{align*}
(d\mcf)_u(Y) = O_0 + O_1 
\end{align*}
where $O_0$ are order 0 terms ("they do not differentiate the $y_i$") and the $O_1$ are order 1 terms:
\begin{align*}
O_1 &= \sum_{i=1}^{2n} \qty{ \dd{y_i}{s} Z_i + \dd{y_i}{t} J(u) Z_i}  \\ \\
O_0 &= \sum_{i=1}^{2n} y_i \Bigg( \dd{Z_i}{s} + J(u) \dd{Z_i}{t} + (dJ)_u (Z_i) \dd{u}{t}  \\
&\quad\quad\quad\quad - J(u) (dX_t)_u Z_i - (dJ)_u (Z_i) X_t \Bigg)
.\end{align*}

## Order One

- Study $O_1$ first, which (claim) reduces to 
  \begin{align*}
  O_1 = \sum_{i=1}^{2n} \qty{\dd{y_i}{s} + J_0 \dd{y_i}{t}  }Z_i = \bar \del(y_1, \cdots, y_{2n})
  .\end{align*}
  where $J_0$ is the standard complex structure on $\RR^{2n} = \CC^n$

- The second equality follows from the assumption that the $Z_i$ are symplectic and orthonormal.

- Note that this writes $(d\mcf)_u(Y) = O_0 + O_{CR}$, a sum of an order zero and a Cauchy-Riemann operator.

## Recap

Note that since we've computed in charts, we have actually computed the differential of $\mcf_u$ in the following diagram

![](figures/image_2020-04-16-01-11-02.png)\

So we've technically computed $(dF_\mu)_0$.


## Order 0 Term is Linear

\begin{align*}
(d\mcf)_u &= 
\qty{ {\color{red}\frac{\partial Y}{\partial s}} + {\color{red} J(u) \frac{\partial Y}{\partial t}}}  \\
&\quad +  \qty{ (d J)_{u}(Y) \frac{\partial u}{\partial t} - (d J)_{u}(Y) X_{t}-J(u)\left(d X_{t}\right)_{u}(Y)}  \\ \\
&\definedas {\color{red} \bar \del Y} + SY
\end{align*}
where $S\in C^\infty(\RR\cross S^1; \endo(\RR^n))$ is a linear operator of order 0.

## Order 0 Symmetry in the Limit

Theorem (8.4.4, CR + Symmetric in the Limit)
:   If $u$ solves Floer's equation, then 
    $$
    (d\mcf)_u = \bar\del + S( s, t)
    $$ 
    where 

    - $S$ is linear 
    - $S$ tends to a symmetric operator as $s\to \pm \infty$, and 
    - $$\dd{S}{s}(s, t)  \converges{s\to\pm\infty}\to 0 \qtext{uniformly in $t$}$$


## Proof

Omitted -- $S$ is exactly $O_0$ from before:
\begin{align*}
O_0 
&= \sum_{i=1}^{2n} y_i \Bigg( \dd{Z_i}{s} + J(u) \dd{Z_i}{t} + {\color{blue} (dJ)_u (Z_i) \dd{u}{t}}  \\
&\quad\quad\quad\quad - J(u) (dX_t)_u Z_i - {\color{blue} (dJ)_u (Z_i) X_t} \Bigg) \\
&= \sum_{i=1}^{2n} y_i \Bigg() \dd{Z_i}{s} + { \color{blue} (dJ)_u (Z_i) \qty{ \dd{u}{t} - (Z_i) X_t} } \\
&\quad\quad\quad\quad + J(u) \dd{Z_i}{t}  - J(u) (dX_t)_u Z_i \Bigg)
.\end{align*}

- The term in blue vanishes as $s\to \pm \infty$ 
  - Using the fact that $u$ is a solution 
  - Uses $\dd{u}{s} \to 0$ uniformly (as do its derivatives?)
- Suffices to show the remaining part is symmetric in the limit

## Proof

- Write the remaining part as 
  \begin{align*}
  A(y_1, \cdots, y_{2n}) = \cdots \implies A_{ij} = A_{ji}
  \end{align*}
  using inner product calculations

- Uses the fact the $Z_i$ needed to be chosen to be unitary and symplectic.

$\qed$

## asdas

Write $O_0$ as a map $Y \mapsto S\cdot Y$, so $S\in C^\infty(\RR\cross S^1; \endo(\RR^{2n}))$ and define the symmetric operators
$$
S^{\pm} \definedas  \lim_{s\to \pm\infty} S(s, \wait) \qtext{respectively}
$$

Theorem
:   The equation 
    $$
    \del_t Y = J_0 S^{\pm} Y
    $$ 
    linearizes Hamilton's equation 
    \begin{align*}
    \dd{z}{t} = X_t(z)\qtext{at} 
    \begin{cases}
    x = \lim_{s\to -\infty} u & \text{for } S^- \\
    y = \lim_{s\to \infty} u & \text{for } S^+
    \end{cases}\quad\text{respectively}
    .\end{align*}

## Image

Reminder the $x, y$ were the top/bottom pieces of the original cylinder/sphere:


\begin{center}
\includegraphics[height= 0.8\textheight]{figures/image_2020-04-15-21-53-36.png} 
\end{center}


## Proof Sketch

- Use the fact that $\dd{Y}{t} = (dX_t)_x Y$
- Expand $\sum \dd{y_i}{t} Z_i$ in the $Z_i$ basis (roughly) to write $\dd{y_i}{t} = \sum b_{ij} y_j$ for some coefficients $b_{ij}$.
- Collect terms into a matrix/operator $B^\mp$ for $x,y$ respectively to write $$\dd{Y}{t} = B^- \cdot Y$$
- Write $(d\mcf)_u = \bar \del + S$ where $S$ is zero order and symmetric in the limit


## Proof Sketch

- Get the corresponding operator $A$ in coordinates
- Expand in a basis (roughly) as $A(\sum y_i Z_i) = \sum s_{ij} y_j Z_i$
- Check that $s_{ij} = \pm b_{i\pm n, j}$
- This implies $$S^- = - J_0 B^- \quad S^+ = -J_0 B^+ \implies \dd{Y}{t} = J_0 S^\pm Y$$

## Final Remarks

- Given a solution $u$, we have a right $\RR\dash$action, so for $s\in \RR$, 
\begin{align*}
u \cdot s \in C^\infty(\RR\cross S^1; W) \\ 
(\sigma, t) \mapsto u(\sigma + s, t)
\end{align*}
is also a solution, so $\mcf(u \cdot s) = 0$ for all $s$.

> In other words: we can flow solutions?

## Final Remarks

**Punchline**:**$\dd{u}{s}$ is a solution of the linearized equation**, since

\begin{align*}
0 = \dd{}{s} \mcf (u\cdot s) = (d\mcf)_u \qty{\dd{u}{s}}
.\end{align*}

- Along any nonconstant solution connecting $x$ and $y$, $\dim \ker (d\mcf)_u \geq 1$.


