# Lecture 07: Relating Étale and Čech Cohomology

Last time: stalks, sheafification, and $\Sh(X_{\et})$ is abelian.
Next up, we're aiming to define sheaf cohomology for $\Sh(X_\et)$.

:::{.remark title="Esoteric!"}
Related to a question asked by a viewer: there is not in fact a morphism from $X_{\fppf} \to X_{\et}$, since locally finitely-presented need not be finitely presented (part of the condition for fppf).
There is instead a morphism $X_{\fppf}\to X_{\et, \text{fp}}$ to a corresponding finitely presented site. 
There is also a map $X_{\et} \to X_{\et, \text{fp}}$ inducing an equivalence on the category of sheaves via pushforward.
:::

:::{.theorem title="Enough injectives"}
$\Sh(X_\et)$ has enough injectives.
:::

:::{.proof title="?"}
Given $\mathcal{F}\in \Sh(X_\et)$ we want an injective sheaf $\mathcal{I}$ and an injection $\mathcal{F}\injects \mathcal{I}$.
For each $x\in X$, choose a geometric point $\bar x$ over $x$, and let $I(\bar x)$ be an injective $\ZZ\dash$module with a map $\mathcal{F}_{\bar x} \to I(\bar x)$.
These exist because the category of $\ZZ\dash$modules has enough injectives.
The injectives in this category are **divisible** abelian groups.

:::{.claim}
The following object works:
\[  
\mathcal{I} \da \prod_{\bar x} (\iota_{\bar x})_* I(\bar x)
.\]
:::

We need to check

1. There is a map $\mathcal{F}\to \mathcal{I}$:
  The RHS is a product, so we map into the components.
  $\mathcal{F}_{\bar x}$ maps into its own associated skyscraper sheaf where the map is sending sections to their germs.
  Then the skyscraper sheaf for $\mathcal{F}_{\bar x}$ maps into the skyscraper sheaf for $I(\bar x)$ by pushforward.

2. This is a monomorphism: check on stalks.

3. $\mathcal{I}$ is injective: check the lifting property directly.

:::

## What Else We Get From Sheafification

:::{.remark}
We now know that $\Sh(X_\et)$ is abelian with enough injectives.
This is true for $\Sh(\tau)$ for any site $\tau$, but this is substantially harder to show.
:::

### Inverse Images

For $f:X\to Y$, we have a map on presheaves
\[  
f^{-1} :\Presh(Y_{\et}) &\to \Presh(X_\et) \\
\mathcal{F}(V\mapsvia{\et} X) &\mapsto \directlim \mathcal{F}(U\to X)
,\]
where the limit is over diagrams of the form
\begin{tikzcd}
V \ar[r] \ar[d, "\et"] & U \ar[d, "\et"] \\
X \ar[r] & Y
\end{tikzcd}

:::{.fact}
$f^{-1}$ is left adjoint to pushforward as functors on presheaves.
:::

:::{.exercise title="?"}
Check this.
:::

:::{.definition title="Inverse Image Sheaf"}
\[  
f^* \mathcal{F} \da \qty{f^{-1} \mathcal{F}}^a
.\]
:::

:::{.theorem title="?"}
$f^*$ is left adjoint to $f_*$.
:::

:::{.proof title="?"}
Sheafification is a left adjoint.
:::

:::{.example title="?"}
\envlist

- For $\bar x\injectsvia{\iota} X$ a geometric point, we have $\iota^* \mathcal{F}= \mathcal{F}_{\bar x}$.

- For $Y\mapsvia{f} X$, we have $f^* \underline{\zlz} = \underline{\zlz}$.

- More generally, for $Y\mapsvia{f} X$ and any representable functor $\mathcal{F} \da \underline{\hom}_X(\wait, Z)$, we have $f^* \mathcal{F} = \underline{\hom}_Y(\wait, Y\cross_X Z)$.
:::

## Étale Cohomology

See \cref{def:etale_cohomology} for the definition of étale cohomology.
How do we compute $H^i(X_{\et}, \mathcal{F})$?
Choose an injective resolution 
\[  
\mathcal{F}\to \mathcal{I}^0 \to \mathcal{I}^1 \to \cdots
.\]
with the $\mathcal{I}^j$ injectives.
From the general theory of derived functors, we obtain
\[  
H^i(X_\et, \mathcal{F}) = H^i\qty{\Gamma(X, \mathcal{I}^\wait)}
,\]
where the RHS is a complex of abelian groups.
Injective resolutions are difficult to find in general.
Suppose $\pi:X_\et \to Y_\et$ comes from a map of schemes, then we can compute derived functors of other functors such as the pushforward,
\[  
\qty{R^i \pi_*} \mathcal{F} = H^i\qty{ \pi_* \mathcal{I}^\wait }
,\]
where the RHS are sheaves on $Y_\et$.
Implicit here is the claim that $\pi_*$ is left-exact.
You can also find $\qty{L^{>0} \pi^*} \mathcal{G} = 0$.

:::{.exercise title="?"}
Check that pullback is exact.
:::

:::{.proposition title="Properties of étale cohomology"}
\envlist

1. $H^0(X_\et, \mathcal{F}) = \mathcal{F}(X)$, aka the global sections $\Gamma(X, \mathcal{F})$.

2. $H^{>0}(\mathcal{I}) = 0$ for $\mathcal{I}$ injective.

3. Given a SES of sheaves in $\Sh(X_\et)$
\[  
0 \to A\to B \to C \to 0
\]
  there is a LES
  \[  
  \cdots \to H^{i+1}(X_\et, C) \mapsvia{\delta} H^i(X_\et, A) \to \cdots
  .\]
:::

:::{.example title="?"}
Suppose $k$ is a field, not necessarily algebraically closed, and consider $\Sh(\qty{\spec k}_\et)$.
Let $G \da \Gal(k^s/k)$ for a choice of separable closure $k^s/k$.

:::{.claim}
There is a functor from $\Sh(\qty{\spec k}_\et)$ to discrete $G\dash$modules[^explain_disc_g_mod]
inducing an equivalence of categories.

[^explain_disc_g_mod]: 
$G$ is a topological group in the inverse limit topology, so a discrete $G\dash$module is a module with the discrete topology where the $G\dash$action is continuous. 
In particular, the action on any element factors through a finite quotient of $G$.

:::

Note that when thinking of Galois representations, $\ZZ_{\ell}$ is not an example of this, but a representation over a finite field works.
E.g. the Tate module (the inverse limit of torsion) of an elliptic curve is not a discrete $G\dash$module since the Galois action is not continuous in the discrete topology (although it is in the $\ell\dash$adic topology).

To prove this claim, the map is given by
\[  
\iota: \Sh(\qty{\spec k}_\et) &\to \text{Discrete $G\dash$modules} \\
\mathcal{F} &\mapsto \stacksymbol{}{k \subset L \subset k^s}\inverselim \mathcal{F}(\spec L)
.\]
The idea here: you want to evaluate $\mathcal{F}$ on $k^s$, which doesn't make sense because $k^s$ is not locally finitely-presented, so we take a limit instead.
The claim is that the image is a discrete $G\dash$module and this is an equivalence.
This follows because each term is, and taking limits preserves this property.
:::

:::{.corollary title="?"}
$H^i(\qty{\spec K}_\et, \mathcal{F} ) = H^i(G,\iota \mathcal{F})$,
which is the Galois cohomology.
:::

Why?
Derived functors only depend on the ambient category, so it suffices to check $H^0$.

:::{.proof title="of claim"}
We get a $G\dash$module since $G$ acts on the entire diagram and thus its limit.

:::{.exercise title="?"}
Check that this is a discrete $G\dash$module.
:::

There is an inverse functor: given $V\to \spec k$ an étale map, by the classification of étale $k\dash$algebras we have $V = \disjoint_{k \in K'} \spec k'$ where $K'$ is the set of all finite separable $k'/k$.
Given a discrete $G\dash$module $M$, send it to the Galois fixed points $V \to \prod M^{G_s'}$ where $G_s' \da \Gal(k^s/k')$.

:::{.exercise title="Check"}
Check that this is an inverse, it follows from Galois descent.
:::

:::

:::{.proof title="of corollary"}
$\Gamma(\spec k, \mathcal{F}) = \qty{\iota F}^G$, taking the $G\dash$invariants.
So $H^0 \mapsvia{\iota}$ to taking invariants, and thus the higher derived functors agree, where the RHS is group cohomology.
:::

:::{.remark}
Right now we're only talking about things that look like $\zlz^n$, but the goal when proving the Weil conjectures will be using $\ZZ_\ell$.
We'll be trying to count some number by taking traces, but if we take these in a ring where some prime is zero, this only gives a congruence class.
So when we define $\ell\dash$adic cohomology, we'll take some inverse limit.
If we take the constant sheaf $\ul{\ZZ_\ell}$, this doesn't use the topology and will give the wrong answer.
:::

:::{.example title="?"}
For $E$ an elliptic curve, $E(k^s)$ is a discrete $G\dash$module.
Under the above correspondence, this goes to $\hom(\wait, E)$ since an $L\dash$point of the curve is the same as a Galois-invariant $k^s\dash$point.
:::

## How to Compute: Čech Cohomology

:::{.warnings}
\envlist

1. Čech cohomology does not always compute étale cohomology!
  Note that this already happens for bad topological spaces, where Čech doesn't always compute sheaf cohomology, and this can be true for schemes as well.
  Ex: $\AA_2$ with a doubled origin.

2. Čech cohomology is not actually "computable", since acyclic covers do not generally exist.
:::

When *does* Čech cohomology compute sheaf cohomology?
If you define a cover of your space, for each object of the cover and each double intersect, the derived functors vanish.

:::{.example title="?"}
Take an algebraic curve, say as an open subset of a Riemann surface.
There are no étale maps to it which have this property: taking any Zariski open subset (thinking over $k=\CC$) yields lots of interesting cohomology.
So you can never find an acyclic cover.
:::

:::{.remark}
This is one of the major differences between étale cohomology and singular cohomology of manifolds, and it makes things much more difficult.
When defining an acyclic cover for manifolds, you usually look for a cover by contractible objects, which works because manifolds are locally contractible.
Schemes are generally not locally acyclic.
What is true is that schemes are $K(\pi, 1)$, so étale cohomology can be computed in terms of group cohomology.
:::


### Defining Čech Cohomology


:::{.definition title="Čech Complex"}
Suppose $U \da \Union U_i \to X$ is an étale cover, and suppose $\mathcal{F}\in \Sh(X_\et)$, then there is a complex of projections:

\begin{tikzcd}
X 
  &
U 
  \arrow[l] 
  &
U\cross_X U 
  \arrow[l, shift left]
  \arrow[l, shift right] 
  &
U\cross_X U \cross_X U 
  \arrow[l]
  \arrow[l, shift left=2]
  \arrow[l, shift right=2]
  &
\cdots
  \arrow[l, shift left=0.75]
  \arrow[l, shift right=0.75]
  \arrow[l, shift left=2.25]
  \arrow[l, shift right=2.25]
  &
\end{tikzcd}

Here we interpret each term as the $n\dash$fold intersections in the cover.
We can apply $\mathcal{F}$ to this diagram to obtain a **cosimplicial diagram** of abelian groups.
Given such a diagram, you can take the alternating sum as differentials to obtain a chain complex
\[  
\check{C}^\wait(U/X, \mathcal{F}) \da \qty{ 0 \to \mathcal{F}(U) \to \mathcal{F}(U\cross_X U) \to \cdots}
.\]
This is the **Čech Complex**.
:::

:::{.remark}
On usual topological spaces, there are two notions of the Čech complex: this one, and the **alternating Čech complex** where you throw away self-intersections.
This doesn't work in this setting, since these can be interesting objects here.
E.g. there is not necessarily a section $U_i \to U_i \cross_X U_i$.
:::

:::{.definition title="Total Čech Complex of the Étale Site"}
\[  
\check{C}^\wait (X_\et, \mathcal{F}) \da \stacksymbol{}{U\to X}\directlim  \check{C}^\wait(U/X, \mathcal{F})
,\]
where the limit is taken over all covering families.
:::

:::{.remark}
Note that taking direct limits is exact, so we can do this in either order.
There are potential set-theoretic issues if $X$ is not quasicompact; one fix is to only work in the finitely-presented setting, which is the choice we'll make here.
:::

:::{.definition title="Čech Cohomology" ref="def:cech_cohomology"}
\[  
\check{H}^i(U/X, \mathcal{F}) &\da H^i(\check{C}^\wait (U/X, \mathcal{F})) \\
\check{H}^ik(X_\et, \mathcal{F}) &\da H^i(\check{C}^\wait (X_\et, \mathcal{F})
.\]
:::

:::{.proposition title="?"}
$\Hc^0(U/X) = \Hc^0(X_\et, \mathcal{F}) = H^0(X_\et, \mathcal{F})$.
:::

:::{.proof title="?"}
This is the sheaf condition, i.e. which implies the following sequence is exact:
\[  
\mathcal{F}(X) \to \mathcal{F}(U) \to \mathcal{F}(U\cross_X U)
.\]
That gives that the first term is equal to the last, and the middle term is the direct limit of the kernel of this sequence and direct limits are exact.
:::

:::{.proposition title="?"}
$\Hc^{i> 0} (U/X, \mathcal{I}) \cong \Hc^{i> 0}(X_\et, \mathcal{I})$ if $\mathcal{I}$ is injective.
:::

:::{.proof title="?"}
It's enough to show that $\check{C}^\wait(U/X, \mathcal{I})$ is exact away from 0.
This is the statement of the first equality, and the second equality is the direct limit of it.

:::{.claim title="1"}
There is an alternative characterization of the Čech complex.
Let $\ZZ_U \da \ZZ[\hom_X(\wait, U)]$ be the free abelian group on this functor, i.e. to evaluate this on a scheme $V$ one takes $\hom_X(V, U)$ and the free abelian group on that.
Then 
\[  
\check{C}^\wait(U/X, \mathcal{I}) = \qty{ \hom(\ZZ_U, \mathcal{I}) \to \hom(\ZZ_{U\cross_X U}, \mathcal{I}) \to \hom(\ZZ_{U\cross_X U \cross_X U}, \mathcal{I}) \to \cdots}
.\]
:::
This follows from Yoneda's lemma.

:::{.claim title="2"}
It's enough to show that 
\[  
\ZZ \to \ZZ_{U} \to \ZZ_{U\cross_X U} \to \cdots
\]
is exact.
:::
This is because $\hom(\wait, \mathcal{I})$ is exact, which is precisely how we obtain the complex from this in the previous claim.

:::{.claim title="3"}
Let $S$ be a set, then
\[  
\ZZ \to \ZZ[S] \to \ZZ[S\cross S] \to \cdots
\]
is always exact.
:::
This follows for the same reason that the Amitsur complex is exact: base change to $\ZZ^S$, which is a flat $\ZZ\dash$module, and thus we get a nullhomotopy.

:::{.exercise title="?"}
Check this!
:::

:::

We need one more thing to show that Čech cohomology is isomorphic to the derived functor cohomology: 

:::{.theorem title="?"}
If for all SESs of sheaves 
\[  
0 \to A \to B \to C\to 0 && \in \Sh(X_\et)
\]
we have an exact sequence
\[  
0 \to \check{C}(X_\et, A) \to \check{C}(X_\et, B) \to \check{C}(X_\et,C) \to 0 && \in \Sh(X_\et)
\]
then we get a LES in cohomology, then
\[  
\Hc^{i}(X_\et, \mathcal{F}) \mapsvia{\sim} H^i(X_\et, \mathcal{F}) && \text{for all }i
.\]

:::

:::{.proof title="?"}
This comes from the theory of universal $\delta\dash$functors.
A derived functor is determined uniquely by $H^0$, what they do on injectives, and the fact that the LES from a SES is functorial.
The problem is that the second sequence above is always left-exact but not in general right-exact.
We'll see a proof next time using spectral sequences.
:::

:::{.theorem title="Milne, III"}
This is true if $X$ is quasicompact and any finite subset of $X$ is contained in an affine.
:::

:::{.remark}
How can you check this condition? 
This holds if $X$ is quasiprojective.
:::

