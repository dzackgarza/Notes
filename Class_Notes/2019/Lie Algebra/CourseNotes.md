---
title: "Lie Algebras"
---

# Monday August 12

> The material for this class will roughly come from Humphrey, Chapters 1 to 5. There is also a useful appendix which has been uploaded to the ELC system online.

## Overview
Here is a short overview of the topics we expect to cover:

### Chapter 2
- Ideals, solvability, and nilpotency
- Semisimple Lie algebras
  - These have a particularly nice structure and representation theory
- Determining if a Lie algebra is semisimple using Killing forms
- Weyl's theorem for complete reducibility for finite dimensional representations
- Root space decompositions

### Chapter 3-4
We will describe the following series of correspondences:

\begin{tikzcd}
\text{Semisimple algebras} \arrow[rr, Leftrightarrow] &  & \text{Root systems} \arrow[rr, Leftrightarrow] & & \text{Dynkin diagrams} \\
& & & & \\
\text{Simple algebras over } \CC \arrow[uu, Rightarrow, "\bigoplus"] \arrow[rr, Leftrightarrow] & & \text{Irreducible root systems} \arrow[uu, Rightarrow, "\coprod"] \arrow[rr, Leftrightarrow] & & \arrow[uu, Rightarrow, "\coprod"] \text{Connected Dynkin diagrams}
\end{tikzcd}

## Classification
The classical Lie algebras can be essentially classified by certain classes of diagrams:

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-1,0) {$A_\ell:$};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[label=$\ell$, vertex] (d) at  (6,0) {};
\draw[edge] (a) to (b);
\draw[edge] (c) to (d);
\node at ($(b)!0.5!(c)$) {$\cdots$};
\end{tikzpicture}

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-1,0) {$B_\ell:$};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[label=$\ell$, vertex] (d) at  (6,0) {};
\draw[edge] (a) to (b);
\draw[edge, bend left] (c) to (d);
\draw[edge, bend right] (c) to (d);
\node at ($(b)!0.5!(c)$) {$\cdots$};
\end{tikzpicture}

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-1,0) {$C_\ell:$};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[label=$\ell$, vertex] (d) at  (6,0) {};
\draw[edge] (a) to (b);
\draw[edge, bend left] (d) to (c);
\draw[edge, bend right] (d) to (c);
\node at ($(b)!0.5!(c)$) {$\cdots$};
\end{tikzpicture}

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-1,0) {$D_\ell:$};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[label=$\ell$, vertex] (d) at  (6,2) {};
\node[vertex] (e) at  (6,-2) {};
\draw[edge] (a) to (b);
\draw[edge] (c) to (d);
\draw[edge] (c) to (e);
\node at ($(b)!0.5!(c)$) {$\cdots$};
\end{tikzpicture}

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-2,0) {$E_6, E_7, E_8:$};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[vertex] (cp) at  (4,2) {};
\node[vertex] (d) at  (6,0) {};
\node[label=$\ell$, vertex] (z) at  (8,0) {};
\draw[edge] (d) to (z);
\draw[edge] (a) to (b);
\draw[edge] (b) to (c);
\draw[edge] (c) to (cp);
%\draw[edge] (d) to (c);
\node at ($(c)!0.5!(d)$) {$\cdots$};
\end{tikzpicture}

\begin{tikzpicture}
\tikzset{vertex/.style = {shape=circle,draw,minimum size=0.2em,fill=black!60}}
\tikzset{edge/.style = {->,> = latex'}}
\node at (-1,0) {$F_4$:};
\node[vertex] (a) at  (0,0) {};
\node[vertex] (b) at  (2,0) {};
\node[vertex] (c) at  (4,0) {};
\node[vertex] (d) at  (6,0) {};
\draw[edge] (a) to (b);
\draw[edge, bend left] (b) to (c);
\draw[edge, bend right] (b) to (c);
\draw[edge] (c) to (d);
\end{tikzpicture}

## Chapters 4-5
These cover the following topics:

- Conjugacy classes of Cartan subalgebras
- The PBW theorem for the universal enveloping algebra
- Serre relations

### Chapter 6

Some import topics include:

- Weight space decompositions
- Finite dimensional modules
- Character and the Harish-Chandra theorem
- The Weyl character formula
  - This will be computed for the specific Lie algebras seen earlier

We will also see the type $A_{\ell}$ algebra used for the first time; however, it differs from the other types in several important/significant ways.

### Chapter 7
Skip!

### Topics

Time permitting, we may also cover the following extra topics:

- Infinite dimensional Lie algebras [Carter 05]
- BGG Cat$\dash\mathcal O$ [Humphrey 08]

## Content

Fix $F$ a field of characteristic zero -- note that prime characteristic is closer to a research topic.

\wrapenv{\Begin{definition}}
A **Lie Algebra** $\lieg$ over $F$ is an $F\dash$vector space with an operation denoted the Lie bracket,

\[
\begin{align*}
[\wait, \wait]: \lieg \cross \lieg \to \lieg\\
(x,y) \mapsto [x, y]
.\end{align*}
\]

satisfying the following properties:

- $[\wait, \wait]$ is bilinear
- $[x, x] = 0$
- The Jacobi identity:

\[
\begin{align*}
[x, [y, z]] + [y, [x,z]] + [z, [x, y]] = \vector 0
.\end{align*}
\]

\wrapenv{\End{definition}}

\wrapenv{\Begin{exercise}}
Show that $[x, y] = -[y,x]$.
\wrapenv{\End{exercise}}

\wrapenv{\Begin{definition}}
Two Lie algebras $\lieg, \lieg'$ are said to be isomorphic if $\varphi([x, y]) = [\varphi(x), \varphi(y)]$.
\wrapenv{\End{definition}}

## Linear Lie Algebras

Let $V = \FF^{n}$, and define $\mathrm{End}(V) = \theset{f: V \to V \suchthat V \text{ is linear}}$. We can then define $\liegl(n, V)$ by setting $[x, y] = (x\circ y) - (y\circ x)$.

\wrapenv{\Begin{exercise}}
Verify that $V$ is a Lie algebra.
\wrapenv{\End{exercise}}

\wrapenv{\Begin{definition}}
Define $$\liesl(n, V) = \theset{f \in \liegl(n, V) \suchthat \Tr(f) = 0}.$$
(Note the different in definition compared to the lie *group* $\SL(n, V)$.).
\wrapenv{\End{definition}}

\wrapenv{\Begin{definition}}
A *subalgebra* of a Lie algebra is a vector subspace that is closed under the bracket.
\wrapenv{\End{definition}}

\wrapenv{\Begin{definition}}
The symplectic algebra
\[
\begin{align*}
\liesp(2\ell, F) = \theset{A \in \liegl(2\ell, F)\suchthat MA-A^{T}M = 0} \text{ where }
M = \left(\begin{array}{c|c}{0} & {I_{n}} \\ \hline {-I_{n}} & {0}\end{array}\right)
.\end{align*}
\]
\wrapenv{\End{definition}}

\wrapenv{\Begin{definition}}

The orthogonal algebra
\[
\begin{align*}
  \lieso(2\ell, F) = \theset{A \in \liegl(2\ell, F)\suchthat MA-A^{T}M = 0} \text{ where } \\
  M = \begin{cases}
  \left(\begin{array}{l|l}
  {1} & {0} \\ \hline
  {0} & {\begin{array}{c|c}{0} & {I_{n}} \\\hline {-I_{n}} & {0}\end{array}}
  \end{array}\right) & n=2\ell + 1 \text{ odd},\\ \\
  \left(\begin{array}{c|c}{0} & {I_{n}} \\ \hline {-I_{n}} & {0}\end{array}\right) & \text{ else}.
  \end{cases}
\end{align*}
\]
\wrapenv{\End{definition}}

\wrapenv{\Begin{proposition}} The dimensions of these algebras can be computed;

- The dimension of $\liegl(n, \FF)$ is $n^{2}$, and has basis ${\theset{e_{{i,j}}}}$ the matrices if a 1 in the $i,j$ position and zero elsewhere.
![$x$ is determined to force the trace to be zero](figures/2019-08-17-01:40.png)

- For type $A_{\ell}$, we have $\dim \liesl(n, \FF) = (\ell+1)^{2} - 1$.

- For type $C_{\ell}$, we have $\abs{}{\liesp(n, \FF)} = \ell^{2} + 2\left(\frac{\ell(\ell+1)}{2} \right )$, and so elements here
\[
\begin{align*}
\left(\begin{array}{ll}{A} & {B=B^{t}} \\ {C = C^{t}} & {A^{t}}\end{array}\right)
.\end{align*}
\]

\wrapenv{\End{proposition}}

- For type $D_{\ell}$ we have
\[
\begin{align*}
\abs{}{\lieso(2\ell, \FF)}
= \dim\theset{ \left(\begin{array}{ll}{A} & {B=-B^{t}} \\ {C = -C^{t}} & {-A^{t}}\end{array}\right)}
,\end{align*}
\]
which turns out to be $2\ell^{2}-\ell$.

- For type $B_{\ell}$, we have $\dim{\lieso}(2\ell, \FF) = 2\ell^{2} -\ell+2\ell = 2\ell^{2} + \ell$, with elements of the form
\[
\begin{align*}
\left(\begin{array}{c|cc}
0 & M & N \\ \hline
-N^{t} & A & C=C^{t} \\
-M^{t} & B=B^{t} & -A^{t}
\end{array}\right)
.\end{align*}
\]
\wrapenv{\Begin{exercise}}
Use the relation $MA =  A^{tM}$ to reduce restrictions on the blocks.
\wrapenv{\End{exercise}}
\[
\begin{tikzcd}
&&  & \lieso(6)             &  &                       \\
&&  & \lieso(5) \arrow[rrd] &  &                       \\
\liesl(4) \arrow[rrruu] & \liesl(2)^2 \arrow[rr] &  & \lieso(4)             &  & \liesp(4)             \\
&&  & \lieso(3)             &  &                       \\
& \liesl(2) \arrow[rru]  &  &                       &  & \liesp(2) \arrow[llu]
\end{tikzcd}
\]

\wrapenv{\Begin{theorem}}
These are *all* of the isomorphisms between any of these types of algebras, in any dimension.
\wrapenv{\End{theorem}}

# Wednesday August 14

Recall from last time that a Lie Algebra is a vector space with a bilinear bracket, which importantly satisfies the Jacobi identity:
\[
\begin{align*}
[x, [y, z]] + [y, [x,z]] + [z, [x, y]] = \vector 0
.\end{align*}
\]

Also recall the examples from last time:

- $A_\ell \iff \liesl(\ell + 1, F)$
- $B_\ell \iff \lieso(2\ell + 1, F)$
- $C_\ell \iff \liesp(2\ell, F)$
- $D_\ell \iff \lieso(2\ell, F)$

\wrapenv{\Begin{exercise}}
Characterize these matrix subalgebras in terms of basis elements, and compute their dimensions.
\wrapenv{\End{exercise}}

## Lie Algebras of Derivations

\wrapenv{\Begin{definition}}
An **$F\dash$algebra** $A$ is an $F\dash$vector space endowed with a bilinear map
$A^2 \to A,~ (x,y) \mapsto xy$.
\wrapenv{\End{definition}}

\wrapenv{\Begin{definition}}
An algebra is **associative** if $x(yz) = (xy)z$.
\wrapenv{\End{definition}}

> Modern interest: simple Lie algebras, which have a good representation theory. Take a look a Erdmann-Wildon (Springer) for an introductory look at 3-dimensional algebras.

\wrapenv{\Begin{definition}}
Any map $\delta: A^2 \to A$ that satisfies the Leibniz rule is called a **derivation** of $A$, where the rule is given by $\delta(xy) = \delta(x)y + x\delta(y)$.
\wrapenv{\End{definition}}

\wrapenv{\Begin{definition}}
We define $\mathrm{Der}(A) = \theset{\delta \suchthat \delta\text{ is a derivation }}$.
\wrapenv{\End{definition}}

Any Lie algebra $\lieg$ is an $F\dash$algebra, since $[\wait, \wait]$ is bilinear. Moreover, $\lieg$ is associative iff $[x, [y,z]] = 0$.

\wrapenv{\Begin{exercise}}
Show that $\mathrm{Der} \lieg \leq \liegl(\lieg)$ is a Lie subalgebra. One needs to check that $\delta_1, \delta_2 \in \lieg \implies [\delta_1, \delta_2] \in \lieg$.
\wrapenv{\End{exercise}}

\wrapenv{\Begin{exercise}[Turn in]}
Define the adjoint by $\ad_x: \lieg\selfmap,~ y \mapsto [x, y]$. Show that $\ad_x \in \mathrm{Der}(\lieg)$.
\wrapenv{\End{exercise}}

## Abstract Lie Algebras

Fact: Every finite-dimensional Lie algebra is isomorphic to a linear Lie algebra, i.e. a subalgebra of $\liegl(V)$. Each isomorphism type can be specified by certain *structure constants* for the Lie bracket.
\wrapenv{\Begin{example}}
Any $F\dash$vector space can be made into a Lie algebra by setting $[x,y] = 0$; such algebras are referred to as *abelian*.
\wrapenv{\End{example}}

Attempting to classify Lie algebras of dimension at most 2.

- 1 dimensional: We can write $\lieg = Fx$, and so $[x, x] = 0 \implies [\wait, \wait] = 0$. So every bracket must be zero, and thus every Lie algebra is abelian.
- 2 dimensional: Write $\lieg = Fx \oplus Fy$, the only nontrivial bracket here is $[x, y]$. Some cases:
  - $[x, y] = 0 \implies \lieg$ is abelian.
  - $[x, y] = ax + by \neq 0$. Assume $a\neq 0$ and set $x' = ax+by, y' = \frac y a$. Now compute $[x', y'] = [ax+by, \frac y a] = [x,y] = ax+by = x'$. Punchline: $\lieg \cong Fx' \oplus Fy', [x', y'] = x'$.

We can fill in a table with all of the various combinations of brackets:

\begin{center}
\begin{tabular}{l|ll}
$[\wait, \wait]$ & $x'$  & $y'$ \\ \hline
$x'$                                               & $0$   & $x'$ \\
$y'$                                               & $-x'$ & $0$
\end{tabular}
\end{center}

\wrapenv{\Begin{example}}
Let $V = \RR^3$, and define $[a,b] = a\cross b$ to be the usual cross product.
\wrapenv{\End{example}}

\wrapenv{\Begin{exercise}}
Look at notes for basis elements of $\liesl(2, F)$,
\[
\begin{align*}
e=\left[\begin{array}{ll}{0} & {1} \\ {0} & {0}\end{array}\right],\\
h=\left[\begin{array}{cc}{1} & {0} \\ {0} & {-1}\end{array}\right],\\
f=\left[\begin{array}{ll}{0} & {0} \\ {1} & {0}\end{array}\right]
.\end{align*}
\]

Compute the matrices of $\ad(e), \ad(h), \ad(g)$ with respect to this basis.
\wrapenv{\End{exercise}}

## Ideals

\wrapenv{\Begin{definition}}
A subspace $I \subseteq \lieg$ is called an **ideal**, and we write $I \normal \lieg$, if $x,y \in I \implies [x,y]\in I$.
\wrapenv{\End{definition}}

Note that there is no need to distinguish right, left, or two-sided ideals. This can be shown using $[x,y] = [-y, x]$.

\wrapenv{\Begin{exercise}}
Check that the following are all ideals of $\lieg$:

- $\theset 0, \lieg$.
- $\mathfrak z (\lieg) = \theset{z\in \lieg \suchthat [x, z] = 0\quad \forall x\in \lieg}$
- The commutator (or derived) algebra $[\lieg, \lieg] = \theset{\sum_i [x_i, y_i] \suchthat x_i, y_i \in \lieg}$.
  - Moreover, $[\liegl(n, F),\liegl(n, F) ] = \liesl(n, F)$.

\wrapenv{\End{exercise}}


Fact: If $I, J \normal \lieg$, then

- $I+J = \theset{x+y\suchthat x\in I, y\in J} \normal \lieg$
- $I \intersect J \normal \lieg$
- $[I, J] = \theset{\sum_i [x_i, y_i] \suchthat x_i \in I, y_i \in J} \normal \lieg$

\wrapenv{\Begin{definition}}
A Lie algebra is **simple** if $[\lieg, \lieg] \neq 0$ (i.e. when $\lieg$ is not abelian) and has no non-trivial ideals. Note that this implies that $[\lieg, \lieg] = \lieg$.
\wrapenv{\End{definition}}

\wrapenv{\Begin{theorem}}
Suppose that $\ch F \neq 2$, then $\liesl(2, F)$ is not simple.
\wrapenv{\End{theorem}}

\wrapenv{\Begin{proof}}

Recall that we have a basis of $\liesl(2, F)$ given by $B = \theset{e, h, f}$ where

- $[e, f] = h$,
- $[h, e] = 2e$,
- $[h, f] = -2f$.

So think of $[h, e] = \ad_h$, so $h$ is an eigenvector of this map with eigenvalues $\theset{0, \pm 2}$. Since $\ch F \neq 2$, these are all distinct. Suppose $\liesl(2, F)$ has a nontrivial ideal $I$; then pick $x = ae + bh + cf \in I$. Then $[e, x] = 0 - 2be + ch$, and $[e, [e,x]] = 0 - 0 + 2ce$. Again since $\ch F \neq 2$, then if $c\neq 0$ then $e\in I$. Now you can show that $h\in I$ and $f\in I$, but then $I = \liesl(2, F)$, a contradiction. So $c=0$.

Then $x = bh \neq 0$, so $h\in I$, and we can compute

\begin{align*}
2e = [h, e] \in I \implies e \in I, \\
2f = [h, -f] \in I \implies f \in I
.\end{align*}

which implies that $I = \liesl(2, F)$ and thus it is simple.

\wrapenv{\End{proof}}

> Note that there is a homework coming due next Monday, about 4 questions.

# Friday August 16

Last time, we looked at ideals such as $0, \lieg, Z(\lieg),$ and $[\lieg, \lieg]$.

Definition:
If $I \normal \lieg$ is an ideal, then the quotient $\lieg/I$ also yields a Lie algebra with the bracket given by $[x+I, y+I] = [x,y] + I$.

Exercise:
Check that this is well-defined, so that if $x + I = x' + I$ and $y+I = y' + I$ then $[x,y] + I = [x', y'] + I$.

## Homomorphisms and Representations

\wrapenv{\Begin{definition}}
A linear map $\phi: \lieg_{1} \to \lieg_{2}$ is a *Lie homomorphism* if $\phi[x,y] = [\phi(x), \phi()]$.
\wrapenv{\End{definition}}

\wrapenv{\Begin{remark}}
$\ker \phi \normal \lieg_{1}$ and $\im\phi \leq \lieg_{2}$ is a subalgebra.
\wrapenv{\End{remark}}

Fact: There is a canonical way to set up a 1-to-1 correspondence $\theset{I \normal \lieg} \iff \theset{\hom \phi: \lieg \to \lieg'}$ where $I \mapsto (x \mapsto x + I)$ and the inverse is given by $\phi \mapsto \ker \phi$.

Theorem (Isomorphism theorem for Lie algebras):

- If $\phi: \lieg_{1} \to \lieg_{2}$ is a Lie algebra homomorphism, then $\lieg/\ker\phi \cong \im \phi$
- If $I,J \normal \lieg$ are ideals and $I \subset J$ then $J/I \normal \lieg g/I$ and $(\lieg/I)/(J/I) \cong \lieg/J$.
- If $I, J \normal \lieg$ then $(I+J)/J \cong I/(I\intersect J)$.

Definition:
A *representation* of a Lie algebra $\lieg$ is a Lie algebra homomorphism $\phi:\lieg \to \liegl(V)$ into a linear Lie algebra for some vector space $V$.

We call $V$ a $\lieg\dash$module with action $g\cdot v = \phi(g)(v)$.

Example: The *adjoint representation*:
\[
\begin{align*}
\ad: \lieg \to \liegl(\lieg) \\
x \mapsto [x, \wait]
.\end{align*}
\]

\wrapenv{\Begin{corollary}}
Any simple Lie algebra is isomorphic to a linear Lie algebra.
\wrapenv{\End{corollary}}

Proof: Since $\lieg$ is simple, the center $Z(\lieg) = 0$. We can rewrite the center as
\[
\begin{align*}
Z(\lieg) = \theset{x\in\lieg \suchthat \ad_{x(y)} = 0 \quad \forall y\in\lieg} \\
= \ker \ad_{x}
.\end{align*}
\]
Using the first isomorphism theorem, we have $\lieg/Z(\lieg) \cong \im \ad \subseteq \liegl (\lieg)$. But $\lieg/Z(\lieg) = \lieg$ here, so we are done.

## Automorphisms

Definition: An automorphism of $\lieg$ is an isomorphism $\lieg\selfmap$, and we define
\[
\begin{align*}
\Aut(\lieg) = \theset{\phi:\lieg\selfmap \suchthat \phi \text{ is an isomorphism }}
.\end{align*}
\]

Proposition:
If $\delta \in \mathrm{Der}(\lieg)$ is nilpotent, then
$$
\exp(\delta)\coloneqq\sum \frac{\delta^{n}} {n!} \in \Aut(\lieg).
$$

This is well-defined because $\delta$ is nilpotent, and a binomial formula holds:
\[
\begin{align*}
\frac{\delta^{n([x,y])}}{n!} = \sum_{i=0}^{n} [\frac{\delta^{i}(x)}{i!}, \frac{\delta^{n-i}(y)}{(n-i)!}]
.\end{align*}
\]
and for $n=1, \delta([x,y]) = [x, \delta(y)] + [\delta(x), y]$.

Exercise: Show that
\[
\begin{align*}
[(\exp \delta)(x), (\exp\delta)(y)] = \sum_{n=0}^{k-1} \frac {\delta^{n}([x, y])} {n!}
.\end{align*}
\]
Example: Let $\lieg = \liesl(2, \FF)$ and define
\[
\begin{align*}
s = \exp(\ad_{e}) \exp(\ad_{-f}) \exp(\ad_{e}) \in \Aut \lieg
.\end{align*}
\]

where $e,f$ are defined as (todo, see written notes).

Then define the Weyl group $W = \generators{s}$.

Exercise:
Check that $s(e) = -f, s(f) = -e, s(h) = -h$, and so the order of $s$ is 2 and $W = \theset{1, s}$.

# Monday August 19

## Solvability

> Idea: Define a semisimple Lie algebra

Definition:
The derived series for $\lieg$ is given by
\[
\begin{align*}
\lieg^{(0)} = \lieg \\
\lieg^{(1)} = [\lieg^{(0)}, \lieg^{(0)}] \\
\cdots \\
\lieg^{(i+1)} = [\lieg^{(i)}, \lieg^{(i)}]
.\end{align*}
\]

The Lie algebra $\lieg$ is *solvable* if there is some $n$ for which $\lieg^{(n)} = 0$.

Exercise (to turn in):
Check that the Lie algebra of upper triangular matrices in $\liegl(n, \FF)$.

Example: Abelian Lie algebras are solvable

Example: Simple Lie algebras are *not* solvable.

Proposition:
Let $\lieg$ be a Lie algebra, then

1. If $\lieg$ is solvable, then all subalgebras and all homomorphic images of $\lieg$ are also solvable.
2. If $I \normal \lieg$ and both $I$ and $\lieg/I$ are solvable, then so is $\lieg$.
3. If $I, J \normal \lieg$ are solvable, then so is $I+J$.

Corollary (of part 3 above):
Any Lie algebra has a unique maximal solvable ideal, which we denote the *radical* $\mathrm{Rad}(\lieg)$.

Definition:
A Lie algebra is semisimple if $\mathrm{Rad}(\lieg) = 0$.

Example:
Any simple Lie algebra is semisimple.

Example: Using part (2) above, we can deduce that we can construct a semisimple Lie algebra from *any* Lie algebra: for any $\lieg$, the quotient $\lieg/\mathrm{Rad}(\lieg)$ is semisimple.

## Nilpotency
\[
\begin{align*}
\lieg^{0} = \lieg \\
\lieg^{1} = [\lieg^{0}, \lieg^{0}] \\
\cdots \\
\lieg^{i+1} = [\lieg^{i}, \lieg^{i}]
.\end{align*}
\]

Much like the previous case, we have

Example:
Abelian Lie algebras are nilpotent.

Example:
Nilpotent Lie algebras are solvable.

Example:
The *strictly* upper triangular matrices (with zero on the diagonal) are nilpotent.

1. If $\lieg$ is nilpotent, then all subalgebras and all homomorphic images of $\lieg$ are also nilpotent.
2. If $\lieg/Z(\lieg)$ is nilpotent, then so is $\lieg$.
3. If $\lieg \neq 0$ is nilpotent, then $Z(\lieg) \neq 0$.

Claim:
If $\lieg$ is nilpotent, then $\ad_x \in \mathrm{End}(\lieg)$ is nilpotent for all $x\in \lieg$.

Proof:
This is because $\lieg^n = 0 \iff [\lieg, [\lieg, [\lieg, \cdots]]] = 0$, and so for every $x_i, y \in \lieg$ we have $[x_1, [x_2, \cdots [x_n, y]]] = 0$, and so $\ad_{x_1} \circ \ad_{x_2} \circ \cdots \ad_{x_n} = 0$ which implies that $\ad_x^n = 0$ for all $x\in \lieg$.

Theorem [Engel]:
If $\ad_x$ is nilpotent for all $x\in \lieg$, then $\lieg$ is nilpotent.

> Remark: This can be confusing if $\lieg$ is a linear algebra, we can consider elements $x \in\lieg$ and ask if it is the case $x$ being nilpotent (as an endomorphism) iff $\lieg g$ is nilpotent? False, a counterexample is $\lieg = \liegl(2, \CC)$, where there exists an $x$ which is *not* nilpotent while $\ad_x$ *is* nilpotent, which contradicts the above theorem.

Proof:

Lemma:
Let $\lieg \subseteq \liegl(V)$ be a Lie subalgebra for some finite dimensional vector space $V$. If $x$ is nilpotent as an endomorphism on $V$ for all $x\in V$, then there exists a nonzero vector $v\in V$ such that $\lieg v =0$, so $x\in \lieg \implies x(v) = 0$.

Proof of lemma
Use induction on $\dim \lieg$, splitting into two separate base cases:
- Case $\dim \lieg = 0$, then $\lieg = \theset{0}$.
- Case $\dim g = 1$, left as an exercise.

Inductive step: Let $A$ be a maximal proper subalgebra and define $\phi: A \to \liegl(\lieg/A)$ where $a \mapsto (x + A \mapsto [a, x] + A)$. We need to check that $\phi$ is a homomorphism, this just follows from using the Jacobi identity.

We also need to show that $\im \phi \leq \liegl(\lieg/a)$ is a Lie subalgebra, and $\dim \im \phi < \dim \lieg$. The claim is that $\phi(a) \in \mathrm{End}(\lieg/A)$ is nilpotent for all $a\in A$. By the inductive hypothesis, there is a nonzero coset $y + A \in \lieg/A$ such that $(\im \phi) \cdot (y+A) = A$. Since $y\not\in A$, then $\phi(a)(y+A) = A$ for all $a\in A$, and so $[a,y]\in A$.

We want to show that $A$ is a subalgebra of codimension 1, and $A \oplus F_y \leq \lieg$ is a Lie subalgebra.
This is because $[a_1 + c_1y, a_2 + c_2 y] = [a_1, a_2] + c_2[a_1, y] - c_2[a_2, y] + c_1c_2[y, y]$. The last term is zero, the middle two terms are in $A$, and because $A$ is closed under the bracket, the first term is in $A$ as well.

But then $A \oplus F_y$ is a larger subalgebra than $A$, which was maximal, so it must be everything. So $A \oplus F_y = \lieg$. So $A \normal \lieg$ because $[a_1, a_2 + cy]$ is in $A, A \oplus F_y = \lieg$ respectively, and this equals $[a_1, a_2] + c[a_1, y]$, where both terms are in $A$.

Proof to be continued on Friday!

# Wednesday August 21

Last time: we had a theorem that said that if $\lieg \in \liegl(V)$ and every $x\in\lieg$ is nilpotent, then there exists a nonzero $v \in V$ such that $\lieg v = 0$.

We proceeded by induction on the dimension of $V$, constructing $\im \phi \subseteq \liegl(\lieg/A)$, and showed that $\lieg = A \oplus Fy$. Now consider
$$
W = \theset{v\in V \suchthat Av = 0},
$$

which is $\lieg\dash$invariant, so $\lieg(W) \subseteq W$, or for all $a\in A, x\in \lieg, v\in W$, we have $a\actson x(v) = 0$. This is true because $a\actson x = x\circ a + [a, x] \in \liegl(V)$. But $V$ is killed by any element in $A$, and both of these terms are in $A$. In particular, the $y$ appearing in $Fy$ also satisfies $y \in W$. Consider $\restrictionof{y}{W} \in \mathrm{End}(w)$, and we want to apply the inductive hypothesis to $F \restrictionof{y}{W} \subseteq \liegl(V)$.

We need to check that $\restrictionof{y}{W} \in \mathrm{End}(V)$, which is true exactly because $y$ is nilpotent.
So we can construct a nonzero $v\in W \subset V$ such that $y(v) = 0$, and so $\lieg v = 0$.

Claim: $\phi(a) \in \mathrm{End}(\lieg/A)$ is nilpotent. Each $a\in A\subset \lieg$ is nilpotent by assumption.
Define the maps for left multiplication by $a$, $m_\ell: x \mapsto ax$, and the right multiplication $m_r: x \mapsto xa$.
These are nilpotent, and since $m_\ell, m_r$ commute, the difference $m_\ell - m_r$ is nilpotent, and this is exactly $\ad_a$. But then $\phi(a)$ is nilpotent.

> Good proof for using all of the definitions!

Now we can see what the consequences of having such a nonzero vector are. This theorem implies Engel's theorem, which says that if $\ad_x \in \mathrm{End}(\lieg)$ is nilpotent for every $x\in \lieg$, then $\lieg$ is nilpotent.

Proof: By induction on dimension. The base case is easy. For the inductive step, the previous theorem applies to $\ad g \subset \liegl(\lieg)$. So we can produce the nonzero $v\in \lieg$ such that $\ad \lieg v = 0$. Then $[x, v] = 0$ for all $x\in\lieg$, so either $v\in Z(\lieg)$ or $Z(\lieg) \neq 0$. In either case, $\lieg / Z(\lieg)$ has smaller dimension. Since $\ad_x$ is nilpotent, so is $\ad_x + Z(\lieg)$, and so $\lieg/Z(\lieg)$ is nilpotent.
By an earlier proposition, since the quotient is nilpotent, so is the total space. $\qed$

Let $\mathfrak{N}(F)$ be the subalgebra of $\liegl(F)$ consisting of strictly upper triangular matrices. We have a corollary: if $\lieg \subset \liegl(n, F)$ is a Lie subalgebra such every $x\in \lieg$ is nilpotent as an endomorphism of $F$, then the matrices of $\lieg$ with respect to some bases of in $\mathfrak{N}(n, F)$.

The proof is by induction on $n$, where the base case is easy. For the inductive step, we use the previous theorem to get a $v_1$ such that $x(v_1) = 0$ for all $x\in \lieg$. Let $\overline V = F^n/Fv_1 \cong F^{n-1}$, and define $\phi: \lieg \to \liegl(\overline V)$ where $x \mapsto (\overline y \mapsto \overline{y(x)})$.

Then $\im \phi \leq \liegl(n-1, F)$ as a subalgebra, and every $\phi(x)\in \mathrm{End}(F^{n-1})$ is nilpotent, since $x$ was nilpotent on the larger space. But (see notes) then $x$ can be written as a strictly upper-triangular matrix.

## Chapter 2: Semisimple Lie Algebras

We now assume $\mathrm{char} ~F = 0$ and $\overline F = F$.

Theorem:
If $\lieg$ is a solvable Lie subalgebra of $\liegl(V)$ for some finite dimensional $V$, then $V$ contains a common eigenvector for a $x\in\lieg$, i.e. a $\lambda: \lieg \to F, x \mapsto \lambda(x)$ such that $x(v) = \lambda(x) v$ for all $x\in\lieg$.

Proof: We will use induction on the dimension of $\lieg$. For the inductive step:

Claim 1: There is an ideal $A\normal \lieg$ such that $\lieg = A \oplus Fy$ for some $y\neq 0$, so $A$ is a subalgebra of a solvable Lie algebra $\lieg$ and thus solvable itself. By hypothesis, we can produce a $w \in V\setminus\theset{0}$, and thus a functional $\lambda: A \to F$ such that $aw = \lambda(a) w$ for all $a\in A$. So we define
$$
V_\lambda = \theset{v\in V \suchthat av = \lambda(a)v \forall a\in A}
$$

where $w\in V_\lambda$.

Claim 2: $y(V_\lambda) \subseteq V_\lambda$, or $\restrictionof{y}{V_\lambda}\in\mathrm{End}(V_\lambda)$.

Thus $F(\restrictionof{y}{V_\lambda}) \leq \liegl(V_\lambda)$ is a Lie algebra of dimension 1, and thus solvable. By the inductive hypothesis, we can find a $v\in V_\lambda$ and some $\mu \in F$ such that $y(v) = \mu v$. An arbitrary element $x\in\lieg$ can be written as $x = a + cy$ for some $a\in A, c\in F$ and it acts by $x(v) = a(v) + cy(v) = \lambda(a) v + c\mu v = (\lambda(a) + c)v \in V_\lambda$.


# Friday August 23

Chapter 3: Theorems of Lie and Cartan

## 4.1: Lie's Theorem

Theorem:
Let $L$ be a solvable subalgebra of $\liegl(V)$, where $V$ is finite-dimensional.
If $V\neq 0$, then $V$ contains a common eigenvector for all of the endomorphisms in $L$.

Proof:
Use induction on $\dim L$.
The case $\dim L = 0$ is trivial.
We'll attempt to mimic the proof of Theorem 3.3.
The idea is to

1. Locate an ideal of $K$ of codimension 1,
2. Show by induction that common eigenvectors exist for $k$,
3. Verify that $L$ stabilizes a space consisting of such eigenvectors,
4. Find in that space an eigenvector for a single $z \in L$ satisfying $L = K + Fz$.

Step (1):
Since $L$ is solvable and of positive dimension, then $L \lneq [L, L]$.
Otherwise, if $L = [L, L]$, then $L^{(1)} = L \implies L^{(n)} = L$, which would contradict $L$ being solvable.

Since $[L, L]$ is abelian, any subspace is automatically an ideal.
So take a subspace of codimension one, then its inverse image $K \normal L$ is an ideal satisfying $[L, L] \subseteq K$.

Step (2):
Use induction to find a common eigenvector $v\in V$ for $K$.
($K$ is solvable; if $K=0$ then $L$ is abelian of dimension 1 and any eigenvector for a basis vector of $L$ finishes the proof.)

This means that $x\in K \implies x\actson v = \lambda(x) v$ for some $\lambda: K \to F$ a linear functional.
Fix this $\lambda$, and let $W = \theset{w\in V \suchthat x\actson w = \lambda(x) w \forall x\in K}$; note that $W \neq 0$.

Step (3):
This will involve showing that $L$ leaves $W$ invariant.
Assume for the moment that this is done, and proceed to step (4).

Step (4):

Write $L = K + Fz$.
Since $F$ is algebraically closed, we can find an eigenvector $v_0 \in W$ of $z$ for some eigenvalue of $z$.
Then $v_0$ is a common eigenvector for $L$, and $\lambda$ can be extended to a linear function on $L$ satisfying $x\actson v_0 = \lambda(x) v_0$ where $x\in L$.

It remains to show that $L$ stabilizes $W$.
Let $w\in W, x\in L$. 
To test whether or not $x\actson w \in W$, we take an arbitrary $y\in K$ and examine
$$
yx \actson w = xy \actson w - [x, y]\actson w = \lambda(y)x\actson w - \lambda([x, y]) w.
$$

> Note: the above equality is an important trick.

Thus we need to show that $\lambda([x, y]) = 0$.
To this end, fix $w\in W, x\in L$.
Let $n > 0$ be the smallest integer for which $w, x\actson w, \cdots x^n \actson w$ are all linearly *independent*.
Let $W_i = \mathrm{span}(\theset{w, x\actson w, \cdots x^{i-1} \actson w})$ and set $W_0 = 0$.
Then $\dim W_n = n$, and $W_{n+i} = W_n$ for all $i\geq 0$.
Moreover, $x$ maps $W_n$ into itself. 
It is easy to check that each $y\in K$ is represented by an upper-triangular matrix with diagonal entries equal to $\lambda(y)$.
This follows immediately from the congruence 
$$
yx^i \actson w = \lambda(y) x^i \actson w \mod W_i,
$$
which can by proved by induction on $i$. 
The case $i=0$ is trivial.
For the inductive step, write 
$$
yx^i \actson i = yxx^{i-1}\actson w = xyx^{i-1}\actson w = [x, y]x^{i-1} \actson w
$$
By induction, 
$$
yx^{i-1} = \lambda(y) x^{i-1}\actson w + w',
$$
where $w' \in W_{i-1}$.
Since $x$ maps $W_{i-1}$ into $W_i$ by construction, the congruence holds for all $i$.

According to our description of the action of $y\in K$ on $W_n$, we have $\Tr_{W_n}(y) = n\lambda(y)$.
In particular, this is true for elements $k$ of $f$ of the special form $[x, y]$ where $x$ is as it was above and $y$ is in $K$.

**But both $x$ and $y$ stabilize $W_n$, so $[x, y]$ acts on $W_n$ as the commutator of two endomorphisms of $W_n$, and the trace is therefore zero.**

We conclude that $n\lambda([x, y]) = 0$. 
Since $\mathrm{char} F = 0$, this forces $\lambda([x, y]) = 0$ as required. $\qed$

Corollary A (Lie's Theorem):
Let $L \leq \liegl(V)$ be a solvable subalgebra where $\dim V = n < \infty$.
Then $L$ stabilizes some flag in $V$, i.e. the matrices of $L$ relative to a suitable basis of $V$ are upper triangular.

Proof: 
Use the above theorem, along with induction on $\dim V$.
This is similar to the proof of corollary 3.3.

## 4.2: Jordan-Chevalley Decomposition

Fact 1:

The Jordan Canonical Form of a single endomorphism $x$ over $F$ algebraically closed is an expression of $x$ in matrix form as a sum of blocks:
![Image](figures/2019-09-29-20:34.png)

Fact 2:

Call $x\in \mathrm{End} V$ *semisimple* if the roots of its minimal polynomial over $F$ are all distinct.
Equivalently, if $F$ is algebraically closed, then $x$ is semisimple iff $x$ is diagonalizable.

Fact 3:

Two commuting semisimple endomorphisms can be simultaneously diagonalized. 
Therefore, their sum or difference is again semisimple.

Proposition:
Let $V$ be a finite dimensional vector space over $F$ and $x\in\mathrm{End} V$. 
Then

a. There exist unique $x_s, x_n \in \mathrm{End} V$ satisfying the conditions $x = x_s + x_n$, $x_s$ is semisimple, $x_n$ is nilpotent, and $x_s, x_n$ commute.

b. There exists polynomials $p(t), g(t)$ such that $x_s = p(x)$ and $x_n = g(x)$.
In particular, $x_s, x_n$ commute with any endomorphism commuting with $x$.

c. If $A < B < V$ are subspaces and $x$ maps $B$ into $A$, then $x_s, x_n$ also map $B$ into $A$.

The decomposition $x = x_s + x_n$ is called the (additive) **Jordan-Chevalley decomposition** of $x$, or just the Jordan decomposition. 
$x_s, x_n$ are respectively called the **semisimple part** and the **nilpotent part** of $x$.

Example:
\[
\begin{align*}
x = \left(\begin{array}{ll}{1} & {1} \\ {0} & {1}\end{array}\right) \implies
x_s = \left(\begin{array}{ll}{1} & {0} \\ {0} & {1}\end{array}\right),\quad
x_n = \left(\begin{array}{ll}{0} & {1} \\ {0} & {0}\end{array}\right)
.\end{align*}
\]

Note that $x_s x_n = x_n = x_n x_s$, $x_s = 2x - x^2$, and $x_n = x^2 - x$.
We thus have $p(t) = 2t-t^2$ and $q(t) = t^2 - t$.

# Monday August 26

Definition (Jordan Decomposition)

Let $X \in \mathrm{End}(V)$ for $V$ finite dimensional. Then,

(a) There exists a unique $X_s, X_n \in \mathrm{End}(V)$ such that $X = X_s + X_n$ where $X_s$ is semisimple, $X_n$ is nilpotent, and $[X_s, X_n] = 0$.

(b) There exists a $p(t), q(t) \in t \FF[t]$ such that $X_s = p(X), X_n = q(X)$.

(Polynomials with no constant term.)

Proof of (a): Assume $X_s = X_s + X_n = X_s' + X_n'$, so both have bracket zero. Assuming that (b) holds, we have $X_s = p(X)$, and so
$$
[X, X_s] = [X_s + X_n', X_s'] = [X_s', X_s'] + [X_s', X_n'] = 0 \implies
[p(X), X_S'] = 0 = [X_s, X_s']
$$

Using fact (c) from last time, then $X_s, X_s'$ can be diagonalized simultaneously, and so $X_s - X_s'$ is semisimple.

On the other hand, if $X_n', X_n$ are nilpotent, and since these commute, $X_n - X_n'$ is nilpotent. But then this is a Jordan decomposition of the zero map, i.e.
$$
0 = X - X = (X_s - X_s') + (X_n + X_n')
$$
where the first term is semisimple and the second is nilpotent. Then each term is both semisimple *and* nilpotent, so they must be zero, which is what we wanted to show.

Proof of part (b): Let $m(t) = \prod_{i=1}^r (t-\lambda_i)^{m_i}$ be the minimal polynomial of $X$, where each $m_i \geq 1$ and the $\lambda_i$ are distinct.
Then the primary composition of $V$ is given by
$$
V = \bigoplus_{i=1}^r V_i,\quad V_i = \ker(X - \lambda_i I_V) \neq 0, \quad X(V_i) \subseteq V_i
$$
Claim:
There exists a polynomail $p\in F[t]$ such that
\[
\begin{align*}
p &= \lambda \mod (t-\lambda_i)^{m_i} \quad \forall i, \\
p &= 0 \mod t
.\end{align*}
\]

The existence follows from the Chinese Remainder Theorem.

What is $p(x) \actson V_i$? This acts by scalar multiplication by $\lambda_i$ for all $i$. (Check).
Because of the restrictive conditions, $p(x)$ has no constant term.

![???](figures/2019-08-28-09:28.png)

So $p(X) = X_s$ is the semisimple part we want. Now just set $q(t) = t - p(t)$, then $X_n \coloneqq q(X) = X - X_s$ is nilpotent.

Example:
The Jordan Decomposition is invariant under taking adjoints.

If we have $X = X_s + X_n$, then $\ad_X \in \mathrm{End}(\mathrm{End}(V))$. It can be shown that $(\ad_X)_s + (\ad_X)_n = \ad(X_s) + \ad(X_n)$.

Let $e_{ii}$ be the elementary matrix with a 1 in the $i, j$ position. You can write $\ad_X$ as a $4\times 4$ matrix (see image).

![Image](figures/2019-08-28-09:39.png)
![Image](figures/2019-08-28-09:40.png)
![Image](figures/2019-08-28-09:40.png)

You can check that $(\ad_X)_S = 0, \ad(X_s) = 0$, and $(\ad X)_n$ is the Jordan form given above.

Lemma:

(a) $x \in \mathrm{End}(V) \implies \ad(x)_s = \ad(x_s)$ and $\ad(x)_n = \ad(x_n)$.

(b) If $A$ is a finite dimensional $\FF\dash$algebra, then $\delta \in \mathrm{Der}(A) \implies \delta_s, \delta_n \in \mathrm{Der}(A)$ as well.


Proof of (a):

Check that $\ad(x) = \ad(x_s) + \ad(x_n)$.
Then for $y\in \mathrm{End}(V)$, we have
\[
\begin{align*}
(\ad(x))(y)
&= [x, y] \\
&= [x_s + x_n, y] \\
&= [x_s, y] + [x_n, y] \\
&- (\ad(x_s))(y) + (\ad(x_n))(y)
.\end{align*}
\]

Using theorem 3.3, $x_n$ nilpotent $\implies$ $\ad(x_n)$ is also nilpotent. So write $x_s = \sum \lambda_i e_{ii}$ with the eigenvalues on the diagonal. Then $\ad x_s (e_{ij}) = (\lambda_i - \lambda_j)e_{ij}$ for all $i, j$. But then $\ad x_s$ is given by a matrix with $\lambda_i - \lambda_j$ in the $i,j$ position and zeros elsewhere. By the uniqueness of the Jordan decomposition, the statement follows.

Proof of (b):

Since $\delta \in \mathrm{Der}(A)$, the primary decomposition with respect to $\delta$ is given by
$$
A = \bigoplus_{\lambda \in F} A_\lambda \quad \text{where} ~A_\lambda = \theset{a\in A \suchthat (\delta - \lambda I)^k a = 0 ~\text{for some}~ k >> 0}.
$$
So $\delta_s \actson A_\lambda$ by scalar multiplication (by $\lambda$). Then for $\lambda, \mu \in \FF$, we have

![Image](figures/2019-08-28-09:54.png)

So $[A_x, A_y]  \subseteq A_{\lambda + \mu}$ for all $x, y \in A$. But then

![Image](figures/2019-08-28-09:56.png)

and so $\delta_s \in \mathrm{Der}(A)$, and $\delta_n = \delta - \delta_s \in \mathrm{Der}(A)$ as well.

# Wednesday August 28

Todo

# Friday August 30

Review of bilinear forms: let $V = \FF^n$.

Definition: A bilinear form $\beta: V^2 \to \FF$ can be represented by a matrix $B$ with respect to a basis $\theset{\vector v_i}$ such that
$$
\beta \beta(\sum a_i \vector v_i, \sum b_i \vector v_i) = (a_1 ~a_2 ~\cdots) B (b_1 ~b_2 ~\cdots)
$$


- $\beta$ is *symmetric* iff $\beta(a,b) = \beta(b,a)$.
- $\beta$ is *symplectic* iff $\beta(a, b) = -\beta(b, a)$.
- $\beta$ is *isotropic*  iff $\beta(a, a) = 0$.

For a subspace $U \leq V$, define
$$
U^\perp \coloneqq \theset{\vector v\in V \suchthat \beta(\vector u, \vector v) = \vector 0 ~\forall u\in U}.
$$

> Note: in general, left/right orthogonality are distinguished, but these will be identical when $\beta$ is symmetric/symplectic.

The form $\beta$ is said to be *non-degenerate* iff $V^\perp = 0$ iff $\det B \neq 0$.

Assume $F$ is an algebraically closed field, so $\overline F = F$, and $\mathrm{char} F \neq 2$, then

- If $\beta$ is non-degenerate and symmetric, then $B \sim I_n$
- If $\beta$ is non-degenerate and symplectic, then $B \sim [0, I_{n/2}; I_{n/2}, 0]$.

Remark:

$\lieso(n, \FF) = \theset{x\in \liegl(n, F) \suchthat \beta(x(u), v) = -\beta(u, x(v))}$, where $B$ has the matrix $[0, I; I, 0]$ if $n$ is odd, or this matrix with a 1 in the top-left corner if $n$ is odd.

Similarly, $\mathfrak{sp}(2m, \FF)$ can be described this way with the matrix $[0, -I_m; -I_m, 0]$.

Overview:
The killing form is defined as $\kappa: \lieg^2 \to \FF$ where $\kappa(x, y) = \mathrm{tr}(\ad_x \circ \ad_y)$.

Then we have **Cartan's Criteria**:

- $\lieg$ solvable $\iff$ $\kappa(x,y) = 0 \forall x\in [\lieg, \lieg], y\in \lieg$.
- $\lieg$ semisimple $\iff \kappa$ is non-degenerate.

Note that if $\lieg$ is semisimple, then $\lieg = \bigoplus_i I_i$ with each $I_i \normal \lieg$ and simple.

## Cartan's Criteria

Some facts:

1. $\kappa$ is symmetric
2. If $\lieg$ is finite dimensional, then $\kappa$ is associative, i.e $\kappa([x,y], z) = \kappa(x, [y, z])$.

Exercise: Show that if $I \normal \lieg$, then $I^\perp \leq \lieg$ is an ideal.

Proof of (2):
In section 4.3, it was shown that $\mathrm{tr}([a,b] \circ c) = \mathrm{tr}(a \circ [b, c])$ for all $a,b,c \in \mathrm{End}(V)$ (provided $V$ is finite dimensional).

So
\[
\begin{align*}
\kappa([x,y], z) &= \mathrm{tr}(\ad_{[x, y]} \circ \ad_z) \\
&= \mathrm{tr}([\ad_x, \ad_y] \circ \ad_z) \\
&= \mathrm{tr}(\ad_x \circ [\ad_y, \ad_z]) \\
&= \mathrm{tr}(\ad_x \circ \ad_{[y, z]} ) \\
&= \mathrm{tr}(x, [y, z]).
.\end{align*}
\]

Theorem:
$\lieg$ is semisimple iff $\kappa$ is nondegenerate.

Proof:
$\implies$: We want to show that $\lieg^\perp = 0$. Note that $[\lieg^\perp, \lieg^\perp] \subseteq \lieg$, and so for all $x\in [\lieg^\perp, \lieg^\perp]$ and for any $y\in \lieg^\perp$, we have
$$
\kappa(x, y) = \mathrm{tr}(\ad_x \circ \ad_y) = 0
$$
by the const(?) of $\lieg^\perp$. This implies $\lieg^\perp$ is solvable.

Using fact (2), we have $\lieg^\perp \normal \lieg$ and thus $\lieg^\perp \subseteq \mathrm{rad}(\lieg)$, which is 0 since because $\lieg$ is semisimple. 
So either $\lieg^\perp = 0$ or $\kappa$ is nondegenerate.

> Used the fact that the radical was a maximal solvable ideal.

$\impliedby$: We want to show that for all $I \normal \lieg$ where $[I, I] = 0$, we have $I^\perp \subseteq \lieg^\perp$.

For $x\in I, y\in \lieg$, we have
$$
(\ad_x \circ \ad_y)^2 = \lieg \mapsvia{\ad_y} \lieg \mapsvia{\ad_x} I \mapsvia{\ad_y} I \mapsvia{\ad_x} 0
$$

And thus $\mathrm{tr}(\ad_x \circ \ad_y) = 0$ and $I \subseteq \lieg^\perp$.


Suppose that $\lieg$ is *not* semisimple. Then there exists a solvable ideal $J \neq 0$ such that the last term $J^i$ in the derived series is an ideal $I \normal \lieg$ such that $[I, I] = 0$, forcing $J^i \subset \lieg^\perp = 0$, which is a contradiction.

## Section 5.2

Theorem:
If $\lieg$ is semisimple, then

a. There exist ideals $I_i \normal \lieg$ which are simple Lie algebras satisfying $\lieg = \bigoplus I_i$. Note that $[I_i, I_j] \subseteq I_i \intersect I_j = 0$, since direct summands intersect only trivially.

b. Every simple $I \normal \lieg$ is one of these $I_i$.

c. $\kappa_{I_i} = \restrictionof{\kappa_{\lieg}}{I_i \cross I_i}$, so

![Image](figures/2019-09-06-09:48.png)

Remark:
$\lieg$ is semisimple $\iff \lieg = \bigoplus_i I_i$ for some simple Lie algebras $I_i$.

$\impliedby$: For all $i, S \coloneqq \mathrm{rad} \lieg, I_i \normal I_i$ is a solvable ideal. This implies that it is 0, since $I_i$ is simple.

By definition, simple Lie algebras are not abelian.

Supposing that $S = I_i$, we would then have $[S. S] \neq 0$ since $[I_i, I_i] \neq 0$ by definition. But $[S, S] \neq S$ because $S$ is solvable, which says that $S$ is not simple (a contradiction).

Note that $[\mathrm{rad}\lieg, \lieg] \subseteq \bigoplus [\mathrm{rad} \lieg, I_i] = 0$, which forces $\mathrm{rad}\lieg \subseteq Z(\lieg)$. Since $I_i$ is simple, $Z(I_i) = 0$ for all $i$. But $Z(\lieg) = \bigoplus Z(I_i) = 0$, and this forces $\mathrm{rad}(\lieg) \subseteq Z(\lieg) \implies \mathrm{rad}\lieg = 0$. So $\lieg$ is semisimple.

Next time -- starting the representation theory with $\liesl(2, \FF)$.

# Monday September 2

Recall the killing form:
\[
\begin{align*}
\kappa: lieg^2 \to \FF \\
(x,y) \mapsto \mathrm{tr}(\ad_x \circ \ad_y)
.\end{align*}
\]

and Cartan's criteria:

1. $\lieg$ is solvable  $\iff \kappa(x, y) = 0 ~\forall x\in \[\lieg, \lieg],~y\in\lieg$.
2. $\lieg$ is semisimple $\iff$ $\kappa$ is non-degenerate.


Theorem:
If $\lieg$ is semisimple, then

a. $\lieg = \bigoplus_{i=1}^n I_i$ for some $I_i \normal \lieg$ which are all simple.
b. Every simple ideal $I \normal \lieg$ is one of the $I_i$.
c. $\kappa_{I_i} = {\kappa_\lieg}\mid_{I_i \cross I_i}$.

![Image](figures/2019-09-09-09:40.png)

Proof of (a):
Use induction on $\dim \lieg$. If $\lieg$ has no nonzero proper ideals, then $\lieg$ is simple and we're done.

Otherwise, let $I_1$ be a minimal nonzero ideal of $\lieg$.
Then $I_1^\perp \normal \lieg$ is also an ideal, and thus $I \coloneqq I_1 \intersect I_1^\perp \normal \lieg$ is as well.
Then for all $x\in [I, I]$, we must have $\kappa(x, y)= 0$ for any $y\in I \subseteq I_1^\perp$.
So $I$ is solvable, and thus $I= 0$. So $\lieg = I_1 \oplus I_1^\perp$.

Note that any ideal of $I_1^\perp$ is also an ideal of $\lieg$, which implies that $\mathrm{rad}(I_1^\perp) \subseteq \mathrm{rad}(\lieg)$, which is zero since $\lieg$ is semisimple, and thus $I_1^\perp$ is semisimple as well.

By the inductive hypothesis, $I_1^\perp = I_2 \oplus \cdots \oplus I_n$ where each $I_j \normal I_i^\perp$ is simple.
Then $I_j \normal \lieg \implies [I_1, I_j] \subset I_1 \intersect I_j$, since $I_1$ has no contribution.
But this is a subset of $I_1 \intersect I_1^\perp = 0$. $\qed$

Proof of (b):
If $I \normal \lieg$, then $[I, \lieg] \normal I$ because $[[I, \lieg], I] \subseteq [I, I] \subseteq [I, \lieg]$.

Since $\lieg$ is semisimple, $0 = \mathrm{rad}(\lieg) \supseteq Z(\lieg)$. So $[I, \lieg] \neq 0$, and thus $[I, \lieg] = I$ since $I$ is simple.
But then $[I, \lieg] = \bigoplus [I, I_i]$ is simple as well.
So only one direct summand can survive, since otherwise this would produce at least 2 nontrivial ideals, and $[I, \lieg] = [I, I_i]$ for some $i$.

So for all $j\neq i$, we must have $I_j \intersect I = I_j \intersect [I, I_i] = 0$, and so $I \subseteq I_i$.
But then $I = I_i$ since $I_i$ itself is simple, and we're done.

Proof of (c):

(Without using the simplicity of $I_i$)

For $x,y\in I_i$, we have

![Image](figures/2019-09-09-09:45.png)

## Inner Derivations

Recall that $\ad \lieg \subseteq \mathrm{Der} \lieg$, and in fact (lemma) this is an ideal.

Theorem:
If $\lieg$ is semisimple, then $\ad \lieg = \mathrm{Der} \lieg$.

Proof of lemma:

For all $\delta \in \mathrm{Der} \lieg$ and all $x,y \in \lieg$, we have

\[
\begin{align*}
[\delta, \ad_x](y) &= \delta([x, y]) - [x, \delta(y)] \\
&= [\delta(x), y] \\
&= [\ad_{\delta(x)}](y)
,\end{align*}
\]

and so $[\delta, \ad x] \subseteq \ad \lieg$. $\qed$

Proof of theorem:

If $\lieg$ is semisimple, then $0 = \mathrm{rad} \lieg \supseteq Z(\lieg) = \ker \ad$. Thus $\ad \lieg \cong g/\ker \ad \cong \lieg$ is also semisimple.

This means that $\kappa_{\ad \lieg}$ is non-degenerate, and thus $\ad \lieg \intersect (\ad \lieg)^\perp = 0$, where $(\ad \lieg)^\perp \normal \mathrm{Der}(\lieg)$.

(Note that the non-degeneracy of $\kappa$ already forces $(\ad \lieg)^\perp = 0$.)

Then $[(\ad \lieg)^\perp, \ad \lieg] = 0$, and so for all $\delta \in (\ad \lieg)^\perp$, we have $\delta(x) = [\delta, \ad x]$ by the lemma, but we've shown that this is zero.

But then $\delta$ must be zero because $\ad$ is an isomorphism, and in particular it is injective.
This means that $(\ad \lieg)^\perp = 0$, and thus $\ad \lieg = \lieg$. $\qed$

We can use this to define an abstract Jordan decomposition by pulling back decompositions on adjoints:

![Image](figures/2019-09-09-10:01.png)

# Wednesday September 4

## 4.3: Cartan's Criterion

Lemma:
Let $A\subset B$ be two subspaces of $\liegl(V)$ where $\dim V < \infty$.
Set $M = \theset{x \in \liegl(V) \suchthat [x, B] \subset A}$.
Suppose that $x\in M$ satisfies $\Tr(xy) = 0$ for all $y\in M$.
Then $x$ is nilpotent.

Proof:
Let $x = s+n$ (where $s = x_s$ and $n = x_n$) be be the Jordan decomposition of $x$.
Fix a basis $v_1 \cdots v_m$ of $V$ relative to which $s$ has matrix $\mathrm{diag}(a_1 \cdots a_m)$.
Let $E$ be the vector subspace of $F$ over the prime field $Q$ spanned by the eigenvalues $a_1 \cdots a_m$.
We have to show that $s = 0$, or equivalently that $E= 0$, since $E$ has finite $Q\dash$dimension by construction.
It will suffice to show that the dual space $E\dual$ is 0, i.e. that any linear functional $f: E \to Q$ is zero.

Given $f$, let $y$ be the element of $\liegl(V)$ whose matrix is given by $\mathrm{diag{(f(a_1), \cdots f(a_m))}}$.
If $\theset{e_{ij}}$ is a basis of $\liegl(V)$, then $\ad_s(e_{ij}) = (a_i - a_j)e_{ij}$ and $\ad_y(e_{ij}) = (f(a_i) - f(a_j)) e_{ij}$.

Now let $r(t) \in F[t]$ be a polynomial with no constant term, satisfying $r(a_i - a_j) = f(a_i) - f(a_j)$ for all pairs $i,j$.
The existence of such $r(t)$ follows from Lagrange interpolation, and the fact that if $a_i = a_j$ then $0 = r(a_j) - r(a_i) = r(a_i - a_j) = r(0)$, so $r$ has no constant term. 
Thus there is no ambiguity in the assigned values, since $a_i -a_j = a_j - a_l$ would imply (by linearity of $f$) that $f(a_i) - f(a_j) = f(a_k) - f(a_l)$.
Thus $\ad_y = r(\ad_s)$.

> Note that Lagrange Interpolation is a special case of the Chinese Remainder Theorem for polynomials. If all $x_i$s are distinct, then $p_i(x) = x - x_i$ are all pairwise coprime. Then dividing $\frac{p(x)}{p_i(x)} = p(x_i)$. So letting $A_1 \cdots A_k$ be constants in $k$, there is a unique polynomial of degree less than $k$ such that $p(x_i) = A_i$. Thus there is a polynomial $p(x)$ such that $p(x) = A_i \mod p_i(x)$, and $p(x_i) = A_i$.

Now $\ad_s$ is the semisimple part of $\ad_x$.
By lemma A of 4.2, $\ad_s$ can be written as a polynomial in $\ad_x$ without a constant term.
Therefore $\ad_y$ is also a polynomial in $\ad_x$ without constant term.
By hypothesis, $\ad_x$ maps $B$ into $A$, so we have $\ad_y(B) \subset A$, and so $y\in M$.
Using the hypothesis of the lemma, $\Tr(xy) = 0$, and so $\sum a_i f(a_i) = 0$.
The left side is a $Q\dash$linear combination of elements of $E$.
Applying $f$, we obtain $\sum f(a_i)^2 = 0$. 
But the numbers $f(a_i)$ are rational, so this forces all of them to be zero.
Finally, $f$ must be identically 0 because the $a_i$ span $E$. $\qed$

> Note that $\Tr([x,y]z) = \Tr(x [y, z])$. To verify this, write $[x,y]z = xyz - yxz$ and $x[y,z] = xyz - xzy$, then use the fact that $\Tr(y(xz)) = \Tr((xz)y)$.

Theorem (Cartan's Criterion):
Let $L \leq \liegl(V)$ be a subalgebra with $V$ finite dimensional.
Suppose $\Tr(xy) = 0$ for all $x \in [L, L]$ and $y\in L$.
Then $L$ is solvable.

Proof:
It suffices to show that $[L, L]$ is nilpotent, or just that all $x\in [L, L]$ are nilpotent endomorphisms.
We apply the above lemma, with $V$ as given, $A = [L, L]$, and $B = L$, so $M = \theset{x\in\liegl(V)\suchthat [x, L] \subset [L, L]}$.
We have $L \subset M$.
Our hypothesis is that $\Tr(xy) = 0$ for all $x\in [L, L]$ and $y\in L$.
To use the lemma to reach the desired conclusion, we need a stronger result: that $\Tr(xy) = 0$ for $x\in [L, L]$ and $y\in M$.

If $[x,y]$ is a generator of $[L, L]$ and $z\in M$, then $\Tr([x, y]z) = \Tr(x[y,z]) = \Tr([y,z]x)$.
By definition of $M$, $[y, z] \in [L, L]$, so the right side is 0 by hypothesis.

Corollary:
Let $L$ be a Lie algebraic such that $\Tr(\ad_x \circ \ad_y) = 0$ for all $x\in [L, L], y\in L$. 
Then $L$ is solvable.

Proof: 
Apply the theorem to the adjoint representation of $L$.
We then get $\ad L$ is solvable.
Since $\ker \ad = Z(L)$ is also solvable, $L$ itself is solvable.

## Killing Form

### Criterion for Semisimplicity

Let $L$ be any lie algebra. 
If $x,y \in L$, then define $\kappa(x, y) = \Tr(\ad_x \circ \ad_y)$. 
Then $k$ is a symmetric bilinear form on $L$, called the **killing form**.

Theorem:
$\lieg$ is solvable $\iff \kappa(x, y) = 0$ for all $x\in [\lieg, \lieg], y\in \lieg$.

Proof:
$\impliedby$: By Cartan's Criterion.

$\implies$: Exercise.

Example:
The killing form of $\liesl(2, F)$.

We have
\[
\begin{align*}
x = \left(\begin{array}{ll}{0} & {1} \\ {0} & {0}\end{array}\right) \\
h = \left(\begin{array}{rr}
1 & 0 \\
0 & -1
\end{array}\right) \\
y = \left(\begin{array}{rr}
0 & 0 \\
1 & 0
\end{array}\right)
.\end{align*}
\]

Then $\ad_h = \mathrm{diag}(2, 0, -2)$, and
\[
\begin{align*}
\ad_x = \left(\begin{array}{ccc}{0} & {-2} & {0} \\ {0} & {0} & {1} \\ {0} & {0} & {0}\end{array}\right) \\
\ad_y = =\left(\begin{array}{ccc}{0} & {0} & {0} \\ {-1} & {0} & {0} \\ {0} & {2} & {0}\end{array}\right)
.\end{align*}
\]

and thus $k$ has the matrix
\[
\begin{align*}
\left(\begin{array}{lll}{0} & {0} & {4} \\ {0} & {8} & {0} \\ {4} & {0} & {0}\end{array}\right)
.\end{align*}
\]

where $k_{ij} = \kappa(x_i, x_j)$ where $x_i$ is a basis of $L$.

# Wednesday September 11

Theorem:
If $L$ is semisimple and $x\in L$, there exists a unique $x_s, x_n$ in $L$ such that $x = x_s + x_n$, $[x_n, x_s] = 0$, $\ad x_s$ is semisimple, and $\ad x_n$ is nilpotent.

# Friday September 13

Todo

# Monday September 16

Let $S = \exp(\ad e) \circ \exp(\ad -f) \circ \exp(\ad ei)$, which has the following matrix:

![Image](figures/2019-09-16-09:13.png)

Where $\exp(\ad e) = 1 + \ad e + \frac 1 2 (\ad e)^2$, which would have the form

![Image](figures/2019-09-16-09:15.png)

Theorem: 
If $\lieg$ is semisimple, then any finite dimensional $\lieg\dash$module $V$ is completely reducible, i.e. it splits into a direct sum of simple modules.

## Proof of Weyl's(?) Theorem

If $V$ itself is simple, then we're done, so suppose it is not.

Assume there exists a nonzero submodule $U \subsetneq V$.
It suffices to show that $V = U \oplus U'$ for some $U'$.

### Step 1: 

If $\dim V = 2$ and $\dim U = 1$.


Then $U, V / U$ are both trivial modules.
So $g\actson u = 0$ for all $u\in U$.
But then $g \actson (v + U) = U$ for all $v\in V$, since $g\actson v \in U$.

So for all $x,y \in lieg$ and all $v\in V$, we have $[x,y]\actson v = x\actson(y\actson v) - y\actson(x\actson v)$. But both of the terms in parenthesis are in $U$, and all elements in $\lieg$ kill elements in $U$, so this is zero. So $[\lieg, \lieg] \actson V$ trivially.

> Exercise: If $\lieg$ is semisimple, then $[\lieg, \lieg] = \lieg$.

So $\lieg \actson V$ trivially. Thus any $U'$ that is a complementary subspace of $U$ will be a submodule of $V$.

### Step 2:

Suppose $U$ is simple and $\dim U > 1$, so $\dim V / U = 1$.

Let $\Omega$ be the Casimir element on $U$ (faithful representation?).
Then $\Omega u = c \u$ for some $c \in \FF$, and so $\Omega(U) \subseteq U$.

Since $\Omega: V \selfmap$ is a homomorphism, $\ker \Omega \subseteq V$ is a $\lieg\dash$submodule.
Then $\dim V / U = 1 \implies V/U$ is a trivial module.
So $\lieg \actson V/U = 0$, i.e. $\lieg \actson V \subseteq U$.

Then $\Omega(v) = \sum_i x_i \actson (y_i \actson v) \in U$ for all $v\in V$. 
What is the matrix of $\Omega$?

![Image](figures/2019-09-16-09:31.png)

In particular, $\Tr(\Omega \mid_{V/U}) = 0$. So $\Tr(\Omega) = \Tr(\Omega\mid_U)$.
From 6.2, we know that $\Tr(\Omega) \neq 0 \implies c\neq 0$, where $c$ is the scalar appearing above.
So $\ker \Omega$ is 1-dimensional, and $\ker \Omega \intersect U = \theset 0$.

So take $U' = \ker \Omega$.

### Step 3:

Suppose $U$ is *not* simple, but $\dim V/U = 1$.

We will induct on the dimension of $U$. 
Pick a proper nonzero submodule $\overline U \subsetneq U$, so that $\dim U / \overline U < \dim U$. 
Now $V/U \cong (V / \overline U) / (U / \overline U)$ by an isomorphism theorem.
So $U / \overline U$ is a submodule of $V/\overline U$ of codimension 1.
Applying the inductive hypothesis, we obtain $V / \overline U = U / \overline U \oplus \overline V / \overline U$ for some $\overline V$ such that $U \subseteq \overline V \subseteq V$.

In particular, since $U \subseteq \overline V$ has codimension 1, $\dim \overline U < \dim U$.
So apply the inductive hypothesis again: $\overline V = \overline U \oplus U'$ for some $U'$, and $V = U \oplus U'$.

### Step 4: The general case

Recall that $\hom(V, U)$ is a $\lieg\dash$module where 
\[
\begin{align*}
(g \actson \phi)(v) = g\actson\phi(v) - \phi(g\actson v)
.\end{align*}
\]

Define
$$
S = \theset{\phi \in \hom(V, U) \suchthat \phi\mid_U \in F 1_U}.
$$

Then $S \leq \hom(V, U)$ as a submodule.
Define $T = \theset{\phi \in S \suchthat \phi\mid_U = 0}$.
Then $T \leq S$ as a submodule, and $\lieg(S) \subseteq T$.

Now each $\phi\in S$is determined ($\mod T$) by the scalar $\phi\mid_U$.
Note that $\dim(S/T) = 1$.
By steps 1-3, we know that $S = T \oplus T'$ for some $T' \subseteq S$ of dimension 1.
Then $T' = \mathrm{span}_\FF(f)$ for some nonzero map $f: V \to U$ such that $f(u) = cu$ for some $c \neq 0$.

Then $\lieg(T \oplus T') = \lieg (S) \subseteq T \implies \lieg(T') = 0$.
So for all $g\in \lieg$, we have $0 = (g\actson f)(v) = f \actson f(v) - f(g\actson v)$.
Then $f: V \to U$ is a lie algebra homomorphism, $\ker f = U'$, and thus $V = U \oplus U'$. 
$\qed$


Some consequences of Weyl's theorem:

## Preservation of Jordan Decomposition

Recall that when $\lieg \in \liegl(V)$ is a linear lie algebra, then for $x\in \lieg$ we have:

Jordan Decomposition: $x = x_s + x_n$ where $x_s, x_n \in \mathrm{End}(V)$.

Abstract Jordan Decomposition: 
\[
\begin{align*}
\lieg \mapsvia{\ad} \ad(\lieg) \\
x \mapsto \ad x \\
x_s \leftarrow(\ad x)_s \\
x_n \leftarrow  (\ad x)_n
.\end{align*}
\]
and so $x = x'_s + x'_n$ for some $x'$. The theorem will be that these recover the usual Jordan decomposition.

Theorem:
If $\lieg \in \liegl(V)$ is semisimple and $V$ is finite dimensional, then $x_s, x_n \in \lieg$, and $x_s = x'_s, x'_n$.

Corollary:
If $\lieg$ is semisimple and finite dimensional and $\phi: \lieg \to \liegl(V)$ is a finite dimensional representation, then if $x = x_s + x_n$ is the abstract Jordan decomposition, then $\phi(x) = \phi(x_s) + \phi(x_n)$ is the Jordan decomposition in $\liegl(V)$.


Example:
If $\lieg = \liesl(2, \CC)$ is semisimple and finite dimensional, and $h$ is diagonal, then by JD $h = h + 0, \phi(h) = \phi(h) + 0$.
Then $h \actson V$ semisimply, or $V = \bigoplus_{\lambda \in \CC} V_\lambda$, where $V_\lambda = \theset{v\in V \suchthat h\actson v = \lambda v}$ are the eigenspaces.

![Image](figures/2019-09-16-10:05.png)

# Wednesday September 18

Last time:
The abstract Jordan Decomposition coincides with the actual Jordan Decomposition.
\[
\begin{align*}
\phi: \lieg \to \liegl(V) \\ 
x \mapsto \phi(x) = \phi(x)_s + \phi(x)_n = \phi(x_n) + \phi(x_s) \\
x_s + x_n \mapsto \phi(x_s) + \phi(x_n)
.\end{align*}
\]

Therefore $x_s \actson V$ semisimply. 
The example we saw last time was $\lieg = \liesl(2, \CC)$, with a matrix $h = [1, 0; 0, -1]$ and $V = \bigoplus_{\lambda \in \CC} V_ \lambda$.

## Finite Dimensional Representations of $\liesl(2, \CC)$

### Weights and Maximal Vectors

Definition:
If $V_\lambda \neq 0$, then $V_\lambda$ is a *weight space* of $V$ and $\lambda \in \CC$ is a *weight* of $h$ in $V$. We then define $W_t(V) = \theset{\text{weights in } V}$.

Lemma:
If $v\in V_\lambda$ then $e\actson v \in V_{\lambda + 2}$ and $f\actson v \in V_{\lambda - 2}$.

Proof:
\[
\begin{align*}
h \actson (e\actson v) = [h, e] \actson v + e\actson (h \actson v) \\
= 2e \actson v + \lambda e \actson v \\
= (\lambda +2 )e \actson v
.\end{align*}
\]

and
\[
\begin{align*}
h \actson (f\actson v) = [h, f] \actson v + f\actson (h \actson v) \\
= -2f \actson v + \lambda f \actson v \\
= (\lambda -2 )f \actson v
.\end{align*}
\]

So if $V$ is a finite-dimensional $\lieg\dash$module, then there exists a $V_\lambda \neq 0$ such that $V_{\lambda + 2} = 0$. Any nonzero $v\in V_{\lambda}$ is called a *maximal vector*.

> Note: in category $\mathcal O$, these always exist?

Some computations:

- $\lieg = \liegl(2, \CC)$
Then $V = \CC$ is the trivial module, and $g\actson V = 0$. 
So $W_t(V) = \theset{0}$, and $V = V_0$.

If $V = \CC^2$, then take the natural representation $\mathrm{span}_\CC\theset{v_1 = [1, 0], v_2 = [0, 1]}$.
Then $g\actson V$ by matrix multiplication, and if $h = [1, 0; 0, -1]$ then $h\actson v_1 = v_1$ and $h\actson v_2 = -v_2$ by just doing the matrix-vector multiplication.
Then $\CC([1, 0]) = V_1, \CC([0, 1]) = V_{-1}$, so $W_t(V) = \theset{\pm 1}$.

Taking $V = \CC^3 = \ad \lieg = \mathrm{span})_\CC \theset{e, f, h}$, then
\[
\begin{align*}
h\actson f = [h, f] = -2f \\
h\actson h = [h, h] = 0h \\
h\actson e = [h, e] = 2e
.\end{align*}
\]

So $W_t(V) = \theset{2, 0, -2}$ and $V_2 = \CC e, V_0 = \CC h, V_{-2} = \CC f$.

> Note the pattern: some largest value, then jumping by 2 to lower values, ending at negative the largest value. In some sense, the rest of the theory will reduce to the case of $\liesl(2, \CC)$.

Lemma:
Let $V$ be a finite dimensional simple $\liesl(2, \CC)\dash$module, and $V_0 \in V_\lambda$ a maximal vector.

Set $V_{-1} = 0, V_i = f^{(i)} \actson v_0$ (where $f^{(i)} = \frac{f^i}{i!}$). Then for all $i \geq 0$, we have

a. $h\actson v_i = (\lambda - 2i) v_i$
b. $f\actson v_i = (i+1)v_{i+1}$
c. $e\actson v_i = (\lambda - i + 1)v_{i-1}$

Proof of (a):
By lemma 7.1, we have $f\actson v_0 \in V_{\lambda - 2}$, and so inductively $f^{(i)}\actson v_0 \in V_{\lambda - 2i}$

Proof of (b):
By definition.

Proof of (c):
\[
\begin{align*}
ie\actson v_i = ie \actson \frac{f^i \actson v_0}{ i! }\\
= e\actson (f\actson v_{i-1}) \\
= [e,f] \actson v_{i-1} + f\actson (e\actson v_{i-1}) \\
= h \actson v_{i-1} + f\actson((\lambda -i + 2)v_{i-2}) \text{ind} \\
= (\lambda - 2i + 2) v_{i-2} + (\lambda + i - 2)(i-1 v_{i-1}) \\
= i (\text{RHS})
.\end{align*}
\]

Theorem:
If $V$ is a finite dimensional and simple, then $V \cong L(m)$ for some $m \in \ZZ_{\geq 0}$ where $L(m) = \mathrm{span}_\CC\theset{v_0, v)1, \cdots v_m}$ where each $v_i$ is of weight $m - 2i$.

Thus $L(m) = L(m)_m \oplus L(m)_{m-2} \oplus \cdots \oplus L(m)_{-m}$ where $\dim L(m)_\mu = 1$ for all $\mu$ and $\dim L(m = m+1$.)


Proof:
Pick a maximal vector $v_0 \in V_\lambda$ for any weight $\lambda$. 
Define $v_i$ as usual.
Let $m = \min \theset{i \suchthat V_i \neq 0,~ V_{i+1} = 0}$
![Image](figures/2019-09-18-09:42.png)

Definition:
A module $V$ is a *highest weight module* of weight $\lambda$ if $V = \lieg\actson v_0$ for some maximal vector $v_0 \in V_\lambda$.

Then $\lambda$ is referred to as the *highest weight*, and $v_0$ is the *highest weight vector*.

Corollary:
If $V$ is finite-dimensional, then 

a. $V = \bigoplus_{\lambda \in \ZZ} V_\lambda$
b. The number of summands = $\dim V_0 + \dim V_1$.

Proof of (a):
By Weyl's theorem, we know $V = \oplus W_i$ for some simple $W_i$. By theorem 7.2, this is equal to $\oplus_{m\in \ZZ_{\geq 0}} L(m)^{\mu_m}$

Proof of (b):
$\dim V_0 = \#\theset{\text{summands where $m$ is even}}$
$\dim V_1 = \#\theset{\text{summands where $m$ is odd}}$

Remark:
Let $V_d = \theset{f\in\CC[x,y] \suchthat \text{$f$ is homogeneous of total degree $d$}} = \mathrm{span}_\CC\theset{x^d, x^{d-1}y, \cdots, y^d}$.

Then $\liesl(2, \CC)\actson V_d$ by
\[
\begin{align*}
e \mapsto x \dd{}{y} \\
f \mapsto y \dd{}{x} \\
h \mapsto x\dd{}{x} - y\dd{}{y}
.\end{align*}
\]
Fact:
For $L(m), \phi: \liesl(2, \CC) \to \liegl(L(m))$, define
$$
s = (\exp \phi(e)) \circ (\exp \phi(-f)) \circ (\exp \phi(e))
$$

Then $s(v_i) = -v_{m-i}$.

# Friday September 20

Last time: 
Construction of simple finite-dimensional $\liesl(2, \CC)$ module.

Today:
Root space decomposition for semisimple finite-dimensional $\lieg$.

## Root Space Decomposition

Let $\lieg$ be semisimple and finite dimensional, and let $\FF = \CC$.

### Maximal Toral subalgebra and roots

Definition:
A subalgebra $\mathfrak{h} \leq \lieg$ is *toral* if $\mathfrak{h} \neq 0$ and it consists of only semisimple elements (i.e. $x_n = 0 \forall x\in \mathfrak{h}$)

Lemma:

a. There exists a toral subalgebra of $\lieg$, which is a nontrivial maximal toral subalgebra.
b. Any toral subalgebra is abelian.

Proof of (a):
Want to show that there exists an $x\in \lieg$ such that $x_s \neq 0$, which will imply that $\mathfrak{h} = \CC x_s$ is toral.

Suppose $x_s = 0$ for all $x\in \lieg$, then $\ad x = \ad x_n$ is nilpotent.
By Engel's theorem, this means $\lieg$ must be nilpotent.
But this contradicts $[\lieg, \lieg] = \lieg$ (since $\lieg$ is semisimple) so the derived series can never reach zero.

Proof of (b):
Fix $x\in \mathfrak{h}$, want to show that $[x, h] = 0 \forall h\in \mathfrak{h}$.
Then $x = x_s$, and so $\ad x: \lieg \to \lieg$ is diagonalizable.
It suffices to show that $\restrictionof{\ad x}{\mathfrak h} = 0$ for all $\mathfrak h$.

Suppose that $[x, h] = ah$ for some vector $h$ where $a\neq 0$.
Decompose $\mathfrak h$ into eigenspaces, so $\mathfrak h = \bigoplus_\lambda \mathfrak{h}_\lambda$ where $\mathfrak h_\lambda = \theset{y \in \mathfrak h \suchthat [h, y] = \lambda y}$.
But then $[h, x] \in \mathfrak h_0$, since $[h, [h, x]] = [h, -ah] = 0$.

So write $x = \sum_\lambda c_\lambda x_\lambda$, where $c_\lambda \in \CC$ and $x_\lambda \in \mathfrak h_\lambda$.
Then
\[
\begin{align*}
[h, x] &= \sum_\lambda c_\lambda [h, x_\lambda] \\ 
&= \sum_\lambda c_\lambda \lambda x_\lambda \in \mathfrak h_0,
\end{align*}
\]
so $\lambda c\lambda = 0 \forall \lambda \neq 0$, which means $c_\lambda = 0 \forall \lambda \neq 0$, and thus $x\in \mathfrak h_0$ and $[h,x] = 0$.
But this contradicts $[x, h] = ah$.

Now $\forall x, h\in\mathfrak h, g \in \lieg$, we have $[h, [x, y]] = [x, [h, y]] + [y, [x, h]] = [x, [h, y]]$.
Thus $\ad h \circ \ad x = \ad x \circ \ad h$ as elements of $\mathrm{End}(\lieg)$.

So $\lieg = \bigoplus_{\alpha \in \mathfrak h^*} \lieg_\alpha$, where $\lieg_\alpha = \theset{x\in \lieg \suchthat [h, x] = \alpha(h)x \forall h\in\mathfrak h}$.

Note that $\lieg_0 = \theset{x \in \lieg \suchthat [h, x] = 0 \forall h\in\mathfrak h} = C_\lieg(\mathfrak h) \supseteq \mathfrak h$, i.e. the centralizer of $\mathfrak h$ in $\lieg$.

Definition:
Fix a toral subalgebra $\mathfrak h \subseteq \lieg$, then a *root* is a nonzero $\alpha \in \mathfrak h^*$ such that $\lieg_\alpha \neq 0$. 
$\lieg_\alpha$ is referred to as the *root space*.

We write $\Phi = \theset{\text{roots}}$ and $\lieg = C_\lieg(\mathfrak h) \oplus \left( \bigoplus_{\alpha \in \Phi}\lieg_\alpha \right)$.

Example: $\liesl(3, \CC)$.

TODO: Insert image from phone.

Then $\Phi = \theset{\alpha: \mathfrak h \to \CC, h_1 \mapsto \alpha(h_1) \in \theset{\pm 1, \pm 2}}$.
So 

- $\lieg_0 = \CC h_1 \oplus \CC h_2$
- $\lieg_1 = \CC f_2 \oplus \CC e_3$
- $\lieg_2 = \CC e_1$
- $\lieg_{-1} \CC f_3 \oplus \CC e_2$
- $\lieg_{-2} = \CC f_1$.

TODO: Insert second and third image from phone

From these computations, we collect the eigenvalues as ordered pairs.
If we choose a larger toral subalgebra, we get a finer decomposition.
And if we take a maximal toral subalgebra, then $\mathfrak h = \lieg_0$ and all $\dim \lieg_\alpha = 1$.

Proposition (a): 
$[\lieg_\alpha, \lieg_\beta] \subseteq \lieg_{\alpha + \beta}$ for all $\alpha, \beta \in \mathfrak h^*$.

Proposition (b):
If $x\in \lieg_\alpha$ and $\alpha \neq 0$ then $\ad x$ is nilpotent.

Proposition (c):
If $\alpha, \beta \in \mathfrak h^*$ and $\alpha + \beta = 0$, then $\kappa(x, y) = 0 \forall x\in \lieg_\alpha, y= \lieg_\beta$.

Proof of (a): 
Easy exercise: 

Proof of (b):
For all $y \in \lieg$, $y \in \lieg_\mu$ for some $\mu \in \mathfrak h^*$.
We have $\lieg_u \mapsvia{\ad x} \lieg_{\mu + \alpha} \mapsvia{\ad x} \lieg_{\mu + 2\alpha} \to \cdots$ by $y \mapsto [x,y] \mapsto \cdots$.
Since $\lieg$ is finite dimensional, this must terminate, so $(\ad x)^n(y) = 0$ for some $n$.

Proof of (c):
If $\alpha + \beta  = 0$, then there exists an $h\in \mathfrak h$ such that $\alpha(h) + \beta(h) \neq 0$.
Since the killing form is associative, we have

![Image](figures/2019-09-20-09:54.png)

Corollary: 
$\kappa\mid_{\lieg_0}$ is nondegenerate.

Proof:
We want to show $\kappa(h, y) = 0 \forall y\in\lieg_0 \implies h = 0$ holds for any choice of $y\in \lieg_\alpha$ with $\alpha \neq 0$.

By proposition (c), we have $\kappa(h, y) = 0$.
Note that we have $\lieg = \lieg_0 \oplus (\bigoplus_{\alpha\neq 0} \lieg_\alpha)$.
This implies that $\kappa(h, y) = 0 \forall y\in \lieg$.
But then $h = 0$ because $\kappa$ is nondegenerate and $\lieg$ is semisimple.

# Monday September 23

Last time:
$\mathfrak{h}$ is a *toral* subalgebra if it contains only semisimple elements, and implies that there is a *root space decomposition*
$$
\lieg = \mathfrak g_0 \oplus \bigoplus_{\alpha \in \Phi} \lieg_\alpha
$$

where $\lieg_\alpha = \theset{x\in\lieg \suchthat [h, x] = \alpha(h)x ~\forall h\in\mathfrak h}$ and $\Phi = \theset{\alpha: \mathfrak h \to \CC \suchthat \lieg_\alpha\neq 0, \alpha \neq 0}$ and $\lieg_0 = C_\lieg(\mathfrak h)$.

Take larger $\mathfrak h$ yields finer decompositions, and a maximal $\mathfrak h$ gives $\dim \lieg_\alpha  = 1 \forall \alpha \in Phi$. 

Corollary: $\restrictionof{\kappa}{\lieg_0}$ is nondegenerate.

## The Centralizer of $\mathfrak h$

If $x,y \in \mathrm{End}(V)$ where $V$ is finite dimensional, $xy=yx$, and $y$ is nilpotent, then $xy$ is nilpotent and $\Tr(xy)=0$.

Proposition:
If $\mathfrak h\subseteq \lieg$ is a maximal toral subalgebra, then $\mathfrak h = \lieg_0$.

Proof:

*Step 1:*
If $x\in \lieg_0$, then $x_s, x_n \in \lieg_0$.

If $x\in\lieg_0$, then $\ad x(\mathfrak h) \subseteq 0$.
By proposition 4.2, $\ad x_s(\mathfrak h) \subseteq 0, \ad x_n(\mathfrak h)$, and so $x_s, x_n \in \lieg_0$.

*Step 2:*
$\theset{x_s \suchthat x\in\lieg_0} \subseteq \mathfrak h$.

If $x\in \lieg_0$, then by step 1 we have $x_s \in \lieg_0$ and so $\mathfrak h + \CC x_s$ is toral, and thus $x_s \in \mathfrak h$.

*Step 3:*
$\restrictionof{\kappa}{\mathfrak h}$ is non-degenerate.

We want to show that $\kappa(h, x) = 0 ~\forall x\in\lieg \implies h = 0$.
By the corollary, it suffices to show that $\kappa(h, x) = 0 ~\forall x\in \lieg_0$.
By step 2, it suffices to check this only for $x\in \lieg_0$ such that $x=x_n$.

If $x=x_n$, then $\ad x_n$ is nilpotent and $\ad h$ commutes with $\ad x$ because $[h, x] = 0$ (since $x\in \lieg_0$).
By the lemma, $\Tr(\ad h \circ \ad x) = 0$, since $\ad h = \kappa(h, x)$.

*Step 4:*
$\lieg_0$ is nilpotent.

Pick $x\in \lieg_0$. 
Then by step 2, $x_s \in \mathfrak h$, so $\ad x_s: \lieg_0 \selfmap$ is a zero map and thus nilpotent.

So $\ad x_n$ is nilpotent, meaning that $\ad x$ is nilpotent.
By Engel's theorem, this implies that $\lieg_0$ itself is nilpotent.

*Step 5:*
$\lieg_0$ is abelian.

Suppose that $I \coloneqq [\lieg_0, \lieg_0] \neq 0$. 
We have $I \normal \lieg_0$, and $I$ is not nilpotent whereas $\lieg_0$ is.

By Lemma 3.3, we have $I \intersect Z(\lieg_0) \neq 0$, so pick $x$ in the intersection.
Note that $\kappa(\mathfrak h, I) = \kappa(\mathfrak h, [\lieg_0, \lieg_0])$, which by associativity equals $\kappa([\mathfrak h, \lieg_0], \lieg_0) = 0$.

By step 3, we have $\mathfrak h \intersect I = 0$.
By step 2, $x\neq x_s$, and thus $x_n \neq 0$.
But we also have $x\in Z(\lieg_0)$, so $[x, \lieg_0] = 0$ and $\ad x(\lieg_0) \subseteq 0$.
By Proposition 4.2, this holds for $x_s, x_n$ as well, which are both in the center.
So for all $y\in \lieg_0$, $\ad y$ commutes with $\ad x_n$, which is nilpotent.

By the lemma, this implies that $0 = \Tr(\ad y \circ \ad x_n) = \kappa(x_n, y)$ for all $y\in \lieg_0$.
So $x_n = 0$.

*Step 6:*
Suppose $\lieg_0 \not\subset \mathfrak h$.
By step 2, there exists an $x\in \lieg_0$ such that $x\not\in\mathfrak h$, where $x_n \neq 0$.
By step 5, $[x_n, y] = 0$ for all $y\in\lieg_0$.
Then $\ad x$ (which is nilpotent) commutes with $\ad y$.
By the lemma, $0 = \kappa(x_n, y)$ for all $y\in\lieg_0$, and thus $x_n = 0$. $\qed$

> Main idea: Choose a maximal toral subalgebra to get a nice root space decomposition, and so it coincides with $\lieg_0$.

Corollary:
$\restrictionof{\kappa}{\lieg}$ is nondegenerate.

Thus for all $\alpha \in \mathfrak h^*$, there exists a unique $t_\alpha \in \mathfrak h$ such that $\alpha = \kappa(t_\alpha, \wait): \mathfrak h \to \CC$.

In other words, there is an identification
\[
\begin{align*}
\mathfrak h &\mapsvia{1-1} \mathfrak h^* \\
h &\mapsto \kappa(h, \wait) \\
t_\alpha &\leftarrow \alpha
.\end{align*}
\]

Definition:
A subalgebra $\mathfrak h \subseteq \lieg$ is a *Cartan subalgebra* if $\mathfrak h$ is nilpotent and 
$$
\mathfrak h = N_\lieg(\mathfrak h) = \theset{x\in \lieg \suchthat [x, h] \subseteq \mathfrak h}.
$$

Note that $N_\lieg(\mathfrak h)$ is the largest subalgebra of $\lieg$ in which $\mathfrak h$ is an ideal.

Remark: 
If $\lieg$ is semisimple and finite dimensional with $\mathrm{char}(F) = 0$, we will have a correspondence:
\[
\begin{align*}
\theset{\text{CSAs of $\lieg$}} \iff \theset{\text{maximal toral subalgebras of $\lieg$}}
.\end{align*}
\]

Maximal toral subalgebras advantages over Cartan subalgebra definition:

- Yields the finest root space decomposition
- $\mathfrak h^* = \mathfrak h$, Weyl group?
- Existence is easy compared to CSAs

On the other hand, CSA advantages:

- All CSAs are conjugate under $G$ (some group to be defined)
- The dimensions of all CSAs are the same, giving a well-defined notion of dimension ($\mathrm{rank} \lieg = \dim \mathfrak h$).

## 8.3: Orthogonality Properties

From now on, $\mathfrak h$ will be a maximal toral subalgebra.

Proposition:
Let $\alpha \in \Phi$. Then

a. $\Phi$ spans $\lieh^*$
b. $-\alpha \in \Phi$
c. $\forall x\in \lieg_\alpha, y\in\lieg_{-\alpha}$, we have $[x,y] = \kappa(x, y)t_\alpha$
d. $[\lieg_\alpha, \lieg_{-\alpha}] = \CC t_\alpha$ (let the nonzero scalar be $\lambda$)
e. $\alpha(t_\alpha) = \kappa(t_\alpha, t_\alpha) \neq 0$.
f. For any nonzero $e_\alpha \in \lieg_\alpha$, there exists a unique $f_\alpha \in \lieg_{-\alpha}$ such that $[e_\alpha, f_\alpha] = h_\alpha \coloneqq \frac{\lambda}{\kappa(t_\alpha, t_\alpha)} t_\alpha$. Moreover, $\generators{e_\alpha, f_\alpha, h_\alpha} = \liesl(2, \CC)$.

# Wednesday September 25

Today: 
Properties of the root space when the toral subalgebra is maximal.

Last time:
We have $\lieg = \lieg \oplus \left( \bigoplus_{\alpha \in \Phi} \lieg_\alpha \right)$ where $\kappa\mid_{\lieh}$ is nondegenerate.
We also have a correspondence
\[
\begin{align*}
\lieh \iff \lieh^*
h \mapsto \kappa(\lieh, \wait) \\
t_\alpha \leftarrow \alpha \coloneqq \kappa(t_\alpha, \wait)
.\end{align*}
\]
## Orthogonality Properties

Proposition:
Let $\alpha \in \Phi$. Then:

a. $\Phi$ spans $\lieh^*$
b. $-\alpha \in \Phi$
c. $[x, y] = \kappa(x,y)t_\alpha$ for all $x\in \lieg_\alpha$ and $y\in \lieg_{-\alpha}$
d. $[\lieg_\alpha, \lieg_{-\alpha}] = \CC t_\alpha$
e. $\alpha(t_\alpha) = \kappa(t_\alpha, t_\alpha) \neq 0$
f. For each nonzero $e_\alpha \in \lieg_\alpha$, there exists a unique $f_\alpha \in \lieg_{-\alpha}$ such that $[e_\alpha, f_\alpha] = h_\alpha \coloneqq \frac{2}{\kappa(t_\alpha, t_\alpha)}t_\alpha$. Moreover, $\generators{e_\alpha, t_\alpha, h_\alpha} \cong \liesl(2, \CC)$.

Proof of (a):
We want to show that $h \in \lieh$ implies that if $\alpha(h) = 0$ for all $\alpha \in \Phi$, then $h = 0$.

Take $x\in \lieg_\alpha$. 
Then $[h, x] = \alpha(h)x = 0$. 
So $[\lieh, \lieg] = 0$ because $\lieh$ is abelian.
But then $[h, \lieg] = 0$, or $h \in Z(\lieg) = 0$ since $\lieg$ is semisimple.

Proof of (b):
By Proposition 8.1c, we have $\kappa(\lieg_\alpha, \lieg_\beta) = 0$ for all $\beta \neq -\alpha$.

If $-\alpha \not\in\Phi$, then $\lieg_{-\alpha} = 0$.
So $\kappa(\lieg_\alpha, \lieg) = 0$ by the non-degeneracy of $\kappa$.


Proof of (c):
For all $h\in\lieh$, we have
\[
\begin{align*}
\kappa(h, [x, y]) = \kappa([h, x], y) \\
= \kappa(\alpha(h)x, y) \\
= \kappa(t_\alpha, h)\kappa(x, y) \\
= \kappa(\kappa(x,y)t_\alpha, h) \\
= \kappa(h, \kappa(x,y)t_\alpha)
.\end{align*}
\]

which implies that $\kappa(h, [x, y] - \kappa(x,y)t_\alpha) = 0$, which forces the second argument to be zero by non-degeneracy.

Proof of (d):
We will show that (d) implies (c), i.e. $[\lieg_\alpha, \lieg_{-\alpha}] \subseteq \CC t_\alpha$.

We want to show $\kappa(x,y)$ is not always zero.

Pick any nonzero $x\in\lieg_\alpha$.
Then $\kappa(x, \lieg_\beta) = 0$ for all $\beta\neq -\alpha$.
If $\kappa(x, \lieg_{-\alpha}) = 0$, then $\kappa(x, \lieg) = 0$. 
By non-degeneracy, this forces $x=0$.


Proof of (e):
We will skip this for now, and revisit with methods from later sections that make this proof simpler.

Proof of (f):
Let $e_\alpha \neq 0$ in $\lieg_\alpha$. 
Then there exists a $y\in\lieg_{-\alpha}$ such that $\kappa(e_\alpha, y) \neq 0$.
Set $f_\alpha \in \lieg_{-\alpha}$ such that $\kappa(e_\alpha, f_\alpha) = \frac{2}{\kappa(t_\alpha, t_\alpha)}$.

By (c), we have

\[
\begin{align*}
[e_\alpha, f_\alpha] = \kappa(e_\alpha, t_\alpha)t_\alpha \\
= \frac{2}{\kappa(t_\alpha, t_\alpha)}t_\alpha \\
= h_\alpha
.\end{align*}
\]

and
\[
\begin{align*}
[h_\alpha, e_\alpha] = \frac{2}{\kappa(t_\alpha, t_\alpha)}[t_\alpha, e_\alpha] \\
= \frac{2}{\kappa(t_\alpha, t_\alpha)} \alpha(t_\alpha) e_\alpha \\
= 2 e_\alpha
.\end{align*}
\]

and similarly $[h_\alpha, f_\alpha] = -2 f_\alpha$.

Definition:

Let $\liesl(2, \alpha) = \generators{e_\alpha, f_\alpha, h_\alpha}$ as in (f).
A priori, this depends on a choice of $e_\alpha \neq 0$.
We will show that this only depends on $\alpha$.

## Orthogonality/Integrality Properties

Proposition: Let $\alpha \in \Phi$. Then:

a. $\dim \lieg_\alpha = 1$. (Note that in general, $\dim \lieg_0 = \dim \lieh \geq 1$)
b. $\CC\alpha \intersect \Phi = \theset{\pm \alpha}$
c. If $\beta \in \Phi$ such that $\alpha + \beta \in \Phi$, then $[\lieg_\alpha, \lieg_\beta] = \lieg_{\alpha + \beta}$.
d. If $\beta \neq -\alpha \in \Phi$, then let $p,q \in \ZZ$ be the largest such that $\beta - p\alpha$ and $\beta + q\alpha$ are both in $\Phi$. Then $\beta + i\alpha \in \Phi$ for every $-p \leq i \leq q$, and
\[
\begin{align*}
\beta(h_\alpha) = \kappa(t_\beta, h_\alpha) = \frac{2\kappa(t_\beta, t_\alpha)}{\kappa(t_\alpha, t_\alpha)} = p-q \in \ZZ
.\end{align*}
\]

Proof of (a) and (b):

Let $M = \lieh \oplus \left( \bigoplus_{c\neq 0} \lieg_{c\alpha} \right) \leq \lieg$ as a subspace.
By a routine check, $M$ is an $\liesl(2, \alpha)$ submodule of $\lieg$.
Recall that $M = \bigoplus_{\lambda \in \ZZ}$ as a direct sum of vector spaces.
Applying Weyl's theorem, we also have $M = \bigoplus_{m \in \ZZ_{\geq 0}} L(m)^{\oplus \mu_m}$ as a direct sum of (irreducible?) modules.

For $\lieh$, if we have $[h_\alpha, h] = 0$ for all $h\in \lieh$, then $h \in M_0$.
For $\lieg_{c\alpha}$, $[h_\alpha, x] = c\alpha(h_\alpha) x$ for all $x\in \lieg_{c\alpha}$.
But this equals $2cx$.
So this implies that $\lieg_{c\alpha} \subseteq M_{2c}$.

Thus $2c \in \ZZ$, and thus $c \in \frac 1 2 \ZZ$, and $M_0 = \lieh$.

We then have $\dim M_0 = \sum_{m\in 2\ZZ} \mu_m$.
So write $h = \CC t_\alpha \oplus \ker \alpha$ as vector spaces.
Consider the action $\liesl(2, \alpha) \actson \ker \alpha$, which is trivial since $h \in \ker \alpha$.
We $[h_\alpha, h] = 0$, $[e_\alpha, h] = -\alpha(h)e_\alpha = 0$ since $h\in\ker\alpha$, and similarly $[f_\alpha, h] = 0$.

Thus $\ker \alpha = L(0)^{\oplus \dim \lieh - 1}$. 
Moreover, $\liesl(2, \alpha) = L(2) = \mathrm{span}(e_\alpha, t_\alpha, f_\alpha)^T$.
But this forces the case that there is no other summand of the form $L(k)$ for $k$ even in $M$.

Then $\lieg_{2\alpha} \subseteq M_4$, which must be zero.
So $2\alpha \not\in \Phi$, so $2\alpha$ is not a root.
("Twice a root is never a root")

So $\frac 1 2 \alpha \not\in \Phi$, otherwise we could apply this argument to conclude that $\alpha$ is not a root and reach a contradiction.
Thus $M_1 = 0$, since $c\neq \frac 1 2$ implies that there is not summand of the form $L(k)$ for $k$ odd in $M$.
But this forces $M = \lieh \oplus \liesl(2, \alpha)$.

> Motto: reduce the complexity by using the $\liesl(2)$ module structure and its representation theory!

# Friday September 27

Last time, we saw $\Phi \subseteq \lieh^* = \theset{\alpha: \lieh \to \CC}$.

Suppose $\lieg$ is semisimple and $\lieh$ is a maximal toral subalgebra and take $F = \CC$.

We have the following propositions:

a. $\dim \lieg_\alpha = 1 ~\forall \alpha \in \Phi$
b. $\CC \alpha \intersect \Phi = \theset{\pm \alpha}$, and $2\alpha \not\in\Phi$ where $c\alpha: \lieh \to \CC,~ h \mapsto c\actson \alpha(h)$. Moreover, $M = \lieh \oplus \left( \bigoplus_{c\neq0} \lieg_{c\alpha} \right)$
c. If $\alpha, \beta \in \Phi$ and $\beta \neq -\alpha$ Let $p,q \in \ZZ$ be the largest such that $\beta -p\alpha$ and $b + q\alpha$ are in $\Phi$. Moreover, $\beta(h_\alpha) = \kappa(t_\beta, t_\alpha) = p-q \in \ZZ$.

Proof of (c):

Set $M = \sum_{i\in \ZZ} \lieg_{\beta + i\alpha}$, which is an $\liesl(2, \alpha)$ module.
By (a), we have $\dim \lieg_{\beta + i\alpha} = 1 \iff \beta + i\alpha \in \Phi$.
But for all $x\in \lieg_{\beta + i\alpha}$, we have $[h, x] = (\beta + i\alpha)(h)x$ for all $h\in\lieh$.
But then $[h_\alpha, x] = (\beta(h_\alpha) + i \alpha(h_\alpha))x = (\beta(h_\alpha) + 2i)x$

Then $\lieg_{\beta + i\alpha} \subseteq M_{\beta(h_\alpha) + 2i}$, so $\beta(h_\alpha) \in \ZZ$.

Moreover, $\mathrm{Wt}(M) = 2\ZZ$ or $2\ZZ + 1$, and in particular $\dim M_0 + \dim M_1 = 1$.

Thus $M$ is irreducible, and $M \cong L(m)$ for some $m \in \ZZ_{\geq 0}$.
Moreover, $\mathrm{Wt}(M) = \theset{m, m-2, \cdots -m}$, and$simg \lieg_{\beta + i\alpha} = 1$ for all $i \in [-p, q]$.
Thus $\beta + i\alpha \in \Phi$.

Proof of 8.3(e): 
$\alpha(t_\alpha) \neq 0$.
The claim is that for all $\beta \in Phi$, there exists an $r\in \QQ$ such that $\beta(h) = r\alpha(h)$ for all $h \in [\lieg_\alpha, \lieg_{-\alpha}]$.

There are two cases: if $\beta = -\alpha$, then we're done by the previous argument.

Otherwise, $\beta \neq -\alpha$. 
Take $M = \bigoplus_{i \in\ZZ} \lieg_{\beta + i\alpha}$.

Then,
\[
\begin{align*}
\Tr_M(\ad h) = \sum_i \Tr_M( (\ad e_i \circ \ad f_i) -(\ad f_i \circ \ad e_i) ) = \sum_i \Tr_{\lieg_{\beta + i\alpha}}(\ad h) \\
= \sum (\beta + i\alpha)(h) \dim \lieg_{\beta + i\alpha} \\
= \sum_i \dim \lieg_{\beta + i\alpha} \beta(h) + \sum_i i\dim(\lieg_{\beta + i\alpha}) \\
\implies \beta(h) = 
\frac{
-\sum_i \dim \lieg_{\beta + i\alpha}
}{
\sum_i \dim \lieg_{\beta + i\alpha}
}\alpha(h)
.\end{align*}
\]

Now consider the killing form $\kappa(t_\beta, t_\alpha) = \beta(t_\alpha) = r \alpha(t_\alpha)$, where the last equality is what we are claiming.

Suppose that $\alpha(t_\alpha) = 0$.
Then $\kappa(t_\beta, t_\alpha) = 0$ for all $\beta \in Phi$.
By the non-degeneracy of $\kappa$, we have $t_\alpha = 0$ and thus $\alpha = 0$.

## Summary 
We have $\lieg$ semisimple, finite dimensional, and $\lieh$ a maximal toral subalgebra (i.e. the Cartan subalgebra).
This implies that $\kappa$ is nondegenerate, and we have a correspondence
\[
\begin{align*}
\lieh \iff \lieh\dual \\
h \mapsto \kappa(h, \wait) \\
t_\alpha \leftarrow \alpha
.\end{align*}
\]

This gives a symmetric bilinear form $(\wait, \wait): \lieh\dual \to \lieh\dual$.

For $\alpha \in Phi$, define its *coroot* $\alpha\dual = \frac{2}{(\alpha, \alpha)}\alpha$.

Note that $(\wait)\dual$ is not linear: note that
\[
\begin{align*}
(2\alpha)\dual = 
\frac{2}{(2\alpha, 2\alpha)} 2\alpha 
= \frac{\alpha}{(\alpha, \alpha)} 
= \frac{\alpha\dual}{2}
.\end{align*}
\]

Assume that $\Phi = \theset{\alpha_i}$.
Define $E_\QQ = \bigoplus_{i=1}^\ell \QQ_{\alpha_i}$, and $E = \RR \tensor_\QQ E_\QQ$.

Lemma:
If $\alpha, \beta \in \Phi$, then

a. $(\beta, \alpha) \in \QQ$,
b. $(\wait, \wait)$ on $E_\QQ$ is positive definite, i.e. $x\neq 0 \implies (x, x) > 0$.

An immediate consequence of (b) is that $(\wait, wait)$ on $E$ is an inner product.

Proof:
For all $\lambda, \mu \in \lieh\dual$, we have 
\[
\begin{align*}
(\lambda, \mu) 
= \kappa(t_\lambda, t_\mu) 
= \Tr_\lieg(\ad t_\lambda \circ \ad t_\mu) 
= \Tr_\lieg(...) + \sum_{\alpha \in \Phi} \Tr_{\lieg_\alpha}(...) 
= 0 + \sum_{\alpha \in \Phi} \alpha(t_\lambda) \alpha(t_\mu)
= \sum_[\alpha \in \Phi] = \kappa(t_\alpha, t_\lambda) \kappa(t_\alpha, t_\mu)
= \sum_{\alpha \in \Phi} (\alpha, \lambda)(\alpha, \mu)
.\end{align*}
\]

So pick $\lambda = \mu = \alpha \in \Phi$.
Then $(\alpha, \alpha) = \sum_{\beta \in \Phi} (\beta, \alpha)^2$.

Then
\[
\begin{align*}
\frac{1}{(\alpha, \alpha)} = \sum_{\beta \in \Phi} \left(\frac{(\beta, \alpha\dual)}{2} \right)^2
.\end{align*}
\]

where $(\beta, \alpha\dual) = \cdots = \beta(h_\alpha)\in \ZZ$.

This means that $(\alpha, \alpha) \in \QQ_{> 0}$.


Summary of properties proved:

Let $\alpha, \beta \in \Phi$. Then

1. $0 \not\in \Phi$ and $\Phi$ spans $E$
2. $\CC\alpha \intersect \Phi = \theset{\pm \alpha}$
3. $\beta - (\beta, \alpha\dual)\alpha \in \Phi$
4. $(\beta, \alpha\dual) \in \ZZ$

Thus the assignment $(\lieg, \lieh) \mapsto (\Phi, E)$ defines a **root system**. 
This only works when $\lieg$ is semisimple and $\lieh$ is maximal toral.

Proof of (3):

We computed $(\beta, \alpha\dual) = p-q$.
Then $-p \leq -(\beta, \alpha\dual) = q-p \leq q$.
So this must be something on the root stream.

# Monday September 30

Last time: 
Let $\lieg$ be finite dimensional and $\lieh$ a maximal toral subalgebra.

Then $(\Phi, E)$ is a *root system*, and we obtain a bilinear product 
\[
\begin{align*}
\inner{\wait}{\wait}: E\cross E \to \RR \\
(\alpha, \beta) \mapsto \kappa(t_\alpha, t_\beta)
.\end{align*}
\]
Examples:
$\lieg = \liesl(3, \CC)$ and $\lieh = \CC h_1 \oplus \CC h_2$ where

Todo: Insert clip image h1, h2

\[
\begin{align*}
\alpha_1: \lieh \to \CC \\
h_1 \mapsto 2
h_2 \mapsto -1
.\end{align*}
\]

\[
\begin{align*}
\alpha_2: \lieh \to \CC \\
h_1 \mapsto -1
h_2 \mapsto 2
.\end{align*}
\]

To find $t_{\alpha_i}$, we need to look at $\kappa\mid_\lieh$.

Todo: Insert phone image

Since we only need the trace, this suffice, and we find

\[
\begin{align*}
\left.\begin{array}{c|cc}{h_{1}} & {h_{2}} \\ {h_{1}} & {12} & {-6} \\ {h_{2}} & {-6} & {12}\end{array}\right]
.\end{align*}
\]

We then get $t_{\alpha_1} = \frac{h_1}{6}$ and $t_{\alpha_2} = \frac{h_2}{6}$. 
Moreover
\[
\begin{align*}
\inner{\alpha_1}{\alpha_1} = \kappa(t_{\alpha_1}, t_{\alpha_1}) = \frac 1 3 \in \QQ \\
\inner{\alpha_1}{\alpha_1} = \frac 1 3 \\ 
\inner{\alpha_1}{\alpha_2} = - \frac 1 6 \\
\inner{\alpha_1}{\alpha_2\dual} = \frac{2\inner{\alpha_1}{\alpha_2}}{\inner{\alpha_2}{\alpha_2}} = -1 \in \ZZ
\inner{\alpha_i}{\alpha_i\dual} = \frac{2\inner{\alpha_i}{\alpha_i}}{\inner{\alpha_i}{\alpha_i}} = 2 \in \ZZ
.\end{align*}
\]

This leads to a nice fact: the matrix $\inner{\alpha_i}{\alpha_j\dual}$ has $\ZZ$ entries, and this is called the *Cartan matrix*.

## Ch.3: Root Systems

### Axiomatics: Reflections

Fix a Euclidean space $E$.

Definition:
A *hyperplane* in $E$ is a subspace of codimension 1.
A *reflection* in $E$ is an element $s\in \liegl(E)$ such that

$$
\theset{
E^s \coloneqq \theset{x\in E \suchthat sx = s} \text{ is a hyperplane } H \text{ and } s(x) = -x\quad \forall x\in E \suchthat (x, H) = 0
}$$

For nonzero $\alpha\in E$, its reflection is
\[
\begin{align*}
S_\alpha: E \to E \\
\beta \mapsto \beta - \inner{\beta}{\alpha\dual}\alpha
.\end{align*}
\]

with respect to $H_\alpha = \theset{x\in E \suchthat \inner{x}{\alpha} = 0}$, where $\alpha\dual = \frac{2\alpha}{\inner{\alpha}{\alpha}}$.

Lemma:
Let $\Phi \subseteq E$ be finite such that $S_\alpha(\Phi) = \Phi$ for all $\alpha \in \Phi$.

Suppose that $S \in \liegl(E)$ satisfies

1. $S(\Phi) = \Phi$,
2. $S(h) = h$ for all $h\in H$, and
3. $S(\alpha) = -\alpha$ for some $\alpha \in \Phi$,

then $S = S_\alpha$, i.e. this uniquely characterizes $S$

Proof:


Let $\tau = S \circ S_\alpha$.
Then $\tau(\Phi) = \Phi$ and $\tau(\alpha) = \alpha$.
This $\tau \actson \RR\alpha$ by 1, and similarly $\tau \actson E/\RR\alpha$ by 1 by picking a representative in $H$.
Moreover, all eigenvalues of $\tau$ are 1.
So the minimal polynomial of $\tau$ divides $(t-1)^{\dim E}$.

We want to show that $\tau \divides (t-1)^N$ for some large $N$, which forces $\tau \divides \gcd((t-1)^{\dim E}, t^N - 1) = 1$.
For any $\beta \in \Phi$ and $k > \abs{\Phi}$, not all vectors $\beta, \tau(\beta), \cdots \tau^k(\beta)$.
So $\beta = \tau^{k_\beta}(\beta)$ for some $k_\beta$ depending on $\beta$ (noting that $\tau$ is invertible.)

Multiplying all of these $k_\beta$s together, we can get some $k_\Phi$ that is larger than $\abs \Phi$, and so $\beta = \tau^{k_\Phi}$ for *all* $\beta \in \Phi$.
But then $\tau^{k_\Phi} = 1$ in $\liegl(E)$.

### Root Systems

Definition:
A subset $\Phi$ of $E$ a Euclidean space is called a *root system* iff

1. $\abs \Phi < \infty, 0\not\in\Phi$, and $E = \bigoplus_{\alpha\in\Phi} \RR \alpha$
2. $\alpha \in \phi \implies \CC \alpha \intersect \Phi = \theset{\pm \alpha}$
3. $\alpha \in \Phi \implies S_\alpha(\Phi) = \Phi$
4. $\alpha, \beta \in \Phi \implies \inner{\beta}{\alpha\dual} \in \ZZ$.


Definition:
The *rank* of a root system is the dimension on $E$.

Definition:
The *Weyl Group* of $\Phi$ is defined as 
$$
W = \generators{S_\alpha \mid \alpha \in \Phi} \subseteq \liegl(E)
$$

Note that $W \injects \Sigma_{\abs \Phi}$, a permutation group of size $\abs \Phi$.

Lemma:
If $g \in \liegl(E)$ and $g(\Phi) = \Phi$, then for all $\alpha, \beta \in \Phi$, we have
\[
\begin{align*}
g s_\alpha g\inv = s_{g(\alpha)}, \\
\inner{\beta}{\alpha\dual} = \inner{g(\beta)}{g(\alpha)\dual},\\
\inner{\beta}{\alpha\dual} = \inner{w(\beta)}{w(\alpha)\dual}\quad \forall w\in W
.\end{align*}
\]

Proof: 
Check 1-3 in Lemma 9.1.

Proof of 1:
We have
\[
\begin{align*}
g s_\alpha g\inv(g(\beta)) = g s_\alpha (\beta) \in g(\Phi) = \Phi \quad \forall \beta \in \Phi, \\
.\end{align*}
\]

Proof of 2:
We have
\[
\begin{align*}
\theset{g(\beta) \suchthat \beta \in \Phi} = \Phi \implies g s_\alpha g\inv (\Phi) = \Phi \quad \forall h\in gH_\alpha \\
.\end{align*}
\]
and so $gs_\alpha g\inv(h) = gg\inv(h) = h$, so $h$ is a fixed point of this map.

Proof of 3:
We have
$gs_\alpha g\inv(g(\alpha) = gs_\alpha(\alpha) = -g(\alpha)$, and so $gs_\alpha g\inv = s_{g(\alpha)})$ by Lemma 9.1.

Finally, we have 
\[
\begin{align*}
g s_\alpha g\inv (g(\beta)) = g(s_\alpha(\beta)) = g(\beta - \inner{\beta}{\alpha\dual}\alpha) = g(\beta) - \inner{\beta}{\alpha\dual}g(\alpha) \\
= \\
s_{g(\alpha)} = g(\beta) - \inner{g(\beta)}{g(\alpha)\dual}g(\alpha)
.\end{align*}
\]

# Wednesday October 2

Recall from last time:

1. $\abs \Phi < \infty$ and $\Phi$ spans $E$, where $0\not\in \Phi$
2. If $\alpha \in \Phi$, then $C\alpha \intersect \Phi = \theset{\pm \alpha}$
3. $\alpha \in \Phi$, then $S_\alpha(\Phi) = \Phi$.
3. If $\alpha, \beta \in \Phi$, then $\inner{\beta}{\alpha\dual} \in \ZZ$
  where $(E, \inner{\wait}{\wait})$is Euclidean and
\[
\begin{align*}
S_\alpha: E \to E \\
\beta \mapsto \beta - \inner{\beta}{\alpha\dual}\alpha, \quad \alpha\dual = \frac {2} {\inner{\alpha}{\alpha}} \alpha
.\end{align*}
\]

Examples:

In Rank 1:

1. Prop 2 implies $\Phi = \theset{\pm \alpha}$
2. Prop 1 implies $E = \RR \alpha$
3. Prop 3: $S_\alpha(\alpha) = -\alpha$
4. Prop 4 implies $\inner{\pm\alpha}{\pm\alpha} = \pm \frac {2\inner{\alpha}{\alpha}} {\inner{\alpha}{\alpha}} = \pm 2$

Rank 1 Diagram:
Todo: Insert phone image


In Rank 2:
Todo: Insert phone image


Exercise:

- Show that $\mathrm{ord}(S_\alpha, S_\beta) = 2,3,4,6$ for types $A_1 \cross A_1, B_2, G_2$.
- Show that $W(A_2) \cong \ZZ_3$ and $W(B_2) \cong D_8$.

## Pairs of Roots

Lemma:
Let $\alpha, \beta \in \Phi$ where $\beta \neq \pm \alpha$, then 

1. $\inner{\alpha}{\beta\dual} \inner{\beta}{\alpha\dual} \in \theset{0,1,2,3}$
  Moreover, assuming $\abs \beta \geq \abs \alpha$, we have the following table
  Todo: Insert table

2. If $\inner{\alpha}{\beta} > 0$, then $\alpha-\beta \in\Phi$. Similarly, if $\inner{\alpha}{\beta} > 0$, then $\alpha + \beta \in \Phi$.

3. Any root string is unbroken and has length greater than 4.

Proof of (1):

By the Law of Cosines, we can write $x \coloneqq \inner{\beta}{\alpha\dual} \inner{\alpha}{\beta\dual} = 4\cos^2(\theta) \in \ZZ$.
This restricts the possibilities to $x \leq 4$. 
But $x = 4 \iff \alpha = c \beta$, i.e. $\theta = 0$, but we are assuming that $\alpha \neq \pm \beta$, so this can not happen.

Proof of (2):

Since $\inner{\alpha}{\beta} > 0$ and $\abs \beta \geq \abs \alpha$, then $\inner{\alpha}{\beta\dual} = 1$.
But then $S_\beta(\alpha) = \alpha - \inner{\alpha, \beta\dual}\beta \in\Phi$ by Prop 3.
So this is equal to $\alpha - \beta$.

A similar argument works for $\abs \beta \leq \abs \alpha$.

Proof of (3):
Let $p,q$ be the largest integers such that $b-p\alpha, b+q\alpha \in \Phi$ respectively.
Suppose that the root stream between these two is broken somewhere, say $\beta + s\alpha \in \Phi$ and $\beta + (s+1)\alpha \not\in\Phi$ by counting up from $\beta - p\alpha$.
Similarly, there is some $t$ counting down from $b+q\alpha$ then $\beta + t\alpha \in \Phi$ but $\beta + (t-1)\alpha \not\in\Phi$.
In particular, $s < t$.
From (2), we have 
$\inner{\alpha}{\beta + s\alpha} \geq 0$,
$\inner{\alpha}{\beta + t\alpha} \leq 0$.

We have
$$
\inner{\alpha}{\beta} + t\inner{\alpha}{\alpha} = \inner{\alpha}{\beta + t\alpha} \leq 0 \leq \inner{\alpha}{beta + s\alpha} = \inner{\alpha}{\beta} + s\inner{\alpha}{\alpha}
$$

where we know that $\inner{\alpha}{\alpha} > 0$.

Since $S_\alpha(\Phi) = \Phi$ and these $S_\alpha(\beta + i\alpha) = \beta - \ZZ \alpha$, we find that reflections permute the root string.
We then find that $p = \inner{\beta}{\alpha\dual} + q$, and so $\inner{\beta}{\alpha\dual} = p-q \in [-3, 3]$.

## Chapter 10: Simple Roots and Weyl Groups

Definition:
A *base* of a root system $\Phi$ is a subset $\Pi \subseteq \Phi$ such that 

1. $\Pi$ is a basis for the underlying vector space $E$, and
2. Each $\beta \in \Phi$ can be written as $\beta = \sum_{\alpha\in\Pi} \kappa_\alpha^\beta \alpha$ where all of the coefficients $\kappa_\alpha^\beta$ all have the same sign.

The roots in $\Pi$ are called *simple*.
A root $\beta$ is *positive* (resp. *negative*) if the $\kappa_\alpha^\beta \geq 0$ for all $\beta in \Phi^+$ (resp $\leq 0$ in $\Phi^-$).
The *height* of a $\beta$ is the sum of the coefficients.
$\Pi$ defines a partial order on $E$ where $\mu \leq \lambda \iff \lambda - \mu \in \sum_{\alpha \in \Pi} \ZZ_{\geq 0} \alpha$.

> Note that this is defined on the roots themselves, and can then be extended to all of $E$.

Todo: Insert phone image


# Monday October 7

Last time: 

Lemma 10.2

a. ?
b. $\alpha \in \Pi \implies S_\alpha \actson \Phi^+\setminus\theset{\alpha}$ by permutation
c. $\alpha_i \in \Pi$ and $S_{\alpha_1}, \cdots, S_{\alpha_{j-1}}(\alpha_j) \in \Phi^-$ then 
$S_{\alpha_1} \cdots S_{\alpha_j} = S_{\alpha_1} \cdots S_{alpha_{t-1}} \cdots S_{\alpha_{j-1}}$ 
for some $t$, where the former has $j$ terms and the latter has $j-2$ terms.

Proof of (a): ?

Proof of (b):

Suppose towards a contradiction that $w(\alpha_j) \in \Phi^+$.
Then consider $WS(\alpha_j) = -W(\alpha_j) \in \Phi^-$.

By Lemma 10.2(c), we have
$W = S_{\alpha_1} \cdots S_{alpha_{t-1}} S_{\alpha_{t+1}} \cdots S_{\alpha_{j-1}} S_{\alpha_j}$,
where this is $j-1$ terms.
So $w = S_\alpha \cdots S_{\alpha_j}$ is not reduced.

## Weyl Groups

Recall that the *chambers* are given by the connected component of $E \setminus \union_{\alpha\in\Phi} H_\alpha$.

Theorem:
Fix $\Pi$ of $\Phi$. 
Then

a. $W \actson\theset{\text{chambers}}$ transitively
b. $W \actson\theset{\text{bases}}$ transitively
c. $\forall \alpha \Phi, ~\exists w\in W \suchthat w(\alpha) \in Pi$
d. $W \coloneqq \theset{S_\alpha \suchthat \alpha\in\Phi} = \generators{S_\alpha \mid \alpha \in \Pi} \coloneqq W_0$
e. $W \actson \theset{\text{bases}}$ simply transitively, i.e. $w(\Pi) = \Pi \implies w = e$.

> I.e. we can describe the Weyl group using only simple reflections

Proof:
We will prove (a) -- (c)$ for $W_0#.

Proof of (a):
Recall the fundamental chamber,
$C(\Pi) = \theset{x\in E \suchthat (x, a) > 0 ~\forall \alpha\in\Pi}$.
We want to show that any chamber $C$ is equal to $wC(\Pi)$.

Pick $\gamma \in C$ and $g\in W_0$ such that 
$(g(\gamma), \rho) = \max\theset{(w(\gamma), \rho) \suchthat w\in W_0}$,
which exists because $W_0$ is a finite group.

For all $\alpha \in \Pi, S_\alpha g \in W_0$ and so by maximality we have
\[
\begin{align*}
(g(\gamma), \rho) 
\geq (s_\alpha g(\gamma) \rho) \\
= (g(\gamma), S_\alpha(\rho)) \\
= (g(\gamma), \rho - \alpha) \\
= (g(\gamma), \rho) - (g(\gamma), \alpha)
.\end{align*}
\]

and so $(g(\gamma), 0) \geq 0$, because this can never be an equality since $\gamma \in C$.
Thus $g(\gamma) \in C(\Pi)$.


Proof of (b):

This holds because there a correspondence between $\theset{C(\Pi)} \iff \theset{\text{bases} \Pi}$.

Proof of (c):

It suffices to show that $\alpha \in \Phi$ lies in some base $\Pi' = W(\Pi)$.
Note that $\beta\neq\alpha \implies H_\beta \neq H_\alpha$, and so we can pick a $\gamma \in H_\alpha \intersect H_\beta^c$ for every $\beta \in \Phi \setminus{\pm \alpha}$.
Since $\inner{\gamma}{\alpha} = 0$ but $\inner{\gamma}{\beta} \neq 0$ for all $\beta \neq \pm \alpha$, we can choose some $\varepsilon > 0$ such that $\abs{\inner{\gamma'}{\beta}} > \varepsilon$ for every $\beta\neq\pm\alpha$.
Then $\gamma' \in C(\Pi')$ and thus $\alpha \in \Pi'$.

Proof of (d):

By definition, $W_0 \subseteq W$, so we need to show the reverse containment.
For all $\alpha \in Phi$, we want to show $S_\alpha \in W_0$.
By (c), there exists a $w\in W_0$ such that $w(\alpha) \coloneqq \beta \in \Pi$,
Then $S_\beta = S_{w(\alpha)} = w s_\alpha w\inv$.
So $S_\alpha = w\inv S_\beta w$, where each term is in $W_0$, so the whole thing is in $W_0$ as well.

Proof of (e):

Suppose $W(\Pi) = \Pi$.
Let $W = S_{\alpha_1} \cdots S_{\alpha_\ell}$ be a reduced expression, which exists by (d).
By corollary 10.2b, we have $W(\alpha_\ell \in \Phi^-)$.
But this forces $w = e$. $\qed$

Remarks:

By (d), there is a well-defined notion of *length* for $w\in W$.
We will now show that $\ell(w) = n(w) \coloneqq \# N_w \coloneqq \# \theset{\alpha \in \Phi^+ \suchthat W(\alpha) \in \Phi^-}$, i.e. the number of roots that get sent to a negative root.

# Wednesday October 9

Last time:

We have the Weyl group $W \coloneqq \theset{S_\alpha \suchthat \alpha \in \Phi} = \theset{S_\alpha \suchthat S_\alpha \in \Pi}$.
If $W \ni w = \prod{i=1}^\ell W_{\alpha_i}$ is a product of simple reflections, then $W$ is said to be *reduced* if $\ell$ is the smallest among all such products.
Call $\ell(w)$ the length of $W$ and let $n(W) = \# N_W$.
By Corollary 10.2b, $N_W = \theset{\alpha \in \Phi^+ \suchthat W(\alpha) \in \Phi^-}$, and if $W = \prod S_{\alpha_i}$ is reduced, then $w(\alpha_j) \in \Phi^-$.

Lemma: 
$\ell(w) = n(w)$.

Proof:
Done in class, but see Humphrey's.

## Classification

### Cartan Matrix

Fix a base $\Pi \subset \Phi$ of rank $\ell$.

Definition:
Fix an order $(\alpha_1, \alpha_2, \cdots \alpha_\ell$ of $\Pi$. 
Then the *Cartan matrix* is given by $A_{ij} = \inner{\alpha_i}{\alpha_j\dual} \in \mathrm{Mat}(\ell\times\ell, \ZZ)$.

Examples:

<!--![Image](figures/2019-10-09-09:24.png)-->

<!--![Image](figures/2019-10-09-09:26.png)-->

Facts:

a. $A$ depends on the chosen ordering of $\Pi$.
b. $A$ is independent of the choice of $\Pi$.
c. $A$ is invertible.
d. $A$ uniquely determines the root system (up to isomorphism).
  I.e., if $A(\Phi) = A(\Phi')$ then there is an isomorphism $E \mapsvia{\phi} E$ on the underlying Euclidean space such that $\\phi(\Phi) = \Phi'$ and $\inner{\alpha}{\beta\dual} = \inner{\phi(\alpha)}{\phi(\beta)\dual}$ for all $\alpha, \beta \in \Phi$.


### Dynkin Diagrams

Recall from Lemma 9.4 that $a_{ij} a_{ji} \in \theset{0,1,2,3}$.

Definition:
Given a Cartan matrix $A$, its Coxeter diagram is an undirected multigraph $\Gamma = (I, E)$  where $I$ is a vertex set and the edge set is given by edges between vertices corresponding to $i, j$ (where $i\neq j$) with weight $a_{ij} a_{ji}$.

Examples:

Note that these diagrams don't encode which roots are longer, so we can decorate these diagrams with arrows to indicate this and obtain a partially-directed multigraph.

Definition:
A *Dynkin diagram* is the partially-directed multigraph obtained from the Coxeter diagram by adding arrows on the double or triple edges between $i, j$ precisely when $\abs{a_i} > \abs{a_j}$.
(Note that this also occurs when $\abs a_{ij} < \abs a_{ji}$)


Definition:
A non-empty root system is *irreducible* if $\Phi \neq \Phi_1 \oplus \Phi_2$ for some nonempty root system $\Phi_2$ where $\alpha\in \Phi_1, \beta\in \Phi_2 \implies \inner{\alpha}{\beta} = 0$.

For example: $\Phi(A_1 \cross A_1)$ can be written as $\Phi(A_1) \oplus \phi(A_1)$ since the off-diagonal entries were zero, so it is reducible.

Facts:

a. $\Phi$ is irreducible iff the Dynkin diagram is connected
b. $\Phi$ can be uniquely written as the union of irreducible root systems (where the multiplicity of each system appearing is well-defined)


Thus to classify root systems, it suffices to classify connected Dynkin diagrams.

Examples of Dynkin diagrams:

<!--![Image](figures/2019-10-09-21:03.png)-->

<!--![Image](figures/2019-10-09-21:03.png)-->


# Friday October 11

Recall from last time the Dynkin diagrams.
If $\Phi$ is irreducible, then its diagram is one of the following:

<!--![Image](figures/2019-10-11-09:14.png)-->

Definition:
A subset $A = \theset{v_1, \cdots, v_n} \subseteq E$ is *admissible* iff

1. $A$ is linearly independent.
2. $\inner{v_i}{v_i} = 1$ for all $i$, and $\inner{v_i}{v_j} \leq 0$ if $i\neq j$.
3. $s_{ij} = 4\inner{v_i}{v_j}^2 \in \theset{0,1,2,3}$ if $i\neq j$.

Define a graph $\Gamma_A = (V_A, E_A)$ where $V_A = A$ and $E_A= \theset{s_{ij} \suchthat i\neq j}$.
If $\Pi = \theset{\alpha_1, \cdots, \alpha_\ell} \subseteq \Phi$ is a base, then $A \coloneqq \theset{v_i = \frac{\alpha_i}{\sqrt{\inner{\alpha_i}{\alpha_i}}}}$.

Lemma:

a. If $A$ is admissible, then $\# \theset{(v_i, v_j) \in E_A \suchthat 4\inner{v_i}{v_j}^2 \neq 0} \leq \abs{A} - 1$, and $\Gamma_A$ contains no graph cycles.
b. $\deg V_i \leq 3$ for all $i$.
c. If $\Gamma_A$ contains a path $p_1 \to \cdots \to p_t$, then $A' \coloneqq \theset{p} \union A\setminus \theset{p_1, \cdots, p_t}$ where $p \coloneqq \sum p_i$. Moreover, $\Gamma_{A'}$ is obtained from $\Gamma_A$ by contracting this path onto $p$.

Proof of theorem:

Assume the lemma holds.
Let $\Gamma$ be the Coxeter diagram of $\Phi$; then $\Phi$ is connected.

Case 1: $\Gamma$ has a triple edge.
But then both vertices on this edge have degree 3, so this is the maximal number of edges between them.
But since $\Gamma$ must be connected, this is everything.

Case 2: $\Gamma$ has no triple edges but some double edge.
We will first show that $\Gamma$ has only one double edge.

Suppose otherwise; then $\Gamma$ has at least two double edges occurring. 
Without loss of generality (e.g. by taking a subgraph), these are connected by a path of single edges.
By the lemma, we can contract this path to get an admissible subset.
But then there is a vertex of degree 4, contracting $\deg V_i \leq 3$ for all $i$.

Now we'll show that $\Gamma$ has no branching point, i.e. a vertex of degree exactly 3.
If this occurs, then a double edge is connected to such a vertex by a path.
Contracting this path yields a vertex of degree 4, again a contradiction.

By these two statements, $\Gamma$ has the general form:
\[
\begin{align*}
\Gamma = v_1 \to \circ \to \cdots \to v_p \to\to w_q \to \circ \to \cdots \to w_1
.\end{align*}
\]

Let $v = \sum i v_i$ and $w = \sum i w_i$, then $\inner{v}{v} = \frac{1}{2} p(p+1)$, and $\inner{w}{w} = \frac 1 2 q(q+1)$.
Note that $\inner{v_i}{w_j} = -1/\sqrt 2$ if $i=p$ and $j=q$, and 0 otherwise.

Thus $\inner{v}{w} = \cdots = \frac 1 2 p^2q^2$.
By Cauchy-Schwarz, this is strictly less than $\inner{v}{v} \inner{w}{w} = \frac 1 4 p(p+1)q(q+1)$.
We then obtain $(p-1)(q-1) < 2$.
Supposing wlog that $p \geq q$, we have either $p=q=2$, in which case we get $\circ \to \circ \to\to \circ \to \circ$.
Otherwise $q=1$, and we get $\circ \to \cdots \to \circ \to\to \circ$.

Case 3: $\Gamma$ has only single edges.
We want to show $\Gamma$ has only one branching point, i.e. a vertex of degree 3.
If it has 2, we can contract the intermediate path to get a vertex of degree 4.
So we have the following situation:

<!--![Image](figures/2019-10-11-09:41.png)-->

Define $x = \sum i x_i, y = \sum i y_i, w = \sum i w_i$, and $\hat w, \hat x, \hat y$ to be their normalization.
Then $B = \theset{b_i} \coloneqq \theset{\hat w, \hat y, \hat y, z}$ is orthonormal and linearly independent, so we can apply Gram-Schmidt.
This yields a $z' \neq 0$ such that 
$$
z = \sum \inner{z}{\hat b_i} \hat b_i
$$

In particular, $\inner{z}{z'}z' \neq 0 z'$, otherwise $z$ is a linear combination of the $x_i, y_i, w_i$.
Thus $\inner{z}{\hat w}^2 + \inner{z}{\hat x}^2 + \inner{z}{\hat y}^2 > 1$.
We can compute $\inner{z}{\hat w} = \frac{-q/2}{\sqrt{\frac 1 2 q(q+1)}}$, and so $\inner{z}{\hat w}^2 = \frac q {2(q+1)}$.

From this, we can obtain $\frac 1 {q+1} + \frac 1 {r+1} + \frac 1 {p+1} > 1$.
We can assume $p \geq q \geq r \geq 1$, since these correspond to the lengths of paths in the above image.
This allows us to do some case-by-case analysis.

Using this, we find $\frac 3 {r+1} > 1$, and so $r=1$ must hold.
Similarly, $\frac 2 {q+1} > \frac 1 2$, which forces $q = \in \theset{1, 2}$.

Supposing $r=q=1$, then we get type $D_\ell$ because $p$ can be anything.
Supposing otherwise that $r=1, q=2, p \in \theset{2,3,4}$, we get type $E$.

# Monday October 14

Last time:

Theorem:
If $\Phi$ is irreducible, then the Dynkin diagram is given by $A-G$.

Definition:
A subset $A = \theset{v_1, \cdots, v_n}$ is *admissible* if

1. $A$ is a linearly independent set,
2. $\inner{v_i}{v_i} = 1$ for all $i$, and $\inner{v_i}{v_j} \leq 0$ if $n\neq 0$.
3. $4\inner{v_i}{v_j}^2 \in \theset{0,1,2,3}$ if $i\neq j$. 

Thus the graph $\Gamma_A = (V_A, E_A)$ is given by $V_A = A$ and $E_A = \theset{v_i \mapsvia{4\inner{v_i}{v_j}^2} v_j \mid i\neq j}$.


Lemma:

a. If $A$ is admissible, then the number of edges such that $4\inner{v_i}{v_j} \neq 0$ is at most $\abs A - 1$.
b. For every $i$, we have $\deg v_i \leq 3$.
c. If $\Gamma_A$ contains a straight path of length $t$, then the graph $\Gamma'$ obtained by contracting this path is also admissible.

Let $p$ be the point obtained by contracting such a path.

<!--![Image](figures/2019-10-14-09:15.png)-->

Proof of (a):
If $\theset{p_1, \cdots, p_t}$ are linearly independent, then $p\neq 0$.
Thus by positive-definiteness, we have
$0 <_{pd} \inner{p}{p} =_{\# 2} t + \sum_{i < j} 2\inner{p_i}{p_j}$.
Then $t > \sum_{i < j} (-2) \inner{p_i}{p_j} = \sum_{i < j} \sqrt{4\inner{p_i}{p_j}^2}$,
where the quantity in the square root is the number of edges, which is thus greater than or equal to the number of pairs connected.

Proof of (b):
Fix $i$.
Let $u_1 \cdots u_k$ be the vertices in $A$ that are connected to $v_i$ by a single edge.
Then by (a), we have $\inner{u_i}{u_j} = 0$ for all $i\neq j$.

Then the set $\theset{u_1, \cdots, u_k}$ is an orthonormal basis for their span.
Applying Gram-Schmidt, we can write each $v_i = \sum_{j=0}^k \inner{v_i}{u_j} u_j$, where we pick $u_0$ such that the new set $\theset{u_0} \union \theset{u_1, \cdots, u_k}$.
Then $\inner{v_i}{u_0} \neq 0$ for all $i$; otherwise we would have $\theset{u_1, \cdots, u_k, v_i}$ would be linearly dependent, since $v_i = \sum c_i u_i$ from above, which contradicts our initial axiom/assumption.
Then $1 = \inner{v_i}{v_i}$ by A2, which equals $\sum_{j=0}^k \inner{v_i}{u_j}^2 = \inner{v_i}{u_0}^2 + \sum_{j=1}^k \inner{v_i}{u_j}^2$, where the first term is strictly positive.

But then $1 > \sum_{j=1}^k \inner{v_i}{v_j}^2 \geq \frac k 4$ by A3, which then forces $k = \deg v_i \leq 3$.

Proof of (c):
The conditions of A1 are satisfied.
For A2, we have
$$
\inner{p_i}{p_j} = \begin{cases} -\frac 1 2 & \abs{i-j} = 1 \\ 0 & \abs{i-j} > 1 \\ 1 & i=j.\end{cases}
$$

We then have $\inner{p}{p} = t + 2 \sum{i<j} \inner{p_i}{p_j} = t + 2\sum_{i=1}^{t-1} \inner {p_i} {p_{i+1}} = 1$.
Thus $\inner {p} {v_i} = \sum_{j=1}^t \inner {p_j} {v_i} \leq 0$.

For A3, fix $v_i \in A'$.
Then $v_i$ is connected (by a single edge) to at most one point $p_j$, otherwise there would be a cycle.
Thus 
$$
\inner {v_i} {p} = 
\begin{cases} 
\inner {v_i} {p_j} & \text{if $v_i$ is connected to $p_j$} \\ 
0 & \text{else}.
\end{cases}
$$

We thus have $4{\inner {v_i} {p}}^2 = 4{\inner {v_i} {p_j}} \in \theset{0,1,2,3} \mathrm{1}{v_i \sim p_j}$.

## Construction of Root Systems and Automorphisms

We'll start with the construction of types $A-G$.

**Theorem:**
For Dynkin diagrams of type $A-G$, there exists an irreducible root system having the given diagram.

Proof:
By explicit construction.
Fix an orthonormal basis $\theset{\varepsilon_i}$.

**Type $A_\ell$:**
Let
$$
\Phi = \theset{\varepsilon_i - \varepsilon_j \mid 1 \leq i\neq j \leq \ell + 1}
$$

Then $\abs \Phi = \ell^2 + \ell$, and $\Pi = \theset{\alpha_i = \varepsilon_i - \varepsilon_{i+1} \mid 1 \leq i \leq \ell}$.
We then find that $\dim \lieg = \ell^2 + 2\ell$.

> Note that we don't know anything about $\lieg$ yet, but already know its dimension.

Example: $A_2$.
We have $\Pi = \theset{\alpha_1 = \varepsilon_1 - \varepsilon_2, \alpha_2 = \varepsilon_3 - \varepsilon_2}$.
Then $A = (a_{ij})$ with $a_{ij} = \inner {a_i} {a_j\dual}$,
and $\alpha_1\dual = \frac {2\alpha_1}{\inner {\alpha_1} {\alpha_1}} = \frac{2 (\varepsilon_1 - \varepsilon_2)}{\inner{\varepsilon_1 -\varepsilon_2}{\varepsilon_1 - \varepsilon_2}} = \varepsilon_1 - \varepsilon_2 = \alpha_1$.
Doing the computations, it turns out that $\inner {\alpha_1} {\alpha_2\dual} = -1$, $\inner{\alpha_2} {\alpha_1\dual} = -1$, and $\inner {\alpha_i} {\alpha_i\dual} = 2$.

Thus $A = [2, -1; -1, 2]$, which has Dynkin diagram given by:

<!--![Image](figures/2019-10-14-09:44.png)-->

**Type $B_\ell$:**
Recall that these have one "short root":

<!--![Image](figures/2019-10-14-09:45.png)-->

Then $\Phi = \theset{\pm \varepsilon_j, \pm \varepsilon_j \mid 1 \leq i\neq j \leq \ell} \union \theset{\pm \varepsilon_i \mid 1 \leq i \leq \ell}$,
and we have $\Pi = \theset{\alpha_i = \varepsilon_i - \varepsilon_{i-1} \mid 1 \leq i \leq \ell-1} \union \theset{\alpha_\ell \coloneqq \varepsilon_\ell}$.

After carrying out the computation, we have the following Cartan matrix:

<!--![Image](figures/2019-10-14-09:49.png)-->

And $\dim \lieg = 2\ell^2 + \ell$, since $\abs \Phi = 2\ell(\ell-1) + 2\ell = 2\ell^2$.

**Type $D_\ell$:**

<!--![Image](figures/2019-10-14-09:51.png)-->

We obtain $\Phi = \theset{\alpha_i = \varepsilon_i - \varepsilon_{i+1} \mid 1 \leq i \leq \ell-1} \union \theset{\alpha_\ell \coloneqq \varepsilon_{\ell-1} + \varepsilon_\ell}$.
We then find $\inner {\alpha_{\ell-1}} {\alpha_\ell\dual} = 0$ and $\inner {\alpha_{\ell-2}} {\alpha_\ell\dual} = -1$.

**Type $E_\ell$**:
We have $\Pi(E_\ell) = \Pi(D_{\ell - 1}) \union \theset{\alpha_\ell \coloneqq - \frac 1 2 \sum_{i=1}^8 \varepsilon_i}$.

This yields $\abs \Phi = 72, 126, 240$ and $\dim \lieg = 78, 133, 248$, corresponding to $\ell = 6,7,8$.

More results on exceptional Lie Algebras:

<!--![Image](figures/2019-10-14-09:59.png)-->


# Wednesday October 16

Todo

# Friday October 18

Todo

# Monday October 21

## Chapter 5: Existence Theorem

### Universal Enveloping Algebra (UAE)

Some applications/motivations for UAEs:

1. Groups $G$ are to group algebras $F[G]$ as Lie algebras $\lieg$ are to UAE $U(\lieg)$.
  Any $\lieg\dash$module then becomes a module over a ring, so the general theory applies.
2. PBW theorem: this yields a concrete $F\dash$basis of $U(\lieg)$. 
  There is a triangular decomposition $U(\lieg) = U(h) \tensor U(f) \tensor U(n)$.
  This allows constructing the Vermo module (and hence irreducible modules) for $\lieg$,
  allowing for a description of BGG Category $\mathcal O$.
3. Harish-Chandra theorem: $Z)U(\lieg)) = S(\lieg)^W$.
  This characterizes central characters $\chi: Z(U(\lieg)) \to F$,
  which further allows describing the blocks of $\mathcal O$, i.e. when two irreducible modules have non-trivial extensions.
4. $U(\lieg)$ deforms to a quantum group $U_q(\lieg)$.

### Tensor and Symmetric Algebras

Definition:
For $V$ a f.d. vector space, the *tensor algebra* over $V$ is given by $T(V) = \bigoplus_{n\in\NN} T^n(V)$ where
$T^n(V) = \tensor_{i=1}^n V$ with an associative multiplication $T^a \cross T^b \to T^{a+b}$ given by $(\tensor_{i=1}^a v_i, \tensor_{i=1}^b w_i) \mapsto \tensor_{i=1}^a v_i \tensor \tensor_{i=1}^b w_i$.

The tensor algebra satisfies a universal property: given any $F\dash$linear map $\phi: V \to A$. (See phone image)

Definition:
The symmetric algebra on $V$ is given by $S(V) = T(V) / I$ where $I = \generators{x\tensor y - y\tensor x} \normal T(\lieg)$.

Some facts:

a. There is a natural grading $S(V) = \bigoplus_{n\in\NN} S^n(V)$ where $S^0(V) = F, S^1(V) = V, S^n(V) = T^n(V) / (I \intersect T^n V)$,
b. If $\theset{x_i}^n$ is a basis of $V$, then $S(V) \cong F[x_1, \cdots, x_n]$.

### Construction of UEA

Definition:
For $\lieg$ a lie algebra, define $U(\lieg) = T(\lieg)/J$ where $J = \generators{x\tensor y - y\tensor x - [x,y]} \normal T(\lieg)$.

Thus we have the following type of equation that holds in $U(\lieg)$:

\[
\begin{align*}
v_1 \tensor \cdots \tensor v_a \tensor (x\tensor y) \tensor w_1 \tensor \cdots \tensor w_b = \\
v_1 \tensor \cdots \tensor v_a \tensor (y\tensor x) \tensor w_1 \tensor \cdots \tensor w_b +
v_1 \tensor \cdots \tensor v_a \tensor ([x,y]) \tensor w_1 \tensor \cdots \tensor w_b
.\end{align*}
\]

Proposition:
$U(\lieg)$ has a universal property: given a lie algebra hom $\theta: \lieg \to \mathcal A$ where $\mathcal A$ is any unital associative $F\dash$algebra with a lie bracket,
there exists a unique $\psi:U(\lieg) \to \mathcal A$ making the following diagram commute:

\[
\begin{center}
\begin{tikzcd}
\lieg \arrow[rrdd, "\theta"] \arrow[rr, "\iota"] &  & U(\lieg) \arrow[dd, "\exists \psi", dotted] \\
                                                 &  &                                             \\
                                                 &  & \mathcal A                                 
\end{tikzcd}
\end{center}
\]


where $\iota: \lieg \injects T(\lieg) \surjects U(\lieg)$ is given by  $x\mapsto x + J$.

The upshot:
There is a 1 to 1 correspondence 
\[
\begin{align*}
\left\{ \parbox[c]{1.1in}{\centering
  Lie algebra representations $\lieg \to \liegl(V)$
}\right\}
&\rightarrow
\left\{ \parbox[c]{1.1in}{\centering
  Algebras from $U(\lieg) \to \mathrm{End}(V)$
}\right\} \\
\theta &\mapsto \psi \\
\theta = \psi\circ\iota &\mapsfrom \psi
\end{align*}
\]

Proof (existence):

$\theta: \lieg \to \mathcal A$ extends to an algebra homomorphism $\tilde\theta: T(\lieg) \to \mathcal A$ given by $\tensor_{i=1}^n x_i \mapsto \prod \theta(x_i)$.
Note that $\tilde\theta(x\tensor y - y\tensor x - [x,y]) = \theta(x)\theta(y) - \theta(y)\theta(x) - \theta([x,y]) = 0$,
and thus $J \normal \ker \tilde\theta$ and $\phi: T(\lieg)/J \to \mathcal A$ is well-defined.

Uniqueness:
Suppose that $\psi': U(\lieg) \to \mathcal A$ is another hom $\psi'$ such that the following diagram commutes:

\[
\begin{center}
\begin{tikzcd}
\lieg \arrow[rrdd, "\theta"] \arrow[rr, "\iota"] &  & U(\lieg) \arrow[dd, "\psi", bend left] \arrow[dd, "\psi'", bend right] \\
                                                 &  &                                                                        \\
                                                 &  & \mathcal A                                                            
\end{tikzcd}
\end{center}
\]

Since $T(\lieg)$ is generated by $T^1(\lieg)$, $U(\lieg)$ is generated by $\iota(\lieg) \in U(\lieg)$.
Thus for all $x\in \lieg$, $\psi\circ \iota(x) = \theta(x) = \psi' \circ \iota(x)$ by the commuting of each triangle.
We then have $\psi = \psi'$ on $\iota(\lieg)$, and hence on $U(\lieg)$.


### PBW Theorem

> PBW: Poincaré-Birkhoff-Witt

Theorem:
If $\lieg$ has a basis $\theset{x_i}_{i\in I}$ where $\leq$ is a total order on $I$, then let $y_i \coloneqq \iota(x_i) \in U(\lieg)$.
Then $U(\lieg)$ has an $F\dash$basis called a *PBW basis* which is given by 
\[
\begin{align*}
\theset{ y_{i_1}^{r_1} \cdots y_{i_n}^{r_n} \mid n\in \NN, r_i \in \NN, i_1 \leq \cdots \leq i_n}
.\end{align*}
\]

We refer to each term appearing as a *PBW monomial*.

Examples:

Type A, $\lieg = \liesl(2, F) = \generators{f, h, e}$.
Pick an order $x_1 = f, x_2 = h, x_3 = e$, so $f < h < e$.

Then $U(\lieg)$ has a basis
\[
\begin{align*}
B = \theset{1} \union 
\theset{f^{r^1}} \theset{f^{r^1} h^{r_2}} \union \theset{f^{r_1} h^{r_2} e^{r_3}} \union
\theset{h^{r_1}} \union \theset{f^{r_1}e^{r_2}} \union
\theset{e^{r_1}} \union \theset{h^{r_1} e^{r_2}}
.\end{align*}
\]

i.e. $B = \theset{f^a h^b e^c \suchthat a,b,c \in \NN}$.

If you pick a different order, say $f < e < h$, then we obtain
$B = \theset{f^a e^b h^c \suchthat a,b,c \in \NN}$.

# Wednesday October 23

Recall from last time:

For $\lieg$ a lie algebra, we define $T(\lieg)$ the tensor algebra, and the universal enveloping algebra $U(\lieg) = T(\lieg)/\sim$ where $x\tensor y - y\tensor x \sim [x, y]$.

We also described the *PBW Theorem*, which provides a basis for $U(\lieg)$.

Proof of PBW Theorem:

We have $T(\lieg) = \spanof\theset{x_{j_1} \tensor \cdots \tensor x_{j_k} \suchthat j_1, \cdots, j_k \in I}$, where we note that there are not required to be ordered.
Thus $U(\lieg) = \spanof\theset{y_{j_1} \tensor \cdots \tensor y_{j_k} \suchthat j_1, \cdots, j_k \in I}$, where which are again not required to be ordered.
We would thus like to express every term here as some linear combination of monomials in the $y_{i_j}$ with increasing indices.
We proceed by inducting on $k$, the number of tensor factors occurring.
The base case is clear.

For $k> 1$, supposing that the element is *not* a PBW monomial, then there is some inversion in the indices $(j_1, \cdots, j_k)$, i.e. there is at least one $i$ such that $j_{i+1} < j_i$.
Now for any two indices $a,b \in I$, we have
$$
\iota(x_b \tensor x_a) = \iota(x_a \tensor x_b + [x_b, x_a]) \implies  y_b y_a = y_a y_b + \iota([x_b, x_a])
$$
Since $[x_b, x_a] = \sum_t F x_t$ and $\iota[x_b, x_a] = \sum_t F y_t$.

But then $y_{j_1} \cdots y_{j_k} = y_{i_1} y_{i_2} \cdots y_{j_k} + \text{ lower degree terms}$ where $i_1 \leq i_2 \cdots i_k$ is a non-decreasing rearrangement of the $j_i$.
By the inductive hypothesis, the lower degree terms are spanned by PBW monomials, so we're done.

Proof of linear independence:

Claim: let $\vector x \coloneqq x_{j_1} \tensor \cdots \tensor x_{j_n}$ for an arbitrary indexing sequence, and $\vector x_{(k)}$ be this tensor with the $j_k$ and $j_{k+1}$ terms swapped, and $\vector x_{[k]}$ be this tensor with $x_{j_k}, x_{j_{k+1}}$ replaced by their bracket.

Then there exists a linear map 
\[
\begin{align*}
f: T(\lieg) \to R \coloneqq F[\theset{z_i}_{i\in I}] \\
f(x_{i_1} \tensor \cdots \tensor x_{i_n}) = z_{i_1} \cdots z_{i_n} \\
f(\vector x - \vector x_{(k)}) = f(\vector x_{[k]})
.\end{align*}
\]

By collecting terms, we can write
$$
\vector x - \vector x_{(k)} - \vector x_{[k]} = x_{j_1} \tensor \cdots \tensor x_{j_{k-1}} \tensor \left( (x_{j_k} \tensor x_{j_{k+1}}) - (x_{j_{k+1}} \tensor x_{j_k}) - [x_{j_k}, x_{j_{k+}}]   \right) \tensor \cdots
$$

So we can take $J$ to be the ideal generated by all elements of this form, and we find that $J \subset \ker f$, and thus $f$ descends to a map $\overline f$ on $U(\lieg)$.
We then know that if $\overline f$ applied to any PBW monomial is $z_{i_1}^{r_1} \cdots z_{i_n}^{r_n}$, which are linearly independent in $R$, then any PBW monomial will be linearly independent in $U(\lieg)$.

Proof of claim:

For each $\vector x$, define an *index*
$$
\lambda(\vector x) = \#\theset{ (a,b) \in \theset{1, \cdots, n}^2 \suchthat a<b, j_a < j_b  }.
$$

Then 
$$
\theset{\vector x \suchthat \lambda(\vector x) = 0} = \theset{ x_{i_1} \tensor \cdots \tensor x_{i_n} \suchthat i_1 \leq \cdots \leq i_n }.  
$$

So set $T^{n, k} = \theset{\vector x \in T^n(\lieg) \suchthat \lambda(\vector x) \leq k}$; we then have a filtration $T^{n, 0} \injects T^{n, 1} \injects \cdots \injects T^n(\lieg)$.

Step 1: 
We'll construct $f$ by induction on $n$.

For $n> 0$, set $f(\vector x) = z_{j_1} \cdots z_{j_n}$ if $\lambda(\vector x) = 0$.
We now induct on the index $k$ at a fixed power $n > 0$. 
The base case is clear.

For $k>0$, there exists an inversion $(\ell, \ell+1)$, i.e. some indices $i_{\ell} > \i_{\ell+1}$.
Set $f(\vector x) = f(\vector x_{(\ell)}) - f(\vector x_{[\ell]})$, where the LHS is in $T^{n, k}$ and the RHS terms are in $T^{n, k-1}$ and $T^{n-1}(\lieg$ respectively.

Step 2:
We'll check that $f$ is well-defined.

In the above definition, note that $f(\vector x)$ can be defined using different inversions of the indices, we'd like to show that these yield the same map.

Let $(\ell, \ell+1)$ and $(\ell', \ell'+1)$ be two distinct inversions. Then set

\[
\begin{align*}
a = x_{j_\ell} \\
b = x_{j_{\ell+1} }\\
c = x_{j_\ell'} \\
d = x_{j_{\ell'+1}} \\
.\end{align*}
\]

Then we have several cases:

Case 1: $\ell + 1 < \ell'$. 

Then
\[
\begin{align*}
f(\vector x_{(\ell)}) + f(\vector x_{[\ell]}) 
&= f( \cdots b\tensor a \cdots c\tensor d \cdots ) \\
+ f( \cdots \tensor [a, b] \tensor \cdots c\tensor d \cdots ) \\
&= f( \cdots b\tensor a \cdots d\tensor c \cdots )
+ f( \cdots b\tensor a \cdots [c, d] \cdots )
+ f( \cdots \tensor [a, b] \tensor \cdots d\tensor c \cdots ) 
+ f( \cdots \tensor [a, b] \tensor \cdots [c, d] \cdots ) \\
&= f(\vector x_{(\ell']}) + f(\vector x_{[\ell']} )
.\end{align*}
\]

Case 2: $\ell+1 = \ell'$

Then
\[
\begin{align*}
f(\vector x_{(\ell)}) + f(\vector x_{[\ell]}) 
&= f(\cdots b\tensor a\tensor x) + f(\cdots [a,b] \tensor c) \\
&= f(b\tensor c \tensor a)
+ f(c\tensor [a,b])
+ f(b\tensor [a,c]) +
f([[a,b], c]) \\
&= f(c\tensor b \tensor a)
+ f(c\tensor [a,b])
+ f(b \tensor [a,c])
+ f([[a,b], c]) 
+ f(b\tensor [a,c])
+ f(a \tensor [b, c])
+ f([[b,c], a])\\
&= f(\vector x_{(\ell')}) + f(\vector x_{[\ell']})
.\end{align*}
\]

where the last equality is found by expanding the expression backwards.

# Friday October 25

Theorem (PBW):
The universal enveloping algebra $U(\lieg)$ has a basis consisting of the PBW monomials.
If we fix a basis $\theset{x_i \suchthat i\in I}$ of $\lieg$ with a total order, then
$\theset{y_{i_1}^{r_1} \cdots y_{i_n}^{r_n} \suchthat n\in \NN > 0,~ i_j \in I,~ r_i \geq 1}$.

We will construct a map
\[
\begin{align*}
\iota: \lieg &\to U(\lieg) \\
x_i &\mapsto x_i + J \coloneqq y_i
,\end{align*}
\]

where we can recall that $U(\lieg) \coloneqq T(\lieg)/ J$ where $J$ was an ideal of specific relations.

Corollary:

a. The map $\iota$ is injective.
b. The map $\iota$ has no *zero divisors*. 

> We will use property (b) to study properties of Verma modules

Proof of (a):
If $\sum c_i x_i \in \ker(\iota)$, then 
\[
\begin{align*}
0 &= \iota(\sum c_i x_i) = \sum c_i y_i \\
&\implies c_i = 0\quad \forall i \text{ since } \theset{y_i} \subsetneq \theset{\text{ PBW monomials }}\\
&\implies \ker(\iota) = 0.
\end{align*}
\]
Proof of (b):
An arbitrary element in $U(\lieg)$ is of the form
\[
\begin{align*}
a &= \sum c^a_{\vector i, \vector r} y_{i_1}^{r_1} \cdots y_{i_n}^{r_n} \text{ for some } c\in F \\
\coloneqq f_a(\vector y) + \text{ terms with smaller total degree }
.\end{align*}
\]

where $f$ is defined by picking out only those terms of highest total degree, e.g. $f(2y_1 + y_1y_2y_3 + y_2^2) = y_1y_2y_3$, which is of total degree 3.

We want to show that $a\neq 0$ and $b\neq 0$ then $ab \neq 0$, i.e. $(f_a(\vector y) + \cdots)(f_b(\vector y) + \cdots) \neq 0$.

Recall that $y_ay_b = y_by_a + \sum_{a,b \in I} \text{ degree 1 monomials }$. Thus $f_a(\vector y)(f_b(\vector y)) \coloneqq  f_a f_b(\vector y) + \sum\text{ terms of smaller total degree }$.

Here we define $f_a(\vector y) f_b(\vector y)$ by e.g. if $b = y_2$, then $f_b(\vector y) = y_2$, and $f_a(\vector y) f_b(\vector y) = y_1 y_2 y_3 y_2 = y_1 y_2^2 y_3 + y_1y_2[y_3, y_2]$. Note that the leading term is of total degree 4, and the remaining term is a sum of lower degree terms.

## Free Lie Algebra

Let $X \coloneqq \theset{x_i \suchthat i\in I}$ be a set. 
Define the *free associative algebra* $\mathcal{F}(X)$ as $\theset{\sum_k c_{\vector i} X_{\vector i} \mid \vector i = (i_1, \cdots, i_k) \in I^k,~ c_{\vector i} \in F}$.
Then the associated *free lie algebra* $\mathcal{FL}(x) = \intersect_{\lieg} \lieg$ where $X \subseteq \lieg \subseteq \mathcal{F}(X)$ is a containment of lie algebras.

Let $\iota: X \injects \mathcal{FL}(X)$.

Proposition:

a. $\mathcal{FL}(X)$ satisfies a universal property -- for any map $\theta: X \to \lieg$ a lie algebra, there exists a unique $\psi$ making the following diagram commute:

\[
\begin{center}
\begin{tikzcd}
X \arrow[rr, "\iota"] \arrow[rrdd, "\theta"] &  & \mathcal{FL}(X) \arrow[dd, "\exists! \psi", dotted] \\
                                             &  &                                                     \\
                                             &  & \lieg                                              
\end{tikzcd}
\end{center}
\]

b. $U(\mathcal{FL}(X)) = \mathcal{F}(X)$.

> Upshot: we can define a Lie algebra $\lieg$ using generators and relations, and define $\lieg \coloneqq \mathcal{FL}(X) / (R)$ for some set of relations $R$.

## Generators and Relations

Recall that we have a correspondence
\[
\begin{align*}
\theset{\lieg \suchthat \lieg \text{ is a semisimple Lie Algebra }} & &\\ 
&\iff \theset{\Phi, \text{ root systems }} & & \\
&\iff \theset{\text{Dynkin diagrams (Cartan Matrices)}} \\
(\lieg, \lieh) &\to \Phi,\quad \theset{a_i} \subseteq \theset{a} \coloneqq \Pi \subseteq \Phi &\mapsto A_{i, j} = \inner{\alpha_i}{\alpha_j\dual} \\
\lieg(A) &<-_? \Phi &<- A
.\end{align*}
\]
We had an explicit construction to go from Dynkin diagrams to root systems, and an existence theorem of Serre's will take root systems $\Phi$ and produce semisimple Lie algebras from them.
The question will be whether or not there is a one-to-one correspondence here, and that's what we'll spend the rest of the semester showing.

## Cartan/Serre Relations

Recall from (8.3):
For all $\alpha \in \Phi$, we have $e_\alpha \in \lieg_\alpha \setminus\theset{0}$, then there exists a unique $f_\alpha \in \lieg_{-\alpha}$ such that $[e_\alpha, f_\alpha] = h_\alpha \coloneqq \frac{2t_\alpha} {\kappa(t_\alpha, t_\alpha)}$,
where $t_\alpha \coloneqq \alpha = \kappa(t_\alpha, \wait)$.

Fix $\Pi = \theset{\alpha_i \mid i\in I}$, and write $h_i \coloneqq h_{\alpha_i},~ e_i = e_{\alpha_i}$ for each $i$.
Then $\alpha_i(h_j) = a_{ij}$.
Now fix $e_i \in \lieg_{\alpha_i}, f_i \in \lieg_{-\alpha}$ such that $[e_i, f_i] = h_i$ for every $i\in I$.

Proposition:
$\lieg$ is generated by $\theset{e_i, f_i, h_i \mid i\in I}$.

We have the Cartan relations for each $i, j\in I$:
\[
\begin{align*}
[h_i, h_j] = 0, \quad\quad [e_i, f_j] = \delta_{ij} h_i \\
[h_i, e_j] a_{ji} e_j \quad \quad [h_i, f_j] = -a_{ji} f_j
.\end{align*}
\]

as well as Serre relations for each $i\neq j$:
\[
\begin{align*}
(\ad e_i)^{1-a_{ji}}(e_j) = 0 \quad (ad f_i)^{1-a_{ji}}(f_j) = 0
.\end{align*}
\]

Example: $\lieg = \liesl(2, \CC) = \generators{e_1 \coloneqq e, f_1 \coloneqq f, h_1 \coloneqq h}$ satisfies $[h, e] = 2e$ and $[h, f] = -2f$, and since there are no higher order relation, there are no Serre relations.
So we get $A = (2)$ as a matrix.

Example: $\lieg = \liesp(4, \CC)$ is of type $C_2$, and is generated by $\generators{e_1, e_2, f_1, f_2, h_1, h_2}$ satisfying

- $[h_1, h_2] = 0$
- $[h_1, e_1] = 2e_1$
- $[h_1, e_2] = -2 e_2$
- $\cdots$

Then e.g. we have $(\ad e_1)^{1-a_{ij}}(e_2) = (\ad e_1)^3(e_2) = 0$.


# Monday October 28

## Algebra Generated by a Cartan Matrix

Last time:
The claim was that for a Cartan matrix $A$, there is a lie algebra $\lieg(A)$ that is semisimple with CSA $\lieh$ and a root system $\Phi$ that defines that Cartan matrix $A$.

The algebra $\lieg$ is generated by $\theset{e_i, f_i, h_i \mid i\in I = \theset{1, 2, \cdots \ell}}$, with relations

\[
\begin{align*}
[h_i, h_j] = 0 \\
[h_i, e_j] = a_{ji} e_j \\
[e_i, f_j] = \delta_{ij} h_i \\
[h_i, f_j] = -a_{ji} f_j,
\end{align*}
\]

along with the Serre relations (which only appear in higher degrees):
\[
\begin{align*}
s^+_{ij} \coloneqq \ad(e_i)^{1 - a_{ji}} (e_j) = 0 \quad \text{ if } i\neq j\\
s^-_{ij} \coloneqq \ad(f_i)^{1 - a_{ji}} (f_j) = 0 \quad \text{ if } i\neq j \\
.\end{align*}
\]

Proof:

1. Show that $\theset{e_i, f_i, h_i}$ generates $\lieg$.

The subalgebra $\lieh$ is spanned by $\theset{ t_{\alpha_i} \mid i\in I }$ and hence spanned by $\theset{h_i \mid i\in I}$.
So it suffices to show that $\lieg_{\alpha} \subseteq \generators{e_i}$ for all $\alpha -in \Phi^+$.

Write $\alpha = \alpha_i + \beta$ for each $i\in I, \beta \in \Phi^+$. 
Then $[\lieg_{\alpha_i}, \lieg_\beta] = \lieg_\alpha = \CC e_\alpha$, so $e_\alpha = [e_i, e_\beta]$ for some nonzero $e_\beta \in \lieg_\beta$.

By repeating this argument, we find that $e_\alpha = [ [ \cdots [e_{i_1}, e_{i_2}], e_{i_3}] \cdots ], \cdots e_{i_k} ]$.

2. Verify the relations

We need to check that $s^+_{ij} = 0$.
The $\alpha_i$ root string through $\alpha_j$ is given by 
$$
\alpha_j + p\alpha_i \to \cdots \to \alpha_j + q \alpha_i
$$

where $p\neq 0$ because $\alpha_j - \alpha_i \not\in\Phi$ for any $i$, so the smallest root must be $\alpha_j \in \Phi$.
By prop 8.4d, this means that $-q = \alpha_j(h_i) = \alpha_{ji}$.

Thus $\ad(e_i)^{1-\alpha_{ji}} (e_j) = \ad(e_i)^{1+q} \in \lieg_{\alpha_j + (q+1)\alpha_i} = \theset{0}$. 

## The Lie Algebra $\tilde \lieg(A)$

Fix a Cartan matrix $A = (a_ij)_{i, j \in I}$where $I = \theset{1, \cdots, \ell}$.
Let $\tilde J \normal \mathcal{FL}(\theset{e_i, f_i, h_i \mid i\in I})$ generated by

- $[h_i, h_j]$,
- $[h_i, e_j] - a_{ji}e_j$,
- $[e_i, f_j] - \delta_{ij} h_i$
- $[h_i, f_j] + a_{ji} f_j$.

Then let $J$ be the same ideal with the additional relations $s^+, s^-$, and set 

- $\tilde \lieg(A) = \mathcal{FL}(\theset{e_i, f_i, h_i}) / \tilde J$,
- $\lieg(A) = \mathcal{FL}(\theset{e_i, f_i, h_i}) / J$.

Proposition:

a. Let $V = \mathcal{F}(\theset{f_1, \cdots, f_\ell})$. Then $\pi: \tilde \lieg \to \liegl(V)$ is a *representation* with
  - $f_j: f_{i_1} \cdots f_{i_r} \mapsto f_j f_{i_1}$
  - $h_j: f_{i_1} \cdots f_{i_r} \mapsto (\alpha_{ji_1} + \cdots )f_{i_1} \cdots f_{i_r}$
  - $e_j: f_{i_1} \cdots f_{i_r} \mapsto (\sum \delta_{} \sum a)(\alpha_{ji_1} + \cdots )f_{i_1} \cdots f_{i_r}$

b. $\theset{h_1, \cdots h_\ell}$ is linearly independent set in $\tilde \lieg$.

For (a), it suffices to check $[\pi(h_i), \pi(h_j)] = 0$, $[\pi(h_i), \pi(e_j)] = a_{ji} \pi(e_j)$, etc.
For (b), it suffices to show that $\theset{\pi(h_i) \mid i\in I}$ is linearly independent.

Suppose $\sum c_i \pi(h_i) = 0$ in $\liegl(V)$. Then,
\[
\begin{align*}
0 = \left( \sum_c c_i \pi(h_i) \right)(f_j) = -\left( \sum_i c_i \alpha_{ji} \right) f_j \\
\implies \sum c_i \alpha_{ji} = 0 \quad \forall ~j \\
\implies c_i = 0 \quad \forall~i,
.\end{align*}
\]
since $A$ is invertible.

Thus $\tilde \lieh \coloneqq \mathrm{span}_\CC\theset{h_i}$ is a lie subalgebra of $\tilde\lieg$..

Theorem:

a. $\tilde \lieg = \bigoplus_{u\in \tilde\lieh^*} \tilde \lieg_\mu$ as vector spaces, where
$$
\tilde\lieg_\mu \coloneqq \theset{x\in\tilde\lieg\suchthat [h, x] = \mu(h) x \quad \forall h\in\tilde\lieh}.
$$

b. $\tilde\lieg = \tilde n^- \oplus \tilde\lieh \oplus \tilde n$ as vector spaces, where $\tilde n^- \coloneqq \generators{f_i}$ and $\tilde n \coloneqq \generators{e_i}$.

Proof of (a):

It's easy to check that $[\tilde\lieg_\lambda, \tilde\lieg_\mu] \subseteq \lieg_{\lambda + \mu}$ for all $\lambda,\mu \in \tilde\lieh^*$.
Define $\alpha_i \in \tilde\lieh^*$ by $h_j \mapsto a_{ij}$. Then

- $e_i \in \tilde\lieg_{\alpha_i}, f_i \in \tilde\lieg_{-\alpha_i}, h_i \in\tilde\lieg_0$ for all $i$.
- Any $x\in \tilde\lieg$ lies in $\tilde\lieg_\mu$ for *some* $\mu$.
- $\tilde\lieg = \sum_\mu \tilde\lieg_\mu$.

We just need to show that the last sum is in fact a direct sum.

Suppose that $\exists x\neq 0$ such that $x\in \tilde\lieg_\mu, x = \sum_\nu x_\nu$ where $x_\nu \in \tilde\lieg_{\nu} - \theset{0}$ and $\nu$ runs over a finite set of weights that are not equal to $\mu$.

Then $[h, x] = \mu(h) x$, and so $(\ad h - \mu(h)) (x) = 0$. 
On the other hand, $\prod_\nu (\ad h - \nu(h)) (x_\nu) = 0$.
So pick some $h\in\tilde\lieh$ such that $\mu(h) \neq \nu(h)$ for all $\nu$.
Then the polynomials 
$t - \mu(h), \prod_\nu (t - \nu(h))$ 
are coprime, and so there exist $a,b$ such that
$$
a(t - \mu(h) + b \prod_\nu (t - \nu(h)) = 1, 
$$

Then evaluating at $t= \ad h$, we get 
\[
\begin{align*}
x = 1(x) = a(\ad h) (\ad h - \mu(h))(x) + b(\ad h)(\prod_\nu \ad h - \nu(h))(x) = 0
,\end{align*}
\]

and so $\tilde\lieg = \oplus_\nu \tilde\lieg_\mu$.


# Wednesday October 30

Last time:

\[
\begin{align*}
W \actson \lieh^*, \lambda \mapsto w(\lambda),
W \actson \lieh, \lieh \mapsto w \cdot \lieh
\end{align*}
\]
such that $\lambda(w\cdot h) = (w\inv \lambda ) (h) \forall \lambda \in \lieh^*$.

We then get compatible squares:

<!--\[-->
<!--\begin{tikzcd}-->
<!--\lieh^* \arrow[dd, "w"] \arrow[rr] &  & \lieh \arrow[dd, "w\cdot"] &  & \alpha \arrow[dd] \arrow[rr] &  & t_\alpha \arrow[dd]            \\-->
                                   <!--&  &                            &  &                              &  &                                \\-->
<!--\lieh^* \arrow[rr]                 &  & \lieh                      &  & w\alpha \arrow[rr]           &  & w \cdot t_\alpha = t_{w\alpha}-->
<!--\end{tikzcd}-->
<!--\]-->

Proposition:

a. $\Theta_i \coloneqq \exp(\ad e_i) \circ \exp(\ad (-f_i)) \circ \exp(\ad e_i)$,
b. $\Theta_i(\lieh) = \lieh$, so it fixes Cartan subalgebra.
c. $\Theta_i\mid_\lieh = s_i$ where $s_i$ is the Weyl group action

Proof of (a):

We want to show that $\exp(\ad e_i)$ is well-defined as an automorphism of $\lieg$. 
It suffices to check that $\ad e_i$ is *locally nilpotent*, i.e. for all $x\in \lieg$, there exists some $n_x > 0$ such that $\ad(e_i)^n = 0$.
We will also need to check that $\exp \ad e_i$ is a derivation.

To see the local nilpotency, we can check
\[
\begin{align*}
(\ad e_i)^n([x, y]) = \sum_{t=0}^n {n \choose t} \left[ (\ad e_i)^t, (\ad e_i)^{n-t} \right]
\end{align*}
\]

for all $x, y \in \lieg$. 

If $x,y$ are locally nilpotent, then $[x, y]$ is as well.

It thus suffices to check that $\ad e_i$ acts on generators in a nilpotent way.

A direct computation shows $\ad e_i = [e_i, e_i] = 0$, and $(\ad e_i)^{1 - a_{ji}}(e_j) = 0$ by the Serre relations.

We also find that $\ad e_i (h_j) = [e_i, h_j] = -[h_j, e_i] = -a_{ij} e_i$, and applying it again yields $(\ad e_i)^2(h_j) = -a_{ij}[e_i, e_i] = 0$.

We have $\ad e_i (h_j) = 0$, and applying $\ad e_i h_i$ multiple times yields $h_i, [e_i, h_i], 0$, so $\ad^{3} e_i(h_i) = 0$.

Proof of (b):

By a direct computation, we have $\Theta_i(h_j) = h_j - a_{ij} h_i \in \lieh$. (See CJ's notes for full computation.)

Proof of (c):

Consider computing $s_i \cdot h_j$. 
This is the unique element satisfying $\lambda(s_i \cdot h_j) = (s_i\inv \lambda)(h_j)$, but we can compute
\[
\begin{align*}
(s_i\inv \lambda) (h_j) &= h_j - a_{ij} h_i = \Theta_i(h_j)
.\end{align*}
\]

Theorem (Serre):
Fix $\Phi \supseteq \Pi = \theset{\alpha_1, \cdots, \alpha_\ell}$ and $I = \theset{1, \cdots, \ell}$.
Define $A$ by $a_{ij} = (\alpha_j, \alpha_i\dual)$.
Let $\lieg = \lieg(A)$ be the algebra generated by these elements.

Then

a. $\lieg = n^- \oplus \lieh \oplus n$ as vector spaces, where $n^- \cong \tilde n^- / s^-$, $\lieh \cong \tilde\lieh$, and $n \cong \tilde n / s^+$. 
b. $\lieg = \oplus_{\mu \in \lieh^*} \lieg_\mu$ as vector spaces, where $\lieg_\mu = \theset{x\in\lieg \suchthat [h, x] = \mu(h) x \forall h\in \lieh}$
c. $\dim \lieg_\lambda = \dim \lieg_\mu$ if $\lambda \in W_\mu$,
d. $\dim \lieg = \ell + \abs \Phi$,
e. $\lieg$ is semisimple,
f. $\lieh$ is a Cartan subalgebra with root system $\Phi$.

Proofs:

a. Follows from Theorem 18.2b and Lemma b.
b. Similar to Theorem 18.2a.

Proof of (c):

We may assume that $\lambda = s_i \mu$.
Pick $x\in \lieg_\lambda$.
Then for all $h\in \lieh$, we have

\[
\begin{align*}
[\Theta_i(h), \Theta_i(x)] &= \Theta_i(h, x) \\
&= \lambda(h)\Theta_i(x) \\
&= \lambda(\Theta_i\inv (h)) \Theta_i(x) \\
&= \lambda(s_i\inv \cdot h) \Theta_i(x) \\
&= (s_i\lambda) \Theta_i(x)
,\end{align*}
\]

so $\Theta_i(x) \in \lieg_{s_i\lambda}$, and thus $\Theta_i(\lieg_\lambda) \subseteq \lieg_{s_i\lambda}$.

Replacing $\Theta_i$ with $\Theta_i\inv$ and $\lambda$ by $s_i \lambda$, we find $\Theta_i\inv (\lieg_{s_i \lambda}) \subseteq \lieg_{s_i s_i \lambda} = \lieg_\lambda$,
and so $\lieg_\lambda \cong \lieg_{s_i \lambda}$, i.e. $\lieg_{s_i \lambda} \subseteq \Theta_i(\lieg)$.

Proof of (d):

By Corollary 18.2b, we have
\[
\begin{align*}
\dim \lieg_{k \alpha_{ii}} =
\begin{cases}
1, & k= \pm 1 \\
0, & k\not \in \theset{0, \pm 1} \\
\ell, & k = 0
\end{cases}
.\end{align*}
\]

Thus $\tilde \lieg_0 = \tilde \lieh$.

Since $s_{ij}^+$ is of height $1+a_{ji} \geq 2$, we have $\dim \lieg_{\alpha_i} = \dim \tilde \lieg_{\alpha_i} = 1$ for all $i\in I$.
Thus for any $\alpha \in \Phi$, we have $\alpha = w \alpha_i$ for some element of the Weyl group $w\in W$.

By parts (a) and (c), we have $\dim \lieg_{\alpha} = 1$, so $\dim \lieg_{k\alpha}$ satisfies the same cases as $\dim \lieg_{k\alpha_{ii}}$ above.

It remains to show that there are no other root spaces, i.e. $\lieg_\mu = 0$ if $\mu \not\in \ZZ\alpha$ for all $\alpha \in \Phi$.

We can show this by considering reflections about hyperplanes again, i.e. that $\alpha \in \Phi \implies H_\mu \neq H_\alpha$.

If this is the case, it implies that there exists an $h \in \lieh$ such that $h \in H_\mu \setminus H_\alpha$ for all $\alpha \in \Phi$.
But then $\mu(h) = 0$ when $h \not\in H_\alpha$ for all $\alpha \in \Phi$, so pick $w\in W$ such that $w\inv a_i(h) \in C(\Pi)$, the fundamental chamber.
Thus $w\inv \alpha_i (h) > 0$ for all $i$, and is equal to $\alpha_i(w \cdot h)$, and
$$
0 = \mu(h) = \kappa(t_\mu, h) = \cdots = (w\mu)(w \cdot h)
$$

Writing $w_\mu = \sum_{i=1}^\ell m_i \alpha_i$, we have $0 = \sum_{i=1}^\ell m_i \alpha_i(w\cdot h)$, we find that note all $m_i$ have the same sign, which is a contradiction. $\qed$

# Wednesday November 6th

Last time: 
We considered the finite dimensional representation theory of $\lieg$ a semisimple Lie algebra over $\CC$.
We showed Weyl's complete reducibility theorem: any finite dimensional $\lieg$ module is semisimple and $\lieg = \bigoplus \mathfrak{s}_i$, a sum of simple modules.

Therefore, it suffices to understand the *characters* for simple modules, i.e. what are the dimensions of the weight spaces?

We can answer this question for $\lieg = \liesl(2, \CC)$: we have $L(\lambda) = \mathrm{span}_\CC \theset{v_i}_{i=1}^\lambda$ where
$$
\dim L(\lambda)_\mu = \begin{cases} 1 & \mu \in \theset{\lambda, \lambda-2, \cdots, -\lambda} \\ 0 & otherwise \end{cases}
$$

For an arbitrary $\lieg$, what is $L(\lambda)$? We'll describe this using Weyl's character theorem, the Verma module (which is an infinite-dimensional highest weight module), and the PBW theorem of the universal enveloping algebra.

In general, the representation of $\lieg$ is complicated, so we restrict ourselves to a subcategory $BGG$ category $\mathcal O$, which contains the simple and Verma modules.
Here, the irreducible character problem is solved if we know that the *multiplicity* of simple modules in any Verma module. 
The multiplicity is the number of simple modules occurring in a filtration, and the Kazhdan–Lusztig conjecture says that this multiplicity should be the evaluation of a certain $KL$ polynomial at 1.
This was first proved using perverse sheaves and $D\dash$modules in the 1980s (geometric), and then with purely algebraic proof is due to Williamson around 2013.
This was obtained using something called the Soergel bimodule.
This is all over $\CC$, and there are some generalizations that work for characteristic $p$. 
It was thought that the original polynomial would work here, but it turns out that there is another one called the $p-KL$ polynomial.

> These come from the KLR algebra, where there is a change of basis that induces a change of basis on the Hecke algebra, where the $KL$ polynomial takes that standard basis to the $KL$ basis.
