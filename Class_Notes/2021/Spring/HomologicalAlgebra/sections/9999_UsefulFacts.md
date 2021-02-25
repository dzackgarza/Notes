# Useful Facts


:::{.proposition title="Recipe for computing $\Ext_R^i$"}
Write $F(\wait) \da \Hom_R(A, \wait)$.
This is left-exact and thus has right-derived functors $\Ext^i_R(A, B) \da R^iF(B)$.
To compute this:

- Take an *injective* resolution:
\[
1 \to B \mapsvia{\eps} I^0 \mapsvia{d^0} I^1 \mapsvia{d^1} \cdots
.\]

- Remove the augmentation $\eps$ and just keep the complex
\[
I^\wait \da \qty{ 1 \mapsvia{d^{-1}} I^0 \mapsvia{d^0} I^1 \mapsvia{d^1} \cdots }
.\]

- Apply $F(\wait)$ to get a new (and usually **not exact**) complex
\[
F(I)^\wait \da \qty{ 1 \mapsvia{\bd^{-1}} F(I^0) \mapsvia{\bd^0} F(I^1) \mapsvia{\bd^1} \cdots }
,\]
  where $\bd^i \da F(d^i)$.

- Take homology, i.e. kernels mod images:
\[
R^iF(B) \da { \ker d^i \over \im d^{i-1}}
.\]

Note that $R^0 F(B) \cong F(B)$ canonically:

- This is defined as $\ker \bd^0 / \im \bd^{-1} = \ker \bd^0 / 1 = \ker \bd^0$.

- Use the fact that $F(\wait)$ is left exact and apply it to the *augmented* complex to obtain
\[
1 \to F(B) \mapsvia{F(\eps)} F(I^0) \mapsvia{\bd^0} F(I^1) \mapsvia{\bd^1} \cdots 
.\]

- By exactness, there is an isomorphism $\ker \bd^0 \cong F(B)$.
:::

:::{.proposition title="Computing $\Hom_\ZZ(\ZZ, \ZZ/n)$"}
$\phi: \Hom_{\ZZ}(\ZZ, \ZZ/n) \mapsvia{\sim} \ZZ/n$, where $\phi(g) \da g(1)$.

- That this is an isomorphism follows from 
- Surjectivity: for each $\ell \in \ZZ/n$ define a map 
\[
\psi_y: \ZZ &\to \ZZ/n \\
1 &\mapsto [\ell]_n
.\]

- Injectivity: if $g(1) = [0]_n$, then 
\[
g(x) = xg(1) = x[0]_n = [0]_n
.\]
- \(\ZZ\dash\)module morphism: 
\[
\phi(gf) \da \phi(g\circ f) \da (g\circ f)(1) = g(f(1)) = f(1)g(1) = \phi(g)\phi(f)
,\]
where we've used the fact that $\ZZ/n$ is commutative.
:::

