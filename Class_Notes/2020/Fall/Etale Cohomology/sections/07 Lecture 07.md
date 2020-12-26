# Lecture 07

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
\Sh(\qty{\spec k}_\et) &\to \text{Discrete $G\dash$modules} \\
\mathcal{F} &\mapsto \stacksymbol{}{k \subset L \subset k^s}\inverselim \mathcal{F}(\spec L)
.\]
The idea here: you want to evaluate $\mathcal{F}$ on $k^s$, which doesn't make sense because $k^s$ is not locally finitely-presented

:::
