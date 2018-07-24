# Algebraic Topology, January 10

Continuing discussion of relative homology, $H_*(X,A) = H(C_* X/ C_* A)$.

When axiomatized, generally relies on property of **excision**, which relates to the following theorem:

If $U \subseteq A \subseteq X$ and $cl(U) \subseteq int(A)$, then $H(X, A) \cong H(X-U, A-U)$ or equivalently setting $X = A \union B$ where $X = int(A) \union int(B)$, then $H(X,A) \cong H(B, A\intersect B)$

Proof: Recall from proof of Mayer Vietoris we used $C_*(A+B) \leq C_* X = $\<singular simplexes from $A$ or $B$\>.

Yields SES $0 \mapsvia{} C_*(A) \mapsvia{} C_*(A+B) \mapsvia{} C_*(B, A\intersect B)\mapsvia{} 0$. Look at inclusion $C_*(A+B) \mapsvia{\iota} C_*(X)$ and its placement in the SES $0\mapsvia{} C_*(A) \mapsvia{} C_*(X) \mapsvia{} C_*(X,A)\mapsvia{} 0$. These yield commuting long exact sequences:

$H_n(A) \mapsvia{} H_n(A+B) \mapsvia{} H_n(A, A\cap B) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(A+B) \mapsvia{} \cdots$

$H_n(A) \mapsvia{} H_n(X) \mapsvia{} H_n(X,A) \mapsvia{} H_{n-1}(A) \mapsvia{} H_{n-1}(X) \mapsvia{} \cdots$

Here the 5 lemma applies, since there are two maps that are identifications and $H_*(A+B) \cong H_*(X)$ by Mayer-Vietoris.

Example: Look at *local homology*, i.e. look at $H_*(X, X-\{*\})$, this is equivalent to $H_*(U, U-\{*\})$ for **any** open neighborhood $U\supseteq \{*\}$. Take any open $V \subseteq \RR^n$ as an example, then $H_*(V,V-\pt) \cong H_*(U, U-\pt)$ for $U$ an epsilon ball around the point, but then by homeomorphism this is equal to $H_*(\RR^n, \RR^n - \pt) = \11\cdot\ZZ[\text{dim} = n]$. This is a strong statement than "Brouwer's Invariance of Domain", because this invariant picks up the dimension $n$.

Note: this invariance is given by no open set of $\RR^n$ can be homeomorphic to a subset of $\RR^m$ for $m\neq n$. 

This can be used to show that e.g. singular points are weird, e.g. if this doesn't yield $\ZZ$ everywhere in a space $X$ then $X$ can not be a manifold.



## Collapsing Theorem

If $X \supseteq A$ and $A$ has an open nbhd $V\supseteq A$ which deformation retracts onto it then $H_*(X,A) \cong \tilde H_*(X/A)$.

Aside:

Deformation: $A \injects_i V \surjects_p A$ where $p\circ i = \id_A$

Deformation Retract: $V \surjects_p A \injects_i V$ where $i\circ p \cong \id_V$

Proof: Take a homeomorphism $(X-A, V-A) \cong (X/A - A/A, V/A - A/A)$ by homeomorphisms of each component.

By excision, LHS $\cong H_*(X, V)$, RHS $= H_*(X/A - \pt, V/A - \pt) \cong H_*(X/A, V/A)$.

Yields LES of triple $0=H_n(V,A) \mapsvia{} H_n(X, A) \mapsvia{} H_n(X,V) \mapsvia{} H_{n-1}(V,A) = 0$ so $H_n(X,A) \cong H_n(X,V)$.

So the RHS is equal to $H_*(X/A, V/A) = H_*(X/A, A/A) = H_*(X/A, \pt) = \tilde H_*(X/A)$.

Collapsing argument doesn't work for local homology! E.g. $H_*(\RR^n, \RR^n - \pt) \not\cong \tilde H_*(\RR^n/\RR^n - \pt)$, the LHS depends on $n$ while the RHS doesn't. Note also the weird quotient topology on the RHS.



## Cellular Homology



If $X$ is a CW-complex, then let $X^n$ be the $n$-skeleton. We can then define $C_n^{\text{cell}}(X) \definedas H_n(X^n, X^{n-1}) \cong H_n(X^n/X^{n-1}) \cong \bigvee_{\alpha \in I^n} S_\alpha^n = \oplus_\alpha \ZZ$.

Can now introduce a boundary map $\del:C_n \into C_{n-1}$ from the $\delta: H_n(X^n, X^{n-1}) \into H_n(X^{n-1}, X^{n-2})$ obtained from the LES of the triple $(X^n, X^{n-1}, X^{n-2})$.

Why is this a chain complex? Does $\del^2 = 0$?

Look at $[z] \in H_n(X^n, X^{n-1})$. Then $z\in C_n(X)$ is a singular $n$ simplex, must be a cycle such that $\del z \in C_{n-1}X^{n-1} \subseteq C_{n-1}X^n$. Then $\delta([z]) = [\del z] \in C_{n-1}(X^{n-1}) / C_{n-1}(X^{n-2})$. Note the distinction between actual cycles and relative cycles. But then $[\del \del z] = [0] \in H_{n-1}(X^{n-2}, X^{n-3})$

Makes the problem tractable, yields integer linear algebra for finite CW complexes! This makes things easier to actually compute.

