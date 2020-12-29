# Lecture 11

Last time: we saw the Leray spectral sequence, but no examples yet, so that's what we'll do now.
We had $X \mapsvia{f} Y \mapsvia{g} Z$ to which we associated the spectral sequence $R^i f_* R^jf_*(\wait) \abuts R^{i+j}(g\circ f)_* (\wait)$.
To deduce existence we used that pushforwards preserve injectives, and we looked at some $E_2$ differentials.

:::{.example title="?"}
Let $X \mapsvia{\pi}  Z \da \spec k$, where $k\neq \bar k$ necessarily. 
The spectral sequence for the functors $\pi_*, \Gamma$ yields the Leray spectral sequence $H^i(k, R^j \pi_* \mathcal{F}) \abuts H^{i}(X_\et, \mathcal{F})$.
The LHS is the étale cohomology of $\spec k$, i.e. Galois cohomology.

:::
