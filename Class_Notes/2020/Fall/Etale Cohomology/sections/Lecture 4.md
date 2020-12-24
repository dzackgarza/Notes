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

## Setting up Descent


:::{.question}
\envlist

1.  We've said what it means to be a sheaf on a site, how do we check that a given functor is a sheaf on $X_{\et}$ or $X_{\fppf}$?

2. How do we construct such sheaves?
:::

:::{.theorem title="Ways of constructing sheaves"}
\envlist

1. If $Y$ is an $X\dash$scheme (i.e. a scheme equipped with a map to $X$) then the functor $Z \to \hom_X(Z, Y)$ is a sheaf on $X_{\Fppf}, X_{\Et}, X_{\et}$, etc.

2. Suppose $\mathcal{F}$ is a quasicoherent sheaf on $X$, so $\mathcal{F}\in \qcoh(X)$, the functor of taking global sections:

\begin{tikzcd}
Z \ar[dd, "f"]  &  \\
 \ar[r]         &  \Gamma(Z, f^* \mathcal{F}) \\
X & 
\end{tikzcd}
  is a sheaf on $X_{\Fppf}, X_{\Et}, X_{\et}$, etc.

:::


:::{.definition title="$\mathcal{F}^{\et}$"}
The sheaf associated to the above functor on $X_{\et}$ will be denoted $\mathcal{F}^\text{étale}$.
:::

:::{.proof title="of 2"}
Suppose we have an fppf cover of $X$
\begin{tikzcd}
U = \disjoint U_i \ar[d] \\
X
\end{tikzcd}
:::

:::{.question}
Suppose $\mathfrak{F}\in \qcoh(X)$.
When does it come from a quasicoherent sheaf on $X$?
I.e., when is there a quasicoherent sheaf $\mathcal{F}'$ on $X$ and an isomorphism between its pullback to $U$ and $\mathcal{F}$?
What extra structure do you need to "descend" to $\qcoh(X)$, i.e. to pick such an isomorphism?
:::

:::{.question}
Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(U)$ and a morphism $f: \mathcal{F}_1 \to \mathcal{F}_2$, when is $f
:::


