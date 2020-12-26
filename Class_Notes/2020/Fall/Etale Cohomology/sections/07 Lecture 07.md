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
\prod_{\bar x} 
.\]
:::
:::

