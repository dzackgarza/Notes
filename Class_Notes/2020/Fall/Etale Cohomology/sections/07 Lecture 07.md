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

For $f:X\to Y$, we have
