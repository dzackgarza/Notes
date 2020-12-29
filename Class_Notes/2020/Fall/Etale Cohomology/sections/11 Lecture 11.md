# Lecture 11

Last time: we saw the Leray spectral sequence, but no examples yet, so that's what we'll do now.
We had $X \mapsvia{f} Y \mapsvia{g} Z$ to which we associated the spectral sequence $R^i f_* R^jf_*(\wait) \abuts R^{i+j}(g\circ f)_* (\wait)$.
To deduce existence we used that pushforwards preserve injectives, and we looked at some $E_2$ differentials.

:::{.example title="?"}
Let $X \mapsvia{\pi}  Z \da \spec k$, where $k\neq \bar k$ necessarily. 
The spectral sequence for the functors $\pi_*, \Gamma$ yields the Leray spectral sequence $H^i(k, R^j \pi_* \mathcal{F}) \abuts H^{i+j}(X_\et, \mathcal{F})$.
The LHS is the étale cohomology of $\spec k$, i.e. Galois cohomology.
The Galois module corresponding to $R^j \pi_* \mathcal{F}$ is $H^j(X_{k^{s}}, \mathcal{F})$
by taking the $\bar k$ points of this functor
So the Leray spectral sequence yields
\[  
H^i(k, H^j(X_{k^{s}, \et}, \mathcal{F} )) \abuts H^{i+j}(X_\et, \mathcal{F})
.\]

Consider $k$ a finite field and $X_{/k}$ a smooth projective variety.
Then the Galois cohomology is given by
\[  
H^i(k, V) 
=
\begin{cases}
V^G & i = 0 \hspace{4em}\text{the invariants}\\
V_G & i = 1\hspace{4em}\text{the coinvariants}.
\end{cases}
\]
This follows from computing the cohomology of $\hat \ZZ$.
Supposing we knew that the cohomological dimension of such a variety $X$ was %$
:::
