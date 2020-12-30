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
\]
arising from the SES 
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
Best reference: Giraud, "Cohomologie nonabeliene"





