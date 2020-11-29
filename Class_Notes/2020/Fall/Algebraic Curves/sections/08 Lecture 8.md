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
then $[K: k(t)] = 1$ and thus $K = k(t)$ is rational.

[^recall_div_pole]: Recall that this is the divisor pole. 

:::
