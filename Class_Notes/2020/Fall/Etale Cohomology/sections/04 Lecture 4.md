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
Z \ar[dd, "f"] &        & \\
               & \ar[r] & \Gamma(Z, f^* \mathcal{F}) \\
X              &
\end{tikzcd}
  is a sheaf on $X_{\Fppf}, X_{\Et}, X_{\et}$, etc.

:::


:::{.definition title="$\mathcal{F}^\text{étale}$"}
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
Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(U)$ and a morphism $f: \ro{\mathcal{F}_1}{U} \to \ro{\mathcal{F}_2}{U}$, when does $f$ come from $X$?
:::

:::{.remark}
If $X = \spec k$ and $U$ is a finite separable extension, then this question is exactly what Galois descent is about!
:::

:::{.example title="(a motivating one)"}
$U = \disjoint U_i \to X$ is a Zariski cover.
If we have a sheaf on $U$, what extra data do we need to get a sheaf on $X$?
We need isomorphisms $\ro{\mathcal{F}_i }{U_i\intersect U_j} \mapsvia{\sim} \ro{\mathcal{F}_j}{U_i\intersect U_j}$ (gluing data) where each $\mathfrak{F}_i$ is the sheaf given on $U_i$.
We also need a cocycle condition on triple intersections.
Given this data, gluing yields a sheaf on $X$.
This may be familiar from vector bundles.
Thus to give a sheaf, it suffices to specify gluing data.

Morphisms $\mathcal{F}\to \mathcal{G}$ is the same as morphisms $\ro{\mathcal{F}}{U_i} \to \ro{\mathcal{G}}{U_i}$ which commute with the gluing data.
We'd like to generalize this notion of commuting with gluing data to more general types of covers.
:::

:::{.definition title="Descent data for quasicoherent sheaves"}
Suppose $U\mapsvia{f}X$ is a morphisms, then **descent data** for a quasicoherent sheaf on $U/X$ is the following:

1. A sheaf $\mathcal{F}\in \qcoh(U)$.
2. Gluing data: If we take the fiber product of $U$ with itself, mapping to $U$ under 2 different projections[^fp_actual_open_cov],  

\begin{tikzcd}
U \cross_X U \ar[d, bend left, "\pi_1"] \ar[d, bend right, "\pi_2"'] \\
U
\end{tikzcd}
  there are isomorphisms
  \[  
  \phi: \pi_1^* \mathcal{F} \mapsvia{\sim} \pi_2^* \mathcal{F}
  .\]

3. Cocycle condition: in the following fiber product

\begin{tikzcd}
U \cross_X U \cross_X U 
\ar[d, shift  left=1.75ex] \ar[d] \ar[d,shift  right=1.75ex,  "\pi_{ij}"'] \\
U\cross_X U
\end{tikzcd}
  we have $\pi_{23}^* \phi \circ \pi_{12}^* \phi = \pi_{13}\phi$.

[^fp_actual_open_cov]: 
If $U$ was an open cover, this would correspond to intersections of elements in the cover.

:::

:::{.exercise title="?"}
Check that this agrees with the previous notions when $U\to X$ is a Zariski cover.
:::

:::{.definition title="Morphisms of descent data"}
Given descent data $(\mathcal{F}, \phi)$ and $(\mathcal{G}, \psi)$, a **morphism** is a morphism $h: \mathcal{F} \to \mathcal{G}$ of quasicoherent sheaves on $U$ such that the following diagram commutes:

\begin{tikzcd}
\pi_1^* \mathcal{F} 
\ar[r, "\pi_1^*h"] 
\ar[d, "\phi"'] 
& \pi_1^* \mathcal{G} \ar[d, "\psi"] \\
\pi_2^* \mathcal{F} \ar[r, "\pi_2^*h"'] 
& \pi_2^* \mathcal{G} 
\end{tikzcd}

:::

## Descent Data is Equivalent to Quasicoherent Sheaves

:::{.theorem title="Descent for quasicoherent sheaves"}
Suppose $f: U\to X$ is fppf.
Then $f^*$ induced an equivalence of categories between $\qcoh(X)$ and descent data on $U/X$.
:::

:::{.remark}
This doesn't quite make sense, since we haven't covered how to get descent data from a given sheaf.
Explicitly, given $\mathcal{F}\in \qcoh(X)$, we can pullback to obtain $f^* \mathcal{F}\in \qcoh(U)$.
We now want an isomorphism
\[  
\qty{f\circ \pi_1}^* \mathcal{F} \mapsvia{\sim} \qty{f\circ \pi_2}^* \mathcal{F}
\]
on $U\cross_X U$.
We have a situation like the following:

\begin{tikzcd}
U\cross_X U 
 \ar[r, shift right=0.75ex, "\pi_2"'] \ar[r, shift left=0.75ex, "\pi_1"] 
& U
  \ar[r, "f"] 
& X
\end{tikzcd}

Since $f\circ \pi_1 = f\circ \pi_2$ in this case, pulling back the identity yields the desired isomorphism.
:::

:::{.example title="?"}
Let $U = \disjoint U_i$ be a Zariski cover of $X$, then vector bundle can be obtained from $\OO_{U_i}^{\oplus n}\in \qcoh(U_i)$.
To glue this to a vector bundle on $X$, we need isomorphism $\phi_{ij} \OO_{U_i\intersect U_j}^{\oplus n} \mapsvia{\sim } \OO_{U_i\intersect U_j}^{\oplus n}$ such that $\ro{\phi_{jk}}{U_i \intersect U_j \intersect U_k} \circ \ro{\phi_{ij}}{U_i \intersect U_i \intersect U_k} = \ro{\phi_{ik}}{U_i\intersect U_j \intersect U_k}$.
For $n=1$, this is gluing data for a line bundle.
:::

:::{.example title="?"}
Suppose $L/k$ is a Galois extension with Galois group $G$, then $\spec L \to \spec k$ is an étale cover.
Descent data on this map is a quasicoherent sheaf on $\spec L$, i.e. an $L\dash$vector space $V$, with an isomorphism $\pi_1^* V \mapsvia{\phi \sim}\pi_2^* V$ satisfying the cocycle condition.
We can compute 
\[
\spec L \times_{\spec k} \spec L = \spec L\tensor_k L = \disjoint_{L\mapsvia{\sim} L} \spec L
,\]
which is a torsor for the Galois group, and in fact is equal to $\disjoint_{\Gal(L/k)} \spec L$.
:::

:::{.exercise title="?"}
Convince yourself that descent data here is the same as Galois descent, i.e. a semilinear action.

*(Hint: you will need to use $\phi$.)*
:::

Explicitly, the theorem says

- Given a morphisms of descent data, we get a unique morphism of sheaves (fully faithful)

- If you have descent data, it comes from a sheaf (essentially surjective)

So we need to prove

1.  $f^*$ is fully faithful, inducing an isomorphism on hom sets, and

2. $f^*$ is essentially surjective.

> Reference: Neron modules by BLR.

### Proof of Theorem

Given $\mathcal{F}_1, \mathcal{F}_2 \in \qcoh(X)$, then we have a functor and thus a map 
\[
\hom_X(\mathcal{F}_1, \mathcal{F}_2) \mapsvia{f^*} \hom_U(f^*\mathcal{F}_1, f^*\mathcal{F}_2)
\]
We're not trying to show this map is a bijection, since we need more than that: the morphism should commute with the descent data.
We can produce two maps to fill in the following diagram:
\begin{tikzcd}
 & & \hom_{U\cross_X U} 
\qty{ (f\circ \pi_1)^* \mathcal{F}_1, (f\circ \pi_1)^* \mathcal{F}_2 }
\ar[dd, equal]\\
\hom_X(\mathcal{F}_1, \mathcal{F}_2)  
\ar[r, "{f^*}"]  &
\hom_U(f^*\mathcal{F}_1, f^*\mathcal{F}_2)
\ar[ru, "\pi_1^*"]
\ar[rd, "\pi_2^*"] 
& \\
 & & \hom_{U\cross_X U} \qty{ (f\circ \pi_2)^* \mathcal{F}_1, (f\circ \pi_2)^* \mathcal{F}_2   } \\
\end{tikzcd}

where these hom sets are equal since $f\circ \pi_1 = f\circ \pi_2$.

:::{.claim}
Given $g\in \Hom_U(f^* \mathcal{F}_1, f^* \mathcal{F}_2)$, this is a morphism of descent data if maps to the same element under $\pi_1^*$ and $\pi_2^*$ using the above identification of hom sets.
:::

:::{.exercise title="?"}
This follows from definitions, check that it holds.
:::

Being fully faithful is the same as the above diagram being a equalizer.
I.e., the first map $f^*$ is injective, yielding faithfulness, and fullness means that any map in the middle that has the same image under the two arrows $\pi_1^*, \pi_2^*$ comes from an element in $\hom_X(\mathcal{F}_1, \mathcal{F}_2)$.

Assuming that this is fully faithful, why do quasicoherent sheaves give sheaves on $X_{\et}$ or $X_{\fppf}$?
Being a sheaf was characterized by an equalizer diagram gotten by replacing the first hom with taking global sections of $\mathcal{F}$ on $X, U, U\cross_X U$.

:::{.remark}
Taking $\mathcal{F}_1 = \OO$ and $\mathcal{F}_2 = \mathcal{F}$, this shows that $\mathcal{F}^{\et}$ (resp. $\mathcal{F}^{\fppf}$) is a sheaf.
In this case, the first hom is global sections of $\mathcal{F}$ on $X$, the middle are global sections of $\mathcal{F}$ on $U$, and the two maps are to the double intersections.
:::

To prove this is an equalizer diagram, we'll need a lemma:

:::{.lemma title="?"}
Suppose $R\to S$ is a faithfully flat ring morphism (flat and morphisms on spec are surjective) and suppose $N\in \rmod$.
Then there is an equalizer diagram 


\begin{tikzcd}
N \ar[r] & N\tensor_R S \ar[r, bend left, "\id_N \tensor \id_S \tensor 1"] \ar[r, bend right, "\id_N \tensor 1 \tensor \id_S"'] & N\tensor_R S \tensor_R S \\
n \ar[r] & n\tensor 1 
\end{tikzcd}
:::

This is the case where $\mathcal{F}_1 = \OO$ and $\mathcal{F}_2 = \tilde N$ the quasicoherent sheaf associated to $N$, $U = \spec S \to X = \spec R$.

:::{.proof title="of lemma"}

**Step 1**:
(Amazing trick) WLOG $R\to S$ splits, so there's a map $S\to R$ such that $R\to S\to R$ is the identity.
We can tensor with $S$, i.e. push out this map along itself to obtain
\begin{tikzcd}
R \ar[d]\ar[r] & S \ar[d, "1\tensor \id_S"'] \\
S \ar[r] & S\tensor_R S  \ar[u, bend right, "\exists m"']
\end{tikzcd}
where $m$ is a section given by multiplication.

:::{.claim}
The claim is that we can replace $R$ with $S$ and $S$ with $S\tensor_R S$.
:::

:::{.proof title="of claim"}
Checking the equalizer diagram is the same as showing that the following sequence is exact:
\[  
0 \to N \to N\tensor_R S \mapsvia{f-g} N\tensor_R S\tensor_R S
,\]
where $f, g$ are the maps given in the equalizer.
It suffices to do this after tensoring with $S$, since a sequence of $R$ modules is exact iff it is exact after tensoring with $S$.
One direction is easy, since $S$ is flat, and the other direction follows from the fact that you can check on each stalk, and after tensoring the stalks are the same.
This requires checking for each point on $\spec R$ that the map on stalks is exact, but that's true because we have a surjective map and this can be checked upstairs.
:::


**Step 2**:
Suppose $R\mapsvia{f} S$ splits via a map $S\mapsvia{r} S$.
The geometric picture is that we're supposing we have a section to $U\to X$, and descending amounts to pulling back along the splitting.
We first want to check that $N\to N\tensor_R S$ is injective, which is true since we can use the map $\id_N \tensor r$ to produce a splitting.
Why is this true?
Supposing $n\in N$ maps to zero, then noting that $N\to N\tensor_R S \to N$ is the identity and thus maps $f(n)\mapsvia{\id} 0$, forcing $n=0$.

We now want to show exactness in the middle.
Define 
\[
\tilde r: S\tensor_R S &\to S \\
s_1 \tensor s_2 &\mapsto s_1 \cdot f(r(s_2))
\]
Suppose we have something in the image of the differential.
This yields
\[  
\id_N \tensor \tilde r \qty{n\tensor s\tensor 1 - n\tensor 1 \tensor s}
= n\tensor s - n\tensor f(r(s))
= n\tensor s - nr(s) \tensor 1
.\]

Thus $n\tensor s\tensor 1 - n\tensor 1\tensor s = 0$, putting this in the kernel of the differential, making the last term above equal to zero, and thus $n\tensor s = n r(s) \tensor 1$, which is in the image of the differential.
So anything in the kernel is in the image, where we've proved it for pure tensors, and it's an exercise to do it in general.
:::

:::{.remark}
Given $R\to S$ faithfully flat, you can define the **Amitsur complex**:
\[  
N \to N\tensor S \to N\tensor S^{\tensor 2} \to \cdots \to N\tensor S^{\tensor r}
,\]
where the maps are given by alternating sums of identities with a 1 in the $i$th spot.
There is a theorem that this is always exact, essentially by the same proof as above: reduce to the case where you have a section by tensoring with $S$, then use the section to build a nullhomotopy.
:::

> Next time: we'll complete the proof of fppf descent.

