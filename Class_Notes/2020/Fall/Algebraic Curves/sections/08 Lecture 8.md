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
Show that 
\[
L(n\infty) = \ts{f\in k[t] \st \deg f \leq n}
\]
and in particular is a $k\dash$vector space of dimension $n+1$.[^infty_as_a_place]

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
\mathcal{L}(D) \neq \ts{0} \iff 0 \text{ is equivalent to an effective divisor}
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

:::{.exercise title="?"}
\envlist
a. Show that for all $D$, $\mathcal{L}(D) \in \Vect_k$.
b. 
\[  
D\sim D' \implies \mathcal{L}(D) \cong_{\Vect_k} \mathcal{L}(D')
.\]
:::

:::{.remark}
You can frame the above as taking rational functions with poles of certain orders, and analyzing the orders of poles of their sums.
If you take $D'$ and write it as $D + (f)$ for $f$ a rational function, then $f$ should produce this isomorphism.
The moral: $\mathcal{L}(D)$ only depends on the linear equivalence class of $D$.
:::

:::{.exercise title="?"}
Let $D\in \Div^0 K$ be a degree zero divisor, then TFAE:

a. $\dim \mathcal{L}(D) \geq 1$
b. $\dim \mathcal{L}(D) = 1$,
c. $D$ is principal, i.e. the divisor of a rational function or linearly equivalent to zero.
:::

:::{.slogan}
The only way a degree zero divisor can have a nontrivial Riemann-Roch space is if it's linearly equivalent to zero.
::: 

:::{.lemma title="?"}
Let $A \leq B$[^def_from_places]
in $\Div K$, then

a. $\mathcal{L}(A) \leq_{\Vect_k} \mathcal{L}(B)$ is a subspace,
b. $\dim \mathcal{L}(B) / \mathcal{L}(A) \leq \deg B - \deg A = \deg(B - A)$.


[^def_from_places]: These are formal linear combinations of places, so the coefficients in front of each place in $A$ should be less than the corresponding coefficient for $B$, or equivalently $B-A$ is effective.

:::

:::{.remark}
Since $B \geq A$, you can think of this as starting with $A$ and adding an effective divisor to get $B$, namely $A + (B-A) = B$.
How much does that decrease the dimension of the Riemann-Roch space?
At most, by the degree of $B-A$ as a divisor.
:::

:::{.corollary title="?"}
For $D\in \Div K$,

a. If $\deg D < 0$ then $\mathcal{L}(D) = 0$.
b. If $\deg (D) \geq 0$ then $\dim_k \mathcal{L}(D) \leq \deg(D) + 1 < \infty$.

:::

:::{.remark}
This shows that Riemann-Roch spaces are always finite dimensional, and also gives a simple upper bound on that dimension.
:::

:::{.proof title="of corollary"}
For (a), a divisor of negative degree is not linearly equivalent to an effective divisor, so we might as well assume it's effective.


For (b), the dimension of $\mathcal{L}(D)$ doesn't change if $D$ is replaced by a linearly equivalent divisor, so wlog assume $D$ is effective.
Now write $D = \sum_{i=1}^r p_i$ as a sum of not necessarily distinct places, and use the lemma: each time you add an effective divisor, the dimension either stays the same or increases by at most the degree of the added divisor.
So start with the zero divisor, use the fact that $\dim_k \mathcal{L}(0) = 1$, and apply the lemma $r$ times.
This yields a space of dimension at most $1 + \sum \deg p_i = \deg D$.
:::

:::{.proof title="of lemma, part (a)"}
If $A\leq B$ and $f\in \mathcal{L}(A)$, then $(f) \geq - A$.
Since $-A \geq -B$, we have $(f) \geq -A \geq -B$, so $f\in \mathcal{L}(B)$.
:::


For the next part, it's perhaps easiest to consider the case $k = \bar k$ so everything has degree 1.
If you go from a divisor to adding a single degree 1 place, this lemma says that if you increase your Riemann-Roch space by either allowing a pole at a point you didn't allow before or allowing a pole of order 1 greater, then the dimension increases by at most 1.

:::{.proof title="of lemma, part (b)"}
From the previous argument, we see that it's enough to do this one place at a time.
So we can easily reduce to the case $B = A + P$ for $P$ some place of degree not necessarily equal to 1 (since we're not assuming $k=\bar k$), using that fact that $B \geq A$.
So choose an element $t\in K$ such that 
\[  
v_p(t) = v_p(B) = v_p(A) + 1
,\]
since $B$ is built from $A$ by adding a single copy of $P$.
For $f\in \mathcal{L}(B)$, we have by definition[^valuation_note]
\[  
v_p(f) \geq -v_p(B) = -v_p(t)
,\]
and so by bringing $t$ to the other side we get $v_p(ft) \geq 0$ 
and thus $ft\in R_p$ (the corresponding local ring).
This allows us to define a $k\dash$linear map
\[  
\psi: \mathcal{L}(B) &\to k(P) = R_p/\mathfrak{m}_p \\
f & \mapsto ft \mod \mathfrak{m}_p
.\]
In words, we multiply $f$ by $t$ to make it $p\dash$adically regular, then look at its image in the residue field.
The kernel is precisely those elements $x$ such that multiplying by $t$ lands in the maximal ideal $\mathfrak{m}_p$, which means that $v(x)$ as 1 more than it could have been.
So the kernel is all elements such that multiplying by $t$ and taking the valuation gives at least one, thus
\[  
\ker \psi = \ts{f\in \mathcal{L}(B) \st v_p(f) \geq -v_p(t) + 1 = -v_p(A)} = \mathcal{L}(A)
,\]
which follows since $B$ and $A$ only differ at $P$, since $B = A+P$, so the divisors $A, B$ have the same coefficient at every other place.
We thus have the following diagram:

\begin{tikzcd}
	{0} & {\mathcal{L}(A)} & {\mathcal{L}(B)} & {\mathcal{L}(B)/\mathcal{L}(A)} & {0} \\
	\\
	{} & {} & {} & k(P) = {R_p / \mathfrak{m}_p} & {\cdots}
	\arrow[from=1-1, to=1-2, hook]
	\arrow[from=1-2, to=1-3, hook]
	\arrow[from=1-3, to=1-4, two heads]
	\arrow[from=1-4, to=1-5, two heads]
  \arrow[from=1-4, to=3-4, dotted, hook, "\exists \iota"]
	\arrow[from=1-2, to=3-4, "\psi"]
  \arrow[from=3-4, to=3-5]
\end{tikzcd}
[Link to diagram](https://q.uiver.app/?q=WzAsMTAsWzAsMCwiMCJdLFsxLDAsIlxcbWF0aGNhbHtMfShBKSJdLFsyLDAsIlxcbWF0aGNhbHtMfShCKSJdLFszLDAsIlxcbWF0aGNhbHtMfShCKS9cXG1hdGhjYWx7TH0oQSkiXSxbNCwwLCIwIl0sWzAsMiwiMCJdLFsxLDIsIlxcbWF0aGNhbHtMfShBKSJdLFsyLDIsIlxcbWF0aGNhbHtMfShCKSJdLFszLDIsIlJfcCAvIFxcbWF0aGZyYWt7bX1fcCJdLFs0LDIsIlxcY2RvdHMiXSxbMCwxLCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDIsIiIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzIsMywiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzMsNCwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoiZXBpIn19fV0sWzEsNiwiIiwwLHsic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFsyLDcsIiIsMCx7InN0eWxlIjp7ImhlYWQiOnsibmFtZSI6Im5vbmUifX19XSxbMyw4LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9LCJib2R5Ijp7Im5hbWUiOiJkb3R0ZWQifX19XSxbMCw1LCIiLDIseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzYsNywiIiwxLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbNyw4XSxbNSw2LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFs4LDldXQ==)

where we can conclude that the indicated injection exists, and thus 
\[  
\dim \mathcal{L}(B) / \mathcal{L}(A) \leq [k(p) : k] = \deg P
.\]

[^valuation_note]: Note that $v_p$ is the $p\dash$adic valuation, i.e. the coefficient of $P$ in the divisor as a formal linear combination of points.

:::


:::{.fact}
For $p\in \Sigma(K/k)$ with residue field $k_p$ and $[k_p: k] = d$, defining $K_p$ as the completion of $K$ with respect to $\abs{\wait}_p$, there is an isomorphism $K_p \cong k_p((t))$, the formal 
:::
