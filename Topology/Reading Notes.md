# UCT
$$
0 \to H_i(X) \tensor G \to H_i(X; G) \to \tor_1^\ZZ(H_{i-1}X, G) \to 0\\
0 \to \ext^1_\ZZ (H_{i-1} X, G) \to H^i(X;G) \to \hom(H_i X, G) \to 0
$$

# Kunneth
$$
0 \to \bigoplus_j H_j(X; R) \tensor_R H_{i-j}(Y; R) \to H_i(X\cross Y; R) \to \bigoplus_j \tor_1^R(H_j(X; R), H_{i-j-1}(Y; R))
$$

# Properties of Ext/Tor

- $\ext^1(\wait, C)\circ \oplus \cong \oplus \circ \ext(\wait, C)$
- $\ext^1(F, \wait) = 0$ when $F$ is free
- $\ext^1(\ZZ_n, G) \cong G/nG$
- $\tor_1(\ZZ_n, G) \cong \ker (g \mapsto ng)$
