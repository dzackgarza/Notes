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

