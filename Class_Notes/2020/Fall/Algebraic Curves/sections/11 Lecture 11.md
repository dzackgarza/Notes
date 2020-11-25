# Lecture 11: Weil's Proof of Riemann-Roch


Let $K_{/k}$ be a one variable function field, finitely generated of transcendence degree one, with $\kappa(K) = k$, so $k$ is algebraically closed in $K$.
Define the *small adele ring* associated to $K$, as the restricted direction product with respect to $\ts{R_v \st v\in \Sigma(K/k)}$:

\[
A_k \da \prod^{\text{res}}_{v\in \Sigma(K/k)} K
= \ts{(x_v) \in K^{\Sigma(K/k)} \st x_v \in R_v \text{ for a.e. } v }
,\]
where each factor is a copy of $K$.
Note that a *restricted* direct product is when you have a family of sets, and for each set you also attach a subset.
Then if you have a tuple in the entire direct product, it's in the restricted direct product iff for all but finitely many coordinates lie in a given subset. Here the subset is the valuation ring $R_v$.
So these are tuples of elements of $K$, indexed by places, where each element has a $p\dash$adic valuation and the only restriction is that (except for finitely many cases) we want this valuation to be nonnegative.


:::{.remark}
To get the *big* adele ring, you'd replace $K$ with its completion with respect to the $p\dash$adic valuation.
If $k$ is finite, then this is equal to the positive characteristic adele ring from NTII. 
If you complete, then you get a complete discretely valued field whose residue field equals the residue field at the place $v$.
So for finite extensions of $k$, the residue will be finite iff $k$ is finite, and from the structure theory of discretely valued fields, this field has a natural topology: the adic topology, coming from the inverse limit.
This will be locally compact iff the residue field is finite.
Here, since the ground field is infinite, even passing to the completion wouldn't yield anything locally compact.
So there's no advantage to passing to the completion, although there's no harm either.
:::

Note that $A_k$ is a ring, and in fact a $K\dash$algebra, but we will only need its structure as a $K\dash$vector space.
This structure comes from embedding $K\injects A_k$ diagonally, so $x \mapsto [x, x, \cdots]$, and pull back $v\in \Sigma(K/k)$, remembering that every element of $K$ (a rational function) is regular except for finitely many $v$.

If we have a valuation on $K$, we can consider a place $p$ and projecting onto the $k$th factor:
\[  
A_j \surjectsvia{\pi_p} K \mapsvia{v_p} \ZZ \union \ts{\infty}
.\]

So we now attach an adelic versionm of the Riemann-Roch space: for $D\in \Div K$, we set
\[  
\mathcal{A}_k(D) \da \ts{ \alpha \in \mathcal{A}_K \st v_p(\alpha) \geq -v_p(D) \, \forall p \in \Sigma(K/k)}
.\]
The only difference here is that the usual space is over $K$, and here we're over $\mathcal{A}_K$, which is a much larger space.
This makes things easier, however, in the same sense that studying a large collection of local fields is easier than studying the corresponding global field.
Note that the $p\dash$adic valuation $v_p$ is just the coefficient of $p$ in the divisor, and $\mathcal{A}_K \intersect K$ yields the usual Riemann-Roch space.

:::{.exercise title="?"}
\envlist

a. Show that $\mathcal{A}_K(D)$ is an $k\dash$subspace of $\mathcal{A}_K$.[^exc_hint_1]


b. Show that (just as for the Riemann-Roch space) $D_1 \leq D_2 \implies \mathcal{A}_K(D_1) \subseteq \mathcal{A}_K(D_2)$.


[^exc_hint_1]: Consider scaling by nonzero constants, where the valuation of constants are zero.

:::

:::{.lemma title="?"}
\[  
D_1 \leq D_2 \implies \dim_k \mathcal{A}_K(D_2) / \mathcal{A}_K(D_1) = \deg D_2 - \deg D_1
.\]
:::

Note that this is the adelic analogue of our first lemma on Riemann-Roch spaces, now with an equality instead of being bounded above.


:::{.proof title="?"}
As we did before, by induction we can assume $D_2 = D_1 + p$ for some $p\in \Sigma(K/k)$, i.e. we can go from the smaller divisor to the bigger one by repeatedly adding closed points.
Then choose an element $t\in k\units$ such that $v_p(t) = v_p(D_2)$, and define a similar map
\[  
\phi \mathcal{A}_K(D_2) &\to k_p \\
\alpha &\mapsto (t\alpha p) \mod \mfm_p
.\]
Why? 
Once you multiply by $t$, note that we're looking in the $p$th component.
The condition before was that the valuation at the $p$th component was at least $-v_p(D_2)$, but now we're adding $v_p(D_2)$.
This yields a nonnegative valuation, making the image lie inside the corresponding local ring, so it makes sense to consider it modulo the maximal ideal to get an element of the residue field.
As before, it should be clear that this is $k\dash$linear, $\ker \phi = \mathcal{A}_K(D_1)$, and is surjective.
The kernel are exactly those elements such that multiplying by $t$ makes the $p\dash$adic valuation at least 1, since that's what the maximal ideal is.
This is indeed $\mathcal{A}_K(D_1)$, since $D_1$ and $D_2$ are the same except for the added condition $D_2 = D_1 + p$ at $p$.
\

So the main difference is that the map is now *surjective*, which was not true for the original Riemann-Roch space.
Why?
This is a purely local situation.
Take an element which is zero away from the $p$ component, which is easy to do since zero is in $R_v$ for any $v$.
So can you find an element of $k$ such that multiplying by $t$ and reducing modulo the maximal ideal yields every element of the residue field?
:::

:::{.theorem title="2.13"}
For all $D$,
\[  
\dim_k \mathcal{A}_K / \qty{\mathcal{A}_K(D) + K } = \iota(D) \da \ell(D) - \deg(D) + g - 1
,\]
where $\iota(D)$ is the index of speciality of the divisor, which measures the discrepancy between the degree and the dimension.
:::

:::{.remark}
This says that adding $K$ into the adelic Riemann-Roch space results in a big $k\dash$vector space, having high dimension in the infinite dimensional $k\dash$vector space $\mathcal{A}_K$.
:::


:::{.proof title="Step 1"}
For divisors $A_1 \leq A_2$, we have a short exact sequence of $k\dash$vector spaces
\[  
0 \to \mathcal{L}(A_2) / \mathcal{L}(A_1) \mapsvia{\sigma_1} \mathcal{A}_K(A_2) / \mathcal{A}_K(A_1) \mapsvia{\sigma_2} \qty{\mathcal{A}_K(A_2) + K} / \qty{\mathcal{A}_K(A_1) + K } \to 0
.\]
The first thing we did was compute the dimension of the middle quotient space, which was $\deg D_2 - \deg D_1$.
Note that $\sigma_2$ is a quotient map, but $\sigma_1$ just comes from embedding $K\injects \mathcal{A}_K$.
To show exactness, the only nontrivial part is that $\ker(\sigma_2) \subset \im(\sigma_1)$.
So take an element $\alpha\in \mathcal{A}_K(A_1) \mod \mathcal{A}_K(A_1)$ such that $\sigma_2(\alpha) = 0$, so there exists an $x\in K$ such that $\alpha-x \in \mathcal{A}_K(A_1)$ by definition of being zero in the last quotient.
Since $\mathcal{A}_K(A_1) \subseteq \mathcal{A}_K(A_2)$, we have that $x\in \mathcal{A}_K(A_2) \intersect K \da \mathcal{L}(A_2)$.
This follows because $\alpha, \alpha-x$ are both in $\mathcal{A}_K(A_2)$.
Thus we have
\[  
\alpha + \mathcal{A}_K(A_1) = x + \mathcal{A}_K(A_1) = \sigma\qty{x + \alpha(A_1)}
.\]
:::

:::{.proof title="Step 2"}
We can now compute the dimension of this quotient.
Using step 1 and Lemma 2.12, we get
\[  
\dim_k\qty{ \mathcal{A}_K(A_2) + K } / \qty{ \mathcal{A}_K(A_1) + K }
&= \dim_k \mathcal{A}_K(A_2) / \mathcal{A}_K(A_1) - \dim_k \mathcal{L}(A_2) / \mathcal{L}(A_1) \\
&= \qty{\deg A_1 - \ell(A_2) } - \qty{\deg A_1 - \ell(A_1) }
.\]
:::
