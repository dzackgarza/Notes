# Lecture 8: Riemann-Roch Spaces 

Setting up for the single most important theorem in the course: the Riemann-Roch theorem.
We start by motivating this by considering the following property of $K\da k(t)$: for any degree 1[^res_field_reminder]
place $p \in \Sigma(K/k)$, there exists an $f\in K\units$ such that $(f)_- = p$.
In other words, $f$ is a rational function with a simple pole at the given place, and no other poles.
Why?
We just know precisely what all of the places are for this function field.


[^res_field_reminder]: So the residue field of the corresponding DVR is $k$ itself rather than some proper finite degree extension.

If $p= \infty$, we can just take $f(t) = t$, since any polynomial is regular away from $\infty$ and the valuation is $-\deg(f) = -1$
The other places $p$ correspond to $t-\alpha$ (the uniformizing element) for $\alpha\in k$, since they correspond to other points on $\AA^1_{/k}$, and so we can take $f(t) = 1/(t-\alpha)$.
This $f$ is regular at infinity since the degree of the numerator is larger than the degree of the denominator, and the denominator doesn't vanish at any other place.

:::{.remark}
With some thought, it can be found that this is a *characteristic* property of rational function fields: if $f\in K$, a one variable function field, and $\deg(d)_- = 1$[^recall_div_pole]
then the degree of the function is equal to the degree of the divisor of the zeros and the divisor of the poles, and thus the degree of the extension $[K: k(t)] = 1$ and thus $K = k(t)$ is rational.
So having a rational with a simple pole at only one point *only* happens in you're in a rational function field.

On the other hand, we both wanted and used in our discussion of holomorphy rings the fact that given a nonempty finite subset $S \subset \Sigma(K/k)$, we want to find a rational function $f\in K\units$ has poles at all of the points in $S$, so $\supp (f)_- = S$.
Better yet, we'd like a bound on the degree of any such $f$, i.e. the orders of all of these poles. 
If $S$ is a single place, unless the function field is rational, we can't require the function to have a pole of degree 1 at that point.
But 
This is what motivates the Riemann-Roch spaces and the Riemann-Roch theorem.

[^recall_div_pole]: Recall that this is the divisor pole. 

:::
