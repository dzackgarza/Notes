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
But can it admit a pole of degree at most 10, for example?
This is what motivates the Riemann-Roch spaces and the Riemann-Roch theorem.
If you're trying to give a quantitative bound on how high of an order of a pole you have to allow in order to have a rational function, this comes from a key invariant called the *genus* of the function field.
The theorem that will tell us about the existence of rational functions with poles of prescribed degrees in terms of the genus is precisely the Riemann-Roch theorem, so that's where we are headed.

[^recall_div_pole]: Recall that this is the divisor pole. 

:::


:::{.definition title="Riemann-Roch Space of $D$ (Key Definition)"}
For $D\in \Div K$, the **Riemann-Roch space** of $D$ is defined as 
\[  
\mathcal{L}(D) \da \ts { f\in K\units \st (t) \geq - D} \union\ts{0}
.\]

:::

:::{.remark}
This will turn out to be a $k\dash$vector space, and is a sub $k\dash$vector space of $K$.
One of the first things we'll prove is that it's always finite dimensional.
This is only interesting when $D$ is linearly equivalent to an effective divisor, so we should think of $D$ as having a nonnegative degree, and in fact itself being an effective divisor.
So this is the space of rational functions that have prescribes poles of a prescribed order.
:::

:::{.question}
Does $\mathcal{L}(D)$ contain any rational functions other than zero?
:::

:::{.answer}
For any nonzero $f\in \mathcal{L}(D)\nonzero$, the divisor $D + (f)$ is effective, since $(f) \geq -D$, and also linearly equivalent to $D$.
If $D$ is not linearly equivalent to an effective divisor, this is just the zero vector space.
:::

:::{.exercise title="?"}
Let $K = k(t)$ and $n\in \ZZ^{\geq 0}$.
Show that $L(n\infty) = \ts{f\in k[t] \st \deg f \leq n}$, and in particular is a $k\dash$vector space of dimension $n+1$.[^infty_as_a_place]

[^infty_as_a_place]: Recall that $\infty$ is the $1/t\dash$adic place.

:::

:::{.remark}
Note that $\infty$ is a degree 1 place, and multiplying it by $n$ yields an effective divisor.
The Riemann-Roch space here is comprised of rational functions that regular away from $\infty$, which are polynomials, whose pole at $\infty$ has order at worst $n$.
But the order of a pole at infinity is its degree as a polynomial, since the $\infty\dash$adic valuation is the negative degree, so this yields polynomials of degree at most $n$.
:::

:::{.lemma title="?"}
For $D\in \Div K$,
\[  
\mathcal{L}(D) \neq \ts{0} \iff 0 \text{is equivalent to an effective divisor}
.\]
:::

:::{.proof title="?"}
$\implies$:
If $f\in \mathcal{L}(D)\nonzero$, then $D + (f)$ is effective and linearly equivalent to zero.

$\impliedby$:
If $D' \geq 0$ and $D' \sim D$, then $D' = D + (f) \geq 0$.
So $(f) \geq -D$ and thus $f\in \mathcal{L}(D)$.
:::


:::{.example title="?"}
$\mathcal{L}(0) = \ts{f \st (f) \geq 0} \union\ts{0}$, which consists of rational functions with no poles (so their divisor is the zero divisor), and thus $\mathcal{L}(0) = \kappa(K)$.
I.e., these are the constants: they are regular everywhere and have no zeros or poles.
We would like this space to have $k\dash$dimension 1, so we impose $\kappa(K) = k$.
:::



