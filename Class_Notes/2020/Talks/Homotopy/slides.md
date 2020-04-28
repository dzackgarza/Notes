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

## Example: Higher Homotopy Groups are Useful

- Application: computing $\pi_1(\SO(n, \RR)$ (rigid rotations in $\RR^n$).

- The fibration $$\SO(n, \RR) \to \SO(n+1, \RR) \to S^n$$ yields a LES in homotopy:

\begin{center}
\begin{tikzcd}[ampersand replacement=\&]
\cdots \to \pi_2 (SO(n, \RR)) \ar[r] \&
\pi_2 (SO(n, \RR)) \ar[r] \&
\pi_2 (S^n) \ar[dll] \\
\pi_1 (SO(n, \RR)) \ar[r] \&
\pi_1 (SO(n, \RR)) \ar[r] \&
\pi_1(S^n) \\
\end{tikzcd}
\end{center}

## Uses of Higher Homotopy 

Knowing $\pi_k S^n$, this reduces to 
\begin{center}
\begin{tikzcd}[ampersand replacement=\&]
\cdots 0 \to \pi_2 (SO(n, \RR)) \ar[r] \&
\pi_2 (SO(n, \RR)) \ar[r] \&
0 \ar[dll] \\
\pi_1 (SO(n, \RR)) \ar[r] \&
\pi_1 (SO(n, \RR)) \ar[r] \&
0 \\
\end{tikzcd}
\end{center}

- Thus $\pi_1(\SO(3, \RR)) \cong \pi_1(\SO(4, \RR)) \cong \cdots$ and it suffices to compute $\pi_1(\SO(3, \RR))$ (stabilization)

- Use the fact that "accidental" homeomorphism in low dimension $\SO(3, \RR) \cong_{\text{Top}} \RP^3$, and algebraic topology I yields $\pi_1 \RP^3 \cong \ZZ/2\ZZ$.

> Can also use the fact that $\SU(2, \RR) \to \SO(3, \RR)$ is a double cover from the universal cover.

## Uses of Higher Homotopy

\tiny
- Important consequence: $\SO(3, \RR)$ is not simply connected! 
- See "plate trick": non-contractible loop of rotations that squares to the identity.
- Robotics: paths in configuration spaces with singularities 
- Computer graphics: smoothly interpolating between quaternions for rotated camera views
\normalsize 
\begin{center}
\includegraphics[width = 0.45\textwidth]{figures/image_2020-04-27-21-28-03.png} 
\includegraphics[width = 0.47\textwidth]{figures/image_2020-04-27-21-29-30.png} 
\end{center}

# Spheres

## Setup

- Defining $\pi_k(X) = [S^k, X]$, the simplest objects to investigate: $X = S^n$
- Can consider the bigraded group $\pi_S \definedas [S^k, S^n]$:
\begin{center}
\includegraphics[width = 0.6\textwidth]{figures/image_2020-04-28-11-58-58.png} 
\end{center}

## But Wait!

The corresponding picture in homology is very easy:
\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-04-28-12-26-49.png} 
\end{center}
\small
> Slogan: "conservation/duality of complexity" 
\normalsize

## History

- 1895: Poincare, *Analysis situs* ("the analysis of position") in analogy to Euler *Geometria situs* in 1865 on the Kongisberg bridge problem
  - Studies spaces arising from gluing polygons, polyhedra, etc (surfaces!), first use of "algebraic invariant theory" for spaces by introducing $\pi_1$ and homology.

- 1920s: Rigorous proof of classification of surfaces (Klein, Möbius, Clifford, Dehn, Heegard) 
  - Captured entirely by $\pi_1$ (equivalently, by genus and orientability).

- **1931: Hopf discovers a nontrivial (not homotopic to identity) map $S^3 \to S^2$**

## History 
\small
- 1932/1935: Cech (indep. Hurewicz) introduce higher homotopy groups, gives map relating $\pi_* \to H_*$, shows $\pi_n X$ are **abelian** groups for $n\geq 2$.
  - Withdrew his paper because of this theorem!

- 1951: Serre uses spectral sequences to show that **all groups $\pi_k S^n$ are torsion except**, 
  - $k=n$, since $\pi_n S^n = \ZZ$
  - $k\equiv 3\mod 4, n\equiv 0 \mod 2$, then $\ZZ \oplus T$
  - Tight bounds on where $p\dash$torsion can occur.
- 1953: Whitehead shows the homotopy groups of spheres split into stable and unstable ranges. 
\normalsize

Today: We know $\pi_{n+k}S^n$ for 

- $k \leq 64$ when $n\geq k+2$ (stable range)
- $k \leq 19$ when $n < k+2$ (unstable range) 
- We *only* have a complete list for $S^0$ and $S^1$, and know *no* patterns beyond this!
  - Open for $\sim 80$ years.

## Spheres

We'll fill out as much of this table as is easily known:

\begin{center}
\includegraphics[width = 0.6\textwidth]{figures/image_2020-04-28-11-58-58.png} 
\end{center}

## k < n

**Claim:** 
$[S^k, S^n] = 0$ for $k < n$.

\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-04-28-12-45-11.png} 
\end{center}

This follows easily from CW approximation:

> > Any map $X \mapsvia{f} Y$ between CW complexes is homotopic to a cellular map.

## k < n

\begin{center}
\includegraphics[width = 0.5\textwidth]{figures/image_2020-04-27-19-59-02.png} 
\end{center}
