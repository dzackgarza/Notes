# Useful Facts


:::{.proposition title="How to compute Ext"}
Write $F(\wait) \da \Hom_R(A, \wait)$.
This is left-exact and thus has right-derived functors $\Ext^i_R(A, B) \da R^iF(B)$.
To compute this:

- Take an *injective* resolution:
\[
B \mapsvia{\eps} I^0 \mapsvia{d^0} I^1 \mapsvia{d^1} \cdots
.\]

- Remove the augmentation $\eps$ and just keep the complex
\[
I^\wait \da \qty{ 1 \mapsvia{d^{-1}} I^0 \mapsvia{d^0} I^1 \mapsvia{d^1} \cdots }
.\]

- Apply $F(\wait)$ to get a new (and usually **not exact**) complex
\[
F(I)^\wait \da \qty{ 1 \mapsvia{d^{-1}} F(I^0) \mapsvia{d^0} F(I^1) \mapsvia{d^1} \cdots }
,\]
  where by abuse of notation I've written $d^i = F(d^i)$.

- Take homology, i.e. kernels mod images:
\[
R^iF(B) \da { \ker d^i \over \im d^{i-1}}
.\]

Note that $R^0 F(B) \cong F(B)$ canonically:

- This is defined as $\ker d^0 / \im d^{-1} = \ker d^0 / 1 = \ker d^0$.


:::

