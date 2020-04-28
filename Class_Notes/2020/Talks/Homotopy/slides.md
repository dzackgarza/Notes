---
title: Homotopy Groups of Spheres 
subtitle: Graduate Student Seminar
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

# Introduction 

## Outline

- Homotopy as a means of classification somewhere between homeomorphism and cobordism
- Comparison to homology
- Higher homotopy groups of spheres exist
- Homotopy groups of spheres govern gluing of CW complexes
- CW complexes fully capture that homotopy category of spaces
- There are concrete topological constructions of many important algebraic operations at the level of spaces (quotients, tensor products)
- Relation to framed cobordism?
- "Measuring stick" for current tools, similar to special values of L-functions
- Serre's computation

## Intuition

Homotopies of paths:
\begin{center}
\includegraphics[width = 0.6\textwidth]{figures/image_2020-04-27-19-41-28.png} 
\end{center}

\small
- Regard paths $\gamma$ in $X$ and homotopies of paths $H$ as morphisms 
\begin{align*}
\gamma &\in \hom_{\text{Top}}(I, X) \\
H &\in \hom_{\text{Top}}(I\cross I, X)
.\end{align*}
- Yields an equivalence relation: write $$\gamma_0 \sim \gamma_1 \iff \exists H \text{ with } H(0) = \gamma_0, H(1) = \gamma(1)$$
- Write $[\gamma]$ to denote a homotopy class of paths.
\normalsize

## Intuition

- Why care about path homotopies? Historically: contour integrals in $\CC$

\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-04-28-11-18-34.png} 
\end{center}

- By the residue theorem, for a meromorphic function $f$ with simple poles $P = \theset{p_i}$ we know that $$\oint_\gamma f(z) ~dz \text{ is determined by } [\gamma] \in \pi_1(\CC\setminus P)$$
 
## Definitions

- Generalize to a homotopy of *morphisms*: $$f, g\in \hom_{\text{Top}}(X, Y)\quad  f\sim g \iff \exists F \in \hom_{\text{Top}}(X\cross I, Y)$$ such that $F(0) = f, F(1) = g$.
- This yields an equivalence relation on morphisms, *homotopy classes of maps* $$[X, Y] \definedas \hom_{\text{Top}}(X, Y)/\sim$$
- Definition of homotopy equivalence: $$X\sim Y \iff \exists \begin{cases}f\in \hom(X, Y) \\g\in \hom(Y, X) \end{cases} \text{such that} \begin{cases}f\circ g \sim \id_Y \\ g\circ f \sim \id _X\end{cases}$$
- Similarly write $$[X] = \theset{Y\in \text{Top} \suchthat Y\sim X}.$$

## The Fundamental Group

- $\pi_1(X)$ is the group of homotopy classes of loops:
- Can recover this definition by finding a (co)representing object: $$\pi_1(X) = [S^1, X]$$
\begin{center}
\includegraphics[width = 0.9\textwidth]{figures/image_2020-04-28-11-35-37.png} 
\end{center}

## Higher Homotopy Groups

- Can now generalize to define $$\pi_k(X) \definedas [S^k, X]$$

\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-04-28-11-45-35.png} 
\end{center}

> Fun side note: this kind of definition generalizes to AG, see *Motivic Homotopy Theory* -- the (co)representing objects look $\AA^1$ or $\PP^1$.

## Classification

- Holy grail: understand the topological category completely 
  - I.e. have a well-understood geometric model one space of each homeomorphism type

\begin{center}
\includegraphics[width = \textwidth]{figures/image_2020-04-28-10-52-05.png} 
\end{center}

> Also have the derived category $\text{DTop}$, its interplay with $\text{hoTop}$ is the subject of e.g. the Poincare conjecture(s).

- Any representative from a green box: a *homotopy type*.

## Example: Homotopy Equivalence is Useful

**Proposition**:
Let $B$ be a CW complex; then isomorphism classes of $\RR^1\dash$bundles over $B$ are given by $H^1(X, \ZZ/2\ZZ)$.

- Use the fact that for any fixed group $G$, the functor
    \begin{align*}
    h_G(\wait): \text{hoTop}\op &\to \Sets \\
    X &\mapsto \theset{\text{$G\dash$bundles over $X$}}
    \end{align*}

    is representable by a space called $BG$ (Brown's representability theorem).

- I.e., let $\bung(X) =\theset{G\dash\text{bundles} / B}/\sim$, there is an isomorphism 
$$\bung(X) \cong [X, BG]$$

- In general, identify $G = \aut(F)$ the automorphism group of the fibers -- for vector bundles of rank $n$, take $G = GL(n, \RR)$.

## Example: Homotopy Equivalence is Useful

Note that for a poset of spaces $(M_i, \injects)$, the space $M^\infty \definedas \directlim M_i$.
These are infinite dimensional "Hilbert manifolds".

Proof:
\begin{align*}
\text{Bun}_{\RR^1}(X) 
&= [X, B\GL(1, \RR)]\\
&= [X, \Gr(1, \RR^\infty)] \\
&= [X, \RP^\infty] \\
&= [X, K(\ZZ/2\ZZ, 1)] \\
&= H^1(X; \ZZ/2\ZZ)
\end{align*}

Work being swept under the rug: identifying the homotopy type of the representing object.

## Example: Homotopy Equivalence is Useful

**Corollary:**
There are 2 distinct line bundles over $X = S^1$ (the cylinder and the mobius strip), since $H^1(S^1; \ZZ/2\ZZ) \cong \ZZ/2\ZZ$.

**Corollary:**
A Riemann surface $\Sigma_g$ satisfies $H^1(\Sigma_g; \ZZ/2\ZZ) = \qty{\ZZ/2\ZZ}^{2g}$ and thus there are $2^{2g}$ distinct real line bundles over it.

\begin{center}
\includegraphics[width = 0.6\textwidth]{figures/image_2020-04-28-12-00-13.png} 
\includegraphics[width = 0.3\textwidth]{figures/image_2020-04-28-12-01-36.png} 
\end{center}



# Spheres

## Setup

- Defining $\pi_k(X) = [S^k, X]$, the simplest objects to investigate: $X = S^n$
- Can consider the bigraded group $\pi_S \definedas [S^k, S^n]$:
\begin{center}
\includegraphics[width = 0.6\textwidth]{figures/image_2020-04-28-11-58-58.png} 
\end{center}

## Sphere 1
