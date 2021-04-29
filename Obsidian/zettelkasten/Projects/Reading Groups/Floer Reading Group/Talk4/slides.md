---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
theme: Frankfurt 
colortheme: beetle
eader-includes: |
  \usepackage{dot2texi}
  \usepackage{beamerthemesplit}
---

[Floer Reading Group Fall 2020](../../../../zets/Floer%20Reading%20Group%20Fall%202020.md)

# Summary/Outline 

## Outline

What we're trying to prove:

- 8.1.5: $(d\mcf)_u$ is a Fredholm operator of index $\mu(x) - \mu(y)$.

What we have so far:

- Define
\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\end{align*}
where 
\begin{align*}
S: \RR\cross S^1 &\to \mat(2n; \RR) \\
S(s, t) &\converges{s\to\pm\infty}\to S^\pm(t)
.\end{align*}


## Outline

- Took $R^\pm: I \to \Sp(2n; \RR)$: symplectic paths associated to $S^\pm$
- These paths defined $\mu(x), \mu(y)$
- Section 8.7: 
\scriptsize
\begin{align*}
R^\pm \in \mcs \definedas \theset{R(t) \suchthat R(0) = \id, ~ \det(R(1) - \id)\neq 0} \implies L \text{ is Fredholm}
.\end{align*}
\normalsize

- WTS 8.8.1:
\begin{align*}
\ind(L)\stackrel{\text{Thm?}}{=} \mu(R^-(t)) - \mu(R^+(t)) = \mu(x) - \mu(y)
.\end{align*}

## From Yesterday

- Han proved 8.8.2 and 8.8.4.
  - So we know $\ind(L) = \ind(L_1)$
- Today: 8.8.5 and 8.8.3: 
  - Computing $\ind(L_1)$ by computing kernels.

\begin{tikzpicture}[>=latex',line join=bevel,scale=0.56]
  \pgfsetlinewidth{1bp}
%%
\pgfsetcolor{black}
  % Edge: 8.8.4: \ind(L) = \ind(L_0) -> 8.8.2: \ind(L_1) = \ind(L)
  \draw [->] (118.29bp,143.7bp) .. controls (118.29bp,135.98bp) and (118.29bp,126.71bp)  .. (118.29bp,108.1bp);
  % Edge: 8.8.2: \ind(L_1) = \ind(L) -> 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
  \draw [->] (153.78bp,72.765bp) .. controls (175.03bp,63.038bp) and (202.29bp,50.567bp)  .. (234.4bp,35.878bp);
  % Edge: 8.8.5: \dim \ker F, F* -> 8.8.3: mathrm{Ind}(L_1) = k- - k+
  \draw [->] (425.29bp,143.7bp) .. controls (425.29bp,135.98bp) and (425.29bp,126.71bp)  .. (425.29bp,108.1bp);
  % Edge: 8.8.3: mathrm{Ind}(L_1) = k- - k+ -> 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
  \draw [->] (388.79bp,72.411bp) .. controls (367.45bp,62.71bp) and (340.31bp,50.372bp)  .. (308.32bp,35.834bp);
  % Node: 8.8.4: \ind(L) = \ind(L_0)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (118.29bp,162.0bp) ellipse (118.08bp and 18.0bp);
  \draw (118.29bp,162.0bp) node {8.8.4: $\ind(L_0) = \ind(L)$};
\end{scope}
  % Node: 8.8.2: \ind(L_1) = \ind(L)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (118.29bp,90.0bp) ellipse (118.08bp and 18.0bp);
  \draw (118.29bp,90.0bp) node {8.8.2: $\ind(L_1) = \ind(L)$};
\end{scope}
  % Node: 8.8.1: \ind(L) = \mu(R^-(t)) - \mu(R^+(s)) = \mu(x) - \mu(y)
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (271.29bp,18.0bp) ellipse (271.05bp and 18.0bp);
  \draw (271.29bp,18.0bp) node {8.8.1: $\ind(L) = k^- - k^+ = \mu(x) - \mu(y)$};
\end{scope}
  % Node: 8.8.5: \dim \ker F, F*
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (425.29bp,162.0bp) ellipse (100.18bp and 18.0bp);
  \draw (425.29bp,162.0bp) node {8.8.5: $\dim \ker F, F^*$};
\end{scope}
  % Node: 8.8.3: mathrm{Ind}(L_1) = k- - k+
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (425.29bp,90.0bp) ellipse (170.87bp and 18.0bp);
  \draw (425.29bp,90.0bp) node {8.8.3: $\Ind(L_1) = k^- - k^+$};
\end{scope}
%
\end{tikzpicture}


# 8.8.5: $\dim \ker F, F^*$ 

## Recall 
\begin{align*}
L: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s, t) Y
\\ \\
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
\\ \\ 
L_{1}^{\star}: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Z & \longmapsto-\frac{\partial Z}{\partial s}+J_{0} \frac{\partial Z}{\partial t}+S(s)^t Z
\end{align*}

\scriptsize
Here ${1\over p} + {1\over q} = 1$ are conjugate exponents.
\normalsize



## Reductions

\begin{align*}
L_1^* &= -\dd{}{s} + J_0 \dd{}{t} + S(s)^t
.\end{align*}

- Since $\coker L_1 \cong \ker L_1^*$, it suffices to compute $\ker L_1^*$

- We have

\begin{align*}
J_0^1 \definedas 
\left[\begin{array}{cc}
0 & -1 \\
1 & 0
\end{array}\right]
\implies
J_0 = 
\begin{bmatrix}
J_0^1           &       &        & \\
                & J_0^1 &        & \\
                &       & \ddots & \\
                &       &        & J_0^1
\end{bmatrix} \in \bigoplus_{i=1}^n \mat(2; \RR) 
.\end{align*}

- This allows us to reduce to the $n=1$ case.

## Setup 

$L_1$ used a path of diagonal matrices constant near $\infty$:
\begin{align*}
S(s) \definedas \left(\begin{array}{cc}
a_{1}(s) & 0 \\
0 & a_{2}(s)
\end{array}\right), \quad \text { with } a_{i}(s)\definedas \left\{\begin{array}{ll}
a_{i}^{-} & \text {if } s \leq-s_{0} \\
a_{i}^{+} & \text {if } s \geq s_{0}
\end{array}\right.
.\end{align*}

\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-05-27-20-10-07.png} 
\end{center}


## Statement of Later Lemma (8.8.5)

Let $p>2$ and define
\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}

> Note: $F$ is $L_1$ for $n=1$:
\scriptsize
\begin{align*}
L_{1}: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) & \longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2 n}\right) \\
Y & \longmapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}
\normalsize

## Statement of Lemma 

\scriptsize
\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}

Suppose $a_i^\pm \not \in 2\pi \ZZ$.

1.  Suppose $a_1(s) = a_2(s)$ and set $a^\pm \definedas a_1^\pm = a_2^\pm$.
    Then

\begin{align*}
\operatorname{dim} \operatorname{Ker} F &=
2 \cdot \#\left\{\ell \in \mathbb{Z} \suchthat 
2\pi \ell \in (a^-, a+) \subset \RR \right \} \\
\operatorname{dim} \operatorname{Ker} F^{*} &=
2 \cdot \#\left\{\ell \in \mathbb{Z} \suchthat 
2\pi\ell \in (a^+, a^-) \subset\RR
\right\}
.\end{align*}

2.  Suppose $\sup_{s\in \RR} \norm{S(s)} < 1$, then

\begin{align*}
\operatorname{dim} \operatorname{Ker} F &= 
\#\left\{i \in\{1,2\} \suchthat ~a_{i}^{-}<0 \text { and } a_{i}^{+}>0\right\}\\
\operatorname{dim} \operatorname{Ker} F^{*} 
&=\#\left\{i \in\{1,2\} \suchthat ~ a_{i}^{+}<0 \text { and } a_{i}^{-}>0\right\}
.\end{align*}

## Statement of Lemma

In words:

1. If $S(s)$ is a scalar matrix, set $a^\pm = a_1^\pm = a_2^\pm$ to the limiting scalars and count the integer multiples of $2\pi$ between $a^-$ and $a^+$.

2. Otherwise, if $S$ is uniformly bounded by 1, count the number of entries the flip from positive to negative as $s$ goes from $-\infty\to \infty$.

\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-05-27-20-10-07.png} 
\end{center}

## Proof of Assertion 1
\scriptsize
1.  Suppose $a_1(s) = a_2(s)$ and set $a^\pm \definedas a_1^\pm = a_2^\pm$.
    Then

\begin{align*}
\operatorname{dim} \operatorname{Ker} F &=
2 \cdot \#\left\{\ell \in \mathbb{Z} \suchthat 
2\pi \ell \in (a^-, a+) \subset \RR \right \} \\
\operatorname{dim} \operatorname{Ker} F^{*} &=
2 \cdot \#\left\{\ell \in \mathbb{Z} \suchthat 
2\pi\ell \in (a^+, a^-) \subset\RR
\right\}
.\end{align*}
\normalsize

Step 1: Transform to Cauchy-Riemann Equations

- Write $a(s) \definedas a_1(s) = a_2(s)$.
- Start with equation on $\RR^2$, $$\vector Y(s, t) = \left[ Y_1(s, t), Y_2(s, t) \right].$$
- Replace with equation on $\CC$: $$\vector Y(s, t) = Y_1(s, t) + i Y_2(s, t).$$

## Assertion 1, Step 1: Reduce to CR

- Expand definition of the PDE 
\begin{align*}
F(\vector Y) = 0 \leadsto \bar \del\vector Y + S \vector Y = 0
\\ \\ 
\frac{\partial}{\partial s}
\vector Y
+\left(\begin{array}{cc}
0 & -1 \\
1 & 0
\end{array}\right) \frac{\partial}{\partial t}
\vector Y
+\left(\begin{array}{cc}
a(s) & 0 \\
0 & a(s)
\end{array}\right)
\vector Y
=0
.\end{align*}

- Change of variables: want to reduce to $\bar \del \tilde Y = 0$

- Choose $B \in \GL(1, \CC)$ such that $\bar\del B + SB = 0$

- Set $Y  = B\tilde Y$, which (?) reduces the previous equation to
\begin{align*}
\bar\del \tilde Y = 0
.\end{align*}


## Assertion 1, Step 1: Reduce to CR

Can choose (and then solve)
\begin{align*}
B = \begin{bmatrix}
  b(s) & 0 \\
  0 & b(s)
\end{bmatrix} \qtext{where} \dd{b}{s} = -a(s)b(s) \\ \\
\implies b(s) = \exp{\int_0^s -a(\sigma) ~d\sigma} \definedas \exp{-A(s)}
.\end{align*}

Remarks:

\scriptsize
- For some constants $C_i$, we have

\begin{align*}
A(s) = \begin{cases}
C_1 + a^- s, & s \leq -\sigma_0 \\
C_2 + a^+ s, & s \geq \sigma_0 \\
\end{cases}
.\end{align*}

- The new $\tilde Y$ satisfies CR, is continuous and $L^1_{\text{loc}}$, so elliptic regularity $\implies C^\infty$.
  
- The real/imaginary parts of $\tilde Y$ are $C^\infty$ and harmonic.

## Assertion 1, Step 2: Solve CR

- Identify $s+it \in \RR\cross S^1$ with $u = e^{2\pi z}$
- Apply Laurent's theorem to $\tilde Y(u)$ on $\CC\smz$ to obtain an expansion of $\tilde Y$ in $z$. 

- Deduce that the solutions of the system are given by
  \begin{align*}
\tilde Y (u) =\sum_{\ell \in \mathbf{Z}} c_{\ell} u^\ell  
  \implies \tilde{Y}(s+i t)
  =\sum_{\ell \in \mathbf{Z}} c_{\ell} e^{(s+i t) 2 \pi \ell}
  .\end{align*}
  where $\theset{c_\ell}_{\ell\in\ZZ} \subset \CC$ converges for all $s, t$.


## Assertion 1, Step 2: Solve CR

Use $e^{s+it} = e^s\qty{\cos(t) + i\sin (t)}$ to write in real coordinates:
\scriptsize
\begin{align*}
\tilde{Y}(s, t)=\sum_{\ell \in \mathbb{Z}} e^{2 \pi s \ell}
\begin{bmatrix}
\cos(2\pi\ell t) & -\sin(2\pi \ell t) \\
\sin(2\pi\ell t) & \cos(2\pi \ell t)
\end{bmatrix}
\begin{bmatrix}
\alpha_\ell  \\
\beta_\ell 
\end{bmatrix}
.\end{align*}

Use
\begin{align*}
Y = B\tilde Y = 
\begin{bmatrix}
e^{-A(s)} & 0 \\
0 & e^{-A(s)}
\end{bmatrix} \tilde Y
\end{align*}

to write
\begin{align*}
Y(s, t)=\sum_{\ell \in \mathbb{Z}} e^{2 \pi s \ell}
\begin{bmatrix}
e^{-A(s)} & 0 \\
0 & e^{-A(s)}
\end{bmatrix} 
\begin{bmatrix}
\cos(2\pi\ell t) & -\sin(2\pi \ell t) \\
\sin(2\pi\ell t) & \cos(2\pi \ell t)
\end{bmatrix}
\begin{bmatrix}
\alpha_\ell  \\
\beta_\ell 
\end{bmatrix}
.\end{align*}

For $s\leq s_0$ this yields for some constants $K, K'$:
\begin{align*}
Y(s, t) = \sum_{\ell\in \ZZ}
e^{2\pi\ell - a^-}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}
\normalsize

## Condition on $L^p$ Solutions

For $s\leq s_0$ we had
\begin{align*}
Y(s, t) = \sum_{\ell\in \ZZ}
e^{\qty{2\pi\ell - a^-}s}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
\end{align*}

and similarly for $s\geq s_0$, for some constants $C, C'$ we have:
\begin{align*}
Y(s, t) = \sum_{\ell\in \ZZ}
e^{\qty{2\pi\ell - a^+}s}
\begin{bmatrix}
e^C \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{C'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}

Then
\begin{align*}
Y\in L^p \iff \text{exponential terms} \converges{\ell\to\infty}\to 0
.\end{align*}

## Condition on $L^p$ Solutions: Small Tails

\scriptsize
\begin{align*}
Y(s, t) = \sum_{\ell\in \ZZ}
e^{\qty{2\pi\ell - a^-}s}
\begin{bmatrix}
e^K \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{K'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
\end{align*}
\normalsize

- $\ell \neq 0$: Need $\alpha_\ell = \beta_\ell = 0$ **or** $2\pi \ell > a^-$
- $\ell = 0$: Need both
  - $\alpha_0 = 0$ or $a^- < 0$ and
  - $\beta_0 = 0$ or $a^- < 0$.

\scriptsize
\begin{align*}
Y(s, t) = \sum_{\ell\in \ZZ}
e^{\qty{2\pi\ell - a^+}s}
\begin{bmatrix}
e^C \qty{\alpha_\ell \cos(2\pi\ell t) - \beta_\ell \sin(2\pi\ell t) }  \\
e^{C'} \qty{ \alpha_\ell \sin(2\pi\ell t) + \beta_\ell \cos(2\pi \ell t)} 
\end{bmatrix}
.\end{align*}
\normalsize

- $\ell \neq 0$: Need $\alpha_\ell = \beta_\ell = 0$ **or** $2\pi \ell < a^+$
- $\ell = 0$: Need both
  - $\alpha_0 = 0$ or $a^+ > 0$ and
  - $\beta_0 = 0$ or $a^+ > 0$.

## Counting Solutions 

\begin{align*}
\begin{cases}
\alpha_\ell = \beta_\ell = 0 \text{ or } 2\pi\ell \in (a^-, a^+) & \ell\neq 0 \\
\qty{\alpha_0 = 0 \txor 0 \in (a^-, a^+)} \txand \qty{\beta_0 = 0 \txor 0\in (a^-, a^+)} & \ell = 0
\end{cases}
.\end{align*}

- Finitely many such $\ell$ that satisfy these conditions
- Sufficient conditions for $Y(s, t) \in W^{1, p}$.

Compute dimension of space of solutions:
\scriptsize
\begin{align*}
\operatorname{dim} \operatorname{Ker} F 
&=2 \cdot \#\theset{\ell \in \mathbb{Z}^{*} \suchthat 
2\pi\ell \in (a^-, a^+) } 
+  2\cdot \indic{0 \in (a^-, a^+)}
\\
&=2 \cdot \#\left\{\ell \in \mathbb{Z} \suchthat 2\pi\ell \in (a^-, a^+) \right\}
.\end{align*}

> Note: not sure what $\ZZ^*$ is: most likely $\ZZ\smz$.
\normalsize

## Counting Solutions

Use this to deduce $\dim \ker F^*$:

- $Y\in \ker F^* \iff Z(s, t) \definedas Y(-s, t)$ is in the kernel of the operator
\begin{align*}
\tilde F: W^{1, q}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Z &\mapsto \frac{\partial Z}{\partial s}+J_{0} \frac{\partial Z}{\partial t}+S({\color{red}-s}) Y
.\end{align*}

- Obtain $\ker F^* \cong \ker \tilde F$.

- Formula for $\dim \ker \tilde F$ almost identical to previous formula, just swapping $a^-$ and $a^+$.

$\qed_1$

## Assertion 2

**Assertion 2**:
  Suppose $\sup_{s\in \RR} \norm{S(s)} < 1$, then
  \begin{align*}
  \operatorname{dim} \operatorname{Ker} F &= 
  \#\left\{i \in\{1,2\} \suchthat ~a_{i}^{-}<0 < a_{i}^{+}\right\}\\
  \operatorname{dim} \operatorname{Ker} F^{*} 
  &=\#\left\{i \in\{1,2\} \suchthat ~ a_{i}^{+}<0 <  a_{i}^{-} \right\}
  .\end{align*}


We use the following:

- Lemma 8.8.7: 
\scriptsize
\begin{align*}
\sup_{s\in \RR} \norm{ S(s) } < 1 \implies \text{the elements in }\ker F,~ \ker F^* \text{ are independent of }t
.\end{align*}

- Proof: in subsection 10.4.a.

\normalsize

## Proof of Assertion 2

\scriptsize
\begin{align*}
F: W^{1, p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) &\longrightarrow L^{p}\left(\mathbb{R} \times S^{1} ; \mathbb{R}^{2}\right) \\
Y &\mapsto \frac{\partial Y}{\partial s}+J_{0} \frac{\partial Y}{\partial t}+S(s) Y
.\end{align*}
\normalsize

- Given as a fact:
\begin{align*}
\vector Y \in \ker F \implies 
\dd{}{s}\vector Y = 
\vector a(s)\vector Y ~~~
~~~\definedas \begin{bmatrix}
-a_1(s) & 0 \\
0 & -a_2(s)
\end{bmatrix}
\vector Y
.\end{align*}

- Therefore we can solve to obtain
\begin{align*}
\vector Y(s) = \vector c_0 \exp{-\vector A(s)}\qtext{where} \vector A(s) = \int_0^s -\vector a(\sigma) ~d\sigma
.\end{align*}

## Proof of Assertion 2

- Explicitly in components:
\scriptsize
\begin{align*}
\begin{dcases}
\dd{Y_1}{s} &= -a_1(s) Y_1 \\
\dd{Y_s}{s} &= -a_2(s) Y_2 \\
\end{dcases}
\quad \implies \quad
Y_i(s) = c_i e^{-A_i(s)}, \quad
A_i(s) &= \int_0^s -a_i(\sigma) ~d\sigma
.\end{align*}

- As before, for some constants $C_{j, i}$,
\begin{align*}
A_i(s) = 
\begin{dcases}
C_{1, i} + a_i^-\cdot s & s \leq -\sigma_0 \\
C_{2, i} + a_i^+\cdot s & s \geq  \sigma_0 \\
\end{dcases}
.\end{align*}
\normalsize

- Thus 
\begin{align*}
Y_i \in W^{1, p} \iff 0 \in (a_i^-, a_i^+)
,\end{align*}

  establishing 

\begin{align*}
\dim \ker F = \#\left\{i \in\{1,2\} \suchthat 0 \in (a_i^-, a_i^+)
\right\}
.\end{align*}

$\qed_2$

# 8.8.3: $\ind(L_1) = k^- - k^+$ 

## Statement and Outline

Statement: let $k^\pm \definedas \ind(R^\pm)$; then $\ind(L_1) = k^- - k^+$.
\scriptsize

- Consider four cases, depending on parity of $k^\pm - n$
- Show all 4 lead to $\ind(L_1) = k^- - k^+$

1. $k^- \equiv k^+ \equiv n \mod 2$.
2. $k^- \equiv n, k^+ \equiv n-1 \mod 2$
3. $k^- \equiv n-1, k^+ \equiv n \mod 2$. 
4. $k^- \equiv k^+ \equiv n-1 \mod 2$
\normalsize

\begin{center}
\includegraphics[width = 0.3\textwidth]{figures/image_2020-05-27-22-54-44.png} 
\end{center}


## Case 1: $k^+ \equiv k^- \equiv n \mod 2$

\scriptsize

\begin{align*}
S_{k^-}          & = \begin{bmatrix}
-\pi             &                   &        &  &      &      &              & \\
                 & -\pi              &        &  &      &      &              & \\
                 &                   & \ddots &  &      &      &              & \\
                 &                   &        &  & -\pi &      &              & \\
                 &                   &        &  &      & -\pi &              & \\
                 &                   &        &  &      &      & (n-1-k^-)\pi & \\
                 &                   &        &  &      &      &              & (n-1-k^-)\pi \\
\end{bmatrix} \\
S_{k^+}          & = \begin{bmatrix}
-\pi             &                   &        &  &      &      &              & \\
                 & -\pi              &        &  &      &      &              & \\
                 &                   & \ddots &  &      &      &              & \\
                 &                   &        &  & -\pi &      &              & \\
                 &                   &        &  &      & -\pi &              & \\
&                   &        &  &      &      & (n-1-{\color{blue}k^+})\pi & \\
&                   &        &  &      &      &              & (n-1-{\color{blue}k^+})\pi \\
\end{bmatrix}
.\end{align*}


## Case 1: $k^- \equiv k^+ \equiv n \mod 2$

- Take $a_1(s) = a_2(s)$ so $a_1^\pm = a^\pm$
- Apply the proved lemma to obtain

\scriptsize
\begin{align*}
\dim \ker L_1 
&= 2\cdot \# \theset{\ell \in \ZZ \suchthat 2\ell \in (n-1-k^-, n-1-k^+)} \\
&= \begin{dcases}
k^- - k^+ & k^- > k^+ \\
0 & \text{else}
\end{dcases}  \\ \\
\dim \ker L_1^* &= 2\cdot \#\theset{ \ell \in \ZZ \suchthat 2\ell \in (k^- - n + 1, k^+ - n + 1)} \\
&= 
\begin{dcases}
k^+ - k^- & k^+ > k^- \\
0 & \text{otherwise}
\end{dcases} \\ \\
\implies \ind(L_1) &= \qty{k^- - k^+ \over 2} - \qty{k^+ - k^- \over 2} = k^- - k^+
.\end{align*}

## Case 2: $k^+ \not\equiv k^- \equiv n \mod 2$
\scriptsize
\begin{align*}
S_{k-}           & = \begin{bmatrix}
-\pi             &                   &        &  &          &          &              & \\
                 & -\pi              &        &  &          &          &              & \\
                 &                   & \ddots &  &          &          &              & \\
&                   &        &  & -{\color{red}\eps}\pi &          &              & \\
&                   &        &  &          & -{\color{red}\eps}\pi &              & \\
&                   &        &  &          &          & (n-1-{\color{red}k^-})\pi & \\
&                   &        &  &          &          &              & (n-1-{\color{red}k^-})\pi \\
\end{bmatrix} \\
S_{k^+}          & = \begin{bmatrix}
-\pi             &                   &        &  &          &          &              & \\
                 & -\pi              &        &  &          &          &              & \\
                 &                   & \ddots &  &          &          &              & \\
&                   &        &  & {\color{red}\eps}     &          &              & \\
&                   &        &  &          & -{\color{red}\eps}    &              & \\
&                   &        &  &          &          & (n-{\color{red}2}-k^+)\pi & \\
&                   &        &  &          &          &              & (n-{\color{red}2}-k^+)\pi \\
\end{bmatrix}
.\end{align*}
\normalsize




## Case 2: $k^+ \not\equiv k^- \equiv n \mod 2$

- Take $a_1(s) = a_2(s)$ everywhere except the $n-1$st block, where we can assume $\sup_{s\in \RR} \norm{S(s)} < 1$.
- Assertion 2 applies and we get

\scriptsize
\begin{align*}
\dim \ker L_1 
&= 2\cdot \# \theset{\ell \in \ZZ \suchthat 2\ell \in (n-1-k^-, n-2-k^+)} + 1 \\
&=
\begin{dcases}
\qty{k^- - k^+ - 1} + 1 & k^- > k^+ \\
1 & \text{otherwise}
\end{dcases} \\ \\
\dim \ker L_1^*
&=
2\cdot \#\theset{\ell \in \ZZ \suchthat 2\ell \in (k^- - n + 1, k^+ - n + 2)} \\
&=
\begin{dcases}
k^+ - k^- + 1, & k^+ > k^- \\
0 & \text{otherwise}
\end{dcases} \\
\implies \ind(L_1) &= 
\qty{ {k^- - k^+ -1 \over 2} + 1} - \qty{k^+ - k^- + 1 \over 2} =
k^- - k^+
.\end{align*}

> The other 2 cases involve different matrices $S_{k^\pm}$, but proceed similarly.

$\qed$
