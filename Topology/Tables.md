| Space $X$                             | $\pi_0(X)$ | $\pi_1(X)$              | $\pi_2(X)$ | $\pi_3(X)$ | $H_0(X)$ | $H_1(X)$                       | $H_2(X)$ | $H_3(X)$ |
| ------------------------------------- | ---------- | ----------------------- | ---------- | ---------- | :------- | :----------------------------- | -------- | -------- |
| $\RR^n$                               | 0          | 0                       | 0          | 0          | $\ZZ$    | 0                              |          |          |
| $\RR^n - \theset{k~\text{pts}}$       |            |                         |            |            |          |                                |          |          |
| $B^n$                                 |            | 0                       |            |            |          | 0                              |          |          |
| $S^0$                                 |            | 0                       |            |            | 0        | 0                              | 0        | 0        |
| $S^1$                                 |            | $\ZZ$                   |            |            | $\ZZ$    | $\ZZ$                          | 0        | 0        |
| $S^2$                                 |            | 0                       |            |            | $\ZZ$    | 0                              | $\ZZ$    | 0        |
| $S^3$                                 |            | 0                       |            |            | $\ZZ$    | 0                              | 0        | ?        |
| $S^n, n \geq 4$                       |            | 0                       |            |            | $\ZZ$    | 0                              | 0        | 0        |
| $S^n - \theset{k~\text{pts}}$         |            |                         |            |            |          |                                |          |          |
| $T^2 = S^1 \cross S^1$                |            | $\ZZ \cross \ZZ$        |            |            | $\ZZ$    | $Z\oplus Z$                    |          |          |
| $\prod_n S^1$                         |            | $F_n \cong \prod_n \ZZ$ |            |            | $\ZZ$    | $F_n^{(ab)} = \bigoplus_n \ZZ$ |          |          |
| $\prod_n S^1 - \theset{k~\text{pts}}$ |            |                         |            |            |          |                                |          |          |
| $\bigvee_n S^1$                       | 0          | $\ast_n \ZZ$            |            |            | $\ZZ$    |                                |          |          |
| $\mathbb{RP}^1$                       | 0          | $\ZZ$                   |            |            | $\ZZ$    | $\ZZ$                          |          | 0        |
| $\mathbb{RP}^2$                       | 0          | $\ZZ_2$                 |            |            | $\ZZ$    | $\ZZ_2$                        | $\ZZ$    | 0        |
| $\mathbb{RP}^3$                       | 0          | $\ZZ_2$                 |            |            | $\ZZ$    | $\ZZ_2$                        | 0        | $\ZZ$    |
| $\mathbb{RP}^n, n \geq 4$             | 0          | $\ZZ_2$                 |            |            | $\ZZ$    | $\ZZ_2$                        | 0        | $\ZZ_2$  |
| $\mathbb{CP}^1$                       | 0          | 0                       |            |            |          | 0                              |          |          |
| $\mathbb{CP}^n, n \geq 2$             | 0          | 0                       |            |            |          | 0                              |          |          |
| Mobius Band                           |            |                         |            |            |          |                                |          |          |
| Klein Bottle                          |            |                         |            |            |          | $\ZZ \cross \ZZ_2$             |          |          |
| $Gr(n, k)$                            |            |                         |            |            |          |                                |          |          |
| $S^3 - $ Hopf Link                    |            |                         |            |            |          |                                |          |          |
| $n$-fold dunce cap                    |            |                         |            |            |          |                                |          |          |



Definition: let $X$ be a topological space, then for any $k\geq 1 \in \NN$ define the *punctured $k$-space* $P(X, k) \definedas X - \union_k \pt$ to be $X$ with $k$ arbitrary distinct points removed.

# Classes of Spaces

- The Standards
  - $\RR^n$
  - $\CC^n$
  - $S^n$
  - The $n$-torus, $T^n \definedas \prod_{i=1}^n S^1$
    - The "generalized" torus? $T^n(m) = \prod_{i=1}^n S^m$
  - The bouquet $\mathcal{B}^n = \bigvee_{i=1}^n S_1$
    - The "generalized uniform bouquet"? $\mathcal{B}^n(m) = \bigvee_{i=1}^n S^m$
- Projective Spaces
  - $\RP^n$
  - $\CP^n$
- Lie Groups
  - The real general linear group, $GL_n(\RR)$
    - The real special linear group $SL_n(\RR)$
    - The real orthogonal group, $O_n(\RR)$
      - The real special orthogonal group, $SO_n(\RR)$
    - The real unitary group, $U_n(\RR)$
      - The real special unitary group, $SU_n(\RR)$
    - The real symplectic group $Sp(n)$
- "Geometric" Stuff
  - Affine $n$-space over a field $\AA^n(k) = k^n \semidirect GL_n(k)$
  - The projective space $\PP^n(k)$
    - The projective linear group over a ring $R$, $PGL_n(R)$
    - The projective special linear group over a ring $R$, $PSL_n(R)$
    - The modular groups $PSL_n(\ZZ)$
      - Specifically $PSL_2(\ZZ)$
- The real Grassmanian, $Gr(n, k, \RR)$
- The Stiefel manifold $V_n(k)$
- The mobius strip $\mathbb{M}$
- The klein bottle $\mathbb{K}$
- $P(X, k)$ for all spaces $X$ in this list.




Modifications that can be made:

- Remove $k$ points
- Remove a line segment
- Remove an entire line/axis
- Remove a hole
- Quotient by a group action (e.g. antipodal map, or rotation)
- Remove a knot
- Take complement in ambient space

# Notation

- $A \times B$ and $\prod X_i$ are direct products of groups, $A \oplus B$ and $\bigoplus X_i$ are direct sums. These are equivalent when there are finitely many terms involved; the latter is a subspace of the former when there are infinitely many terms.
- $A \ast B$ is a free product, $\ast_n \ZZ$ is the **free group** on $n$ generators
- $\bigoplus_n \ZZ$ is the **free abelian group** on $n$ generators
  - Every free abelian group is $\bigoplus_{i\in I} \ZZ$ for some set $I$.
  - $(\ast_n \ZZ)^{\text{ab}} =\bigoplus_n \ZZ$.
  - $x \in \left< a_1, \cdots, a_n\right> \implies x = \sum_n c_i a_i$ for some $c_i \in \ZZ$ (integer linear combination of generators)
- $\mathbb{RP}^n = S^n /S^0 = S^n / \ZZ_2$
- $\mathbb{CP}^n = S^{2n+1} / S^1$
- $G(n,k)$ where $G(n, 1) = \mathbb{RP}^n$ is the real $n$-dimensional grassman manifold, also the set of $k$ dimensional subspaces of $\RR^n$.

# Spheres

- $\pi_i(S^n) = 0$ for $i < n$, $\pi_n(S^n) = \ZZ$
  - Not necessarily true that $\pi_i(S^n) = 0$ when $i > n$!!!
    - E.g. $\pi_3(S^2) = \ZZ$ by Hopf fibration
- $H_i(S^n) = \mathbf{1}[i \in \theset{0, n}]$
- $H_n(\bigvee_i X_i) \cong \bigoplus_i H_n(X_i)$ for "good pairs"
  - Corollary:  $H_n(\bigvee_k S^n) = \ZZ^k$
- $S^n / S^k \homotopic S^n \vee \Sigma S^{k}$
  - $\Sigma S^n = S^{n+1}$
- $S^n$ has the CW complex structure of 2 $k$-cells for each $0\leq k \leq n$.

# Torii

- $\pi_k(\times_n S^1) = 0$ for $k \geq 2$.
- $H_k(\times_n S^1) = \bigoplus_{n\choose k}\ZZ$

# Projective Spaces

- $\mathbb{RP}^n = S^n /\ZZ_2$, an antipodal action.

- $\pi_k(\mathbb{RP}^n) = \pi_k(S^n)$ for $k \geq 2$
  $\pi_1(\mathbb{RP}^n) = \ZZ_2$ for $n > 1$.

- $\pi_k(\mathbb{CP}^n) = \pi_k(S^{2n+1})$ for $k\geq 3$

- $H_i(\mathbb{RP}^n) = \ZZ \cdot \mathbb{1}[i=0] + \ZZ \cdot \mathbb{1}[i=n, n~\text{odd})] + \ZZ_2\cdot\mathbb{1}[1\leq i<n,i~\text{odd}]$

  ​

  ![rpn homotopy groups](C:\Users\Zack\SparkleShare\Notes\Topology\rpn homotopy groups.png)

  ![cpn homotopy groups](C:\Users\Zack\SparkleShare\Notes\Topology\cpn homotopy groups.png)

# Theorems

- Techniques:
  - Fundamental group:
    - Van Kampen
    - Covering space actions?
      - $\pi_1(X/ \Gamma) = \Gamma$ when $\pi_1(X) = 0$ and $\Gamma$ acts freely
  - Homotopy Groups
    - Hurewicz
  - Homology Groups
    - Mayer-Vietoris
      $\cdots \to H_i(A\intersect B) \to H_i(A)\oplus H_i(B) \to H_i(A\union B) \to H_{i-1}(A\intersect B) \to \cdots$
    - Excision?
- $\pi_k(X)$ for $k\geq 2$ is always abelian.
- Rank $\pi_0 /H_0$ = number of connected components.
- $\pi_1(X) = \ZZ$ iff $X$ is simply connected.
- $H_1(X) = \mathbf{Ab}(\pi_1(X))$
  (the abelianization of the fundamental group.)
- $\pi_k(\prod X_i) \cong \prod \pi_k(X_i)$
  (homotopy groups commute with products)
- $\pi_1(\bigvee_n X_i) = \ast_n \pi_1(X_i)$
  (fundamental groups of wedges split into free products)
- $X$ simply connected implies $\pi_k(X)  \cong H_k(X)$ for first nonvanishing $H_k$
- $X$ an $n-1$ connected space implies $\pi_k(X) \cong H_k(X)$ for all $2 < k \leq n$.
  ($k=1$ case is abelianization)
- For $n\geq k+2$,  $\pi_{n+k}(S^n)$ does not depend on $n$.
  i.e., Homotopy groups stabilize. Diagonals show where diagonals become constant:

![homotopy groups of spheres](C:\Users\Zack\SparkleShare\Notes\Topology\homotopy groups stabilize.png)

# Matrix Groups

- General list:
  - $O_n, U_n, SO_n, SU_n, Sp_n$
- $\pi_k(U_n) = \ZZ\cdot\mathbf{1}[k~\text{odd}]$
  $\pi_1(U_n) = 1$
- $\pi_k(SU_n) = \ZZ\cdot\mathbf{1}[k~\text{odd}]$
  $\pi_1(SU_n) = 0$
- $\pi_k(U_n) = \ZZ_2\cdot\mathbf{1}[k = 0,1\mod 8] + \ZZ\cdot\mathbb{1}[k = 3,7 \mod 8]$
- $\pi_k(SP_n) = \ZZ_2\cdot\mathbf{1}[k = 4,5\mod 8] + \ZZ\cdot\mathbb{1}[k = 3,7 \mod 8]$
- ![exceptional homotopy groups](C:\Users\Zack\SparkleShare\Notes\Topology\exceptional homotopy groups.png)
