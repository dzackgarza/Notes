# Lecture 12

## Brauer Groups

Goal: for $C$ a curve over $k=\bar k$, we've computed
\[ 
H^i(C, \GG_m) 
= 
\begin{cases}
\OO_C\units(C) & i=0\\
\Pic(C) & i=1 \\
0 & i > 1
\end{cases}
.\]
Currently $i>1$ is a mystery, so today we'll look at $i=2$.
Recall that we've reduced this to the Galois cohomology of the function field $H^i(k(C), \GG_m)$ and of the strict Henselization
[^strict_hensel]
$H^i(K_{\bar x}, \GG_m)$.

[^strict_hensel]: 
The stalk of the structure sheaf, $\OO_{C,x}$.

Today we'll try to understand the Galois cohomology of a field with coefficient in $\bar{k}\units$, or $\GG_m$ thought of as a sheaf on the étale site.
We'll discuss $i=2$, and a general principle in group cohomology is that if one understands $i=1, 2$ then one can often understand all degrees.

In general, $H^1$ has a geometric interpretation: torsors.
$H^2$ 
is much harder: they classify more general objects called **gerbes**.
A miracle is that 
$H^2(\GG_m)$ 
has real meaning, and is very closely related to real physical objects (certain torsors).
Recall that we defined the *cohomological Brauer group of $X$*
(\cref{def:cohom_brauer_group}) as 
\[	
\Br^{\coh }\da \Br'(X) \da H^i(X_\et, \GG_m)_{\tors }
.\]

We also started defining the Brauer group by considering 
\[	
\Union_n \ts{\text{étale locally trivial } \PGL_n\dash\text{torsors}}
\mapsvia{\delta}
H^2(X_\et, \GG_m)
,\]
and defining $\Br(X) \da \im f$ as a set, which is a reasonably concrete geometric object.
This map came from a LES in cohomology, coming from a SES of sheaves, not all of which were abelian.
The definition of 
$\delta$ 
was the boundary map of 
\[\label{eq:12_union_1}
\Union_n H^1(X_\et, \PGL_n)
\mapsvia{\delta}
H^2(X_\et, \GG_m)
\]
arising from the SES of sheaves of groups on 
$X_\et$,
\[	
1 
\to \GG_m 
\mapsvia{} 
\GL_m
\mapsvia{}
\PGL_n \to 1
.\]
We argued last time that this was exact in the Zariski topology since the RHS map was a 
$\GG_m\dash$ 
torsor and thus Zariski locally trivial.
What does 
$\delta$ 
mean?
[^reference_verdier]

[^reference_verdier]: 
Best reference: Giraud, "Cohomologie non Abelienne".


:::{.remark}
Making the LES here is a little subtle.
You get a long exact sequence of *sets* here which terminates at the 
$H^2$ 
we're interested in, although one usually doesn't get a map of the form
$H^1(C) \to H^2(B)$ 
for a SES $A \mapsvia{}B \mapsvia{}C$, you need that $A$ is abelian (or in the center).
:::

We'll now try to make
$\delta$ 
explicit in terms of Čech cohomology, which is the only way we have to make sense of the LHS set in \cref{eq:12_union_1}.
We defined it to be the set of étale locally trivial 
$\PGL_n\dash$ 
torsors, which has a description in terms of 
$\Hc^1$ 
: the boundary map doesn't usually make sense for a nonabelian group, but it does in very low degrees such as $i=1$.
So we need to implement the snake lemma.
Start with 
$[T]\in H^i(X_\et, \PGL_n)$
where $T$ is a $\PGL_n\dash$ torsor split by $U\mapsvia{}X$.
On $U\cross_X U$, descent data is given by a section $\Gamma(U\cross_X U, \PGL_n)$ as a sheaf.
This is because descent data is an isomorphism on this double intersection and an automorphism of $\PGL_n$ is the same as a section to $\PGL_n$.
This descent data satisfies the cocycle condition.
How do we apply the boundary map to an element in the Čech complex?
After refining $U$ we can lift this descent data to a section $s\in \Gamma\qty{U\cross_{X}U,GL_{n}}$.
Note that $H^{2}\qty{\GG_{m}}$ is represented by a section to $\GG_{m}$ of $U\cross_{X}U\cross_{X}U$.
We started with something satisfying the cocycle condition but lifted in an arbitrary way, so it may not still satisfy the cocycle condition.
We can write 
\[	
\pi_{23}^{*}\pi_{12}^{*}s \qty{\pi_{13}s}\inv
\in \Gamma\qty{U\cross_{X}U\cross_{X}U, \GG_{m}}
.\]

A priori it's just a section to $\GL_{n}$ but we know that this goes to 1 in $\PGL_{n}$, meaning it must comes from $\GG_{m}$.
The LHS is a 2-cocycle representing an element of $H^{2}\qty{X_{\et}, \GG_{m}}$.

:::{.exercise title="?"}
Check that $d$ of this element is zero.
:::


:::{.slogan}
$\delta\qty{[T]}$ is the obstruction to lifting a $\PGL_{n}\dash$torsor $T$ to a $\GL_{n}\dash$torsor.
If this class vanishes, a lift exists.
:::


:::{.remark}
This is what you might expect: the image of something coming from a boundary map is the obstruction to coming from the previous map.
This class is called the **Brauer class of $T$**.
:::

We've just mapped from a set to a group, so we don't know that the image is a group yet, and we don't yet know that the image is in $\Br^{\coh}$ since we don't know if the image is torsion.

### Geometric Interpretations of $\PGL_{n}\dash$Torsors Brauer Classes

There is a general principle:
suppose $T\in\Sh^{\set}\qty{X_{\et}}$ and $G = \ul{\Aut}\qty{T}$ as a sheaf, whose sections are given on an open $U$ by pulling back $T$ to $U$ and compute its automorphisms, where for example $T$ is a scheme.
There is a natural bijection

\[
\correspond{\text{ Locally split } \\ G\dash\text{torsors}}
&\mapstofrom
\correspond{\text{ forms of  } T}
.\]
An example of this has come up before: namely that $\GL_{n}\dash$torsors corresponded to vector bundles.
This is recovered by taking $T$ to be the trivial vector bundle and $G=\GL_{n}$
Here a **form** is defined to be a sheaf on $X_{\et}$ locally isomorphic to $T$.
The map here is given by sending a form $F$ to $\ul{\mathrm{Isom}}\qty{F, T}$.
This is locally split since $F$ is locally trivial, i.e. locally isomorphic to $T$, and so base-changing to some cover where $F$ will make this torsor split.
The reverse map is sending $\tau \to \qty{\tau\cross T}/G$, taking the sheaf quotient, which gets rid of $\tau$ and making the fibers isomorphic to $T$ instead.


:::{.example title="?"}
$\GL_{n}\dash$torsors correspond to vector bundles.
Note that this isn't an equivalence of categories:
there are maps of vector bundles which don't come from maps of torsors, e.g. any map that is not an isomorphism.
Here the left/right arrows mean that there is a bijection between *sets*, up to isomorphism on each side.
:::


:::{.example title="?"}
Let $G=\PGL_{n}$, then what are objects with automorphism group $\Aut\qty{G} = \PGL_{n}$?
An example that works here is $\Aut_{x}\qty{\PP_{x}} = \PGL_{n}$.
:::


:::{.exercise title="?"}
You may have seen this stated over an algebraically closed based field, but (nontrivially) this holds over a general base.
Prove this.

*(Hint: you may need to use the theorem on formal functions or formal GAGA.)*

:::


:::{.corollary title="?"}
There is a natural bijection
\[
\correspond{\PGL_{n}\dash\text{torsors}}
&\mapstofrom
\correspond{\text{Forms of } \PP^{n-1}}
\]
These are referred to as **Severi-Brauer $X\dash$Schemes**
[^sev-brauer-var]
.

[^sev-brauer-var]: 
If $x = \spec k$ is a point, then 
these are referred to as **Severi-Brauer Varieties**.

:::


:::{.example title="?"}
The algebra $A\da \Mat_{n\cross n}$ has $\Aut(A) = \PGL_{n}$, which is usually referred to as the *Noether-Skolem* theorem.
Thus there is a bijection
\[
\correspond{\PGL_n\dash\text{torsors}}
&\mapstofrom
\correspond{\text{Forms of } \Mat_{n\cross n} = \Endo_{\OO_{x}} (\OO_{x}^{n})}
\]
The RHS are referred to as **Azumaya algebras**, and over a field these are central simple algebras.
There is a fact (which we may see) that such algebras over a field are always division algebras.
:::

:::{.question}
How can we combine these to send forms of $\PP^{n-1}$ directly to an Azumaya algebra?
:::

:::{.remark}
Key takeaway: the Brauer group (which we'll soon prove is a group) has concrete representative.
These are the forms of $\PP^{n-1}$, which you can think of as étale locally trivial $\PP^{n-1}$ bundles, or forms of a matrix algebra, i.e. coherent sheaves of algebras which étale locally endomorphisms of the trivial bundle.
:::

## Twisted Sheaves

People usually think about Brauer groups as one of these two objects.
We'll discuss a third way.
When we defined the boundary map, we took descent data from $\PGL_n$, i.e. elements of this group on double intersections, and we lifted those to $\GL_{n}$.


:::{.definition title="Twisted Sheaves"}
Let $U \to X$ be an étale cover and suppose $\alpha \in \Gamma(U \cross_{X} U \cross_{X} U, \GG_{m})$ represents $[\alpha] \in H^{s}i(X_{\et}, \GG_{m})$.
Then an **$\alpha\dash$twisted sheaf** is a quasicoherent sheaf on $U$, an isomorphism $\varphi:\pi_{1}^{*} \mathcal{F} \ms \pi_{2}^{*} \mathcal{F}$ (which looks like descent data) which satisfies the cocycle condition up to $\alpha$, i.e. 
\[	
\pi_{23}^{*} \phi \circ \pi_{12}^{*}\phi = \alpha \pi_{13}^{*}\phi
.\]

:::

:::{.remark}
Note that if $\alpha$ were the constant function 1, this would be the descent data for a quasicoherent sheaf, so we're twisting what it means to be a sheaf.
This is exactly what we did when defining a $\PGL_{n}\dash$torsor, where we lifted to get isomorphisms between the $\GL_{n}$ sheaves on the double overlaps.
These failed to satisfy the cocycle condition, and the Brauer class measured this failure.
So in defining $\delta$, our intermediate step was a twisted sheaf.
:::

So we'll define the category $\Qcoh(X, \alpha)$ whose objects are $\alpha\dash$twisted sheaves and whose morphisms are morphisms of sheaves on $U$ commuting with $\varphi$.


:::{.example title="?"}
$\QCoh(X, 1)$ is canonically isomorphic to $\Qcoh(X)$, which is the very famous theorem of *étale descent*.
:::

### Categorical Properties

:::{.proposition title="?"}
Let $\alpha, \alpha'$ be two cocycles for $\GG_{m}$.
Then

1. $[\alpha]\in\Br(X)$ (so its in the image the boundary map from $\PGL_{n}$) iff there exist a twisted vector bundle.[^proved_already]

2. $\Qcoh(X,\alpha)$ is an abelian category (easy) and has enough injectives (hard) is $X$ is "nice".

3. There is a functor 
\[	
\tensor: \QCoh(X, \alpha) \cross \Qcoh(X, \alpha') \mapsvia{} \QCoh(X, \alpha \alpha')
,\]
  where is $\alpha,\alpha'$ are defined on different covers than one passes to a common refinement, and a functor[^how_to_hom]
\[	
\hom: \QCoh(X, \alpha) \cross \Qcoh(X, \alpha') \mapsvia{} 
\QCoh(X, \alpha' \alpha\inv)
.\]

4. There are functors 

\[	
\Sym^{n}, \Wedge^{n} \mapsvia{} \Qcoh(X, \alpha) \mapsvia{} \Qcoh(X, n \alpha)
.\]

5. $\Qcoh(X, q) \ms \Qcoh(X)$.


[^how_to_hom]: 
This and the tensor functor come from homming (resp. tensoring) the sheaves together and using the pseudo descent data.


[^proved_already]: 
Note that we've proved this already since $\Br = \im \delta$, but part of our construction of $\delta$ involved constructing an $\alpha\dash$twisted sheaf out of a $\PGL_{n}\dash$torsor.

:::


:::{.proof title="Sketch/Discussion"}
\envlist

For (1), if $\alpha\in \Br(X)$, then there is $\PGL_{n}\dash$torsor whose boundary is $\alpha$, and our construction of $\delta$ yielded an $\alpha\dash$twisted vector bundle.
  Given such a bundle, one can obtain a Brauer class by constructing a twisted form a $\PP^{n}$: take the projectivization.
  Then the quasi descent data becomes actual descent data since the failure was precisely in scalars, which you're now modding out by.

For (3), just work out what happens to $\alpha, \alpha'$ when tensoring or homming.
Similarly, all of the rest except for **(2)** follow from definitions.
:::


:::{.exercise title="?"}
Try to prove (3) and (4).
:::

### The Brauer Group is a Group

:::{.corollary title="?"}
$\Br(X)$ is a group.
:::

:::{.proof title="?"}
Let $\mathcal{E}, \mathcal{E}'$ be $\alpha,\alpha'\dash$twisted vector bundles respectively, we want to show that there exists an $\alpha\alpha'\dash$twisted vector bundle.
We can take $\mathcal{E}\tensor \mathcal{E}'$, and then just note that having a twisted vector bundle is the same as having a Brauer class.
For inverses, suppose $\alpha$ is a Brauer class and $\mathcal{E}$ is a twisted vector bundle.
To get an $\alpha\inv\dash$twisted vector bundle, one can just take the dual $\mathcal{E}\dual$.
:::

## Results On Twisted Bundles


:::{.proposition title="?"}
Suppose that $\alpha$ is a 2-cocycle for $\GG_{m}$, then $[\alpha]$ is trivial iff there exists an $\alpha\dash$twisted line bundle.
:::

:::{.lemma title="?"}
If $[\alpha] = [\alpha']$, then $\Qcoh(X,\alpha) \simeq \Qcoh(X, \alpha')$.
:::

Note that this is not a canonical equivalence.

:::{.exercise title="?"}
Prove this lemma.
:::

:::{.proof title="of proposition, $\implies$"}
If $\alpha$ is trivial, then $[\alpha] = [1]$ in which case $\Qcoh(X,\alpha) \simeq \Qcoh(X)$ are equivalent categories and $\OO_{X}$ is an honest line bundle.
:::

:::{.proof title="$\impliedby$"}
Suppose you have an $\alpha\dash$twisted line bundle.
Then writing down a line bundle is done by taking a cover, taking the trivial bundle on each open, and then the double intersections have gluing data in the form of $s\in \Gamma(\GG_{m})$.
To prove $\alpha$ is a trivial Brauer class, note that the descent data (gluing data) is the same as a section $\beta\in \Gamma(U \cross_{X} U, \GG_{m})$.
Then the Čech differential $\check{\delta}$ satisfies $\check{\delta}(\beta)=\alpha$, and thus by definition $\alpha = 0 \in H^{2}(\GG_{m})$.
:::


:::{.corollary title="?"}
Suppose $\mathcal{E}$ is an $\alpha\dash$twisted vector bundle of rank $n$.
Then $[\alpha]\in H^{2}(X_{\et}, \GG_m)$ is $n\dash$torsion.

:::


:::{.proof title="?"}
We've just proved this for $n=1$, so for the general case, note that we can consider $\Wedge^{n}\mathcal{E}$ is a $\alpha^{n}\dash$twisted line bundle.
Then by the previous proposition, $[\alpha^{n}] - [\alpha]^{n}$ is trivial.
:::


:::{.corollary title="?"}

\[	
\Br(X) \subseteq \Br'(X) = H^{2}(X_{\et}, \GG_{m})_{\tors}
.\]


:::


### Examples of Brauer Classes

:::{.example title="?"}
. $X\da \ts{ x^{2}+y^{2}+z^{2} = 0}$ over $\RR$ is a smooth conic with no rational points.
We now via stereographic projection that a smooth projective conic with a rational point would be isomorphic to $\PP^{1}$, so this becomes isomorphic to $\PP^{1}$ after base-changing to $\CC$ where it does have a rational point.
So $X_{/\CC} \cong \PP^{1}$, which implies that $X$ is a twisted form of $\PP^{1}_{\RR}$.
In fact, $\delta\qty{[X]}$ generates $\Br(\RR) = \ZZ/2\ZZ$.
:::


:::{.example title="?"}
2. Hamilton's Quaternions are a division algebra and hence an Azumaya algebra representing the same element.

:::


:::{.remark}
Given an $\alpha\dash$twisted sheaf $\mathcal{E}$, taking the projectivization yields a Severi-Brauer.
Since $\mathcal{E}$ was a vector bundle with descent data twisted by a scalar and projectivizing kills scalars, this yields honest descent data.
But descent data is not effective for schemes.
So to say that this is actually a variety instead of a sheaf representing this descent, an extra argument is needed: projective space is anti-canonically polarized.
Descent data for a polarized variety -- a variety plus an ample line bundle -- then descent is effective, and projective space has a canonical polarization given by the dual of the canonical sheaf.

Taking $\Endo(\mathcal{E})$ yields an Azumaya algebra since taking $\Endo$ here kills the twisting cocycle and yields an honest sheaf of algebras.
It's locally isomorphic to a matrix algebra since passing to any cover where $\mathcal{E}$ is trivialized yields a matrix algebra.
Moreover, there is a way to go from Azumaya algebras to Severi-Brauers, by taking moduli of certain ideals,
so we have a diagram


\begin{tikzcd}
&
\ts{\text{Severi-Brauers}}
\\
\mathcal{E} \in \ts{\text{Twisted sheaves}}
  \ar[ru, "\PP(\wait)"]
  \ar[rd, "\Endo(\wait)"']
&
\\
&
\ts{\text{Azumaya algebras}}
  \ar[uu, dotted]
\end{tikzcd}
:::


:::{.example title="3"}
An example from class field theory: $\Br(\QQ_{p}) = \QQ/\ZZ$.
:::


:::{.remark}
Over a field, any 2-torsion Brauer class is represented by a quaternion algebra: using the usual formula where e.g. $i^{2} = -1$, you change $-1$ to some other numbers.
In particular, the coset $[{1\over 2}] \in \QQ/\ZZ$ is represented by an algebra resembling the usual quaternions.
:::


:::{.example title="?"}
There is a map

\[	
0 \mapsvia{} \Br(\QQ) \mapsvia{} \bigoplus_{r\in P_{\QQ}} \Br(\QQ_{r})
\mapsvia{\epsilon} \QQ/\ZZ \mapsvia{} 0 
,\]
where $P$ is the set of places of $\QQ$ including $\infty$ (i.e. $\RR$) and the summands are the completions of $\QQ$ at each place.

:::


:::{.exercise title="Fun!"}
Use the Severi-Brauer interpretation to show that if $\alpha\in \Br(\QQ)$ then $\ro{\alpha}{\QQ_{\nu}} = 0$ for all $\nu$.
:::

How to interpret multiplication: let $\mathcal{A}_{1}, \mathcal{A}_{2}$ be Azumaya algebras representing $\alpha_{1}, \alpha_{2}$, then $\mathcal{A}_{1} \tensor \mathcal{A}_{2}$ is an Azumaya algebra representing $\alpha_{1} \cdot \alpha_{2}$.
This follows because being an Azumaya algebra is a local property, so one can just pass to a cover where this reduces to a fact that matrix algebras are closed under tensor products.

Let $\mathcal{P}_1 \da \PP(\mathcal{E})$ and $\mathcal{P}_2 \da \PP(\mathcal{E}')$ are Severi-Brauers representing $\alpha_1, \alpha_2$ respectively.
Then $\PP(\mathcal{E} \tensor \mathcal{E}')$ represents $\alpha_1 \alpha_2$.
This is because Severi-Brauers come with a natural embedding into projective space given by the canonical line bundle, and this yields a geometric way to write down this space.


:::{.question}
It's not easy to write down equations for Severi-Brauers.
We can do this for curves (conics), but surfaces are difficult and we don't know how to do much for threefolds.
:::


:::{.question}
(The Period-Index question) Given $\alpha\in\Br(X)$, what is the minimum rank or the $\gcd$ of the ranks of an $\alpha\dash$twisted vector bundle?
We can do this for 2-torsion over a field, but this is generally a hard question.
In general, if you have an $\alpha\dash$twisted bundle of rank $n$ then it's $n\dash$torsion, but the converse is known by examples not to be true.
Asking for explicit (and small) representatives of these objects is generally a hard question.
:::

Next time: use this theory to understand $H^i(k, \GG_m)$ for $k$ a field.
We'll try to prove the following:
  
:::{.theorem title="?"}
\envlist

1. If $K(C)$ is the function field of a curve over $k = \bar k$, then $H^2(K(C), \GG_m) = 0$ and thus $\Br(K) = 0$.

2. If $K_{\bar k}$ is strictly Henselian, then $H^2(K_{\bar x}, \GG_m) = 0$.
:::

This will be the key ingredient in computing the étale cohomology of curves.















