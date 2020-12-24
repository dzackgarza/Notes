# Lecture 4: Descent

Last time: sites, sheaves, and morphisms of sites.
Today: descent, which is how we'll see that many familiar objects are sheaves on the étale site, such as representable functors or quasicoherent sheaves.

## Reminder

:::{.definition title="A continuous map of sites"}
Given two sites $(C, T_1)$ and $(D, T_2)$ where $C, D$ are categories and the $T_i$ are collections of covering families, a **morphism** is a functor $f^{-1} :D\to C$ such that

1. $f^{-1}$ preserves fiber products.
2. $f^{-1}$ sends covering families to covering families.
:::

:::{.example title="?"}
The main example: for $f:X\to Y$ a map of topological spaces, the functor $F: \Op(Y) \to \Op(X)$ given by $F(U) \da f^{-1}(U)$ sending an open set to its preimage.
:::

:::{.exercise title="Check!"}
Check that this is a continuous map of sites.
:::

:::{.example title="?"}
Suppose $X$ is a scheme, then there is a natural map of sites from $X_{\Fppf}$ (all $X\dash$schemes where covers are collections of jointly surjective flat morphism) to $X_{\Et}$ (all $X\dash$schemes where covers are jointly surjective étale morphisms) to $X_{\et}$ (étale $X\dash$schemes with morphisms over $X$) to $X_{\zar}$ (the open subsets of $X$ with morphisms given by inclusions and covers the usual covers).
The maps here are inclusions going the other way.
:::

:::{.exercise title="Check!"}
Check that these are continuous maps of sites.
:::

:::{.remark}
\envlist
On terminology: 

- What we've been calling a site or a Grothendieck topology is sometimes called a *Grothendieck pretopology*. 
  The major difference is that you don't have to assume the existence of fiber products.

- You may also see the notion of a **topos**, which is the category of sheaves on a site.

:::


