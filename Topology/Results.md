# Homotopy
- $f\homotopic g \implies f_* = g_*$ in homology.

# Algebra
- $\QQ \tensor A \cong S^{-1}A$ for $S = \ZZ - \theset{0}$

## Free Resolutions
- $0 \to \ZZ \mapsvia{\times m} \ZZ \mapsvia{\mod m} \ZZ_m \to 0$

# Computing Ext/Tor
$$\tor_i(G, H) = h_i(\cdots \to G_n \tensor H \to G_{n-1}\tensor H \to \cdots G_1\tensor H \to 0)$$ where $G_*$ is a free resolution of $G$.

# Properties of Ext/Tor

- $\ext(\bigoplus X_i, C) = \bigoplus \ext(X_i, C)$
- $\ext(F, \wait) = 0$ for $F$ free
- $\ext(\ZZ_n, G) \cong G/nG$
- $\tor(\ZZ_n, G) \cong \ker (g \mapsto ng)$

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

# The Universal Coefficient Theorems
$$
0 \to H_i X \tensor G \to H_i(X; G) \to \tor_1^\ZZ(H_{i-1}X, G) \to 0\\
0 \to \ext (H_{i-1} X, G) \to H^i(X;G) \to \hom(H_i X, G) \to 0
$$

- For nice enough spaces: $H_i(X) = \ZZ^{\beta_i} \oplus T_i \implies H^i(X) = \ZZ^{\beta_i} \oplus T_{i-1}$

# The Kunneth Formula
$$
0 \to \bigoplus_j H_j(X; R) \tensor_R H_{i-j}(Y; R) \to H_i(X\cross Y; R) \to \bigoplus_j \tor_1^R(H_j(X; R), H_{i-j-1}(Y; R))
$$



# Lefshectz Number

# Useful Homology
- $S^n = [\ZZ, \cdots , \ZZ, 0, \rightarrow]$
- $S^1 = [\ZZ, \ZZ, 0, \rightarrow]$
- $T^2 = [\ZZ, \ZZ^2, \ZZ, 0, \rightarrow]$
- $\RP^2 = [\ZZ, \ZZ_2, 0, \rightarrow]$

# Homology Results
- $H_n M^n = \ZZ \iff M^n$ is orientable.
- $H_n(\bigvee_\alpha X_\alpha) = \bigoplus_\alpha H_n X_\alpha$
- $H_n(X, A) \cong H_n(X/A)$
- $H_n(X) = 0 \iff X$ has no $n\dash$cells.
- $C^0 X = \pt \implies d_1: C^1 \to C^0$ is the zero map.
- $H^*(X; \FF) = \hom(X,\FF)$ for a field.

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
&A \to X \to X,A \mapsvia{\delta} \cdots
%
\end{align}
$$

# Cellular Homology
How to compute:

1. Write cellular complex $$0 \to C^n \to C^{n-1} \to \cdots C^2 \to C^1 \to C^0 \to 0$$
2. Compute differentials $\del_i: C^i \to C^{i-1}$
    1. Note - $C^0 X = \pt \implies d_1: C^1 \to C^0$ is the zero map
    2. Note - $H_n X = 0 \iff X$ has no $n\dash$cells.
    3. Compute local degrees
    3. Use $\del_n(e_i^n) = \sum_i d_i e_i^{n-1}$ where $d_i = \deg(\text{Attach }e_i^n \to \text{Collapse } X^{n-1}\dash\text{skeleton})$, which is a map $S^{n-1} \to S^{n-1}$

# Manifolds
- If $M^\text{orientable} \mapsvia{\pi_k} M^\text{non-orientable}$ is a $k\dash$fold cover, then $k$ is even or $\infty$.


# Surfaces
- Orientable:
  - $S^n, T^n, \RP^\text{odd}$
- Nonorientable:
  - $\RP^\text{even}, \mathbb{M}, \mathbb{K}$

# Pasting Diagrams

![$T^2$](assets/Results-86857.png)

![$\mathbb{K}$](assets/Results-f9260.png)

![$\RP^2$](assets/Results-bfc77.png)

![$\mathbb{M}$](assets/Results-f9d55.png)
