# Lecture 6: Filling in Gaps, Étale Cohomology

:::{.remark title="A technical point"}
Last time a theorem was stated that pullback induced an equivalence of categories $\Qcoh(X_{\zar}) \mapsvia{\sim} \QCoh(X_{\et}) \mapsvia{\sim} \QCoh(X)(X_{\fppf})$; note that these are the little sites.
What about the big sites?
There are similar equivalences between the three corresponding big sites, but in general, $\Qcoh(X_{\Zar}) \neq \QCoh(X_{\zar})$.

For example, a quasicoherent sheaf on the big Zariski site is a quasicoherent sheaf on every $X\dash$scheme and morphisms between various pullbacks.
This isn't as affected by what sheaf you have on $X$ itself.
:::

:::{.remark}
Étale descent data for schemes is not quite the same as an algebraic space: it yields an algebraic space, but the data is not literally the same.
:::

## Gaps

:::{.claim}
The category of abelian sheaves on the $X_{\et}$ is an abelian category with enough injectives.
:::

With this in hand, we can use the formalism of derived functors to define étale cohomology:

:::{.definition title="Étale Cohomology"}
\[  
H^i(X_\et, \zlz) \da R^i \Gamma(X_\et, \underline{ \zlz} )
.\]
:::
The crucial ingredient (mentioned last time) is the following:

:::{.theorem title="Sheafification for Sites"}
For $\tau$ a site, the forgetful functor $\Sh(\tau) \to \presh(\tau)$ has a left adjoint (**sheafification**).
:::

We'll prove this for the étale site, just Google "sheafification for sites" to find more general proofs.
Note that this is actually the inclusion of a full subcategory.
Before the proof, we'll need a few operations in order to imitate the usual proof that sheafification exists for usual sheaves.
This is done by constructing the *espace étalé* out of the stalks and define the sheafification to be sections.
The operations we'll need are:

### Pushforwards 

For $f: \tau_1 \to \tau_2$ a continuous map of sites, this was a reversed functor preserving fibers products and covering families.
For $\mathcal{G}\in \Sh(\tau_1)$ we constructed $f_* \mathcal{G}$, and the exercise was to show that this is a sheaf.

:::{.example title="?"}
Let $f:X\to Y$ be a map of schemes, this induces a map $f: X_\et \to Y_\et$ where each $U/Y$ comes from $U\cross_Y X$ over $X$.
:::

:::{.example title="?"}
Suppose $k=\bar k$ is a field and we have $\iota_{\bar X}:\spec k\to X$.
We have $\Sh\qty{\qty{\spec k}_{\et}} = \Set$, since an étale cover of $\spec k$ is a disjoint union of copies of itself.
If you show what the value of a sheaf on $\spec k$, you know it on any disjoint union of them since there are a lot of sections.
Moreover, any disjoint union of copies of $\spec k$ can be covered by copies $\spec k$ itself by definition.


:::{.exercise title="?"}
Show this!
:::

What is the pushforward?
\[  
\qty{\iota_{\bar x}}_* \mathcal{F}(U\to X) = \mathcal{F}(U\cross_X \bar x)
= F\qty{\disjoint \spec k}
= \prod \mathcal{F}\spec k
,\]

where the number of copies appearing is the number of preimages of $\bar x$ in $U$, and the last equality follows from the sheaf condition.
:::

:::{.definition title="Skyscraper Sheaf"}
$\qty{\iota_{\bar x}}_* \mathcal{F}$ is called the **skyscraper sheaf**.
:::

### Pullbacks 

In the usual setting, to define a pullback of sheaves you take an direct limit to compute the value on an open set $U$, which only yields a presheaf and thus requires sheafifying.
We don't know how to sheafify yet, so we can't yet define pullbacks in general.
We can define pullbacks to a geometric point though:

:::{.definition title="Pullbacks"}
Let $\iota_{\bar x}: \spec k \to X$ with $k = \bar k$ and set $\mathcal{F}_{\bar x} = \iota_{\bar x}^* \mathcal{F}$ for $\mathcal{F}\in \Sh(X_{\et})$.
The LHS is a set and the RHS is a sheaf on $\qty{\spec k}_{\et}$.
We then define
\[  
\mathcal{F}_{\bar x} \def \directlim_{(U, u)} \mathcal{F}(U)
,\]
where the limit is taken over diagrams of the form
\begin{tikzcd}
\bar u \ar[r]\ar[d] & U\ar[d] \\
x \ar[r, "\iota_{\bar x}", hooked] & X
\end{tikzcd}
where $\bar u$ is a geometric point and $Y\to X$ is étale.
:::

:::{.remark}
We don't have to work at a closed point.
Taking $\spec k$ to be the algebraic closure of the function field of $X$ is $X$ is irreducible.
:::

:::{.example title="?"}
Let $\mathcal{F} = \underline{\zlz}$ and $\bar x\injects X$ any geometric point.
Then the pullback is given by $\iota_{\bar x}^* \underline{\zlz} = \zlz$.
If $U$ had more than one connected component, then the first definition would involve a limit over $\mathcal{F}(U)$ which are all copies of $\zlz$.
But given this, you can always find a connected covering.
So the $(U, \bar u)$ which are *connected* are actually cofinal.[^cofinal_notes]

[^cofinal_notes]: 
Note that having any cofinal diagrams in a limit means that the limit will only see those.

:::

:::{.example title="?"}
Let $\mathcal{F} = \OO_{X}^{\et}$, then the pullback is $\iota_{\bar x}^* \OO_X^{\et} = \OO_{X\bar x}^{\mathrm{sh}}$, which is the strict Henselization (where we're picking up the version that has an algebraically closed residue field).
:::


