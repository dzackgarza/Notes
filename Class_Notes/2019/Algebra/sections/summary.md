# Summary

- Groups and rings, including Sylow theorems, 
- classifying small groups, 
- finitely generated abelian groups, 
- Jordan-Holder theorem, 
- solvable groups, 
- simplicity of the alternating group, 
- euclidean domains, 
- principal ideal domains, 
- unique factorization domains, 
- noetherian rings, 
- Hilbert basis theorem, 
- Zorn's lemma, and 
- existence of maximal ideals and vector space bases.

Previous course web pages:

- [Fall 2017, Asilata Bapat](https://asilata.github.io/8000fall17/)

## Major Theorems

**Theorem (Cauchy)**: 
For any prime $p$ dividing the order of $G$, there is an element $x$ of order $p$ (and thus a subgroup $H = \generators{x}$ of order $p$ as well).

**Theorem (Lagrange):**
If $H \leq G$ is a subgroup, then $\abs{H} \divides \abs{G}$. Moreover,
$$
\abs G = [G: H]~~\abs H.
$$

**Theorem (Sylow 1)**:
If $\abs{G} = n = \prod p_{i}^{a_{i}}$ as a prime factorization, then $G$ has subgroups of order $p_{i}^{a_{i}}$ for every $i$ and for every $1 \leq r \leq a_{i}$. In particular, $\mathrm{Syl}(p, G) \neq \emptyset$.

Moreover, every subgroup $H$ of order $p^k$ is normal in a subgroup of order $p^{k+1}$ for $1 \leq k \leq \alpha_i$, and thus $H \leq P$ for some $P \in \mathrm{Syl}(p, G)$.

**Theorem (Sylow 2):**
If $P_1, P_2 \in \mathrm{Syl}(p, G)$, then there exists a $g\in G$ such that $gP_1g = P_2$.

**Theorem (Sylow 3)**
Let $\abs G = p^n m$ and $r_p = \abs{\mathrm{Syl}(p, G)}$. Then

- $r_p = 1 \mod p$,
- $r_p \divides m$,
- $r_p = [G: N_G(P)]$.


**Theorem (Classification of Finitely Generated Abelian groups):**
If $G$ is a finitely generated abelian group, then $G \cong F \oplus T$, where $F$ is free abelian and $T$ is a torsion group. If $\abs T = n$, then $T \cong \bigoplus \ZZ_{p_{i}^{\alpha_{i}}}$ where $n = \prod p_{i}^{\alpha_{i}}$ is some factorization of $n$ with the $p_{i}$ **not necessarily distinct**.

**Theorem (Class Equation?)**:
Conjugacy classes partition $G$


\begin{align*}
|G|=|Z(G)| + \sum_{\text{One representative in each orbit}} |C_{G}\left(g_{i}\right) |
= \sum_{asdsa} [G: C(g_{i}) ]
.\end{align*}


**Theorem (Orbit Stabilizer)**:
If $G\actson X$, then for any $x\in X$
$$
[G: \mathrm{Stab}(x)] = \abs{\mathcal O_x},\quad \text{i.e.}\quad
\abs{G} = \abs{\mathcal O_x} \abs{\mathrm{Stab}(x)}
$$
where $\mathcal O_x = \theset{g\actson x \suchthat g\in G}\subseteq X$ and $\mathrm{Stab}(x) = \theset{x\in X \suchthat \forall g\in G,~ g\actson x = x} \leq G$.


**Theorem (Eisenstein's Criterion)**:
If $f = \sum_{i=0}^n a_i x^i \in \QQ[x]$ and there exists a prime $p$ such that

- $p$ divides $a_i$ for each $0 \leq i \leq n-1$,
- $p$ does not divide $a_n$, and
- $p^2$ does not divide $a_0$,

Then $f$ is irreducible over $\QQ$.

## Some Lemmas

- Every subgroup of a cyclic group is itself cyclic.
- $aH = bH \iff b\inv a \in H$.
- $A \leq G$ and $B \leq G \implies (A\intersect B) \leq G$.
  - Corollary: $\#A = p, \#B = q \implies A\intersect B = \theset{e}$.
  - Corollary: $\#A = p, \#B = p \implies A=B$ or $A\intersect B = \theset{e}$.
- The Quaternion group has only one element of order 2, namely $-1$.
  - They also have the presentation $Q = \generators{x,y,z \mid x^2 = y^2 = z^2 = xyz = -1}$ or $Q = \generators{x, y \mid x^4 = y^4 = e, x^2 = y^2, yxy\inv = x\inv}$. 
- A dihedral group always has presentation $D_n = \generators{x, y \mid x^n = y^2 = (xy)^2 = e}$, yielding at least 2 distinct elements of order 2.

## Big List of Notation

\begin{align*}
C(x) 			=       &&  \theset{g\in G : gxg^{-1} = x}                 &&  \subseteq G       &&  \text{Centralizer} \\
C_G(x) 		=       &&  \theset{gxg^{-1} : g\in G}                     &&  \subseteq G       &&  \text{Conjugacy Class} \\
G_x 			=       &&  \theset{g.x : x\in X}                          &&  \subseteq X       &&  \text{Orbit} \\
x_0 			=       &&  \theset{g\in G : g.x = x}                      &&  \subseteq G       &&  \text{Stabilizer} \\
Z(G) 			=       &&  \theset{x\in G: \forall g\in G,~ gxg^{-1} = x} &&  \subseteq G       &&  \text{Center} \\
\mathrm{Inn}(G) = &&  \theset{\phi_g(x) = gxg^{-1} }                 &&  \subseteq \Aut(G) &&  \text{Inner Aut.} \\
\mathrm{Out}(G) = &&  \Aut(G) / \mathrm{Inn}(G)                      &&  \injects \Aut(G)  &&  \text{Outer Aut.} \\
N(H) 			=       &&  \theset{g\in G: gHg^{-1} = H}                  &&  \subseteq G       &&  \text{Normalizer}
\end{align*}
