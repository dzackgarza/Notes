---
title: 'Section 8.6 - 8.8: Setup for Computing the Index'
theme: Frankfurt 
colortheme: beetle
eader-includes: |
  \usepackage{dot2texi}
  \usepackage{beamerthemesplit}
---

# Intro 

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

- Proved 8.8.2: 


\begin{tikzpicture}[>=latex',line join=bevel,scale=0.6]
  \pgfsetlinewidth{1bp}
%%
\pgfsetcolor{black}
  % Edge: 8.8.4 -> 8.8.2
  \draw [->] (34.447bp,143.7bp) .. controls (34.447bp,135.98bp) and (34.447bp,126.71bp)  .. (34.447bp,108.1bp);
  % Edge: 8.8.2 -> 8.8.1
  \draw [->] (44.42bp,72.765bp) .. controls (49.609bp,64.317bp) and (56.07bp,53.799bp)  .. (67.229bp,35.633bp);
  % Edge: 8.8.5: Kernel Computation -> 8.8.3: $\mathrm{Ind}(L_1) = k^- - k^+$
  \draw [->] (372.45bp,143.7bp) .. controls (372.45bp,135.98bp) and (372.45bp,126.71bp)  .. (372.45bp,108.1bp);
  % Edge: 8.8.3 -> 8.8.1
  \draw [->] (111.24bp,72.765bp) .. controls (105.93bp,64.317bp) and (99.321bp,53.799bp)  .. (87.902bp,35.633bp);
  % Node: 8.8.4
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (34.45bp,162.0bp) ellipse (34.39bp and 18.0bp);
  \draw (34.447bp,162.0bp) node {8.8.4};
\end{scope}
  % Node: 8.8.2
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (34.45bp,90.0bp) ellipse (34.39bp and 18.0bp);
  \draw (34.447bp,90.0bp) node {8.8.2};
\end{scope}
  % Node: 8.8.1
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (77.45bp,18.0bp) ellipse (34.39bp and 18.0bp);
  \draw (77.447bp,18.0bp) node {8.8.1};
\end{scope}
  % Node: 8.8.5: Kernel Computation
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (372.45bp,162.0bp) ellipse (133.48bp and 18.0bp);
  \draw (372.45bp,162.0bp) node {8.8.5: Kernel Computation};
\end{scope}
  % Node: 8.8.3: $\mathrm{Ind}(L_1) = k^- - k^+$
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (372.45bp,90.0bp) ellipse (198.47bp and 18.0bp);
  \draw (372.45bp,90.0bp) node {8.8.3: $\mathrm{Ind}(L_1) = k^{-} - k^{+}$};
\end{scope}
  % Node: 8.8.3
\begin{scope}
  \definecolor{strokecol}{rgb}{0.0,0.0,0.0};
  \pgfsetstrokecolor{strokecol}
  \draw (121.45bp,90.0bp) ellipse (34.39bp and 18.0bp);
  \draw (121.45bp,90.0bp) node {8.8.3};
\end{scope}
%
\end{tikzpicture}





# Section 1

## Outline

asdsdas


# Section 2

## Outline

asdsadas
