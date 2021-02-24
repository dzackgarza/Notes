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



:::

