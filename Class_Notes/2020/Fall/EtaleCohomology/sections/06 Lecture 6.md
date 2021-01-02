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

:::{.definition title="Étale Cohomology" ref="def:etale_cohomology"}
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
x \ar[r, "\iota_{\bar x}", hook] & X
\end{tikzcd}
where $\bar u$ is a geometric point and $Y\to X$ is étale.
$\mathcal{F}_{\bar x}$ is referred to as the **stalk of $\mathcal{F}$ at $\bar x$**.
:::

:::{.remark}
We don't have to work at a closed point.
Taking $\spec k$ to be the algebraic closure of the function field of $X$ is $X$ is irreducible.
:::

:::{.example title="?"}
Let $\mathcal{F} = \underline{\zlz}$ and $\bar x\injects X$ any geometric point.
Then the pullback is given by $\iota_{\bar x}^* \qty{\underline{\zlz}} = \zlz$.
If $U$ had more than one connected component, then the first definition would involve a limit over $\mathcal{F}(U)$ which are all copies of $\zlz$.
But given this, you can always find a connected covering.
So the $(U, \bar u)$ which are *connected* are actually cofinal.[^cofinal_notes]

[^cofinal_notes]: 
Note that having any cofinal diagrams in a limit means that the limit will only see those.

:::

:::{.example title="?"}
Let $\mathcal{F} = \OO_{X}^{\et}$, then the pullback is $\iota_{\bar x}^* \OO_X^{\et} = \OO_{X\bar x}^{\mathrm{sh}}$, which is the strict Henselization (where we're picking up the version that has an algebraically closed residue field).
:::

Some useful things about stalks: we can check things like isomorphisms locally on them.

:::{.lemma title="?"}
Suppose $\mathcal{F}, \mathcal{G}$ are sheaves of abelian groups on $X_{\et}$.
Then TFAE

1. $\mathcal{F}\to \mathcal{G}$ is an epimorphism,
2. $\mathcal{F}\to \mathcal{G}$ is locally surjective, i.e. given a section $s\in \mathcal{G}(U)$ there exists $U'\to U$ such that $\ro{s}{U'}$ is the image of some $s' \in \mathcal{F}(U)$.[^more_details_1]
3. $\mathcal{F}_{\bar x} \to \mathcal{G}_{\bar x}$ is surjective for all geometric points $\bar x\to X$.

[^more_details_1]: 
I.e. a given section of $\mathcal{G}$ may not be in the image of $\mathcal{F}$, but will be after refining the cover.

:::

:::{.proof title="2 $\implies$ 1"}
Suppose we have
\begin{tikzcd}
\mathcal{F} \ar[r] &
 \mathcal{G} \ar[r, shift right=0.75ex, "a"'] \ar[r, shift left=0.75ex, "b"] &
\mathcal{H}
\end{tikzcd}
where the 2 compositions agree, then we want to show that $a=b$.
Let $s$ be a section of $\mathcal{G}$ on $U$, we want to know that $a(s) = b(s)$.
By (2), we can replace $s$ with $s'$ coming from $\mathcal{F}$, so $a(s') = b(s')$ since the compositions agree.
:::

:::{.proof title="1 $\implies$ 3"}
We want to show that given an epimorphisms, the map on every stalk is surjective.
Assume $\mathcal{F}_{\bar x} \to \mathcal{G}_{\bar x}$ is not surjective, and thus has a nontrivial cokernel $\Lambda$.
We can construct 2 maps to the skyscraper sheaf:
\begin{tikzcd}
 \mathcal{F} \ar[r] &
 \mathcal{G} \ar[r, shift right=0.75ex, "0"'] \ar[r, shift left=0.75ex, "f"] &
  \qty{\iota_{\bar x}}_* \Lambda
\end{tikzcd}
where $f$ is the "natural map" given by taking a section to $\mathcal{G}$ and considering its stalk.
Since $\Lambda$ was the cokernel, both compositions from $\mathcal{F}$ are zero:
\begin{tikzcd}
 \mathcal{F} \ar[r]\ar[rr, bend left, "0"] \ar[rr, bend right, "0"'] &
 \mathcal{G} \ar[r, shift right=0.75ex, "0"'] \ar[r, shift left=0.75ex, "f"] &
  \qty{\iota_{\bar x}}_* \Lambda
\end{tikzcd}
which forces $\Lambda = 0$, a contradiction.
:::

:::{.proof title="3 $\implies$ 2"}
Given $s\in \mathcal{G}(U)$, we want to produce a $U' \to U$ such that $\ro{s}{U'}$ comes from $\mathcal{F}$.
Picking any $\bar x\in U$, since $\mathcal{F}_{\bar x} \to \mathcal{G}_{\bar x}$ is surjective, there is some étale neighborhood of $\bar x$, say $(V, \bar v)$ where $V\to X$ and $\bar v \mapsto \bar x$:
\begin{tikzcd}
\bar v \ar[r]\ar[d] & V\ar[d] \\
x \ar[r, "\iota_{\bar x}", hook] & X
\end{tikzcd}
Moreover, $\ro{s}{V}$ is in the image of $\mathcal{F}$.
The only problem is that $V$ is not a cover of $U$, so we extend it by choosing $\bar{x'}$ not in the image of $V$, and continue in this way until it forms a cover.
:::

:::{.remark}
This terminates if the scheme is quasicompact, otherwise you may need transfinite induction and thus the axiom of choice.
The morphisms are still étale if you take disjoint unions, since you only need to check local properties: locally finite presentation, unramified, and flatness.
:::


:::{.lemma title="?"}
Suppose $0 \to \mathcal{F}\to \mathcal{G}\to \mathcal{H}$ is a sequence of abelian sheaves on $X_{\et}$, then TFAE

1. This sequence is exact,

2. $0 \to \mathcal{F}(U) \to \mathcal{G}(U) \to \mathcal{H}(U)$ is exact for all $U$,

3. $0 \to \mathcal{F}_{\bar x} \to \mathcal{G}_{\bar x} \to \mathcal{H}_{\bar x}$ is exact for all geometric points $\bar x$.
:::

:::{.remark}
What is the difference between 1 and 2?
1 means that $\mathcal{F}\to \mathcal{G}$ is a monomorphism and the kernel of the map $f: \mathcal{G}\to \mathcal{H}$, i.e. the following diagram is an equalizer:
\begin{tikzcd}
 \mathcal{F} \ar[r] &
 \mathcal{G} \ar[r, shift right=0.75ex, "f"'] \ar[r, shift left=0.75ex, "0"] &
  \mathcal{H}
\end{tikzcd}
:::

:::{.exercise title="?"}
Prove this!
The proof used for topological spaces will work here, using the fact that direct limits preserve exactness.
:::

## Proof: Sheafification Exists for the Étale Site

We can now prove that sheafification exists for $\presh(X_{\et})$.
Recall that we have a forgetful functor from sheaves to presheaves, and we want to show it has a left adjoint.

We'll first construct an analog of the *espace étalé*:

:::{.definition title="Espace étalé for the étale site"}
For each $x\in X$, choose a geometric point $\bar x$ over $x$, and given $\mathcal{F}\in \presh(X_{\et})$ define 
\[  
\mathrm{Esp}(\mathcal{F}) \da \prod_{\bar x} \qty{\iota_{\bar x}}_* \mathcal{F}_{\bar x}
,\]
the product of skyscraper sheaves.
:::

:::{.remark}
This is a sheaf since pushforwards and products of sheaves are again sheaves.
There is a natural map of presheaves $\mathcal{F}\to \mathrm{Esp}(\mathcal{F})$ given by sending sections to germs.
:::

:::{.definition title="Sheafification $\mathcal{F}^a$"}
The sheaf $\mathcal{F}^a$ is the subsheaf of $\mathrm{Esp}(\mathcal{F})$ generated by $\mathcal{F}$, i.e.
\[  
\mathcal{F}^a(U) \subseteq \mathrm{Esp}(\mathcal{F})(U), \mathcal{F}^a(U) = \ts{s\in \mathrm{Esp}(\mathcal{F})(U)  \st \text{ locally } s\in \im \mathcal{F}}
.\]
:::

:::{.remark}
Here $\mathrm{Esp}(\mathcal{F})$ is like the product of all of the stalks, and $\mathcal{F}^a$ is the *espace étalé* inside of it.
:::

:::{.proposition title="?"}
$\mathcal{F}^a$ is a sheaf.
:::

:::{.proof title="?"}
This is a subfunctor of a sheaf, and thus a presheaf.
It's *separable*, meaning the map in the equalizer diagram is injective, and a section is determined by what it is locally.
This is true for $\mathrm{Esp}(\mathcal{F})$ and thus for $\mathcal{F}^a$.
Gluing follows from the fact that it is locally defined.
:::

:::{.proposition title="?"}
$\mathcal{F}^a$ is left adjoint to the forgetful functor.
:::

:::{.exercise title="Important!"}
Prove this!
The proof used for topological spaces works here.
:::

:::{.remark}
We've used a trick in the proof that uses some geometry to avoid needing to apply sheafification twice to obtain a sheaf.
For general sites, there is an analog of the plus construction.
:::

:::{.corollary title="?"}
Colimits exists in $\Sh(X_\et)$.
:::

:::{.proof title="?"}
Colimits exist for presheaves, since colimits always exists for functor categories valued in a category where colimits exist since they're computed pointwise.
Left adjoints send colimits to colimits, so in general we'll construct colimits of sheaves by taking colimits of presheaves and then sheafifying.
This is true because colimits are defined by mapping *out*, and the definition of left adjoints is that one knows how to map out of it.
:::

:::{.corollary title="Sheaves on the Étale Site Form an Abelian Category"}
$\Sh(X_\et)$ is an abelian category.
:::

:::{.proof title="?"}
\envlist

- Limits exist since they can be defined pointwise.
- Cokernels exists since they are colimits: $\cok(\mathcal{F} \to \mathcal{G})$ is given by the coequalizer of
\begin{tikzcd}
 \mathcal{F} \ar[r, shift right=0.75ex, "f"'] \ar[r, shift left=0.75ex, "0"] &
  \mathcal{G}
\end{tikzcd}
  which is a colimit.

- $\im = \coim$, which can be checked on stalks.

:::

Next time: we'll finish proving that injectives exist, and start computing.
