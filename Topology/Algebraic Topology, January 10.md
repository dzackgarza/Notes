# Algebraic Topology, January 10

Continuing discussion of relative homology, $H_*(X,A) = H(C_* X/ C_* A)$.

When axiomatized, generally relies on property of **excision**, which relates to the following theorem:

If $U \subseteq A \subseteq X$ and $cl(U) \subseteq int(A)$, then $H(X, A) \cong H(X-U, A-U)$ or equivalently setting $X = A \union B$ where $X = int(A) \union int(B)$, then $H(X,A) \cong H(B, A\intersect B)$

Proof: Recall from proof of Mayer Vietoris we used $C_*(A+B) \leq C_* X = $<singular simplexes from $A$ or $B$>.

Yields SES $0 \mapsvia{} C_*(A) \mapsvia{} C_*(A+B) \mapsvia{} C_*(B, A\intersect B)\mapsvia{} 0$. Look at inclusion $C_*(A+B) \mapsvia{\iota} C_*(X)$ and its placement in the SES $0\mapsvia{} C_*(A) \mapsvia{} C_*(X) \mapsvia{} C_*(X,A)\mapsvia{} 0$. These yield commuting long exact sequences:

$H_n(A) \mapsvia{} H_n(A+B) \mapsvia{} H_n(A, A\cap B) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(A+B) \mapsvia{} \cdots$

$H_n(A) \mapsvia{} H_n(X) \mapsvia{} H_n(X,A) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(X) \mapsvia{} \cdots$

Here the 5 lemma applies, since there are two maps that are identifications and $H_*(A+B) \cong H_*(X)$ by Mayer-Vietoris.

Example: Look at *local homology*, i.e. look at $H_*(X, X-\{*\})$, this is equivalent to $H_*(U, U-\{*\})$ for **any** open neighborhood $U\supseteq \{*\}$. Take any open $V \subseteq \RR^n$ as an example, then $H_*(V,V-\pt) \cong H_*(U, U-\pt)$ for $U$ an epsilon ball around the point, but then by homeomorphism this is equal to $H_*(\RR^n, \RR^n - \pt) = \11\cdot\ZZ[\text{dim} = n]$. This is a strong statement than "Brouwer's Invariance of Domain", because this invariant picks up the dimension $n$.

Note: this invariance is given by no open set of $\RR^n$ can be homeomorphic to a subset of $\RR^m$ for $m\neq n$. 

This can be used to show that e.g. singular points are weird, e.g. if this doesn't yield $\ZZ$ everywhere in a space $X$ then $X$ can not be a manifold.



