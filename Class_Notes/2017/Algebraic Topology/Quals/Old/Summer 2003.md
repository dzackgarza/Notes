# Summer 2003

# 1. Describe all possible covering maps between $S^2, T^2, K$
Useful facts:
1. $\tilde X \surjects X$ induces $\pi_1(\tilde X) \injects \pi_1(X)$
2. $\chi(\tilde X) = n \chi (X)$
3. $\pi_n(X) = [S^n, X]$
4. $Y \to X$ with $\pi_1(Y) = 0$ and $\tilde X \homotopic \pt \implies$ every $Y\mapsvia{f} X$ is nullhomotopic.
5. $\pi_*(T^2) = [\ZZ \ast \ZZ, 0\rightarrow]$
6. $\pi_*(K) = [\ZZ \semidirect_{\ZZ_2} \ZZ, 0\rightarrow]$
7. Universal covers are homeomorphic.
8. $\pi_{\geq 2}(\tilde X) \cong \pi_{\geq 2}(X)$

Spaces
- $S^2 \surjects T^2$
- $S^2 \surjects K$
- $K \surjects S^2$
- $T^2 \surjects S^2$
	- All covered by the fact that $$\ZZ = \pi_2(S^2) \neq \pi_2(X) = 0$$ for $X = T^2, K$.
- $K \surjects T^2$
	- Doesn't cover, would induce $\pi_1(K) \injects \pi_1(T^2) \implies \ZZ\semidirect \ZZ \injects \ZZ^2$ but this would be a non-abelian subgroup of an abelian group.
- $T^2 \surjects K$
	- Covers, see diagram:
		![toruscoveringkleinbottle](../../../../../../images/2018/05/toruscoveringkleinbottle.png)
$\qed$


## 2. Show that $\ZZ^{\ast 2}$ has subgroups isomorphic to $\ZZ^{\ast n}$ for every $n$.
Facts Used
1. $\pi_1(\bigvee^k S^1) = \ZZ^{\ast k}$
2. $\tilde X \surjects X \implies \pi_1(\tilde X) \injects \pi_1(X)$
3. Every subgroup $G \leq \pi_1(X)$ corresponds to a covering space $X_G \surjects X$
4. $A \subseteq B \implies F(A) \leq F(B)$ for free groups.

It is easier to prove the stronger claim that $\ZZ^\NN \leq \ZZ^{\ast 2}$ (i.e. the free group on countably many generators) and use fact 4 above.

Just take the covering space $\tilde X \surjects S^1 \vee S^1$ defined via the gluing map $\RR \union_{\ZZ} S^1$ which attaches a circle to each integer point, taking 0 as the base point. Then let $a$ denote a translation and $b$ denote traversing a circle, so we have $\pi_1(\tilde X) = \left<\union_{n\in\ZZ}a^nba^{-n}\right>$ which is a free group on countably many generators. Since $\tilde X$ is a covering space, $\pi_1(\tilde X) \injects \pi_1(S^1 \vee S^1) = \ZZ^{\ast 2}$. By 4, we can restrict this to $n$ generators for any $n$ to get a subgroup, and $A\leq B \leq C \implies A \leq C$ as groups.

Alternatively, just take a covering space of this form: ![coverings1s1](../../../../../../images/2018/05/coverings1s1.png)
$\qed$

## 3. Construct a space having $H_*(X) = [\ZZ, 0, 0, 0, 0, \ZZ_4, 0\rightarrow]$
Facts used:
- Construction of Moore Spaces
- $\tilde H_n(\Sigma X) = \tilde H_{n-1}(X)$, using $\Sigma X = C_X \union_X C_X$ and Mayer-Vietoris.

Take $X = e^0 \union_{\Phi_1} e^5 \union_{\Phi_2} e^6$, where
$$
\Phi_1: \del B^5 = S^4 \mapsvia{z~\mapsto z^0} e^0 \\
\Phi_2: \del B^6 = S^5 \mapsvia{z~\mapsto z^4} e^5
$$

where $\deg \Phi_2 = 4$.$\qed$

## 4. Compute the complement of a knotted solid torus in $S^3$.
Facts used:
- $H_*(T^2) = [\ZZ, \ZZ^2, \ZZ, 0\rightarrow]$
- $N^{(1)} \homotopic S^1$, so $H_{\geq 2}(N) = 0$.
- A SES $0\to A\to B \to F \to 0$ with $F$ free splits.
- $0\to A \to B \mapsvia{\cong} C \to D \to 0$ implies $A = D = 0$.
Let $N$ be the knotted solid torus, so that $\del N = T^2$, and let $X = S^3 - N$. Then
- $S^3 = N \union_{T^2} X$
- $N \cap X = T^2$


and we apply Mayer-Vietoris to $S^3$:

$$
4\qquad H_4(T^2) \to H_4(N) \times H_4(X) \to H_4(S^3) \\
3\qquad H_3(T^2) \to H_3(N) \times H_3(X) \to H_3(S^3) \\
2\qquad H_2(T^2) \to H_2(N) \times H_2(X) \to H_2(S^3) \\
1\qquad H_1(T^2) \to H_1(N) \times H_1(X) \to H_1(S^3) \\
0\qquad H_0(T^2) \to H_0(N) \times H_0(X) \to H_0(S^3) \\
$$

where we can plug in known information and deduce some maps:
$$
\begin{align}
4\qquad &0 \to &0 \qquad\to &0 \mapsvia{\del_4} \\
3\qquad &0 \to &H_3(X) \qquad\to &\ZZ \mapsvia{\del_3}\\
2\qquad &\ZZ \to &H_2(X) \qquad\to &0 \mapsvia{\del_2}\\
1\qquad &\ZZ^2 \cong &\ZZ \times H_1(X) \qquad\to &0 \mapsvia{\del_1}\\
0\qquad &\ZZ \to &\ZZ \times H_0(X) \qquad\to &\ZZ \to 0 \\
\end{align}
$$

We then deduce:
- $H_0(X) = \ZZ$ by the splitting of the line 0 SES $$0 \to \ZZ \to \ZZ \cross H_0(X) \to \ZZ \to 0$$ yielding $Z\cross H_0(X) \cong \ZZ \times \ZZ$.
- $H_1(X) = \ZZ$ by the line 1 SES $$0 \to \ZZ^2 \to \ZZ \cross H_1(X) \to 0$$ which yields an isomorphism.
- $H_2(X) = H_3(X) = 0$ by examining the SES spanning lines 3 and 2: $$0 \injects H_3(X) \injects \ZZ \mapsvia{\cong_{\del_3}} \ZZ \surjects H_2(X) \surjects 0$$
 	Since $\del_3$ must be an isomorphism, this forces the edge terms to be zero.
$\qed$

## 5. Compute the homology and cohomology of a closed, connected, oriented 3-manifold $M$ with $\pi_1(M) = \ZZ^{\ast 2}$.
Facts used:
- $M$ closed, connected, oriented $\implies H_i(M)\cong H^{n-i}(M)$
- $H_1(X) = \pi_1(X) / [\pi_1(X), \pi_1(X)]$
- For orientable manifolds $H_n(M^n) = \ZZ$

**Homology**
- Since $M$ is connected, $H_0 = \ZZ$
- Since $\pi_1(M) = \ZZ^{\ast 2}$, $H_1$ is the abelianization and $H_1(X) = \ZZ^2$
- Since $M$ is closed/connected/oriented, Poincare Duality holds and $H_2 = H^{3-2} = H^1 = \mathbf{F} H_1 + \mathbf{T}H_0$ by UCT. Since $H_0=\ZZ$ is torsion-free, we have $H_2(M) = H_1(M) =  \ZZ^2$.
- Since $M$ is an orientable manifold, $H_3(M) = \ZZ$
- So $H_*(M) = [\ZZ, \ZZ^2, \ZZ^2, \ZZ, 0\rightarrow]$

**Cohomology**
- By Poincare Duality, $H^*(M) = \widehat{H_*(M)} = [\ZZ, \ZZ^2, \ZZ^2, \ZZ, 0\rightarrow]$. (Where the hat denotes reversing the list.)
$\qed$


## 6. Compute $\ext(\ZZ \times \ZZ_2 \times \ZZ_3, \ZZ \times \ZZ_4 \times \ZZ_5)$
Facts Used:
1. $\ext(\ZZ, \ZZ_m) = \ZZ_m$
2. $\ext(\ZZ_m, \ZZ) = 0$
3. $\ext(\prod_i A_i, \prod_j B_j) = \prod_i \prod_j \ext(A_i, B_j)$

Break it up into a bigraded complex, take Ext of the pieces, and sum over the complex:
$\ext(\downarrow, \rightarrow)$ | $\ZZ$   | $\ZZ_4$ | $\ZZ_5$
--------------------------------|---------|---------|--------
$\ZZ$                           | 0       | 0       | 0
$\ZZ_2$                         | $\ZZ_2$ | $\ZZ_2$ | 0
$\ZZ_3$                         | $\ZZ_3$ | 0       | 0

So the answer is $\ZZ_2 \times \ZZ_2 \times \ZZ_3 = \ZZ_{12}$. $\qed$

## 7. Show there is no homeomorphism $\CP^2\selfmap_f$ such that $f(\CP^1)$ is disjoint from $\CP_1 \subset \CP_2$.
Facts used:
1. Every homeomorphism induces isomorphisms on homotopy/homology/cohomology.
2. $H^*(\CP^2) = \ZZ[\alpha] / (\alpha^2)$ where $\deg \alpha = 2$.
3. $[f(X)] = f_*([X])$
4. $a\dot{} b = 0 \implies a=0~\text{or}~b=0$ (nondegeneracy).

Supposing such a homeomorphism exists, we would have $[\CP^1] \dot{} [f(\CP^1)] = 0$ by the definition of these submanifolds being disjoint.

But $[\CP^1]\dot{}[f(\CP^1)] = [\CP^1]\dot{} f_*([\CP^1])$, where
$$f_*: H^*(\CP^2) \to H^*(\CP^2)$$
is the induced map on cohomology.

Since the intersection pairing is nondegenerate, either $[\CP^1] = 0$ or $f_*([\CP^1]) = 0$.

We know that $H^*(\CP^2) = \ZZ[\alpha] / \alpha^2$ where $\alpha = [\CP^1]$, however, so this forces $f_*([\CP^1]) = 0$. But since this was a generator of $H^*$, we have $f_*(H^*(\CP^2)) = 0$, so $f$ is not an isomorphism on cohomology. $\qed$

## 8. Describe the universal cover of $X = (S^1 \cross S^1) \vee S^2$ and compute $\pi_2(X)$.
Facts used:
- $\pi_{\geq 2}(\tilde X) \cong \pi_{\geq 2}(X)$
- Structure of the universal cover of a wedge product
- $\RR^2 \surjects_p T^2 = S^1 \cross S^1$

![someuniversalcover](../../../../../../images/2018/05/someuniversalcover.png)
$\tilde X = \RR^2 \union_{\ZZ^2} S^2$, so $\pi_2(X) \cong \pi_2(\tilde X) = \prod_{i,j \in \ZZ^2} \ZZ = \ZZ^{\ZZ^2} = \ZZ^{\aleph_0}$.$\qed$

## 9. Let $S^3 \to E \to S^5$ be a fiber bundle and compute $H_3(E)$.
Facts used:
- Homotopy LES
- Hurewicz
- $0\to A\to B \to 0$ exact iff $A\cong B$

From the LES in homotopy we have
$$
\begin{align}
4\qquad \pi_4(S^3) \to \pi_4(E) \to \pi_4(S^5) \\
3\qquad \pi_3(S^3) \to \pi_3(E) \to \pi_3(S^5) \\
2\qquad \pi_2(S^3) \to \pi_2(E) \to \pi_2(S^5) \\
1\qquad \pi_1(S^3) \to \pi_1(E) \to \pi_1(S^5) \\
0\qquad \pi_0(S^3) \to \pi_0(E) \to \pi_0(S^5) \\
\end{align}
$$

and plugging in known information yields
$$
\begin{align}
4\qquad &\pi_4(S^3) \to &\pi_4(E) \quad \to 0 \\
3\qquad &\ZZ \to &\pi_3(E) \quad\to 0 \\
2\qquad &0 \to &\pi_2(E) \quad\to 0 \\
1\qquad &0 \to &\pi_1(E) \quad\to 0 \\
0\qquad &\ZZ \to &\pi_0(E) \quad\to \ZZ \\
\end{align}
$$

where rows 3 and 4 force $\pi_3(E) \cong \ZZ$, rows 0 and 1 force $\pi_0(E) = \ZZ$, and the remaining rows force $\pi_1(E) = \pi_2(E) = 0$.

By Hurewicz, we thus have $H_3(E) = \pi_3(E) = \ZZ$. $\qed$
