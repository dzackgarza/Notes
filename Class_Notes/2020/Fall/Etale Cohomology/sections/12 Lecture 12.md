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
\[	
\Union_n H^1(X_\et, \PGL_n)
\mapsvia{\delta}
H^2(X_\et, \GG_m)
\label{eq:12_union_1}
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


:::{.remark}
How can we combine these to f
:::



















