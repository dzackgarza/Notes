## To Sort
- Burnside's Lemma
- Cauchy's Theorem
	- If $\abs{G} = n = \prod p_i^{k_i}$, then for each $i$ there exists a subgroup $H$ of order $p_i$.
- The Sylow Theorems
	- If $\abs{G} = n = \prod p_i^{k_i}$, for each $ii$ and each $1 \leq k_j \leq k_i$ then there exists a subgroup $H$ of order $p_i^{k_j}$.
- Galois Theory
- More terms: [http://mathroughguides.wikidot.com/glossary:abstract-algebra](http://mathroughguides.wikidot.com/glossary:abstract-algebra)

## Big List of Notation
$$
\begin{align*}
C(x) 			= && \theset{g\in G : gxg^{-1} = x} 				&& \subseteq G 			&& \text{Centralizer} \\
C_G(x) 			= && \theset{gxg^{-1} : g\in G} 					&& \subseteq G 			&& \text{Conjugacy Class} \\
G_x 			= && \theset{g.x : x\in X} 							&& \subseteq X 			&& \text{Orbit} \\
x_0 			= && \theset{g\in G : g.x = x} 						&& \subseteq G 			&& \text{Stabilizer} \\
Z(G) 			= && \theset{x\in G: \forall g\in G,~ gxg^{-1} = x} && \subseteq G 			&& \text{Center} \\
\mathrm{Inn}(G) = && \theset{\phi_g(x) = gxg^{-1} } 				&& \subseteq \Aut(G) 	&& \text{Inner Aut.} \\
\mathrm{Out}(G) = && \Aut(G) / \mathrm{Inn}(G) 						&& \injects \Aut(G) 	&& \text{Outer Aut.} \\
N(H) 			= && \theset{g\in G: gHg^{-1} = H} 					&& \subseteq G 			&& \text{Normalizer}
\end{align*}
$$



## Group Theory

Notation: $H < G$ a subgroup, $N < G$ a normal subgroup, concatenation is a generic group operation.

- $\ZZ_n$ the unique cyclic group of order $n$
- $\mathbf{Q}$ the quaternion group
- $G^n = G\times G \times \cdots G$
- $Z(G)$ the center of $G$
- $o(G)$ the order of a group
- $S_n$ the symmetric group
- $A_n$ the alternating group
- $D_n$ the dihedral group of order $2n2n$

- Group Axioms
	- Closure: $a,b \in G \implies ab \in G$
	- Identity: $\exists e\in G \mid a\in G \implies ae = ea = a$
	- Associativity: $a,b,c \in G \implies (ab)c = a(bc)$
	- Inverses: $a\in G \implies \exists b \in G \mid ab =ba = e$

- Definitions:
	- Order
		- Of a group: $o(G) = \abs{G}$, the cardinality of $G$
		- Of an element: $o(g) = \min\theset{n\in \NN : g^n = e}$
	- Index
	- Center: the elements that commute with everything
	- Centralizer: all elements that commute with a given element/subgroup.
	- Group Action: a function $f: X\times G \to G$ satisfying
		- $x\in X, g_1,g_2 \in G \implies g_1.(g_2.x) = (g_1g_2). x$
		- $x\in X \implies e.x = x$
	- Orbits partition any set
	- Transitive Action
	- Conjugacy Class: $C \subset G$ is a conjugacy class $\iff$
		- $x\in C, g\in G \implies gxg^{-1} \in C$
		- $x,y \in C \implies \exists g\in G : gxg^{-1} = y$
		- i.e. subsets that are closed under $G$ acting on itself by conjugation and on which the action is transitive
		- i.e. orbits under the conjugation action
		- The order of any conjugacy class divides the order of $G$
	- $p$-group: Any group of order $p^n$.
	- Simple Group: no nontrivial normal subgroups
	- Normal Series: $0 \normal H_0 \normal H_1 \cdots \normal G$
	- Composition Series: The successive quotients of the normal series
	- Solvable: $G$ is solvable $\iff$ $G$ has an abelian composition series.

- One step subgroup test:
	$$
	a,b \in H \implies a b^{-1} \in H \\
	$$

- Useful isomorphism invariants:
	- Order profile of elements: $n_1$ elements of order $p_1$, $n_2$ elements of order $p_2$, etc
		- Useful to look at elements of order $2$!
	- Order profile of subgroups
	- $Z(A) \cong Z(B)$
	- Number of generators (generators are sent to generators)
	- Number and size of conjugacy classes
	- Number of Sylow$\dash p$ subgroups.
	- Commutativity
	- "Being cyclic"
	- Automorphism Groups
	- Solvability
	- Nilpotency

- Useful homomorphism invariants
	- $\phi(e) = e$
	- $\abs{g} = m < \infty \implies \abs{\phi(g)} = m$
	- Inverses, i.e. $\phi(a)^{-1} = \phi(a^{-1})$
	- $H < G \implies \phi(H) < G'$
		- $H' < G' \implies \phi^{-1}(H') < G$
	- $\abs{G} < \infty \implies \phi(G)$ divides $\abs{G}, \abs{G'}$

## Big Theorems
- Classification of Abelian Groups
$$
G \cong \ZZ_{p_1^{k_1}} \oplus \ZZ_{p_2^{k_2}} \oplus \cdots \oplus \ZZ_{p_n^{k_n}}
$$
Where $(p_i, k_i)$ are the set of elementary divisors of $G$.


- Isomorphism Theorems
  $$
  \begin{align*}
  \phi: G \to G’ \implies 			&& \frac{G}{\ker{\phi}} \cong 		&~ \phi(G) \\
  H \normal G,~ K < G \implies 		&& \frac{K}{H\intersect K} \cong 	&~ \frac{HK}{H} \\
  H,K \normal G,~ K < H \implies 	&& \frac{G/K}{H/K} \cong 			&~ \frac{G}{H}
  \end{align*}
  $$

- Lagrange's Theorem: $H < G \implies o(H) \mid o(G)$
  - Converse is false: $o(A_4) = 12$ but has no order 6 subgroup.

- The $GZ$ Theorem: $G/Z(G)$ cyclic $\implies G\in\mathbf{Ab}$

- Orbit Stabilizer Theorem: $G / x_0 \cong Gx$

- The Class Equation
  - Let $G\actson X$ and $\mathcal{O}_i \subseteq X$ be the nontrivial orbits, then
  $$ \abs{X} = \abs{ X_0 } + \sum_{[x_i] \in X/G} \abs{Gx} $$
  - The right hand side is the number of fixed points, plus a sum over all of the orbits of size greater than 1, where any representative within the orbit is chosen and we look at the index of its stabilizer in $G$.
  - Let $G\actson G$ and for each nontrivial conjugacy class $C_G$ choose a representative $[x_i] = C_G = C_G(x_i)$ to obtain

  $$ \abs{G} = \abs{Z(G)} + \sum_{[x_i] = C_G(x_i)} \left[ G: [x_i] \right]$$


- Useful facts:
	- $H < G\in \mathbf{Ab} \implies H \normal G$
		- Converse doesn't hold, even if all subgroups are normal. Counterexample: $\mathbf{Q}$
	- $G / Z(G) \cong \mathrm{Inn}(G)$
	- $H, K < G$ with $H \cong K \not\implies G/H \cong G/K$
		- Counterexample: $G = \ZZ_4 \cross \ZZ_2, H = <(0,1)>, K = <(2,0)>$. Then $G/H \cong \ZZ_4 \not\cong \ZZ_2^2 \cong G/K$
	- $G\in\mathbf{Ab} \implies $ for each $p$ dividing $o(G)$, there is an element of order $p$
	- Any surjective homomorphism $\phi: A \surjects B$ where $o(A) = o(B)$ is an isomorphism
	- If $G$ is abelian, for each $d\mid \abs{G}$ there is exactly one subgroup of order $d$.

- Sylow Subgroups:
	- Todo


- Big List of Interesting Groups
	- $\ZZ_4, \ZZ_2^2$
	- $D_4$
	- $Q = \langle a , b | a ^ { 4 } = 1 , a ^ { 2 } = b ^ { 2 } , a b = b a ^ { 3 } \rangle$ the quaternion group
	- $S^3$, the smallest nonabelian group

- Chinese Remainder Theorem: $$\ZZ_{pq} \cong \ZZ_p \oplus \ZZ_q \iff (p,q) = 1$$
- Fundamental Theorem of Finitely Generated Abelian Groups:
  - $G = \ZZ^n \oplus \bigoplus \ZZ_{q_i}$

- Finding all of the unique groups of a given order: #todo

### Cyclic Groups
- Generated by ?
- For each $d$ dividing $o(G)$, there exists a subgroup $H$ of order $d$.
	- If $G = <a>$, then take $H = <a^{\frac{n}{d}}>$

### The Symmetric Group
- Generated by:
	- Transpositions
	- #todo
- Cycle types: characterized by the number of elements in the cycle.
	- Two elements are in the same conjugacy class $\iff$ they have the same cycle type.
- Inversions: given $\tau = (p_1 \cdots p_n)$, a pair $p_i, p_j$ is *inverted* iff $i < j$ but $p_j < p_i$
- Can count inversions $N(\tau)$
	- Equal to minimum number of transpositions to obtain non-decreasing permutation
- Sign of a permutation: $\sigma(\tau) = (-1)^{N(\tau)}$
- Parity of permutations $\cong (\ZZ, +)$
	- even $\circ$ even = even
	- odd $\circ$ odd = even
	- even $\circ$ odd = odd

## Ring Theory

- Ring Axioms: #todo
  - Examples:
  - Non-Examples:
- Definition of an Ideal
- Definitions of types of rings:
  - Field
  - Unique Factorization Domain (UFD)
  - Principal Ideal Domain (PID)
  - Euclidean Domain:
  - Integral Domain
  - Division Ring
$$ 
\text{field} \implies \text{Euclidean Domain} \implies \text{PID} \implies \text{UFD} \implies \text{integral domain}
$$

- Counterexamples to inclusions are strict:
	- An ED that is not a field:
	- A PID that is not an ED: $\QQ[\sqrt {19}]$
	- A UFD that is not a PID:
	- An integral domain that is not a UFD:

- Integral Domains
- Unique Factorization Domains
- Prime Elements
- Prime Ideals
- Field Extensions
- The Chinese Remainder Theorem for Rings
- Polynomial Rings
	- Irreducible Polynomials
		- Over $\ZZ_2$: 
		$$ 
		x,~ x+1,~ x^2+x+1,~ x^3+x+1,~ x^3+x^2+1 
		$$
		- Eisenstein's Criterion
- Gauss' Lemma
- When is $\QQ[\sqrt d]$ a field? #todo
