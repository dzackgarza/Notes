# Lecture 24: Hermitian Function Fields (Sketch)

\todo[inline]{What is an elementary $p\dash$group?}
\todo[inline]{What is geometrically irreducible?}

:::{.theorem title="Stichtenoth Prop 6.4.1"}
Let $k$ be a perfect field of characteristic $p>0$, $q \da p^s$ some power of $p$, $K \da k(x)$.
Let $u \in k\units$ and suppose $T^q + \mu T$ splits in $k$.[^q_artin]
Let $f\in k[x]$ with $\deg(f) = M$ where $p\not\divides M$.
Then

a. The polynomial 
\[  
P(x, y) \da y^q + uy -f(x) \in k[x]
\]
is geometrically irreducible, and so $L\da \ff(k[x,y]/\gens{p})$ is a regular function field over $k$.

b. We have $[L: K] = q$.

c. $A\da \ts{\gamma\in k \st \gamma^q + u\gamma = 0}$ is an order $q$ subgroup of $\GG_a/k \da (k, +)$.
  Moreover, for all $\sigma\in \Aut(L/K)$, there exists a unique $\gamma(\sigma)\in A$ such that $\sigma(y) = y + \gamma(\sigma)$ and $\sigma \mapsto \gamma(\sigma)$ yields an isomorphism $\Aut(L/K) \mapsvia{\sim} A$.

d. No finite place of $K$ ramifies in $L$, while $p_\infty$ is totally ramified.
If $\tilde p_ \infty / p_ \infty$, then $d(\tilde p_ \infty / p_ \infty) = (q-1)(M+1)$.

e. We have
\[  
g_L = \qty{1\over 2}(q-1)(m-1)
.\]

[^q_artin]: When $u=-1$, this recovers $q\dash$Artin-Schreier extensions.

:::

Next up: one of the most important function fields of all time!

:::{.definition title="Hermitian Function Field"}
Set $A_q \da \FF_{q^2}(x, y)$ and consider the polynomial
\[  
y^q + y = x^{q+1}
.\]
Then $u=1, M = q+1$, and $g = \qty{1\over 2}(q)(q-1) = {q \choose 2}$.
:::

:::{.theorem title="?"}
\[  
\abs{\Sigma_1(A_q / \FF_{q^2})} = q^3 + 1
.\]
:::

\todo[inline]{What are the Weil bounds?}

:::{.corollary title="Ihara"}
If $K/\FF_q$ is a maximal function field of genus $g$, then 
\[  
g\leq \qty{1\over 2}\qty{q - \sqrt q}
.\]
:::

:::{.fact}
If $K/\FF_{q^2}$ is maximal, then $N_1 = q^2 + 1 + 2gq = q^2 + q - \sum_{j=1}^{2g} \alpha_j$.
Applying the RH, $\abs{\alpha_j} = q$, and it follows that $\alpha_j = -q$ for all $j$ and thus
\[  
L(t) = \qty{1+qt}^{2g}
.\]
:::

:::{.theorem title="Kleiman, Serre"}
If $K/\FF_q \subset L/\FF_q$ is a finite extension of function fields, then $L_K(t)$ divides $L_L(t)$.
:::

:::{.corollary title="?"}
If $L/\FF_{q^2}$ is maximal, so is $K/\FF_{q^2}$.
:::

:::{.theorem title="Stichtenoth?"}
\[  
\Aut(A_1 / \FF_{q^2}) \cong \operatorname{PGU}_3(\FF_{q^2})
,\]
the *projective unitary group*, which is of order $q^3(q^2-1)(q^3+1)$.
:::

:::{.remark}
The size of this group $G_q$ is asymptotically $G_q \sim q^8$, while $g(A_q) \sim {q^2\over 2}$, so this is a lot of automorphisms compared to the sizes of automorphism groups of Riemann surfaces.
More precisely, $G_q > 16 g(q)^4$.
:::

:::{.theorem title="Stichtenoth"}
For any other function field $K/k$ for any field $k$, $\abs{\Aut(K/k)} < 16g^4$.
:::

:::{.remark}
This only happens in positive characteristic, when $\ch(k), g, q$ match up in a very specific way.
So Hermitian function fields are the algebraic curves with the most symmetries.
:::

:::{.theorem title="Hurwtiz"}
In characteristic zero, if $g\geq 2$ then $\abs{\Aut(K/k)} \leq 84(g-1)$.
:::



