---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
theme: Frankfurt 
colortheme: beetle
eader-includes: |
  \usepackage{dot2texi}
  \usepackage{beamerthemesplit}
---

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


# 8.8.3: $\ind(L_1) = k^- - k^+$ 

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

## Outline

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
\includegraphics[width = \textwidth]{figures/image_2020-05-27-20-08-18.png} 
\end{center}

## Outline

## Outline


# 8.8.5: $\dim \ker F, F^*$ 


## Outline

## Outline

## Outline

## Outline

asdsadas
