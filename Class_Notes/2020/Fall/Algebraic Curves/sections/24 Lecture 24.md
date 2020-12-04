# Lecture 24: Hermitian Function Fields

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

d. No finite places of $K$ rimi

[^q_artin]: When $u=-1$, this recovers $q\dash$Artin-Schreier extensions.

:::


