| Space $X$                             | $\pi_1(X)$               | $H_0(X)$<br />(Connected Components) | $H_1(X)$<br />$\mathbf{Ab}(\pi_1(X))$ | $H_2(X)$ | $H_3(X)$ |
| ------------------------------------- | ------------------------ | :----------------------------------- | :------------------------------------ | -------- | -------- |
| $\RR^n$                               | 0                        | $\ZZ$                                | 0                                     |          |          |
| $\RR^n - \theset{k~\text{pts}}$       |                          |                                      |                                       |          |          |
| $B^n$                                 | 0                        |                                      | 0                                     |          |          |
| $S^0$                                 | 0                        | 0                                    | 0                                     | 0        | 0        |
| $S^1$                                 | $\ZZ$                    | $\ZZ$                                | $\ZZ$                                 | 0        | 0        |
| $S^2$                                 | 0                        | $\ZZ$                                | 0                                     | $\ZZ$    | 0        |
| $S^3$                                 | 0                        | $\ZZ$                                | 0                                     | 0        | ?        |
| $S^n, n \geq 4$                       | 0                        | $\ZZ$                                | 0                                     | 0        | 0        |
| $S^n - \theset{k~\text{pts}}$         |                          |                                      |                                       |          |          |
| $T^2 = S^1 \cross S^1$                | $\ZZ \cross \ZZ$         | $\ZZ$                                | $Z\oplus Z$                           |          |          |
| $\prod_n S^1$                         | $F_n \cong \times_n \ZZ$ | $\ZZ$                                | $F_n^{(ab)} = \oplus_n \ZZ$           |          |          |
| $\prod_n S^1 - \theset{k~\text{pts}}$ |                          |                                      |                                       |          |          |
| $\bigvee_n S^1$                       | $\ast_n \ZZ$             | $\ZZ$                                |                                       |          |          |
| $\mathbb{RP}^1$                       |                          |                                      |                                       |          |          |
| $\mathbb{RP}^n, n \geq 2$             | $\ZZ_2$                  |                                      |                                       |          |          |
| $\mathbb{CP}^1$                       | 0                        |                                      |                                       |          |          |
| $\mathbb{CP}^n, n \geq 2$             | 0                        |                                      |                                       |          |          |
| Mobius Band                           |                          |                                      |                                       |          |          |
| Klein Bottle                          |                          |                                      | $\ZZ \cross \ZZ_2$                    |          |          |
| $Gr(n, k)$                            |                          |                                      |                                       |          |          |
| $n$-fold dunce cap                    |                          |                                      |                                       |          |          |
| $GL(n, k)$                            |                          |                                      |                                       |          |          |
| $SO(n, k)$                            |                          |                                      |                                       |          |          |





# Notation

- $A \times B$ is a direct product of groups, $A \oplus B$ is a direct sum. These are equivalent when there are finitely many terms involved. $A \ast B$ is a free product
- $\ZZ \ast \ZZ$ is the **free group** on two generators
- $\ZZ \oplus \ZZ$ is the **free abelian group** on two generators
  - Every free abelian group is $\bigoplus_{i\in I} \ZZ$ for some set $I$.
  - It is also the abelianization of the usual free group
  - $x \in \left< a_1, \cdots, a_n\right> \implies x = \sum_n c_i a_i$ for some $c_i \in \ZZ$ (integer linear combination of generators)

# Spheres

- $\pi_i(S^n) = 0$ for $i < n$, $\pi_n(S^n) = \ZZ$
  - Not necessarily true that $\pi_i(S^n) = 0$ when $i > n$!!!
    - E.g. $\pi_3(S^2) = \ZZ$ by Hopf fibration
- $H_i(S^n) = \mathbf{1}[i \in \theset{0, n}]$
- $H_n(\bigvee_i X_i) \cong \bigoplus_i H_n(X_i)$ for "good pairs"

# Torii

- $H_k(\times_n S^1) = \bigoplus_{n\choose k}\ZZ$

# Theorems

- $\pi_k(A\cross B) \cong \pi_k(A) \cross \pi_k(B)$
- $X$ simply connected implies $\pi_k(X)  \cong H_k(X)$ for first nonvanishing $H_k$
- $X$ an $n-1$ connected space implies $\pi_k(X) \cong H_k(X)$ for all $2 < k \leq n$.
  ($k=1$ case is abelianization)
- For $n\geq k+2$,  $\pi_{n+k}(S^n)$ does not depend on $n$.
  i.e., Homotopy groups stabilize. Diagonals show where diagonals become constant:

![homotopy groups of spheres](C:\Users\Zack\SparkleShare\Notes\Topology\homotopy groups stabilize.png)