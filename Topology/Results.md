# Homotopy
- $f\homotopic g \implies f_* = g_*$ in homology.

# The Universal Coefficient Theorems
For changing coefficients from $\ZZ$ to $G$. Formulas:
$$
0 \to H_i X \tensor G \to H_i(X; G) \to \tor(H_{i-1}X, G) \to 0\\
0 \to \ext (H_{i-1} X, G) \to H^i(X;G) \to \hom(H_i X, G) \to 0
$$

- Splits unnaturally:
$$
H_i(X;G) = (H_iX\tensor G) \oplus \tor(H_{i-1}X; G)\\
H^i(X; G) = \hom(H_iX, G) \oplus \ext(H_{i-1}X; G)
$$

- When $H_iX$ are all finitely generated, write $H_i(X; \ZZ) = \ZZ^{\beta_i} \oplus T_i$. Then
$$
H^i(X; \ZZ) = \ZZ^{\beta_i} \oplus T_{i-1}
$$

# The Kunneth Formula
$$
0 \to \bigoplus_j H_j(X; R) \tensor_R H_{i-j}(Y; R) \to H_i(X\cross Y; R) \to \bigoplus_j \tor_1^R(H_j(X; R), H_{i-j-1}(Y; R))
$$

Non-canonical splitting:
$$
H_n (X\cross Y) = \left( \bigoplus_{i+j = n} H_i X \oplus H_j Y\right) \oplus \bigoplus_{i+j = n-1}\tor(H_iX, H_j Y)
$$

-----

# Algebra
- $\QQ \tensor A \cong S^{-1}A$ for $S = \ZZ - \theset{0}$

## Free Resolutions
- $0 \to \ZZ \mapsvia{\times m} \ZZ \mapsvia{\mod m} \ZZ_m \to 0$

## Computing Tor

$$\tor(A, B) = h[\cdots \to A_n \tensor B \to A_{n-1}\tensor B \to \cdots A_1\tensor B \to 0]$$ where $A_*$ is a free resolution of $A$.

Shorthand: $\tor: \mathcal{F}(A) \to (\wait \tensor B) \to H_*$

## Computing Ext
$$\ext(A, B) = h[\cdots \hom(A, B_n) \to \hom(A, B_{n-1}) \to \cdots \to \hom(A, B_1) \to 0 ]$$ where $B_*$ is a free resolution of $B$.

Shorthand: $\ext: \mathcal{F}(B) \to \hom(A, \wait) \to H_*$

## Properties of Tensor Product
- $(\wait) \tensor_\ZZ \ZZ = \id$
- $\ZZ_m \tensor \ZZ_n = \ZZ_d$
- $A\tensor B = 0 \implies A = 0 ~\or~ B = 0$

## Properties of Tor

- $\tor(A,B) = 0$ if $A$ or $B$ are torsion-free
- $\tor(A,B) = \tor(A_T, B_T)$ where $G_T$ is the torsion subgroup of $G$.
- $\tor(\bigoplus A_i, B) = \bigoplus \tor(A_i, B)$
- $\tor(\ZZ_n, G) = \ker (g \mapsto ng) = \theset{g\in G\mid ng = 0}$
- $\tor_0(A, B) = A \tensor B$
- $\tor(A, B) = \tor(B, A)$

## Properties of Ext

- $\ext(F, G) = 0$ if $F$ is free
- $\ext(A,B) = \ext(A_T, B_T)$ where $G_T$ is the torsion subgroup of $G$.
- $\ext(\bigoplus X_i, C) = \bigoplus \ext(X_i, C)$
- $\ext(\ZZ_n, G) \cong G/nG$
- $\ext_0(A, B) = \hom(A, B)$

## Hom/Ext/Tor Tables
$\hom$    | $\ZZ_m$  | $\ZZ$  | $\QQ$
--|---|---|--
$\ZZ_n$   | $\ZZ_d$  | $0$    | $0$  
$\ZZ$     | $\ZZ_m$  | $\ZZ$  | $\QQ$
$\QQ$     | $0$      | $0$    | $\QQ$

$\tor$    | $\ZZ_m$ | $\ZZ$ | $\QQ$
--|---|---|--
$\ZZ_n$   | $\ZZ_d$ | $0$   | $0$  
$\ZZ$     | $0$     | $0$   | $0$
$\QQ$     | $0$     | $0$   | $0$

$\ext$    | $\ZZ_m$   | $\ZZ$                 | $\QQ$
--|---|---|--
$\ZZ_n$   | $\ZZ_d$   | $\ZZ_n$               | $0$  
$\ZZ$     | $0$       | $0$                   | $0$
$\QQ$     | $0$       | $\mathcal{A_p}/\QQ$   | $0$

Things that behave like "the zero map":

- $\ext(\ZZ, \wait)$
- $\tor(\ZZ, \wait), \tor(\QQ, \wait)$
- $\tor(\wait, \ZZ), \tor(\wait, \QQ)$

Thins that behave like "the identity map":

- $\hom(\ZZ, \wait)$

For description of $\mathcal{A_p}$, see [here](http://math.jhu.edu/~jmb/note/torext.pdf).

-----

# Lefshectz Number

# Low Dimensional Homology Examples

$$
\begin{array}{}
\SS^1 &=  &[&\ZZ, &\ZZ,               &0,    &0,      &0,    &0\rightarrow & ]\\
\MM   &=  &[&\ZZ, &\ZZ,               &0,    &0,      &0,    &0\rightarrow & ]\\
\RP^1 &=  &[&\ZZ, &\ZZ,               &0,    &0,      &0,    &0\rightarrow & ]\\
\RP^2 &=  &[&\ZZ, &\ZZ_2,             &0,    &0,      &0,    &0\rightarrow & ]\\
\RP^3 &=  &[&\ZZ, &\ZZ_2,             &0,    &\ZZ,    &0,    &0\rightarrow & ]\\
\RP^4 &=  &[&\ZZ, &\ZZ_2,             &0,    &\ZZ_2,  &0,    &0\rightarrow & ]\\
\SS^2 &=  &[&\ZZ, &0,                 &\ZZ,  &0,      &0,    &0\rightarrow & ]\\
\TT^2 &=  &[&\ZZ, &\ZZ^2,             &\ZZ,  &0,      &0,    &0\rightarrow & ]\\
\KK &=    &[&\ZZ, &\ZZ \oplus \ZZ_2,  &0,    &0,      &0,    &0\rightarrow & ]\\
\CP^1 &=  &[&\ZZ, &0,                 &\ZZ,  &0,      &0,    &0\rightarrow & ]\\
\CP^2 &=  &[&\ZZ, &0,                 &\ZZ,  &0,      &\ZZ,  &0\rightarrow & ]\\
\end{array}
$$

# Low Dimensional Equivalences
- $\RP^1 \cong \SS^1$
- $\CP^1 \cong \SS^2$
- $\MM \homotopic \SS^1$
- $\CP^n = \CC^n \coprod \CP^{n-1} = \coprod_{i=0}^n \CC^i$

# Homology Results
- $H_n M^n = \ZZ \iff M^n$ is orientable.
- $H_n(\bigvee_\alpha X_\alpha) = \bigoplus_\alpha H_n X_\alpha$
- $H_n(X, A) \cong H_n(X/A)$
- $H_n(X) = 0 \iff X$ has no $n\dash$cells.
- $C^0 X = \pt \implies d_1: C^1 \to C^0$ is the zero map.
- $H^*(X; \FF) = \hom(X,\FF)$ for a field.

## CW Complexes
- $S^1 = e^0 + e^1 \\= 1+x$
- $S^2 = e^0 + e^2 \\= 1+x^2$
- $S^n = e^0 + e^n \\= 1+x^n$
- $S^n = 2e^0 + 2e^1 + 2e^2 + \cdots + 2e^n \\= 2(1+x+x^2+\cdots x^n)$
- $\RP^n = e^0 + e^1 + e^2 + \cdots + e^n \\= 1+x+x^2+\cdots x^n$
- $\CP^n = e^0 + e^2 + e^4 + \cdots e^{2n} \\= 1 + x^2 +x^4 + \cdots x^{2n}$
- $\KK = e^0 + 2e^1 + e^2$
- $T^2 = e^0 + 2e^1 + e^2 \\ = 1 + 2x + x^2$
- $T^3 = e^0 + 3e^1 + 3e^2 + e^3 \\= 1 + 3x + 3x^2 + x^3$
- To get cell complex of $A\cross B$, just write each cell complex as a polynomial and multiply.

## Constructing a CW Complex with Prescribed Homology
- Given $G = \bigoplus G_i$, and want a space such that $H_i X = G$? Construct $X = \bigvee X_i$ and then $H_i (\bigvee X_i) = \bigoplus H_i X_i$. Reduces problem to: given a group $H$, find a space $Y$ such that $H_n(Y) = G$.
  - Attach an $e^n$ to a point to get $H_n = \ZZ$
  - Then attach an $e^{n+1}$ with attaching map of degree $d$ to get $H_n = \ZZ_d$

# Long Exact Sequences
$$
\begin{align}
%
A \subseteq X \implies
&A \to X \to X/A \mapsvia{\delta} \cdots \\
%
X = A\cup B \implies
&A\cap B \to A \oplus B \to A \cup B \mapsvia{\delta} \cdots\\
%
(X,A) \implies
&A \to X \to X,A \mapsvia{\delta} \cdots\\
%
A\to B \to C \implies
& \tor(A, G) \to \tor(B, G) \to \tor(C, G) \mapsvia{\delta_\downarrow} \cdots \\
A\to B \to C \implies
& \ext(A, G) \to \ext(B, G) \to \ext(C, G) \mapsvia{\delta_\uparrow} \cdots
\end{align}
$$

# Cellular Homology
How to compute:

1. Write cellular complex $$0 \to C^n \to C^{n-1} \to \cdots C^2 \to C^1 \to C^0 \to 0$$
2. Compute differentials $\del_i: C^i \to C^{i-1}$
    1. Note - if $C^0$ is a point, $\del_1$ is the zero map
    2. Note - $H_n X = 0 \iff C^n = \emptyset$.
    3. Compute local degrees?
    3. Use $\del_n(e_i^n) = \sum_i d_i e_i^{n-1}$ where $$d_i = \deg(\text{Attach }e_i^n \to \text{Collapse } X^{n-1}\dash\text{skeleton}),$$ which is a map $S^{n-1} \to S^{n-1}$.
    4. Note that $\ZZ^m \mapsvia{f} \ZZ^n$ has an $n\times m$ matrix
    5. Row reduce, image is span of rows with pivots. Kernel can be easily found by taking RREF, padding with zeros so matrix is square and has all diagonals, then reading down diagonal - if a zero is encountered on $n$th element, take that column vector as a basis element with $-1$ substituted in for the $n$th entry.
    eg.
    $$
\pmatrix{\mathbf1&2&0&2\\0&0&\mathbf1&-1\\0&0&0&\mathbf0} \to \pmatrix{\mathbf1&2&0&2\\0&\mathbf0&0&0\\0&0&\mathbf1&-1\\0&0&0&\mathbf0}\\ \ker = \pmatrix{2\\-1\\0\\0},\pmatrix{2\\0\\-1\\-1}\\
\im = <a+2b+d,c-d>
    $$
    6. Or look at elementary divisors, say $n_i$, then the image is isomorphic to $\bigoplus n_i \ZZ$

# Manifolds
- If $M^\text{orientable} \mapsvia{\pi_k} M^\text{non-orientable}$ is a $k\dash$fold cover, then $k$ is even or $\infty$.


# Surfaces
- Orientable:
  - $S^n, T^n, \RP^\text{odd}$
- Nonorientable:
  - $\RP^\text{even}, \mathbb{M}, \mathbb{K}$

# Pasting Diagrams

![$S^2, \RP^2, T^2, \KK$](assets/Results-37710.png)

![$\mathbb{M}$](assets/Results-f9d55.png)

# Useful Covering Spaces
- $\RR \mapsvia{\pi} S^1 \leftarrow \ZZ$
- $\RR^n \mapsvia{\pi} T^n \leftarrow \ZZ^n$
- $\RP^n \mapsvia{\pi} S^n \leftarrow \ZZ_2$
- $\vee_n S^1 \mapsvia{\pi} C^n \leftarrow \ZZ^{\ast n}$ where $C^n$ is the $n\dash$valent Cayley Graph
    ![Cayley Graph on $Z^{\ast 2$}](assets/Results-9ba56.png)
- $M \mapsvia{\pi} \tilde M \leftarrow \ZZ_2$, the orientation double cover
- $T^2 \mapsvia{\times 2} \KK$
- $L_{p/q} \mapsvia{\pi} S^3 \leftarrow \ZZ_q$
- $\CC^* \mapsvia{z^n} \CC \leftarrow \ZZ_n$
- For $A \mapsvia{\pi(\times d)} B$, we have $\chi(A) = d\chi(B)$
- Covering spaces of orientable manifolds are orientable.

# Classification of compact surfaces
- Classified by $\chi$ and orientability.
- $\chi X = \chi U + \chi V - \chi (U\cap V)$
- $\chi A \# B = \chi A + \chi B - 2$
- Connected closed surfaces: $<S, P, T, K \mid S = 1, P^2 = K, P^3 = PT>$
- $\chi X = 2 \implies X \cong S$
- $\chi X = 0 \implies X \cong T^2$ or $K$
- $\chi X = -2 \implies X \cong P$
- $\chi X = -n, X$ orientable $\implies \chi X \cong \Sigma_{1-\frac{n}{2}}$
- $\chi X = -n, X$ non-orientable $\implies \chi X \cong \tilde\Sigma_{1-\frac{n}{2}}$

## Cap and Cup Products
- $\cup: H^p \cross H^q \to H^{p+q}; (a^p \cup b^q)(\sigma) = a^p(\sigma \circ F_p) b^q(\sigma \circ B_q)$ where $F_p, B_q$ is embedding into a $p+q$ simplex.
- $\cap: H_p \cross H^q \to H_{p-q}; \sigma \cap \psi = \psi(F\circ\sigma)(B\circ \sigma)$ where $F,B$ are the front/backface maps.
- Given $\psi \in C^q, \phi \in C^p, \sigma: \Delta^{p+q} \to X$, we have
$$
\psi(\sigma \cap \phi) = (\phi \cup \psi)(\sigma)
$$
