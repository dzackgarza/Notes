- Ext/Tor Tables

# The Universal Coefficient Theorems
$$
0 \to H_i(X) \tensor G \to H_i(X; G) \to \tor_1^\ZZ(H_{i-1}X, G) \to 0\\
0 \to \ext^1_\ZZ (H_{i-1} X, G) \to H^i(X;G) \to \hom(H_i X, G) \to 0
$$

# The Kunneth Formula
$$
0 \to \bigoplus_j H_j(X; R) \tensor_R H_{i-j}(Y; R) \to H_i(X\cross Y; R) \to \bigoplus_j \tor_1^R(H_j(X; R), H_{i-j-1}(Y; R))
$$

# Properties of Ext/Tor

- $\ext^1(\wait, C)\circ \oplus \cong \oplus \circ \ext(\wait, C)$
- $\ext^1(F, \wait) = 0$ when $F$ is free
- $\ext^1(\ZZ_n, G) \cong G/nG$
- $\tor_1(\ZZ_n, G) \cong \ker (g \mapsto ng)$

# Lefshectz Number

# Useful Homology
- $S^n = [\ZZ, \cdots , \ZZ, 0, \rightarrow]$
- $S^1 = [\ZZ, \ZZ, 0, \rightarrow]$
- $T^2 = [\ZZ, \ZZ^2, \ZZ, 0, \rightarrow]$
- $\RP^2 = [\ZZ, \ZZ_2, 0, \rightarrow]$

# Homology Results
- $H^n M^n = \ZZ \iff M^n$ is orientable.
- 

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
