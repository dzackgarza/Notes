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


\begin{dot2tex}
digraph G {
     main -> parse -> execute;
     main -> init;
     main -> cleanup;
     execute -> make_string;
     execute -> printf
     init -> make_string;
     main -> printf;
     execute -> compare;
}
\end{dot2tex}

# Section 1

## Outline

asdsdas


# Section 2

## Outline

asdsadas
