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
  - Examples: coproducts, direct limits, cokernels, initial objects, pushouts
  - Commute with left adjoints, i.e. $L(\colim F_i) = \colim LF_i$.
- Examples of limits:
  - Products, inverse limits, kernels, terminal objects, pullbacks
  - Commute with right adjoints. i.e. $R(\colim F_i) = \colim RF_i$.
:::

## Hom and Ext

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

- For $N \in \bimod{R}{S'}$ and $M\in \bimod{R}{S}$, $\Hom_R(M, N) \in \bimod{S}{S'}$.
  - Mnemonic: the slots of $\Hom_R$ use up a left $R\dash$action.
    In the first slot, the right $S\dash$action on $M$ becomes a left $S\dash$action on Hom.
    In the second slot, the right $S'\dash$action on $N$ becomes a right $S'\dash$action on Hom.

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

## Tensor and Tor


:::{.proposition title="Basic Properties of the Tensor Product"}
\envlist

- $A\tensor_R \wait$ is:
  - Covariant
  - Right-exact
  - Left-exact
  - Has left-derived functors $\Ext^i_R(A, B) \da L_i \Hom_R(\wait, B)(A)$ computed using *projective* resolutions.


- $\wait\tensor_R B$ is:
  - Covariant
  - Right-exact
  - Has left-derived functors $\Ext^i_R(A, B) \da L_i \Hom_R(\wait, B)(A)$ computed using *projective* resolutions.

- Tensor commutes with colimits: $(\colim A_i)\tensor_R M = \colim (A_i \tensor_R M)$.

:::


:::{.proposition title="Basic Properties of Tor"}
\envlist 

- $\Tor_1^R(A, B) = 0$ for either $A$ or $B$ flat.
:::


:::{.fact}
The most useful SES for proofs here:
\[
0 \to \ZZ \mapsvia{n} \ZZ \mapsvia{\pi} \ZZ/n \to 0
.\]

:::

:::{.proposition title="Common Tensor Products"}
\envlist

- $\ZZ/n \tensor_\ZZ G \cong G/nG$
- $\ZZ/n \tensor_\ZZ \ZZ/m \cong \ZZ/d$.
- $\QQ\tensor_\ZZ \ZZ/n \cong 0$.


:::

:::{.proposition title="Common Tor Groups"}

- $\Tor^\ZZ_1(\ZZ/n, G) \cong \ts{ h\in H \st nh = e }$
- $\Tor^\ZZ_1(\ZZ/n, \QQ) \cong 0$.
- $\Tor^\ZZ_1(\ZZ/n, \ZZ/m) \cong \ZZ/d$.

:::


## Universal Properties

:::{.proposition title="Universal Property of the Quotient for Groups"}
If $f: G\to K$ and $H\normal G$ (so that $G/H$ is defined), then the map $f$ descends to the quotient if and only if $H \subseteq \ker(f)$.
:::

:::{.proposition title="Kernels as pullbacks and cokernels as pushouts"}
The kernel $\ker f$ of a morphism $f$ can be characterized as a cartesian square, and the cokernel $\coker f$ as a cocartesian square:

\begin{tikzcd}
	K \\
	& {\ker f} && \textcolor{rgb,255:red,92;green,92;blue,214}{A} && 0 \\
	\\
	& 0 && \textcolor{rgb,255:red,92;green,92;blue,214}{B} && {\coker f} \\
	&&&&&& C
	\arrow[dotted, from=2-6, to=4-6]
	\arrow[from=2-4, to=2-6]
	\arrow["f"', color={rgb,255:red,92;green,92;blue,214}, from=2-4, to=4-4]
	\arrow["0"', dotted, from=4-4, to=4-6]
	\arrow["\lrcorner"{anchor=center, pos=0.125, rotate=180}, draw=none, from=4-6, to=2-4]
	\arrow["{\exists !}"', dashed, from=4-6, to=5-7]
	\arrow[curve={height=12pt}, from=4-4, to=5-7]
	\arrow[curve={height=-12pt}, from=2-6, to=5-7]
	\arrow[dotted, from=2-2, to=2-4]
	\arrow[from=4-2, to=4-4]
	\arrow[dotted, from=2-2, to=4-2]
	\arrow["\lrcorner"{anchor=center, pos=0.125}, draw=none, from=2-2, to=4-4]
	\arrow[curve={height=-12pt}, from=1-1, to=2-4]
	\arrow[curve={height=12pt}, from=1-1, to=4-2]
	\arrow["{\exists !}"', dashed, from=1-1, to=2-2]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsOCxbMywxLCJBIixbMjQwLDYwLDYwLDFdXSxbNSwxLCIwIl0sWzMsMywiQiIsWzI0MCw2MCw2MCwxXV0sWzUsMywiXFxjb2tlciBmIl0sWzYsNCwiQyJdLFsxLDEsIlxca2VyIGYiXSxbMSwzLCIwIl0sWzAsMCwiSyJdLFsxLDMsIiIsMCx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRvdHRlZCJ9fX1dLFswLDFdLFswLDIsImYiLDIseyJjb2xvdXIiOlsyNDAsNjAsNjBdfSxbMjQwLDYwLDYwLDFdXSxbMiwzLCIwIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzMsMCwiIiwwLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzMsNCwiXFxleGlzdHMgISIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDQsIiIsMCx7ImN1cnZlIjoyfV0sWzEsNCwiIiwwLHsiY3VydmUiOi0yfV0sWzUsMCwiIiwwLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzYsMl0sWzUsNiwiIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZG90dGVkIn19fV0sWzUsMiwiIiwxLHsic3R5bGUiOnsibmFtZSI6ImNvcm5lciJ9fV0sWzcsMCwiIiwxLHsiY3VydmUiOi0yfV0sWzcsNiwiIiwxLHsiY3VydmUiOjJ9XSxbNyw1LCJcXGV4aXN0cyAhIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV1d)

:::

## Adjunctions

:::{.proposition title="Tensor-Hom Adjunction"}
For a fixed $M\in \bimod{R}{S}$, there is an adjunction
\[
\adjunction{ \wait \tensor_R M }{\Hom_S(M, \wait)}{ \modsright{R} } { \modsright{S} }
,\]
so for $Y \in \bimod{A}{R}$ and $Z \in \bimod{B}{S}$, there is a (natural) isomorphism in \( \bimod{B}{A} \):
\[
\Hom_S(X \tensor_R M, Z) \mapsvia{\sim} \Hom_R( X, \Hom_S(M, Z) )
.\]
:::


:::{.proposition title="Forgetful Adjunctions"}
Let \( F: \mods{R} \to \mods{\ZZ} \) be the forgetful functor, then there are adjunctions
\[
\adjunction{F}{ \Hom_\ZZ(R, \wait)} {\mods{R} } {\mods{\ZZ} } \\ \\
\adjunction{R\tensor_\ZZ \wait }{F}{ \mods{\ZZ} }{ \mods{R} }
.\]

:::


