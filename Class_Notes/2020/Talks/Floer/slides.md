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
