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

[../Subjects/Homotopy Theory](../Subjects/Homotopy%20Theory.md)
[Homotopy Groups of Spheres](Homotopy%20Groups%20of%20Spheres)
[../Subjects/Algebraic Topology](../Subjects/Algebraic%20Topology.md)

# Summary

## Big Points 

- Homotopy as a means of classification somewhere between homeomorphism and cobordism
- Comparison to homology
- Higher homotopy groups of spheres exist
- Homotopy groups of spheres govern gluing of CW complexes
- CW complexes fully capture that homotopy category of spaces
- There are concrete topological constructions of many important algebraic operations at the level of spaces (quotients, tensor products)
- Relation to framed cobordism?
- "Measuring stick" for current tools, similar to special values of L-functions
- Serre's computation

## History

- 1860s-1890s: (Roughly) defined by Jordan for complex integration, "combinatorial topology"
  - Original motivation: when does a path integral depend on a specific path? (E.g. a contour integral in $\CC$)
- 1895: Poincare, *Analysis situs* ("the analysis of position") in analogy to Euler *Geometria situs* in 1865 on the Kongisberg bridge problem
    Attempts to study spaces arising from gluing polygons, polyhedra, etc (surfaces!), first use of "algebraic invariant theory" for spaces by introducing $\pi_1$ and homology.
- 1920s: Rigorous proof of classification of surfaces (Klein, Möbius, Clifford, Dehn, Heegard), captured entirely by $\pi_1$ (equivalently, by genus and orientability).
- 1925-1928: Noether, Mayer, Vietoris develop general algebraic theory of homology, now "algebraic topology"
- 1931: Hopf discovers a nontrivial (not homotopic to identity) map $S^3 \to S^2$
  - Compare to homology: $H^k S^n = 0$ for $k\geq n$ is an easy theorem!
- 1932/1935: Cech (resp Hurewicz) introduce higher homotopy groups, gives a map relating homotopy to homology, shows they are abelian groups for $n\geq 2$.
  - Withdrew his paper because of this theorem!
- 1937: Freudenthal suspension theorem, investigation into "stable" phenomena.
- 1938: Pontrayagin shows link between homotopy groups of spheres and framed cobordism classes of submanifolds of $S^n$.
  - Direction of computation: using cobordism classes (geometric) to compute $\pi_k S^n$. Modern day: run the computation backwards to compute cobordism groups.
- 1940: Eilenberg, obstruction theory
- 1949: Whitehead introduces homotopy types, CW complexes, equivalences = weak equivalences. Importance of homotopy classes of maps between spheres becomes apparent
- 1951: Serre uses spectral sequences to show that *all* groups $\pi_k S^n$ are torsion except $k=n$, and $k\equiv 3\mod 4, n\equiv 0 \mod 2$.
  - In first case, $\ZZ$, in second case, $\ZZ \oplus T$ for some torsion group.
  - Tight bounds on where $p\dash$torsion can occur.
- 1953: Whitehead shows the homotopy groups of spheres split into stable and unstable ranges. 
- Today: We know $\pi_{n+k}S^n$ for 
  - $k \leq 64$ when $n\geq k+2$ (stable range)
  - $k \leq 19$ when $n < k+2$ (unstable range) 
  - We *only* have a complete list for $S^0$ and $S^1$, and know *no* patterns beyond this!

## Actual Outline

- Definitions of spheres and balls
- Definition of homotopy of maps
  - Motivations from complex analysis
- Functoriality 
- Examples of spaces that are homotopy equivalent and *aren't*.
- Example where homotopy distinguishes homologically equivalent spaces


## Images


![Simplicial Complexes vs CW Complexes](figures/image_2020-04-27-19-59-02.png)

![Stereographic Projection](figures/image_2020-04-27-20-43-11.png)

[Hopf Fibration Visualizer](http://philogb.github.io/page/hopf/#)

![Simply Connected 1](figures/image_2020-04-27-21-32-02.png)

![Simply Connected 2](figures/image_2020-04-27-21-32-31.png)

A bundle

<!--\begin{center}-->
<!--\begin{tikzcd}-->
<!--S_1 \ar[r] & S^3\ar[d] \\-->
<!--& S^1-->
<!--\end{tikzcd}-->
<!--\end{center}-->

Visualization: the same way $S^2\setminus\pt \to \RR^2$ via stereographic projection, we take $S^3\setminus\pt \to \RR^3$.
Realizes $S^3$ as a family of circles parameterized by a 2-sphere, fiber above each point is a circle.


## Theorems and Definitions

A map $f: X \to Y$ is called a *weak homotopy equivalence* if the induced maps $f^*_i: \pi_i(X, x_0) \to \pi_i(Y, f(x_0))$ are isomorphisms for every $i \geq 0$.
If a map $X \mapsvia{f} Y$ satisfies $f(X^{(n)}) \subseteq Y^{(n)}$, then $f$ is said to be a *cellular map*.
Any map $X \mapsvia{f} Y$ between CW complexes is homotopic to a cellular map.
For every topological space $X$, there exists a CW complex $Y$ and a weak homotopy equivalence $f: X \to Y$. Moreover, if $X$ is $n\dash$dimensional, $Y$ may be chosen to be $n\dash$connected and is obtained from $X$ by attaching cells of dimension greater than $n$.
**Abbreviated statement**: if $X, Y$ are CW complexes, then any map $f: X \to Y$ is a weak homotopy equivalence if and only if it is a homotopy equivalence.
(Note: $f$ must induce maps on all homotopy groups simultaneously.)
If $X$ is an $n\dash$ connected CW complex, then there are maps $\pi_i X \to \pi_{i+1} \Sigma X$ which is an isomorphism for $i\leq 2n$ and a surjection for $i=2n+1$.

- Theorem: $\pi_1 S^1 = \ZZ$
  - *Proof*: Covering space theory

- Theorem: $\pi_{1+k} S^1 = 0$ for all $0 < k < \infty$
  - *Proof*: Use universal cover by $\RR$
  - Theorem: Covering spaces induce  $\pi_i X \cong \pi_i \tilde X, i \geq 2$

- Theorem: $\pi_1 S^n = 0$ for $n \geq 2$.
  - $S^n$ is simply connected.

- Theorem: $\pi_n S^n = \ZZ$
  - Alternatively:
    - LES of Hopf fibration gives $\pi_1 S^1 \cong \pi_2 S^2$
    - Freudenthal suspension: $\pi_k S^k \cong  \pi_{k+1} S^{k+1}, k \geq 2$

- Theorem: $\pi_k S^n = 0$ for all $1 < k < n$
  - *Proof*: By cellular approximation: For $k < n$,
    - Approximate $S^k \mapsvia{f} S^n$ by $\tilde f$
    - $\tilde f$ maps the $k\dash$skeleton to a point,
    - Which forces $\pi_k S^n = 0$?
  - Alternatively: Hurewicz

- Theorem: $\pi_k S^2 = \pi_k S^3$ for all $k > 2$

- Theorem: $\pi_k S^2 \neq 0$ for any $2 < k < \infty$
  - Corollary: $\pi_k S^3 \neq 0$ for any $2 < k < \infty$

- Theorem: $\pi_k S^2 = \pi_k S^3$
  - *Proof*: LES of Hopf fibration

- Theorem: $\pi_3 S^2 = \ZZ$
  - *Proof*: Method of killing homotopy

- Theorem: $\pi_4 S^2 = \ZZ_2$
  - *Proof*: Continued method of killing homotopy

- Theorem: $\pi_{n+1} S^n = \ZZ$ for $n \geq 2$?
  - *Proof*: Freudenthal suspension in stable range?

- Theorem: $\pi_{n+2} S^n = \ZZ_2$ for $n \geq 2$?
  - *Proof*: Freudenthal suspension in stable range?
