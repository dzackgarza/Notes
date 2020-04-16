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

# Review 8.2

# Section 8.3: The Space of Perturbations of H

## Goal

**Goal**: Given a fixed Hamiltonian $H\in C^\infty(W\cross S^1; \RR)$, perturb it (without modifying the periodic orbits) so that $\mcm(x, y)$ are manifolds of the expected dimension.

## Goal

\tiny Start by trying to construct a subspace $\mcc_\eps^{\infty}(H) \subset \mcc^\infty(W\cross S^1; \RR)$, the space of perturbations of $H$ depending on a certain sequence $\eps = \theset{\eps_k}$, and show it is a dense subspace.
\begin{center}
\includegraphics[width = 0.8\textwidth]{figures/image_2020-04-14-23-36-58.png} 
\end{center}

## Idea

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








# Section 8.4: Linearizing the Floer Equation: The Differential of F
