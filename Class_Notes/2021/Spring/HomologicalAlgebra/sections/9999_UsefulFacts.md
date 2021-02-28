# Useful Facts


:::{.remark}
Notational conventions:

- Finite direct products: \( \bigoplus \)
- Cohomological indexing: $C^i, \bd^i$
- Homological indexing: $C_i, \bd_i$
- Right-derived functors $R^iF$.
  - Come from left-exact functors
  - Require *injective* resolutions
  - Extend to the right: $0 \to F(A) \to F(B) \to F(C) \to L_1 F(A) \cdots$
- Left-derived functors $L_i F$.
  - Come from right-exact functors
  - Require *projective* resolutions
  - Extend to the left: $\cdots L_1F(C) \to F(A) \to F(B) \to F(C) \to 0$

- Colimits:
  - Examples: coproducts, direct limits, cokernels
  - Commute with left adjoints, i.e. $L(\colim F_i) = \colim LF_i$.
- Examples of limits:
  - Products, inverse limits, kernels
  - Commute with right adjoints. i.e. $R(\colim F_i) = \colim RF_i$.
:::



:::{.proposition title="Basic properties of Hom"}
\envlist

- $\Hom_R(A, \wait)$ is:
  - Covariant
  - Left-exact
  - Has right-derived functors $\Ext^i_R(A, B) \da R^i \Hom_R(A, \wait)(B)$ computed using *injective* resolutions.


- $\Hom_R(\wait, B)$ is:
  - Contravariant
  - Right-exact
  - Has left-derived functors $\Ext^i_R(A, B) \da L_i \Hom_R(\wait, B)(A)$ computed using *projective* resolutions.

:::


:::{.proposition title="Basic Properties of Ext"}
\envlist

- $\Ext^{>1}(A, B) = 0$ for any $A$ projective or $B$ injective.
:::


:::{.fact}
A maps $A \mapsvia{f} B$ in $\rmod$ is injective if and only if $f(a) = 0_B \implies a = 0_A$.
Monomorphisms are injective maps in $\rmod$.
:::

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

:::{.proposition title="Common Hom Groups"}
- $\Hom_\ZZ(\ZZ/m, \ZZ) = 0$.
- $\Hom_\ZZ(\ZZ/m, \ZZ/n) = \ZZ/d$.
- $\Hom_\ZZ(\QQ, \QQ) = \QQ$.

:::

:::{.proposition title="Common Ext Groups"}

- $\Ext_\ZZ(\ZZ/m, G) \cong G/mG$
  - Use $1 \to \ZZ \mapsvia{\times m} \ZZ \mapsvia{} \ZZ/m \to 1$ and apply $\Hom_\ZZ(\wait, \ZZ)$.
- $\Ext_\ZZ(\ZZ/m, \ZZ/n) = \ZZ/d$.

- 

:::

:::{.slogan}
\envlist

- In $\Ab$, direct colimits commute with finite limits.
  Inverse limits do not generally commute with finite colimits.

- Left adjoints are right-exact with left-derived functors.
  Right adjoints are left-exact with right-derived functors.

- Left adjoints commute with colimits: $L( \colim F) = \colim (L\circ F)$
:::


:::{.proposition title="Characterizations of Splittings"}
TFAE in \( \rmod \):

- A SES $0\to A\to B \to C\to 0$ is split.
- ?

:::


