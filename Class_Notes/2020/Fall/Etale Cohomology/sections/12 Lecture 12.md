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
$\delta\qty{[T]}$ is the obstruction to lifting $T$ to a $\GL_{n}\dash$torsor.
:::



















