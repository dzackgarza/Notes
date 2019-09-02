---
markdown:
  image_dir: /assets
  ignore_from_front_matter: true
  absolute_image_path: true
---

[toc]

# Algebraic Topology Review Notes

## Basic Facts About Spheres
- $S^{2n+1} \subset \CC^{n+1}$
- $\CP^n = S^{2n+1} / S^n$

## Lemma: There are no nontrivial homomorphisms from finite groups into free groups.

In particular, any homomorphism $\ZZ_n \to \ZZ$ is trivial.

Proof: homomorphisms preserve torsion; the former has $n\dash$torsion while the latter does not.

This is especially useful if you have some $f: A\into B$ and you look at the induced homomorphism $f_*: \pi_1(A) \into \pi_1(B)$. If the former is finite and the latter contains a copy of $\ZZ$, then $f_*$ has to be the trivial map $f_*([\alpha]) = e \in \pi_1(B)$ for every $[\alpha] \in \pi_1(A)$.



## Different Types of Product/Sum Structures

- Cartesian Product $X\cross Y, \prod_i X_i$
- Direct Sum $X \oplus Y, \bigoplus_i X_i$
- Direct Product $X \ast Y, \ast_i X_i$
  - Element-wise multiplication, allows infinitely many entries
  - $\ast_i X_i= \oplus_i X_i$ for $i < \infty$
- Tensor Product $X \tensor Y, \bigotimes_i X_i, X^{\otimes_i}$

## Lemma: Contracting Spaces in Products
$X\cross \RR^n \homotopic X \cross \pt$

---
@import "Cheat Sheet.md"

---
@import "sections/Fundamental Group.md"

---
@import "sections/Covering Spaces.md"

---
@import "sections/CW and Simplicial Complexes.md"

---
@import "sections/Algebra.md"

---

## Mayer-Vietoris
Given $A,B \subset X$ such that $A^\circ \cup B^\circ = X$, there is a long exact sequence in homology:

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass[crop, tikz]{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{matrix, cd}
\begin{document}

\begin{tikzcd}
 &  &  &  & \cdots \arrow[lllldd, out=0, in=-180, "\delta_3"'] \\
 &  &  &  &  \\
H_2(A\cap B) \arrow[rr] \arrow[rr, "{(i^*, -j^*)_2}"] &  & H_2 A \oplus H_2 B \arrow[rr, "(l^* - r^*)_2"] &  & H_2 (A\cup B) \arrow[lllldd, "\delta_2"', out=0, in=-180] \\
 &  &  &  &  \\
H_1(A\cap B) \arrow[rr, "{(i^*, -j^*)_1}"] &  & H_1 A \oplus H_1 B \arrow[rr, "(l^*-r^*)_1"] &  & H_1 (A\cup B) \arrow[lllldd, "\delta_1"', out=0, in=-180] \\
 &  &  &  &  \\
H_0 (A\cap B) \arrow[rr, "{(i^*, -j^*)_0}"] &  & H_0 A \oplus H_0 B \arrow[rr, "(l^* - r^*)_0"] &  & H_0 (A\cup B) \arrow[lllldd, "\delta_0"', out=0, in=-180] \\
 &  &  &  &  \\
0 &  &  &  &
\end{tikzcd}

\end{document}
```

This is sometimes written in the following compact form:
$$ \cdots  H_n(A \cap B) \xrightarrow{(i^*,~ j^*)} H_n(A) \oplus H_n(B) \xrightarrow{l^* - r^*}  H_n(X) \xrightarrow{\delta} H_{n-1}(A\cap B)\cdots$$

Where

$i: A\cap B \hookrightarrow A$ induces $i^*: H_*(A\cap B) \to H_*(A)$

$j: A\cap B \hookrightarrow B$ induces $j^*: H_*(A\cap B) \to H_*(B)$

$l: A \hookrightarrow A\cup B$ induces $l^*: H_*(A) \to H_*(X)$

$r: B \hookrightarrow A\cup B$ induces $r^*: H_*(B) \to H_*(X)$

The connecting homomorphisms $\delta_n :H_n(X) \to H_{n-1}(X)$ are defined by taking a class $[\alpha] \in H_n(X)$, writing it as an $n$-cycle $z$, then decomposing $z = \sum c_i$ where each $c_i$ is an $x+y$ chain. Then $\del(c_i) = \del(x+y) = 0$, since the boundary of a cycle is zero, so $\del(x) = -\del(y)$. So then just define $\delta([\alpha]) = [\del x] = [-\del y]$.

Handy mnemonic diagram:
$$
\begin{matrix}
 && A\intersect B & \\
&\large\diagup &  & \large\diagdown \\
A\union B & & \large\longleftarrow &  & A \oplus B
\end{matrix}
$$

### Application: Ismorphisms in the homology of spheres.

Claim: $H^i(S^n) \cong H^{i-1}(S^{n-1})$.

Write $X = A \cup B$, the northern and southern hemispheres, so that $A \cap B = S^{n-1}$, the equator. In the LES, we have:

$H^{i+1}(S^n) \xrightarrow{} H^i(S^{n-1}) \xrightarrow{} H^iA \oplus H^i B \xrightarrow{} H^i S^n \xrightarrow{} H^{i-1}(S^{n-1}) \xrightarrow{} H^{i-1}A \oplus H^{i-1}B$

But $A, B$ are contractible, so $H^iA= H^iB = 0$, so we have

$H^{i+1}(S^n) \xrightarrow{} H^{i}(S^{n-1}) \xrightarrow{} 0 \oplus 0 \xrightarrow{}H^i(S^n) \xrightarrow{} H^{i-1}(S^{n-1}) \xrightarrow{} 0$

And in particular, we have the shape $0 \to A \to B \to 0$ in an exact sequence, which is always an isomorphism.

## The Long Exact Sequence of a Pair
LES of pair $(A,B) \implies \cdots H_n(B) \into H_n(A) \into H_n(A,B) \into H_{n-1}(B) \cdots$
$$
\begin{matrix}
   && B & \\
  &\large\diagup &  & \large\diagdown \\
  (A,B) & & \large\longleftarrow &  & A
  \end{matrix}
$$
