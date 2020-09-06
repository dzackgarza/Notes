
---
title: Commutative Algebra 
todos: true
book: true
---


These are notes live-tex'd from a graduate course in Commutative Algebra course taught by Pete Clark at the University of Georgia in Spring 2020
As such, any errors or inaccuracies are almost certainly my own.

\medskip
\begin{flushright}
  D. Zack Garza, \today \\
  \currenttime
\end{flushright}

# Wednesday January 8

> Course text: [http://math.uga.edu/~pete/integral2015.pdf](http://math.uga.edu/~pete/integral2015.pdf)

Summary:
The study of commutative rings, ideals, and modules over them.

The chapters we'll cover: 

- 1 (Intro), 
- 2 (Modules, partial), 
- 3 (Ideals, CRT), 
- 7 (Localization), 
- 8 (Noetherian Rings), 
- 11 (Nullstellensatz), 
- 12 (Hilbert-Jacobson rings), 
- 13 (Spectrum), 
- 14 (Integral extensions), 
- 17 (Valuation rings), 
- 18 (Normalization),
- 19 (Picard groups),
- 20 (Dedekind domains),
- 22 (1-dim Noetherian domains)

In number theory, arises in the study of $\ZZ_k$, the ring of integers over a number field $k$, along with *localizations* and *orders* (both preserve the fraction field?).

In algebraic geometry, consider $R = k[t_1, \cdots, t_n]/I$ where $k$ is a field and $I$ is an ideal.

Some preliminary results:

1. In $\ZZ_k$, ideals factor uniquely into primes (i.e. it is a Dedekind domain).
2. $\ZZ_k$ has an integral basis (i.e. as a $\ZZ\dash$modules, $\ZZ_k \cong \ZZ^{[k: \QQ]}$).
3. The Nullstellensatz: there is a bijective correspondence 
\begin{align*}
\correspond{\text{Irreducible Zariski closed subsets of } \CC^n} \iff
\correspond{\text{Prime ideals in } \CC[t_1, \cdots, t_n]}
.\end{align*}

4. Noether normalization (a structure theorem for rings of the form $R$ above).

All of these results concern particularly "nice" rings, e.g. $\ZZ_k, \CC[t_1, \cdots, t_n]$.
These rings are

- Domains
- Noetherian
- Finitely generated over other rings
- Finite Krull dimension (supremum of length of chains of prime ideals)
  - In particular, $\dim \ZZ_k = 1$ since nonzero prime ideals are maximal in a Dedekind domain 
- Regular (nonsingularity condition, can be interpreted in scheme-theoretic language)

> Note: schemes will have "local charts" given by commutative rings, analogous to building a manifold from Euclidean $n\dash$space.
> General philosophy (Grothendieck): Every commutative ring is the ring of functions on some space, so we should study the category of commutative rings as a whole (i.e. let the rings be arbitrary).
>
> This does not hold for non-commutative rings! I.e. we can't necessarily associate a geometric space to every non-commutative ring.
> A common interesting example: $k[G]$, the group ring of an arbitrary group.
> Good references: Lam, 'Lectures on Modules and Rings'.

:::{.example}
Let $X$ be a topological space and $C(X)$ be the continuous functions $f: X \to \RR$.
This is a ring under pointwise addition/multiplication.
(This generally holds for the hom set into any commutative ring.)
:::


*Example:*
Take $X = [0, 1]$ and $C(X)$ as a ring.


:::{.exercise}
\hfill

1. Show that $C(X)$ is a not a domain.

  > Hint: find two nonzero functions whose product is identically zero, e.g. bump functions. 
  > Note that they are not analytic/holomorphic.

2. Show that it is not Noetherian (i.e. there is an ideal that is *not* finitely generated).

3. Fix a point $x\in [0, 1]$ and show that the ideal $\mathfrak{m}_x = \theset{f \suchthat f(x) = 0}$ is maximal.

4. Are all maximal ideals of this form?

> Hint: See textbook chapter 5, or Gilman and Jerison 'Rings of Continuous Functions'.
:::

The following is a theorem about topological vector bundles over $C([0, 1])$, see textbook.

:::{.theorem title="Swan"}
There is a categorical equivalence between vector bundles on a compact space and f.g. projective modules over this ring.
:::


So commutative algebra has something to say about other branches of Mathematics!

:::{.definition title="Boolean Spaces"}
A topological space is called *boolean* (or a *Stone space*) iff it is compact, hausdorff, and totally disconnected.
:::


:::{.example}
A projective variety over $p\dash$adics with $\QQ_p$ points plugged in.
:::


:::{.definition title="Boolean Rings"}
A ring is boolean if every element is idempotent, i.e. $x\in R \implies x^2 = x$.
:::

:::{.exercise title="Boolean Domains are $\FF_2$"}
If $R$ is a boolean domain, then it is isomorphic to the field with 2 elements.
:::

Lemma
: There is a categorical equivalence between Boolean spaces, Boolean rings, and so-called "Boolean algebras".

# Monday January 13

## Logistics

Some topics for final projects

- The cardinal Krull dimension of $\mathrm{Hol}(X)$.
- Galois connections
- Ordinal filtrations
- Lam-Reyes prime ideal principal
- $C(X)$
- $\mathrm{Hol}(X)$
- Semigroup rings
- Swan's Theorem 
  - Vector bundles on a compact space
- Boolean rings and Stone duality
- More Nullstellensatz 
  - Beyond Hilbert's usual one
- Hochster's Theorem 
  - Characterizes $\spec R$ as a topological space, i.e. when is a topological space homeomorphic to the spectrum of some commutative ring.
- Invariant theory (quotients of rings under finite group actions, i.e. $R^G$ for $\abs G < \infty$)
  - For $R=k$ a field, this is Galois theory
  - Easy case of geometric invariant theory, when $G$ is infinite
- UFDs
  - What conditions does a ring need to have to ensure unique factorization?
- Euclidean rings
- Claborn (Leedham-Green-Clark): Every commutative group is (up to isomorphism) the class group of some Dedekind domain.
  - A type of inverse problem, class group measures deviation from being a UFD
  - Uses ordinal filtrations, transfinite induction
  - See proof in elliptic curves course


## Rings of Functions

Let $k$ be a field, $X$ a set of cardinality $\abs{X} \geq 2$, and define $k^X \definedas \mathrm{Maps}(X. k) = \theset{f: X\to K}$ is a ring under pointwise addition and multiplication.
As a ring, this is a (big!) cartesian product.

*Some facts:*

- $k^X$ is not a domain (**exercise**), and there are nontrivial idempotents ($e^2 = e$)
  
  > Note: it could be worse and have nilpotents.

- $k^X$ is *reduced*, i.e. it has no nonzero nilpotents, where $z\in R$ is nilpotent iff $\exists n\geq 1$ such that $z^n = 0$.
  - Note: domains are reduced, cartesian products of reduced rings are reduced.

- Every subring of $k^X$ is reduced. 
  
  > Moral: should be viewing every ring as functions on some space, but this can't literally be true because of the above restrictions. 
  > Nilpotent elements are "hard to view as functions".

- For $X$ a topological space, $C(X)$ the ring of continuous functionals to $\RR$, then $C(X) \subset \RR^X$.

Exercise
: When is $C(X)$ a domain? (Note that we can have products of nonzero functions being identically zero.)

*Example:* 
Let $R$ be the ring of holomorphic functions $\CC\selfmap$, i.e. $\mathrm{Hol}(\CC, \CC) \definedas \theset{f:\CC \to \CC \suchthat f \text{ is holomorphic }}$.

The set of zeros of such an $f$ must be discrete, the example of bump functions doesn't go through holomorphically.

This is a domain, not Noetherian, not a PID, but every f.g. ideal is principal (thus this is a Bezout domain, a non-Noetherian analog of a PID).

It has infinite Krull dimension: recall that ideals are prime iff $xy\in \pr \implies x\in\pr$ or $y\in\pr$ iff $R/\pr$ is a domain, and the Krull dimension is the supremum $S$ of lengths of chains of prime ideals (only when $S$ is finite).

If $C \subset (X, \leq)$ is a finite-length chain in a totally ordered set, then the length $\ell(C) = \abs{C} - 1$ (1 less than the number of elements appearing).
The *cardinal Krull dimension* of a ring $R$ is the actual supremum.

> Note: in Noetherian rings, there can still be finite but unbounded length chains.

Letting $X$ be a complex manifold (i.e. covered by subsets of $\CC^n$ with holomorphic transition functions) and let $\mathrm{Hol}(X)$ be the holomorphic functionals $f: X\to \CC$.
Then $\mathrm{Hol}(X)$ is a domain iff $X$ is connected.

> Note that if $X$ is disconnected, we can take a function that is constant on one component and zero on another, then switch, then multiply to get a zero function.

If $X$ is a compact connected projective variety, then $\mathrm{Hol}(X)$ is just constant functions by the open mapping functions.
So $\mathrm{Hol}(X) = \CC$, and $\mathrm{card dim} \CC = 0$ because for any field there are only two ideals, and here $(0)$ is prime.
Moreover, $\mathrm{card dim}\mathrm{Hol}(\CC) \geq \alpha_0$.

> Note that for complex manifolds, $X$ is either compact or supports many holomorphic functions.

Theorem (Function Spaces Can Have Large Unbounded Chains)
: If $X$ is a connected complex manifold which has a nontrivial holomorphic function, i.e. $\mathrm{Hol}(X) \supset \CC$, then there exists a chain of prime ideals in $\mathrm{Hol}(X)$ of length $\abs{\RR} > \aleph_0$, i.e. it has at least the cardinality of the continuum.

Note: the cardinality could be even bigger!

> Maximals are prime: equivalent to fields are integral domains.

## Rings

Take all rings to be unital, i.e. containing $1$.
A ring without identity is referred to as an *rng*.
In this course, all rings are commutative.

*Example:* 
This is a fairly special restriction.
Take $(A, +)$ a commutative group and define $\mathrm{End}(A) = \theset{f: A\to A}$ the ring of group homomorphisms under pointwise addition and composition.
This is generally not commutative, i.e. $\mathrm{End}(\ZZ/(2) \oplus \ZZ/(2)) = M_2(\ZZ/(2))$ the ring of matrices with $\ZZ/(2)$ entries, which is not commutative.

Exercise
: Given $(A, +)$, show that $\mathrm{End}(\bigoplus^n A) = M_n(\mathrm{End}(A))$.

Generally, if $R$ is a ring and $M$ is as $R\dash$module, then $\mathrm{End}_R(M) = \theset{f: M \to M}$ of $R\dash$module homomorphisms is always a ring under pointwise addition and composition, and is (probably) non-commutative.

# Wednesday January 15th

Theorem (Cayley)
: For $G$ a group, then there is a canonical injective group homomorphism $\Phi: G \injects \mathrm{Sym}(G) \cong S_n$ for $n = \abs{G}$.
  The map is given by $g \mapsto g\wait$, i.e. multiplying on the left.

Is there an analog for rings?

Take a similar map:

\begin{align*}
R \to \mathrm{End}_\ZZ(R, +) \\
r \mapsto (x \mapsto rx)
.\end{align*}

Unfortunately there is no specialization for commutative groups/rings -- $\mathrm{Sym}(G)$ for example is noncommutative when $\abs {G} \geq 2$.
Similarly, even if $R$ is commutative, $\Endo(R, +)$ is probably not.
As per the Grothendieck philosophy, we find that all rings are a ring of functions on something -- namely themselves, since this map is injective.

All rings are commutative here, so take $R\units = \theset{x\in R \suchthat \exists y \text{s.t.} xy = 1}$.
For $R$ a group, $R\units$ is a commutative group, so this is an interesting invariant.

> Another interesting invariant: the class group.

*Notation:* 
Let $R^\bullet = R\setminus{0}$.
An element $x\in R$ is a zero divisor iff there exists $y\in R^\bullet$ such that $xy = 0$.
For $x,y\in R$ we write $x\divides y$ iff $\exists z\in R$ such that $xz = y$.

$R$ is a domain iff $0$ is the only zero divisors, i.e. $xy = 0 \implies x = 0$ or $y=0$.
$(R^\bullet, \cdot)$ is a commutative monoid (group without inverses) iff $R$ is a domain.
Observe that $R$ is a field iff $R^\bullet = R\units$.

For rings $R, S$ we have the usual definition of ring homomorphism, additionally requiring $f(1) = 1$.
Note that $f(0) = 0$ follows from $f(x+y) = f(x) + f(y)$, but $f(1) = 1$ does not.
Rings have products $R_1 \cross R_2$ which is again a ring under coordinate-wise operations.
Note that there are canonical projections $\pi_i R_1 \cross R_2 \to R_i$.
There is a dual inclusion $\iota_1: R_1 \to R_1 \cross R_2$ given by $x \mapsto (x, 0)$, but these are not ring homomorphisms (although everything is a group homomorphism).
This is because $\iota_1(1) = (1, 0) \neq (1, 1)$, the identity of $R_1\cross R_2$.
Note that 1 always has to map to an idempotent element, i.e. $e^2 = e$, and idempotents are always zero divisors.
Also note that the map $x\mapsto 0$ is not a ring homomorphism unless $S = 0$.

Definition (Ring Morphisms)
: A **ring homomorphism** is a map $f: R \to S$ is an isomorphism iff it has a two-sided inverse, i.e. there exists a morphism $g: S \to R$ with $g\circ f = \id_R$ and $f\circ g = \id_S.$

Exercise
: Check that this is equivalent to $f$ being a bijection.

Exercise
: Check that the zero ring is the final object in the category of rings.
  Show that $\ZZ$ is the initial object in this category?

$R$ is a subring of $S$ iff $R \subset S$ and the inclusion $R\injects S$ is a morphism.

Adjoining elements:
Suppose $R\leq S$ is a subring and $X \subset S$ is just a subset.
Then there exists a ring $R[X]$ such that

- Top-down description: $R[X] \leq S$ is a subring containing $R$ and $X$, and is minimal with respect to this property (obtained by intersecting all such subrings)
- Bottom-up description: things resembling $\sum r_i x_i$

Exercise (1.6 in Notes)
:   Take $R = \ZZ, S = \QQ$, $\mcp$ a arbitrary set of prime numbers.
    Let $$\ZZ_{\mathcal P} = \ZZ\left[ \theset{\frac 1 p \suchthat p\in \mcp}\right].$$

    a. When do we have $\ZZ_{\mathcal P_1} \cong \ZZ_{\mathcal P_2}$? 

      > Hint: take $\mcp_1 = \theset{3,7,11}, \mcp_2 = \theset{5}$. Need $\mcp_1 = \mcp_2$!

    b. Show that every subring $T$ such that $\ZZ \leq T \leq \QQ$ is of the form $\ZZ_{\mathcal P}$ for some unique set of primes $\mcp$.

      > Note that if $T$ is any intermediate ring between $R$ and $S$, then $R[T] = T$.

## Ideals and Quotients

For $f: R \to S$ a ring homomorphism, define $I = \ker f = f\inv(\theset{0})$.
Then $I$ is a subgroup of $(R, +)$, and for all $i\in I$ and all $r\in R$ we have $ri \in I$, since $$f(ri) = f(r) f(i) =f(r) 0 = 0.$$
In other words, $RI \subseteq I$.

By definition, an ideal $I$ of $R$ is an additive subgroup of $R$ that satisfies these properties.
Is every ideal the kernel of a ring homomorphism?
The answer is yes, namely the quotient $\pi: R \to R/I$.

Theorem (Every Ideal Determines a Quotient Ring)
:   Let $I \subset (R, +)$, then TFAE:

    a. $I$ is an ideal of $R$, written $I \normal R$.
    b. There exists a ring structure on the quotient group $R/I$ such that the projection $r \mapsto r + I$ is a ring morphism.

    When these conditions hold, the ring structure on $R/I$ is *unique* and we refer to this as the *quotient ring*.


# Friday January 17th

For a $R \subset T$ a subring of a ring, the set of intermediate rings is a large/interesting class of rings.
Recall: uncountably many rings between $\ZZ$ and $\QQ$!
Taking $R$ a PID and $T$ its fraction field, a similar result will hold.

Define $I\normal R$ as the kernel of a ring morphism.
This implies that $I \subset(R, +)$ with the absorption property $RI \subset I$.
Conversely, any $I$ satisfying these two properties is the kernel of a ring morphism: namely $R \to R/I$.
This makes sense as a group morphism.

Exercise
: Define $xy + I = (x+I)(y+I)$, need to check well-definedness.
	Write out $$(x+i_1)(y+i_2) = \cdots$$
	Need to check that $$i_1y + i_2 x + i_1 i_2 \in I,$$ but the absorption property does precisely this.

Note that if we were in a non-commutative setting, this would define a left ideal.
These don't have to coincide with right ideals -- there are rings where the former satisfy properties that the latter does not.

*Example:*
The subrings of $R = \ZZ$ are of the form $n\ZZ$ for $n\geq 0$, with the usual quotient.

Definition (Proper Ideals)
: An ideal $I \normal R$ is *proper* iff $I \subsetneq R$.

Exercise
: An ideal $I$ is not proper iff $I$ contains a unit.

Exercise
: $R$ is a field iff the only ideals are $0, R$.

Definition (Lattice Structure of Ideals)
: 	Let $\mathcal{I}(R)$ be the set of all ideals in $R$.
		
    What structure does it have?
		It is partially ordered under inclusion.
		It is a complete lattice, i.e. every element has an infimum (GLB) and a supremum (LUB).
		Namely, for a family of ideals $\theset{I_j}$, the **infimum** is the intersection and **supremum** is defined as $\generators{I_j \suchthat j\in J}$, the smallest ideal containing all of the $I_j$, i.e.
		$$
		\generators{y} = \theset{ \sum^n r_i y_i \suchthat n\in \NN_{> 0},~ r_i \in R,~ y_i\in y}
		.$$

Exercise
: For $I_1, I_2 \normal R$, it is the case that $I_1 + I_2 \definedas \theset{i_1 + i_2} = \generators{I_1, I_2}$.

Theorem (Lattice Isomorphism Theorem for Rings)
: Let $I\normal R$ and $\phi: R \to R/I$, and define $\ell(I) = \theset{I \subset J \normal R}$.
	Then we can define maps

	\begin{align*}
	\Phi: \ell(R) &\to \ell(R/I) \\
	J &\mapsto \frac{I+J}{J}
	,\end{align*}

	and

	\begin{align*}
	\Psi: \ell(R/I) &\to \ell(R) \\
	J \normal R/I &\mapsto \phi\inv(J)
	.\end{align*}

	We can check that $\Psi \circ \Phi)(J) = I+J$, and $\Phi \circ \Psi(J) = J$ (= $J/I$?)
	So $\Psi$ has a left inverse and is thus injective.
	Its image is the collection of ideals that contain $J$, and $\Psi: \ell(R/I) \to \ell_I(R)$ **is a bijection** and is in fact a lattice isomorphism with $\ell_I(R) \subset \ell(R)$.

Note that this gives us everything above a given ideal in the ideal lattice (blue); the dual notion will come from localization (red):

\begin{center}
\begin{tikzpicture}[baseline= (a).base, scale=0.8, every node/.style={scale=0.8}]
\node (a) at (0,0){
\begin{tikzcd}
&                                        &    & \spec(R/I)                             &    &                                        &    &  &  &    &                                        &    & \spec(R_\mfp) \arrow[llddd] \arrow[ddd] \arrow[rrddd] &    &                              &    \\
&                                        &    &                                        &    &                                        &    &  &  &    &                                        &    &                                                       &    &                              &    \\
{} & {} \arrow[rruu]                        & {} & {} \arrow[uu]                          & {} & {} \arrow[lluu]                        & {} &  &  &    &                                        &    &                                                       &    &                              &    \\
& \color{blue}{\mfp_1} \arrow[lu] \arrow[u] \arrow[ru] &    & \color{blue}{\mfp_2} \arrow[lu] \arrow[u] \arrow[ru] &    & \color{blue}{\mfp_3} \arrow[lu] \arrow[u] \arrow[ru] &    &  &  &    & \mfp_1 \arrow[ld] \arrow[d] \arrow[rd] &    & \color{red}{\mfp} \arrow[dd] \arrow[ld] \arrow[rd]                 &    & \mfp_2 \arrow[ld] \arrow[rd] &    \\
&                                        &    &                                        &    &                                        &    &  &  & {} & {}                                     & {} &                                                       & {} &                              & {} \\
&                                        &    & \color{blue}I \arrow[lluu] \arrow[uu] \arrow[rruu] &    &                                        &    &  &  &    &                                        &    & \color{red}{\mfq}\ar[dd]                                                  &    &                              &    \\
&                                        &    &                                        &    &                                        &    &  &  &    &                                        &    &                                                       &    &                              &    \\
&                                        &    &                                        &    &                                        &    &  &  &    &                                        &    & \color{red}{(0)}                                                     &    &                              &
\end{tikzcd}
};
\end{tikzpicture}
\end{center}

> Here we take $\mfp$ to be a maximal ideal.

Remarks
: 	The ideal lattice $\ell(R)$ is

	- A complete lattice under subset inclusion,
	- A commutative monoid under addition
	- A commutative monoid under *multiplication*, which we'll define.

Definition (Product of Ideals)
: For $I, J \normal R$, we define $$IJ = \generators{ij \suchthat i\in I,~j\in J}.$$

Note that we have to take the ideal generated by products here.

For $\generators{x} = (x)$ a principal ideal and $\generators{y}$ principal, we do have $(x)(y) = (xy)$.
Note that $IJ \subset I \intersect J$, whereas the sum was larger than $I, J$.

Exercise
: Note that $( \ell(R), \cdot)$ has an absorbing element, namely $(0) I  = (0)$.
	For $(M, +)$ a commutative monoid and $M \injects G$ a group, then multiplication by $x$ is injective and so for all $y\in M$, $xz = yz \implies x=y$, so $M$ is cancellative.

Question: what if we consider $\mathcal{I}^\bullet(R)$ the set of nonzero ideals of $R$.
Does this help?
We will see next time.

# Wednesday January 22nd

Let $R$ be a ring and let $\mathcal{I} (R)$ be the set of ideals $I\normal R$. 
This algebraic structure is

- Partially ordered under inclusion
- Forms a complete lattice with $\sup$ the ideal generated by a family and $\inf$ the intersection.
- Forms a commutative monoid under $I+J$
- Forms a commutative monoid under $IJ$

For any commutative monoid $(M, +)$, there exists a group completion $G(M)$ such that

- $G(M)$ is a commutative group
- $g: M \to G(M)$ is a monoid homomorphism
- For any map $\phi: (M, +) \to (G, +)$  into a commutative group, we have the following diagram

\begin{center}
\begin{tikzcd}
M \arrow[rr, "\forall \phi"] \arrow[rdd, "g"] &                                   & G \\
                                              &                                   &   \\
                                              & M(G) \arrow[ruu, "\exists! \Phi"] &  
\end{tikzcd}
\end{center}

> So $\phi$ factors through $M(G)$.

If this exists, it is unique up to unique isomorphism (as are all objects defined by universal properties).
It remains to construct it.

Exercise
:   For $(M, +)$ a commutative monoid, show that TFAE

    1. There exists an injective $\iota: M \injects G$ monoid homomorphism for $G$ some commutative group.
    2. The map $g: M \to G(M)$ is an injection.
    3. $M$ is cancellative, i.e. $\forall x,y,z\in M$ we have $x+z = y+z \implies x = y$, i.e. the map $p_z(x) = x + z$ is injective.

The content here is in $3 \implies 1$.

Definition (Reduced Monoids)
: A commutative monoid is *reduced* iff $M\units = (0)$, i.e. if "$\forall m\in M\exists n$ such that $m+n = 0$" $\implies$ $m=0$

Example
: $(\NN, +)$ and $(\ZZ^+, \cdot)$ are cancellative and reduced.

Definition (Zero Elements in Monoids)
: $z\in M$ is a **zero element** iff $z+x = z$ for all $x\in M$.

Remark
: If $M$ has a zero element, then $G(M) = \theset{0}$.

$(0)$ is a zero element of $(\mathcal I(R), \cdot)$, so this is not cancellative.
If we take $\mathcal{I}^\bullet$ the set of nonzero ideals with multiplication, then this is a submonoid of $\mathcal{I}(R)$ iff $R$ is a domain.

For $R$ a domain, let $\mathcal{I}_1(R)$ be the set of nonzero principal ideals of $R$, then $\mathcal I_1(R) = R^\bullet/R\units$, so this is reduced and cancellative.

What is the group completion? 
In this case, it will consist of fractional ideals.

If $R$ is a PID, then $\mathcal I_1^\bullet(R) = \mathcal I^\bullet (R)$ is reduced and cancellative.

Example
: $\mathcal I^\bullet \cong (\ZZ^+, \cdot)$.

Warning
: If $R$ is not a PID, then $\mathcal I^\bullet(R)$ need not be cancellative.

Exercise
: Take $R = \ZZ[\sqrt{-3}]$ and $p_2 \definedas \generators{1+\sqrt{-3}, 1-\sqrt{-3}}$.
  Show that $\abs{R/p_2} = 2$, $\abs{R/(2)} = 4$, and $p_2^2 = p_2(2)$ and $\abs{R/p_2^2} = 8$.
  Conclude that $\mathcal I^\bullet(R)$ is not cancellative.

What went wrong here?
Take $K = \QQ[\sqrt{-3}]$, then $\ZZ_k[\frac{1 + \sqrt{-3}}{2}]$ is the integral closure of $\ZZ$ in $K$.
$\ZZ_k$ is a Dedekind domain, and there are inclusions

\begin{align*}
\ZZ \subset \ZZ[\sqrt{-3}] \subsetneq \ZZ[\frac{1 + \sqrt{-3}}{2}] \subseteq K
.\end{align*}

Here the problem is that $\ZZ[\sqrt{-3}]$ is not a Dedekind domain.
If $R$ is a Dedekind domain, then $\mathcal I^\bullet(R)$ is cancellative.

Exercise
: Does the converse hold?

Things that are too small to be the full rings of integers, and things tend to go wrong (??).

## Pushing / Pulling

Let $f: R\to S$ be a ring homomorphism.

We can define a pushforward on the set of ideals $\mathcal{I}(R)$:

\begin{align*}
f_*: \mathcal{I}_R &\to \mathcal{I}(S) \\
I &\mapsto \generators{f(I)}
.\end{align*}

and a pullback

\begin{align*}
f^*: \mathcal{I}(S) &\to \mathcal{I}(R) \\
J &\mapsto f\inv(J)
.\end{align*}

**Exercise:**
Show that $f\inv(J) \normal R$.

For $I \normal R$ and $J\normal S$, then 

\begin{align*}
f^* f_* (I) \supseteq I \\
f_* f^* (J) \subseteq J
.\end{align*}

**Exercise:**
These are not equal in general, and give examples where equality does and does not hold.

If $f$ is surjective, $f_* f^* J = J$.

> Will also hold for localization, which is dual to taking a quotient.

Define $\bar I \definedas f^* f_* (I)$ and $J^\circ \definedas f_* f^* (J)$, the closure and interior respectively.
Show that these operations are idempotent.

Definition (Prime Ideals)
: An ideal $\mfp$ is *prime* iff $ab\in \mfp \implies a\in \mfp$ or $b\in \mfp$.

**Exercise:**
$I$ is prime iff $R/I$ is a domain.

Definition (Prime Spectrum)
$\spec(R) = \theset{\mfp \normal R}$ the collection of prime ideals is the spectrum.

Exercise
: Show that for $I\normal R$, if we define 
  $$
  V(I) \definedas \theset{\mfp \in \spec(R) \suchthat p \supseteq I} \subseteq \spec(R)
  ,$$
  then $\theset{V(I) \suchthat I \in \mathcal{I}(R)}$ are the closed sets for a topology on $\spec(R)$ (the Zariski topology).

Exercise
: If $f: R\to S$ and $J \in \spec(S)$ then $f^*(J) \in \spec(R)$.
  Show that $f^*: \spec(S) \to \spec(R)$ is a continuous map.
  Conclude that $\spec(\wait)$ is a functor.

Definition (Maximal Ideals)
: $I\normal R$ is **maximal** iff $I$ is proper and is not contained in any other proper ideal.

Exercise
: $I$ is maximal iff $R/I$ is a field.

Exercise
: Show that maximal ideals are prime.

Definition (Max Spectrum)
: Let $\spec_{\text{max}}(R)$ be the set of maximal ideals and define $V(I) = \theset{\mfm \in \spec_{\text{max}}(R) \suchthat \mfm \supseteq I}$.

Exercise
: Show that these form the closed sets for a topology, and that this is the subspace topology for the Zariski topology.

Exercise
: Show that if $f: R\to S$ and $\mfm \in \spec_{\text{max}}(S)$ that $f^*(\mfm)$ is prime but need not be maximal.

Exercise
: Show that if $f$ is an integral extension, then maximal ideals pull back to maximal ideals.

# Friday January 24th

## Ideals and Products 

Recall: 
Prime and maximal ideals.

***Fact:***
If $I \normal R$ then there exists a maximal ideal $I \subset \mfm \normal R$.

Proof
: Use Zorn's lemma.

Corollary
: $\maxspec R \neq \emptyset \iff R \neq 0$.


Later:
Multiplicative avoidance, if $S \subset R$ is nonempty with $SS\subset S$, let $I \normal R$ with $I\intersect S = \emptyset$, then

a. There exists an ideal $J \supseteq I$ with $J \intersect S =\emptyset$ which is maximal with respect to being disjoint from $S$.

b. Any such ideal $J$ is prime.

Taking $S = \theset{1}$ recovers the previous fact.

Exercise
: Let $f: R\to S$ be a ring homomorphism and $\pr \in \spec(R)$.
Show that $f_*(\pr)$ need not be prime in $S$.

We can consider products of rings, and correspondingly $\mci(R_1 \cross R_2)$.

Exercise
: Show that if $\phi$ is surjective, $\phi(I)$ is an ideal.

Proposition (Ideals of Products are Products of Ideals)
: Let $I \in \mci(R_1 \cross R_2)$.
  Take $\pi_i \to R_i$ the projections, and let $I_i$ be the corresponding images of $I$.
  Then $I = I_1 \cross I_2$.

Note: a suspiciously strong result! Not every group is the cartesian product of some subgroups.

It's clear that $I \subset I_1 \cross I_2$.

![Image](figures/2020-01-24-11:32.png)\

Proof
:   Showing $I_1 \cross I_2 \normal R_1 \cross R_2$ is an ideal, since it equals $\generators{ I_1 \cross \theset{0}, \theset{0} \cross I_2 }$.

    To show $I_1 \cross I_2 \subseteq I$, show that $I_1 \cross 0, 0 \cross I_2 \subseteq I$.
    E.g. $I_1 \cross 0 \subseteq I$: take $(x, 0) \in I_1 \cross 0$ such that there exists a $y\in R_2$ with $(x, y) \in I$.
    Then $(x, y) \cdot (1, 0) = (x, 0) \in I$, then similarly $0 \cross I_s \subseteq I$.

Exercise
: Use $\mci(R_1 \cross R_2) = \mci(R_1) \cross \mci(R_2)$ to describe $\spec(R_1 \cross R_2)$ in terms of $\spec(R_1)$ and $\spec(R_2)$.

*Question:*
For a ring $R$, when is $R \cong R_1 \cross R_2$ for some nonzero $R_1, R_2$?


Exercise
: Show that comaximal ideals correspond with coprime ideals when $R = \ZZ$.

Theorem (Chinese Remainder)
: If $I_1, I_2$ are comaximal, so $I_1 + I_2 = R$, then the map

  \begin{align*}
  \Phi: R \to R/I_1 \cross R/I_2 \\
  x \mapsto (x+ I_1, x+ I_2)
  .\end{align*}

  Then $\ker \Phi = I_1 \intersect I_2 \equalsbecause{CRT} I_1 I_2$ and $\Phi$ is surjective, and

  \begin{align*}
  R/(I_1 \intersect I_2) = R/I_1 I_2 \cong R/I_1 \cross R/I_2
  .\end{align*}


Proof
:   **Case 1:**
    Let $I_1 + I_2 = R$ and $I_1 \intersect I_2 = 0$ (equivalently $I_1 I_2 = (0)$), then $R \cong R/I_1 \cross R/I_2$.

    \ 

    Conversely, let $R = R_1 \cross R_2$ with $R_1, R_2$ nonzero.
    Let $e_1 = (1, 0)$ and $e_2 = (0, 1)$.
    Then $e_1 e_2 = 0$ and $e_2 = (1 - e_1)$, so $0 = e_1(1 - e_1) = e_1 - e_1^2$ and $e_1$ is idempotent.
    
    \ 

    So $e_1, e_2$ are complementary nontrivial idempotents.
    Then $I_1 I_2 = e_1 e_2 = (0)$, $I_1 + I_2 = \generators{e_1, e_2} = R$, and thus $R = R/e_2R \cross R/e_1 R$.
    Note that $e_2 R = 0 \cross R_2$ and $e_1 R = R_1 \cross 0$, thus

    \begin{align*}
    R/e_2 R = \frac{R_1 \cross R_2}{0 \cross R_2} = R_1 \\
    R/e_1 R = \frac{R_1 \cross R_2}{R_1 \cross 0} = R_2
    .\end{align*}

We thus have a correspondence

\begin{align*}
\correspond{\text{Nontrivial product decompositions }R = R_1 \cross R_2} 
&\iff
\correspond{I_1, I_2 \normal R \text{ such that } I_1 I_2 = 0 \text{ and } I_1 + I_2 = R} \\
&\iff 
\correspond{\text{Idempotents } e \neq 0, 1}
.\end{align*}

Thus a ring can be decomposed as a product iff it contains nontrivial idempotents.

Definition (Connected Rings)
: $R$ is connected iff there do not exists nonzero $R_1, R_2$ such that $R \cong R_1 \cross R_2$ iff $R$ does not contain an idempotents $e\neq 0, 1$.

Exercise
: Show that $R$ is connected iff $\spec(R)$ is connected as a topological space.

Note:
Not every ring is a finite product of connected rings.

## Modules

For $(M, +)$ a commutative group, we want an action $R\actson M$ for $R$ a ring.
Recall that $\endo(M)$ for a group is a (potentially noncommutative) ring.
An $R\dash$module structure is a ring homomorphism $R \to \endo(M)$.
Equivalently, it is a function $R\cross M \to M$ with $rs(x) = r(sx)$, $r(x+y) = rx + ry$, and $1\cdot x = x$ for all $x\in M$.

> Note that this defines a left $R\dash$module, but right/left modules coincide for commutative rings.

Exercise
: Let $M$ be an $R\dash$module and for $m\in M$ define $$\ann(m) = \theset{r\in R \suchthat xm = 0} \normal R,$$ show this is in fact an ideal.

Note: skipped chapter on Galois connections, i.e. some binary relation on a pair of sets. This is an instance of such a connection, where $x\sim m \iff xm = 0$.

Exercise
:   For any subset $S \subset M$, define 
    $$
    \ann(S) \definedas \theset{x\in R\suchthat xm = 0 ~\forall m\in S}
    .$$
    Show that $\ann(S) = \intersect_{m\in S} \ann(m)$ and 
    $$
    \ann(M) = \theset{x\in R \suchthat xM = 0} = \ker(R \to \endo(M))
    .$$

Definition (Faithful Modules)
: $M$ is **faithful** iff $\ann(M) = 0$ iff $R \injects \endo(M)$ is an injection.

Exercise
: Any $M$ is naturally a faithful $R/\ann(M) \dash$module.

# Monday January 27th

## Localization

Consider rings $T$ such that $\ZZ \subseteq T \subseteq \QQ$, and let $P$ be a set of prime numbers.
We've shown that if $P, Q$ are two sets of prime numbers, then $\ZZ_p = \ZZ_q \iff \ZZ_p \cong \ZZ_q \iff P = Q$.

Let $R$ be a domain with fraction field $K$.
Let $P$ be a set of mutually nonassociate prime elements.
Note that $p\in R$ is a prime element iff $(p)$ is a prime ideal.
We say $x, y$ are associates iff there exists a $u\in R\units$ such that $y=ux$.
Since we're in a domain, (exercise) this is equivalent to $(x) = (y)$.

**Fact:**
We can then consider $$R_P definedas R\left[\theset{\frac 1 p \suchthat p\in P}\right],$$ and the fact is that the previous statement still holds.

But if $R = \ZZ$, we also have (exercise) if $Z\subset T \subset \QQ$ then $T = \ZZ_p$ for a unique $P$.

**Exercise:** 
How do we find such a $P$? 
This comes down to looking at $\frac a b \in T$ with $\gcd(a, b) = 1$, then $\frac 1 b \in T$.

> Hint: In a PID, $\gcd(a, b)$ exists and is a $\ZZ\dash$linear combination of $a$ and $b$.
> The solution should work for an arbitrary PID.

Let $R$ be a domain and $S$ multiplicatively closed (so $(S, \cdot) \leq (R, \cdot)$ is a submonoid).
Then $S$ is *primal* if $S$ is generated as a monoid by its prime elements.
Suppose that $S$ is *saturated*, i.e. if $s\in S$ and $r\in R$ with $r\divides s$, then $r\in S$.

> Can always add in all divisors.

We can then define the localization of $R$ at $S$, 

\begin{align*}
R_s \definedas \theset{ \frac a s \suchthat a\in R, s\in S }
.\end{align*}

This satisfies $R \subset R_S \subset K$, and is a multiplicative partial group completion.
If we took nonzero elements, this would yield exactly the fraction field.

Theorem (Negata)
: Let $R$ be a Noetherian domain with $S\subset R$ primal as above.
  If $R_S$ is a UFD, then $R$ is a UFD.

Exercise
: Show that the converse holds.

> Fraction fields are always UFDs?
> Localizing makes it easier for irreducibles to be prime.
> This helps prove that some interesting rings are UFDs.

## Modules

If $M$ is an $R\dash$module, then an $R\dash$submodule $N \leq M$ is a subgroup of $(M, +)$ such that $R\actson N \subset N$.

Every ring $R$ is an $R\dash$module over itself, and the $R\dash$submodules of $R$ are precisely the ideals of $R$.

> Can express certain concepts about rings/commutative algebra in the language of modules.

A morphism of $R\dash$modules $f: M\to N$ is a homomorphism $(M, +) \to (N, +)$ such that $f(r\actson m) = r\actson f(m)$.

**Exercise:**
Any module morphism that is a bijection is an isomorphism. 
(Usually true in algebraic settings.)

We can form quotient modules $\frac M N$ which is an $R\dash$module with $r\actson (m + N) = (r\actson m) + N$, and $M \to \frac M N$ is a surjective morphism.

If $I\normal R$ is an $R\dash$submodule of $R$, then $R/I$ is an $R\dash$module.
We have $\ann(R/I) = I$.

**Fact:**
Every ideal in $R$ is the annihilator of some $R\dash$module.

**Fact:**
Suppose $R$ is a ring such that every every nonzero $R\dash$module is faithful, then $R$ is a field.
The converse also holds.

> General idea: we study rings by looking at modules over them.

For an $R\dash$module $M$ and $S\subset M$, then we can consider $\generators{S}$ the $R\dash$submodule generated by $S$.
We can write this as 
$$
\intersect_{N\st S\subset N\subseteq RM} N = \theset{\sum_{i=1^n} r_i s_i \suchthat r_i\in R, s_i\in S}
.$$

We say $R$ is finitely generated iff there exists a finite generating set $S \subset M$.
We say $M$ is cyclic iff it is generated by a single element, i.e. $M = \generators{s}$.

Let $\theset{M_i}_{i\in I}$ be a family of $R\dash$modules.
Let $\prod_{i\in I} M_i$ be the cartesian product with a coordinate-wise $R\dash$action be the direct product.
Let 
$$
\bigoplus_{i\in I}M_i = \theset{(x_i) \in \prod M_i \suchthat x_i \neq 0 \text{ for finitely many } i}
,$$ 
which is a submodule of $\prod M_i$.
When $I$ is finite, these are equal.

Recall:
If $R$ is a PID and $M$ is a finitely generated $R\dash$module, then there exist finitely many cyclic $R\dash$ modules $\theset{C_1, \cdots, C_n}$, then $M \cong \bigoplus C_i$.

**Exercise:**
Let $R$ be a ring and $C$ a cyclic $R\dash$module, then show that $C \cong R /\ann(C)$ as $R\dash$modules.

> We'll later see that the class of rings $R$ such that every $R\dash$module is free are exactly fields.

*Remark:*
Let $I\normal R$, then $I$ is cyclic as an $R\dash$module iff $I$ is principal.

**Exercise:**

a. Let $I\normal R$ for $R$ a domain, then $I$ is indecomposable, i.e. $I\neq M_1 \oplus M_2$ for any nonzero $M_1, M_2$ $R\dash$modules.

b. If $R$ is additionally Noetherian and not a PID, then there exists an $I\normal R$ where $I$ is finitely generated, not principal, and so $I$ is not a cyclic $R\dash$module.

> Converse to structure theorem! Mild assumptions negate cyclic direct sum decomposition.



# Wednesday January 29th

Coming up: the modules $\bigoplus \ZZ, \hom_R(M, N), M \tensor_R N$, as well as various properties:

- Torsion
- Torsionfree
- Free
- Projective
- Flat
- Injective
- Divisible

We have a series of implication
$$
\text{free} \implies \text{projective} \implies \text{flat} \implies \text{torsionfree}
$$

## Universal Mapping Properties

Definition (Direct Product of Modules)
:   For a collection $\theset{M_i}$ of modules, the **direct product** is characterized by

    \begin{center}
    \begin{tikzcd}
    &  &                                                     &  & M_j \\
    N \arrow[rrrru, "\varphi_j", bend left] \arrow[rrrrd, "\varphi_k"', bend right] \arrow[rr, "\exists!", dotted] &  & \prod M_i \arrow[rrd, "\pi_k"] \arrow[rru, "\pi_j"] &  &     \\
    &  &                                                     &  & M_k
    \end{tikzcd}
    \end{center}

    Here we define the canonical projection by $\pi_j(m_1, \cdots, m_j, \cdots) = m_j$.

Fact
: $$\hom_R(N, \prod M_i) = \prod \hom_R(N, M_i)$$

Definition (Direct Sum of Modules)
:   For a collection $\theset{M_i}$ of modules, the **direct sum** is characterized by

    \begin{center}
    \begin{tikzcd}
    M_j \arrow[rrd, "\iota_i", hook] \arrow[rrrrd, "\varphi_j", bend left] &  &                                      &  &   \\
    &  & \bigoplus M_i \arrow[rr, "\exists!"] &  & N \\
    M_k \arrow[rru, "\iota_k"] \arrow[rrrru, "\varphi_k"', bend right]     &  &                                      &  &  
    \end{tikzcd}
    \end{center}

    Here we define the canonical *injection* by $\iota_j(m) = (0, 0, \cdots, m, 0, \cdots)$.

In this case, we can define $\phi(m_1, m_2, \cdots, m_i, \cdots) = \sum \phi_i(m_i)$, which makes sense because cofinitely many of the terms in this sum are zero.

Fact
: $$\hom_R\qty{\bigoplus_{s\in S} R, N} = \prod_{s\in S} \hom_R(R, N) = N^S$$

Fact
: $\hom_R(R, N) \cong N$ via the map $f\in\hom(R, N) \mapsto f(1)$.


## Free Modules

Definition (Spanning, Linear Independence, and Basis)
:   For $M$ an $R\dash$module and $S\subset M$,

    1. $S$ *spans* $M$ if $\generators{S} = M$, where $\generators{S}$ is the set of all finite linear combinations of elements in $S$.

    2. $S$ is $R\dash$linearly independent iff $\sum r_i m_i = 0 \implies r_i = 0$ for all $i$.

    3. $S$ is a *basis* for $M$ iff $S$ is a spanning $R\dash$linearly independent subset of $M$.

    If $M$ admits a basis, $M$ is said to be *free*.

Theorem (Free Modules are Quotients)
:   \hfill
  
    a. If $S = \theset{s_i}$ is a basis for $M$, then there is a surjection
    \begin{align*}
      \bigoplus_{s\in S} R &\to M \\
      r_i &\mapsfrom \sum r_i s_i
    .\end{align*}
    
    b. For any set $S$, the module $\bigoplus_{s\in S} R$ has a canonical basis
    $$
    \vector{e}_s = (0, 0, \cdots, 0, 1, 0, \cdots, 0)
    $$

    c. If $\phi: \bigoplus _{s\in S} R \to M$ is an isomorphism, then $\theset{\phi(\vector e_s)}_{s\in S}$ is a basis for $M$.

Fact
: Let $F$ be a free $R\dash$module, then $\ann(F) = R$ if $F = (0)$ and 0 otherwise.
  Moreover,

  - $\ann(\bigoplus M_i) = \intersect \ann(M_i)$
  - $\ann(R) = \theset{0}$

Proposition (Characterization of Freeness in terms of Rings)
:   For a ring $R\neq 0$, TFAE:
  
    a. Every $R\dash$module is free
    b. $R$ is a field

Proof 
:   $a \implies b$: 
    If $R$ is not a field, then $0 < I \normal R$ is proper, and since $\ann(R/I) = I$, we have $0 < \ann(R/I) < R$.
    So $\ann(R/I)$ is proper, and $R/I$ is thus not a field.

    The reverse implication is linear algebra.
    Every vector space has a basis by AOC (note that this is equivalent to Zorn's Lemma).

Fact
: Every $R\dash$module $N$ is the quotient of a free module.

This follows by taking the generating set $S = N$, then $\bigoplus_{n\in N}R \surjects N$ using a previous fact.

Fact
: $N$ is quotient of a finitely generated free module iff $N$ is finitely generated.

Exercise
: Show that for $0 \to A \to B \to C \to 0$ a SES of $R\dash$modules,

  a. If $A, C$ are finitely generated, then so is $B$.

  b. If $B$ is finitely generated, then so is $C$.

Example
: It is possible for $B$ to be finitely generated with $A < B$ and $A$ not finitely generated.
  Let $R$ be non-Noetherian.
  Equivalently, there exists $I\normal R$ that is not finitely generated.
  So take $B = R$ and $A = I$.
  For example, take $M = C([0, 1], R)$ the module of continuous functionals, which is non-Noetherian.

Examples of non-Noetherian rings:

1. $\theset{R_i}$ where each $R_i$ is infinite and ???; then $\prod R_i$ is non-Noetherian.

2. For $k$ a field, $T = \theset{t_n \suchthat 1\leq n < \infty}$, take $R = k[T]$.
   Then $I = \generators{T}$ is not finitely-generated.

Fact
: If $R$ is a Noetherian ring, then every finitely generated $R\dash$module is a Noetherian module.

Example
: Take $R, M = \ZZ$, which are free modules, and $S = \theset{2}$.
  Note that $S$ is $R\dash$linearly independent in $M$, but can not be extended to a basis, and $\generators{S} = 2\ZZ \neq \ZZ$.
  Similarly, $S' = \theset{2, 3}$ can not be reduced to a basis, while $\generators{S'} = \ZZ$.

Question: can $M$ have basis sets of different cardinalities?
Answer: sometimes, commutative rings have the *invariant basis property*.

# Friday January 31st

## Tensor and Hom

Let $M, N$ be $R\dash$modules, then we define

\begin{align*}
\hom_R(M, N) \definedas \theset{f: M\to N \suchthat f\text{ is an $R\dash$module map }}
.\end{align*}

Recall that $R\dash$module maps satisfy

- $f: (M, +) \to (N, +)$ a morphism of abelian groups
- For all $r\in R$, for all $m\in M$, $f(rm) = rf(m)$.

Note that $\hom_R$ is a commutative group, and is in fact an $R\dash$module with structure given by $(r\cdot f) \cdot m \mapsto r f(m) = f(rm)$.

> Note that the proof of this fact uses commutativity in a key way.

Facts:

\begin{align*}
\hom_R(R, N) &= N \\
\hom_R\qty{\bigoplus_{s\in S} R_s, N} &= N^S \\
\hom_R(M, R) &\definedas M\dual
.\end{align*}


Note:
Infinite dimensional vector spaces over fields are never isomorphic to its dual. 

**Exercise:**
Think about $M\dual$ and $(M\dual)\dual$.

Recall the map

\begin{align*}
\iota: M &\to (M\dual)\dual = \hom_R(\hom_R(M, R), R) \\
x &\mapsto ( \ell: M\to R \mapsto \ell(x) \in R )
.\end{align*}

**Exercise:**
If $R = k$ is a field, then show that $\iota$ is injective iff $\dim M$ is finite.

Is this always injective? No! Counterexample:
Take $R = \ZZ$ and $M = \ZZ/p\ZZ$, then $M\dual = \hom_\ZZ(\ZZ/p\ZZ, \ZZ) = 0$.

It can also fail to be surjective in the infinite dimensional case -- the space $M\dual$ is strictly larger than $M$.

Definition (Reflexive Modules)
: $M$ is *reflexive* if $\iota: M \mapsvia{\sim} (M\dual)\dual$ is an isomorphism.

**Exercise:**
Show the following:

- If $M$ is free and finitely generated, then $M$ is reflexive.
- If $R=k$ is a field, then $M$ is reflexive iff $M$ is finitely generated.
- There exists a ring $R$ and a reflexive $R\dash$module $M$ that is not finitely generated.

## Free and Torsion Modules

Let $R$ be a domain, and for all $a\in R^\bullet$ the map $[a]:R\to R$ is injective, and $[a] \in \hom_R(R, R) = R$.

Definition (Torsion Submodule)
: $$M[\tors] \definedas \theset{ m\in M \suchthat \ann(m) \neq (0) } \leq M$$ is the **torsion submodule** of $M$.

Definition (Torsion and Torsionfree Modules)
: $M$ is **torsion** iff $M = M[\tors]$, and $M$ is **torsionfree** iff $M[\tors] = (0)$.

Exercise
: Show that if $0 \to A \to B \to C \to 0$, then

	- Show that if $B$ is torsion then $A, C$ are torsion.
	- If $A, C$ are torsion, must $B$ be torsion?
	- Show that if $B$ is torsion-free then $A$ is torsion-free but $C$ need not be torsion-free.
	- If $A, C$ are torsion-free, must $B$ be torsion-free?

> Note: $0 \to \ZZ/2 \to \ZZ/4 \to \ZZ/2 \to 0$ is an extension that isn't a semidirect product!

Fact
: Free modules are torsion-free.

Note that we need to be in a domain to even talk about torsion.

Proposition (Torsionfree implies submodule of f.g. free)
: Let $R$ be a domain and $M$ an $R\dash$module.
	Then

	a. $M / M[\tors]$ is torsion-free.
	b. If $M$ is finitely generated, then $M$ is torsion free iff $M$ is isomorphic to a submodule of a finitely-generated free module.

Proposition (Implication Chain)
: Free $\implies$ projective $\implies$ flat $\implies_{R\text{ a domain }}$ torsion-free.

Proof (of (a))
: 	Let $x\in M/M[\tors]$ such that $\exists r\in R^\bullet$ such that $rx = 0$.
		Lift $x$ to $\tilde x\in M$, then $r\tilde x \in M[\tors]$.
		Then $\exists r' \in R^\bullet$ such that $$0 = r'(r\tilde x) = (r' r)\tilde x \definedas r_2\tilde x$$ for some $r_2 \neq 0$.
		But then $\tilde x\in M[\tors]$, and so $x = 0$ in $M/M[\tors]$.

Proof (of (b))
: Let $M = \generators{x_1, \cdots, x_r}$ with $r\geq 1$ and $x_i \neq 0$.
	After reordering, there exists some $s$ with $1\leq s \leq r$ such that $x_1, \cdots, x_s$ are $R\dash$linearly independent, and for all $i > s$, $\theset{x_j}_{j \leq s} \union x_i$ is linearly *dependent*.
	
	Then define $F\definedas \generators{x_1, \cdots, x_s}$; this is a finitely generated free module.
	If $r=s$, we done.

	Otherwise, $r< s$, then $\forall i > r$ there exists an $a_i \in R^\bullet$ such that $a_i x_i \in F$.
	So we can take $a \definedas a_{s+1} \cdots a_r \neq 0$; then $aM \subset F$.
	Since $M$ is torsion-free, the multiplication maps are injective, so $[a]: M \mapsvia{\cong} M \subset F$, so $M \injects F$ embeds $M$ into a free module.

Does this work with $M$ not finitely generated? No, we can't take an infinite product for $a$.
Is every torsion-free module a submodule of a free module? No.

Remark
: This fails without finite generation, see Theorem 3.56 on ordinal filtration.
  If $R$ is a PID and $F$ is a free $R\dash$module and $M \leq F$ as an $R\dash$submodule, then $M$ is free.

Thus if $R$ is a PID, "subfree" $\iff$ free.
Does torsion-free imply free?
No, take $R=\ZZ$ and $M = (\QQ, +)$, this is not finitely generated and torsion-free but not a free $\ZZ\dash$module.

Definition (Divisible and Uniquely Divisible Modules)
: For $R$ a domain, $M$ is *divisible* if $\forall a\in M^\bullet$ iff $$[a]: M \surjects M$$ is a surjection.
	$M$ is *uniquely divisible* if for all $a\in M^\bullet$, $[a]: M \mapsvia{\cong} M$ is an isomorphism, i.e. $M$ is torsion-free and divisible.

Exercise
: Show that $(\QQ, +)$ is a uniquely divisible $\ZZ\dash$module.

Exercise
: Let $R$ be a domain with fraction field $K$, with $R\neq K$.
	Show that a nonzero free $R\dash$module is not divisible but $(K, +)$ is a divisible torsion-free $R\dash$module.
	Thus $(K, +)$ is a torsion-free module $R\dash$module that is not free.

Remark
: Finitely generated torsion free modules are embedded in free modules.
  Note that in the spectrum of properties earlier (projective, free, etc), the two extremes are equal for f.g. PIDs.

Exercise
: Let $R$ be a Noetherian domain which is not a PID.
	Then an ideal $I\normal R$ with $I$ f.g., not principal, and a torsion-free $R\dash$module.
	Show that since $I$ is not principal, $I$ is not free as an $R\dash$module.

So ideals can't contain linearly independent elements, so they have to be free of rank 1 and thus principal.
Thus finitely generated torsion-free is strictly *weaker* then free in this setting.

# Monday February 3rd

Some module topics from Chapter 8.

## Noetherian and Artinian Modules

Definition (Noetherian Posets)
: A poset $(X, \leq)$ is said to satisfy the **ACC** or to be **Noetherian** iff there does not exist an infinite sequence (a chain) $\theset{x_n}$ with strict inequalities $x_1 < x_2 < \cdots$.
  Equivalently, every weakly ascending chain $x_1 \leq x_2 \leq \cdots$ eventually stabilizes, i.e. there exists an $N$ such that $x_N = x_{N+1} = \cdots$.

Definition (Artinian Posets)
: Similarly, a poset satisfies the **DCC** or is **Artinian** iff there does not exist an infinite decreasing sequence $x_1 > x_2 > \cdots$.

Definition (Order Dual)
: For $(X, \leq)$, define the **order dual** $(X\dual, \leq)$ where $x\leq y \in X\dual \iff y\leq x \in X$.

Proposition (Noetherian/Artinian Duality)
: $X$ is Noetherian iff $X\dual$ is Artinian.

Lemma
: The ACC holds iff every nonempty subset has a maximum (and similarly the DCC with minimums).

Proof 
: Otherwise use AOC to pick elements $x_i$; if $x_i$ isn't the maximum then there is some $x_{i+1} > x_i$, and this yields an infinite ascending chain iff no maximum.

Let $M$ be an $R\dash$module, and define $\mathrm{Sub}_R M = \theset{(R\dash\text{submodules of } M, \leq)}$.

Lemma
: $M$ is Noetherian $\iff$ every submodule $N\leq M$ is finitely generated.

Proof
: Apply the DCC.

Exercise
:   Let $M' \subset M$ and $q: M \to M/M'$ and $N_1 \subset N_2 \subset M$ such that

    - $N_1 \intersect M' = N_2 = M'$, and
    - $q(N_1) = q(N_2)$.

    Then $N_1 = N_2$.

Proposition (2 out of 3 Property for Noetherian/Artinian)
: If $0 \to M' \to M \to M'' \to 0$ is exact and $M$ is Noetherian (resp. Artinian) then $M', M''$ are both Noetherian (resp. Artinian).

Proof
: Note that $\mathrm{Sub}_R {M'}, \mathrm{Sub}_R {M''} \injects \mathrm{Sub}_{R} M$ in an order-preserving manner.
  If we then have $N_1 \subset N_2 \subset \cdots$ with $N_i \leq M$ submodules of $M$, we can consider $N_n = \frac{N_n + M'}{M'}$, which is weakly increasing in $M'$. 

  > Note: this is how we push forward into quotients.

  Thus this chain stabilizes, so for $i, j \gg 0$ we have $N_i + M' = N_j + M'$.
  So then $N_i \intersect M' = N_j \intersect M'$, and by the exercise, $N_i = N_j$ for all $i, j \gg 0$.

Corollary
: $R$ is Noetherian (resp. Artinian) iff every finitely-generated $R\dash$module is Noetherian (resp. Artinian)

Proof
: $\implies$:
  Suppose $R$ is Noetherian.
  Note that $0 \to R \to R^2 \to R \to 0$ since $R^2$ is an extension of $R$ by $R$.
  Thus $R^2$ is Noetherian, and inductively $R^n$ is a Noetherian $R\dash$module. \newline\newline
  If $M$ is a finitely-generated $R\dash$module, it is a quotient of a finitely-generated free $R\dash$module, and in particular $0\to K \to R^n \to M \to 0$ is exact.
  So $M$ is Noetherian, by the previous proposition (middle of a SES Noetherian $\implies$ ends are Noetherian).

## Tensor Products

Motivation from Representation Theory:
For $G$ finite, $H\leq G$, and $\rho: G \to V$ a finite-dimensional $\CC\dash$representation, this data is equivalent to a $\CC[G]\dash$module structure on $V$.
If $W$ is a representation on $H$, then $\ind_H^G W$ is a representation of $G$ given by $V = \ind_H^G W = W \tensor_{\CC[H]} \CC[G]$.

Definition (Tensor Product)
:   Let $M, N$ be $R\dash$modules, then the **tensor product** $M\tensor_R N$ is an object characterized up to canonical isomorphism by the following universal property:
    If $P$ is an $R\dash$module and $\Phi: M\cross N \to P$ is any bilinear map, then there exists a unique lift such that the following diagram commutes:

    \begin{center}
    \begin{tikzcd}
    M \tensor_R N \arrow[rrdd, "\exists! \psi", dotted] &  &   \\
                                                        &  &   \\
    M\times N \arrow[rr, "\Phi"] \arrow[uu, "\iota"]    &  & P
    \end{tikzcd}
    \end{center}

    where $\iota: M \cross N \to M \tensor_R N$ is $R\dash$bilinear and for all $(m, n) \in M\cross N$, we denote $m\tensor n \definedas \iota(m, n)$. 

By dimension counting in the finite-dimensional case of vector spaces, it's clear that $\iota$ need not be surjective.
In general, elements in $M \tensor_R N$ are *finite sums* of simple tensors, not just simple tensors, i.e. $M\tensor_R N = \generators{ \iota(m, n)  }$.

Proof (existence)
: Let $F$ be the free $R\dash$module on $M\cross N$ with basis $\theset{(m, n) \suchthat m\in M,~ n\in N}$.
  Mod out by the following relations: for all $m, m_1, M_2 \in M$ and for all $n, n_1, n_2 \in N$ and all $r\in R$,

  - $(m_1 + m_2) \tensor n - m_1\tensor n - m_2 \tensor n$
  - $m \tensor (n_1 + n_2) - m\tensor n_1 - m\tensor n_2$
  - $r(m\tensor n) - (rm)\tensor n$
  - $r(m\tensor n) - m\tensor (rn)$

  Let $\mathcal{R}$ be the ideal generated by these relations, the define $M \tensor_R N = F/\mathcal{R}$ by $(m, n) \mapsto (m, n) + \mathcal{R}$.
  Then (straightforward check) the universal mapping property holds.

How do we work with tensor products?
Namely, how do we even know whether an arbitrary element is zero or not in this complicated quotient.

- To show $m\tensor n = 0$, use bilinear relations (reduce to relations above)
- To show $m\tensor n\neq 0$, find an $R\dash$module and a bilinear map $\psi: M\tensor_R N \to P$ such that $\im(m\tensor n) \neq 0$.
- To show $M\tensor_R N \cong X$, show that $X$ satisfies the universal property.

Exercise
: $R\tensor_R M \equiv M$ by $(r, m) \mapsto r\cdot m$, with $\cdot$ the $R\dash$module action on $M$.
  Let $P$ be arbitrary, let $\phi: R\cross M \to P$ be arbitrary, and define $\psi: M \to P$ by $m \mapsto \phi(1, m)$.

Exercise
: $\ZZ/m\ZZ \tensor_\ZZ \ZZ/n\ZZ \equiv \ZZ/\gcd(n, m) \ZZ$.
Show that every element is both $n\dash$torsion and $m\dash$torsion.

Proposition (Existence of Base Change)
: For $M$ and $R\dash$module and $f: R\to S$, we can create an $S\dash$module $S \tensor_R M$ by *base change*.

Definitely the most important concept thus far!

# Wednesday February 5th

Recall that if $M, N$ are $R\dash$modules then there is a map 

\begin{align*}
M\cross N &\mapsvia{\Phi} M\tensor_R N \\
(r, m) &\mapsto r\tensor m
\end{align*}

which is universal wrt the property that any bilinear map $\phi: M \cross N \to A$ factors through $\Phi$ uniquely.

We have a notion of *pullback*, where if $i:R \to S$ and $N$ is an $S\dash$module then $i^*N$ is an $R$ module with action given by composition $R \mapsvia{i} S \mapsvia{\cdot} \endo_\ZZ(N)$.

Dually, we have a notion of *base change*, where for $M$ an $R\dash$module we can form $i_* M \definedas S\tensor_R M$ an $S\dash$module where $s(\sum s_i\tensor m_i) = \sum ss_i \tensor m_i$.

An $R\dash$algebra is $i:R\to S$ a ring morphism, where algebra morphisms $f: S_1 \to S_2$ are given by commutative diagrams

\begin{center}
\begin{tikzcd}
R \arrow[rr, "i_1"] \arrow[rrdd, "i_2"] &  & S_1 \arrow[dd, "f"] \\
&  &                     \\
&  & S_2                
\end{tikzcd}
\end{center}

For $S, T$ $R\dash$algebras, the tensor product $S \tensor_R T$ is an $R\dash$algebra with $(s_1 \tensor m_1) \cdot (s_2 \tensor m_2) = s_1s_2 \tensor m_1 m_2$.
Note that the tensor product satisfies the universal property of the direct sum or coproduct:

\begin{center}
\begin{tikzcd}
&  & t \arrow[rrd, dotted]                              &  &                                              &  &   \\
&  & T \arrow[rrd] \arrow[rrrrd, "\psi", bend left=49]  &  & 1\tensor t                                   &  &   \\
R \arrow[rrd] \arrow[rru] &  &                                                    &  & S \tensor_R T \arrow[rr, "\exists!", dashed] &  & W \\
&  & S \arrow[rru] \arrow[rrrru, "\phi", bend right=49] &  & s\tensor 1                                   &  &   \\
&  & s \arrow[rru, dotted]                              &  &                                              &  &  
\end{tikzcd}
\end{center}

Exercise (Important)
:   Verify the following identities

    *One:*
    Let $M$ be an $R\dash$module and $N$ an $S\dash$module with $\iota: R\to S$.
    $\hom_R(M, \iota^* N) = \hom_S(\iota_* M, N) = \hom_S(S\tensor_R M, N)$.
    What's the map? $s\tensor m \mapsto sf(m)$.

    *Two:*
    For $P$ and $R\dash$module and $M, N$ $S\dash$modules, we have $M\tensor_X(i^*N \tensor_R P) = i^*(M\tensor_S N) \tensor_R P$.
    So for $N = S$, then $M \tensor_S (S \tensor_R P) = M\tensor_R P$.

    **Three (Good Exercise! Very important!):**
    For $M$ an $R\dash$module and $I \normal R$, we have $IM \subset_R M$.
    Show that we can identify the base change as $R/I \tensor_R M = M/I$.

    > Hint: Show that the RHS satisfies the appropriate universal property.

    *Four:*

    - $(\oplus M_i) \tensor_R N = \oplus (M_i \tensor_R N)$.
    - The tensor product of free modules is free.
    - If $F$ is a free $R\dash$module and we base change with $\iota: R\to S$ then $S \tensor_R F$ is a free $S\dash$module.


Definition (Invariant Basis Number)
: Let $R$ be a ring, then $R$ satisfies the *invariant basis number property* (IBN) iff any two bases for a free left $R\dash$module have the same cardinality.

Definition (Rank Condition)
: $R$ satisfies the *rank condition* iff whenever there exists a $q: R^m \surjects R^n$, $n\leq m$.

Definition (Strong Rank Condition)
: $R$ satisfies the *strong rank condition* iff whenever $q: R^m \injects R^n$ then $n\leq m$.

Facts
: If $R$ is commutative or (left)-Noetherian, then strong rank condition $\implies$ rank condition $\implies$ IBN.

Note: this is not obvious, since if $R$ is not Noetherian there are submodules that aren't finitely generated but can still have bounded rank.

Exercise (Non-Commutative)
: Let $k$ be a field and $V$ an infinite dimensional $k\dash$vector space, i.e. $V \cong V \oplus V$.
  Let $R \definedas \endo_k(V)$; then $R$ does not satisfy the IBN.

Proposition (Commutative Rings have Invariant Basis Number)
: If $R$ is nonzero and commutative then $R$ satisfies IBN.

Proof
: Suppose there exist $I, J$ such that  $\oplus_{i\in I} R \cong_R \oplus_{j\in J} R$.
  We want to show that $\abs{I} = \abs{J}$.
  Since $R\neq 0$, there is a maximal ideal $\mfm \in \maxspec(R)$.
  Since $R/\mfm$ is a field, we base change to it to obtain $R/\mfm \tensor_R (\bigoplus_{i\in I} R) = \bigoplus_{i\in I} R/\mfm$.
  We know this equals $R/\mfm \tensor_R (\bigoplus_{j\in J} R) = \oplus_{j\in J} R/\mfm$.
  So $I, J$ are bases of isomorphic vector spaces and thus $\abs{I} = \abs{J}$ by linear algebra.

Definition (Noetherian and Artinian Modules)
: A module $M$ is *Noetherian* iff ACC on submodules, and *Artinian* iff DCC on submodules.

Exercise
: If $R = k$ is a field and $V$ is a $k\dash$vector space, then $V$ is Noetherian iff Artinian iff infinite-dimensional.

Exercise
: If $R= \ZZ$, $R$ is Noetherian but not Artinian.
  Find a $\ZZ\dash$module that is Artinian but not Noetherian.

> Try all $2^n$ possibilities for adjectives!

Exercise
: If $R$ is finite, it is both Artinian and Noetherian, and moreover has only finitely many ideals.

Artinian is much stronger, and implies Noetherian? 
Converse iff every ideal is maximal.
The only Artinian integral domains are fields. Very small class of rings.
It's not true that Artinian alone implies finitely many ideals.

Exercise (8.29 in Notes)
: Let $I = (x^2, xy, y^2) = (xy)^2 \normal \CC[x, y]$ and take $R = \CC[x, y]/I$.

  a. Show that a $\CC\dash$basis for $R$ is given by $\theset{1 + I, x + I, y + I}$.

  b. Deduce that $R$ is Noetherian and Artinian.

  c. Show proper ideals of $R$ are precisely the $\CC\dash$subspaces of $\generators{x, y} + I$.

  d. Deduce that $\RR$ has continuum many ideals.




# Friday February 7th

## Projective Modules

For $X$ a topological space and $\pi:E\to X$ a real vector bundle on $X$.
Then $$\Gamma(E, X) = \theset{\sigma: X\to E \suchthat \pi \circ \sigma = \id_X}$$ is naturally a module over the ring $C(X, \RR)$ of continuous real-valued functions.
For $p\in X$, the fibers $\sigma(p) \in \pi\inv(p)$ are vector spaces, and we can consider $f(p)\sigma(p)$ for any $f\in C(X, \RR)$.
For trivial bundles $\RR^n \cross X \mapsvia{\pi} X$ with a global section

\begin{align*}
\sigma: X &\to \RR^n \cross X \\
p &\mapsto (\tilde\sigma(p), p)
.\end{align*}

Then $\tilde\sigma: X \to \RR^n$, or equivalently a collection of $n$ continuous functions $\tilde\sigma_j \to \RR$.
Thus $\Gamma(X, E) \cong C(X, \RR)^n$.

Theorem (Swan)
:   Suppose $X$ is compact. 
    Then

    a. $\Gamma(X, E)$ is a finitely generated projective $C(X, \RR)\dash$module, i.e. $\pi$ is a direct summand of a trivial vector bundle on $X$, and

    b. There is an equivalence of categories between vector bundles on $X$ and finitely generated projective $C(X, \RR)\dash$modules.

Example
: Let $X$ be the two points space $\theset{1, 2}$.
  Take a 0-dimensional vector space over $1$ and a 1-dimensional vector space over $2$.

  ![Image](figures/2020-02-07-11:30.png)\

Remark
: Such cheap examples exist on $X$ iff $X$ is disconnected.

Definition (Splitting an Exact Sequence)
: Recall that it $0 \to A \to B \mapsvia{f} C \to 0$ is exact, then a **splitting** is a map $\sigma: C\to B$ such that $f\circ \sigma = \id_C$.
  Then $B = A \oplus \sigma(C) \cong A \oplus C$.

Exercise
: Take $R=\ZZ$ and find a SES such that $B\cong_\ZZ A \oplus B$ but the sequence is *not* split.

Definition (Projective Module)
: A module $P$ is **projective** iff $0 \to M \to N \to P \to 0$ is split.

Exercise
: Show that free implies projective.

> Hint: Lift basis and use universal property.

Theorem (Projective is Direct Summand of Free)
: If $P$ is projective, then there exists a $K$ such that $P\oplus K$ is free.

Idea: summands can be *both* a submodule and a quotient module.

Proof
: Choose a free $F$ and an $R\dash$module surjection $q:F \surjects P$ with $K = \ker q$ to obtain $0 \to K \to F \to P \to 0$.
  Since $P$ is projective, this sequence splits and thus $F \cong K \oplus P$ is free.

*Comment:*
If $P$ is finitely generated, then we can take $K$ (and hence $F$) to be finitely generated module. 
A quotient of a finitely-generated module is also finitely generated, and $F \cong K \oplus P$.

Theorem (Lifting Property of Projectives)
:   If there exists a $K$ such that $P\oplus K$ is free, then $P$ satisfies this lifting property:

    \begin{center}
    \begin{tikzcd}
    &  & P \arrow[dd, "f"] \arrow[lldd, "\exists \tilde f", dotted] &  &   \\
    &  &                                                            &  &   \\
    M \arrow[rr] &  & N \arrow[rr]   &  & 0
    \end{tikzcd}
    \end{center}

Proof
:   Choose $K$ such that $P \oplus K$ is free, and let $\theset{f_i}_{i\in I}$ be a basis for $F$.
    Then write $F = P \oplus K$ and $f_i = p_i + k_i$ where $p_i \in P, k_i \in K$.
    Then we can construct a unique $g: F\to M$  by sending $f_i$ to $m_i$:

    \begin{center}
    \begin{tikzcd}
    &  & \{f_i\} \arrow[d, hook], &  &   \\
    &  & F = P\oplus K \arrow[dd, "\pi"] \arrow[lldddd, "\exists! g"', dotted] &  &   \\
    &  &                                                                       &  &   \\
    &  & P \arrow[dd, "f"] \arrow[uu, "{\iota(p) = (p, 0)}"', bend right=60]   &  &   \\
    &  &                                                                       &  &   \\
    M \arrow[rr, "q"] &  & N \arrow[rr]                                                          &  & 0 \\
    \{m_i\}           &  & \{n_i\}                                                               &  &  
    \end{tikzcd}
    \end{center}

    Then $q\circ g\circ \iota = (q\circ g) \circ \iota = (f\circ \pi) \circ \iota = f \circ (\pi \circ \iota) = f$ since $\iota$ is a section.

> Todo: Revisit!

This $P$ is projective iff

- Every length 2 resolution of $P$ splits.
- $P$ is a direct summand of a free module.
- $P$ satisfies this lifting property.

If $P$ satisfies this lifting property, we have:

\begin{center}
\begin{tikzcd}
&  &              &  &              &  & P \arrow[lldd, "\exists \sigma"'] &  &   \\
&  &              &  &              &  &                                   &  &   \\
0 \arrow[rr] &  & M \arrow[rr] &  & N \arrow[rr] &  & P \arrow[uu, "\id_P"'] \arrow[rr] &  & 0
\end{tikzcd}
\end{center}

Exercise
: Show free implies projective in as many ways as you can (using any of these properties).

Remark
: An easy consequence of the lifting property implies that the functor $M \mapsto \hom_R(P, M)$ is covariant and exact.

> Natural question: for any new property of modules, is there a class of rings for which this coincides with known properties?

*Question:*
How different is projective from free?

Free $\implies$ projective $\implies$ subfree $\implies_{R \text{ a domain }}$ torsion-free.

For $R$ a PID and $M$ finitely generated, these are all equivalent (hence the diminished importance of projectivity when studying the structure theorem).
Recall (Theorem 3.56) that if $R$ is PID, then subfree $\implies$ free and projective $\iff$ free, but $(\QQ, +)$ is torsion-free but not free.

> Recall $\spec(R_1 \cross R_2) = \spec R_1 \disjoint \spec R_2$

Example (Projective does not imply free):*
:   Let $R_1, R_2$ be rings and consider $R = R_1 \cross R_2$.
    Then recall that $I\normal R$ implies $I = I_1 \cross I_2$ for $I_i \normal R_i$.
    Take $M_1 \definedas R_1 \cross 0 \normal R$, and $M_2 \definedas 0 \cross R_2 \normal R$.

    Then $M_1 \oplus M_2 = M_1 + M_2 = R$, so both $R_i$ are projective.
    They are not free though, since $\ann M_1 = M_2$ and vice-versa.

Example
: Let $R = \CC \cross \CC$, so $\spec R = \theset{1, 2}$, then $M_1 = \CC\cross 0 \to \spec R$, and we can construct "cheap" bundles in analogy to the disconnected topological case.

*Next question:*
What is an example of a nonfree projective module over a domain.

# Wednesday February 12th

## Projective Modules and Ideals

**Summary:**
Free $\implies$ projective $\implies$ flat $\implies_{R \text{ a domain }}$ torsion free.
Moreover, projective $\implies$ reflexive.

If $M, N$ are cyclic $R\dash$modules, then $\ann(M\tensor_R N) = \ann M + \ann N$.
Does this hold for every $M, N$? 
The answer is no; we have $$\ann(M\tensor_R N) \supseteq \ann M + \ann N.$$
See MSE post: let $I\normal R$ and $M$ an $R\dash$module, we have $M \tensor_R R/I = M/IM$.
Is there an equality $\ann(M/IM) = \ann(M) + I$?
No, take $R = \CC[x, y]$.

Recall that an $R\dash$module is *reflexive* iff $\iota: M \to (M\dual)\dual$ is an isomorphism, where $M\dual = \hom_R(M, R)$.
This is injective for $R$ a field, and then surjective iff $R$ is finite-dimensional.
As shown in the problem sessions, finitely generated free modules are reflexive.

**Exercise:**
Show that direct summands of reflexive modules are reflexive, and $M_1 \oplus M_2$ is reflexive iff $M_i$ are reflexive.
Conclude that finitely generated projective modules are reflexive. 

Example
: To get a projective module that is not free, take
$\CC^2 = \qty{ \CC \cross 0  } \oplus \qty{ 0\cross \CC  } = \CC^2$, which is free, so the summands are projective, but not free.

Note: this corresponds to taking a vector bundle over a disconnected space, and letting the fibers just be different dimensions.

Letting the summands above be $I, J$, note that $I+J = R$ and $IJ = 0$, which is a comaximality condition.

Lemma (3.17)
:   Let $I, J, K_1, \cdots, K_n \normal R$.
    Then

    a. $(I+J)(I\intersect J) \subseteq IJ$

    b. If $I+J = R$ (so $I,J$ are comaximal), then $I\intersect J = IJ$. 

    c. If $I+ k_i = R$ for all $1\leq i \leq n$ then $I + K_1\cdots K_n = R$.

Proof
: Omitted.

Theorem (First Isomorphism Theorem for Rings)
:   Let $R$ be a domain, $IJ \normal R$ such that $I+J = R$.
    We can form a map:

    \begin{center}
    \begin{tikzcd}
    I \arrow[rdd, bend right] \arrow[rrrdd, bend left] &                            &  &   \\
    &                            &  &   \\
    & I \oplus J \arrow[rr, "q"] &  & R \\
    &                            &  &   \\
    J \arrow[ruu, bend left] \arrow[rrruu, bend right] &                            &  &  
    \end{tikzcd}
    \end{center}

    where

    \begin{align*}
    q: I \oplus J &\to R \\
    (i, j) &\mapsto i+j
    .\end{align*}

    Then

    a. $q$ is surjective

    b. $\ker q = \theset{(x, -x) \suchthat x\in I\intersect J} \cong_R I\intersect J = IJ$.

    c. There is a SES $0 \to IJ \to I\oplus J \mapsvia{q} R \to 0$, and since $R$ is projective, $I \oplus J \cong_R IJ \oplus R$.

    d. If $IJ$ is principal (so $IJ \cong_R R$) then $I$ is projective.

See "monogenic". 
This gives a criterion for determining if ideals are projective.

Exercise
:   Let $R =  \ZZ[\sqrt{-5}]$ with $\mfp_1 = \generators{3, 1 + \sqrt{-5}}$ and $\mfp_2 = \generators{3, 1-\sqrt{-5}}$.

    a. Show that $R/\mfp_1 \cong R/\mfp_2 \cong \ZZ/3\ZZ$.

    b. Show $\mfp_1 + \mfp_2 = R$.

    c. Show $\mfp_1 \mfp_2 = \generators{3}$.

    d. Show neither $\mfp_1, \mfp_2$ are not principal.

    e. Conclude $\mfp_1 \cong_R \mfp_2$ is a finitely generated projective but *not* free $R\dash$module.

## The Picard Group

Definition (Picard Group)
:   Let $R$ be a domain with fraction field $K$, we'll define *picard group* $\pic (R)$ in the following way:
  
    For $I\normal R$ with $I\neq 0$. we say $I$ is invertible iff there exists a $J\normal R$ such that $IJ$ is principal.
    
    Then $\pic (R)$ is the set of invertible ideals modulo the equivalence $I\sim J$ iff there exist $a, b\in R^\bullet$ such that $\generators{a}I = \generators{b}J$.

    This is a group under $[I] + [J] = [IJ]$ (check that this is well-defined).

Note that if $I$ is principal, then $[I] = 1$ is the identity, and if $IJ = \generators{x}$, then $[I] [J] = [\generators{x}] = 1$.

Fact
: If $I$ is invertible, then $I$ is a projective $R\dash$module.

Fact (Stronger)
:   If $I\normal R$ in a domain, then 

    - $I$ is invertible iff $I$ is a projective $R\dash$module.
  
    - $[I] = 1$ in $\pic R$ iff $I$ is principal iff $I$ is a free $R\dash$module.

Proof
: Later!

Every nontrivial element gives a projective but not free $R\dash$module!
Note that $\pic R = 0$ for $R$ a PID.

Definition (Dedekind Domain and Class Group)
: $R$ is a *Dedekind domain* iff every nonzero $I\normal R$ is invertible, and $\pic R$ is referred to as the *class group* of $R$.
  
In this case, $\pic R = 0$ iff every ideal is principal iff $R$ is a PID.

So the class group measures how far $R$ is from a PID.
Any Dedekind domain that is not a PID yields projectives that aren't free.

Rings of integers over number fields are Dedekind domains.

> Embarrassingly open problem: are there are infinitely many number fields $K$ such that the ring of integers $\ZZ_K$ is a PID, or equivalently $\pic \ZZ_K = 0$?

Example (Important)
:   Let $k$ be a field and $n\in \ZZ^+$, and define $R\definedas k[t_1, \cdots, t_n]$.
    Since $k$ is a PID, $R$ is a PID, and every finitely generated module over a PID is free.

Theorem (Bass, 1962)
: Let $R$ be connected (recall: rules out silly case!) and noetherian.
  Then every infinitely generated (i.e. *not* finitely generated) projective module is free.

So we can restrict our attention to the finitely generated case.

> Analogy: is every topological vector bundle trivial? E.g. for $\CC^n$, yes. 
> Are all holomorphic bundles trivial? In general, no, see Stein manifolds.

*Question (Serre, 1950s):*
Is every projective $R\dash$module free?

*Answer:* 
Yes, showed by Quillen, Suslin 1976.
See book about this by T.Y. Lam.

Upcoming:
Algebraic $K\dash$theory, built from f.g. projective $R\dash$modules.
Trivial in $K_0$ doesn't quite imply free, usually weaker.
Tries to analyze distinction between projective and free.
Also some results about flat modules.

# Friday February 14th

Let $R$ be a ring and consider $K_0(R)$.

> Measures difference between f.g. projective and free modules over $R$.

Define $(M(R), +) \definedas$ the commutative monoid of isomorphism classes of f.g. projective $R\dash$modules with addition given by direct sum, i.e. $[P] + [Q] = [P\oplus Q]$ with identity the zero modules, and $K_0(R) = G((M(R), +))$ is the group completion, which any map $M(R) \to G$ a group factors through.

Concretely, any element of $K_0(R)$ is of the form $[P] - [Q]$, where 
$$
[P_1] -[Q_1] \sim [P_2] - [Q_2] \iff [M] + [P_1] + [Q_2] = [M] + [P_2] + [Q_2]
$$ 
for every finitely generated projective $R\dash$ module $M$.
Note that excluding the $R$ here fails transitivity and thus doesn't yield an equivalence relation.

If $P, Q$ are finitely generated projective $R\dash$modules, then $[P] = [Q]$ iff $\exists M$ such that $P \oplus M \cong Q \oplus M$ iff there exists $N$ a finitely generated projective such that $M\oplus N \cong R^n$ for some $n$, i.e. $P \oplus R^n \cong Q\oplus R^n$.
In such a case, we say $P, Q$ are *stably isomorphic*.

Note that $[P] = 0$ iff $[P]$ has rank zero, or $[P] \oplus R^n \cong R^n$.
Also note that $[P] \cong [Q]$ can occur without necessarily having $P\cong Q$ as modules.

We can actually make $K_0(R)$ into a ring with $[P] \cdot [Q] \definedas [P \tensor_R Q]$.

> Note that the tensor product of two finitely-generated $R\dash$modules is still finitely generated as an $R\dash$module.

*Example:*
Let $R$ be a PID, then $M(R)$ is a commutative semiring (no additive inverses) and is equal to $(\NN, +, \cdot)$ (occurs whenever )very finitely generated projective is free).
Similarly $G(R) = (\NN, +, \cdot)$.
Since $R$ has invariant basis number, there is always an injective group morphism

\begin{align*}
(\ZZ, +) &\mapsto (K_0(R), +) \\
n &\mapsto [R^n]
.\end{align*}

> Yields no cancellation among free modules.
> We want to essentially ignore this case, so we'll mod out.

Definition (Reduced $K$ Group)
: The reduced $K$ group is given by $\tilde{K_0(R)} \definedas (K_0(R), +) / (\ZZ, +)$.

Note that $[P] = [G]$ in $\tilde{K_0(R)}$ iff there exist $m, n$ such that $P \oplus R^m \cong Q \oplus R^n$.
Moreover $[P] = 0$ iff $\exists m, n$ such that $P \oplus R^n \cong R^n$.
In this case we say $P$ is *stably free*.

Exercise
: If $P$ is a projective module (possibly not finitely generated) then there exists a free module $F$ such that $P\oplus F$ is free.

Example
: For $n\in \ZZ$, define $R_n \definedas \RR[t_0, \cdots, t_n] / \generators{\sum t_i^2 - 1}$.
  This is the ring of polynomial functions on the $n\dash$sphere.
  To construct a stably free module that is not free, take $TS^n$ for any $n$ for which it's trivial.

By Poincare Hopf, need euler characteristic zero, which happens when $n$ is odd.
Tangent bundle also trivial for lie groups.

:::{.theorem title="Bott-Milnor: Trivial Tangent Bundles of Spheres"}
The tangent bundle of $S^n$ is trivial iff $n\in \theset{1,3,7}$.
:::


If every module is free, they are stably free, yielding $K_0= 0$.

**Fact:**
If $R$ is a dedekind domain, $\tilde{ K_0(R) } = \pic (R)$, the ideal class group.

> So f.g. projectives need not be free, since ideals need not be principal.
> Theorem of Clayborn: $\pic (R)$ can be any commutative group!

Analogy: bundles are locally trivial, are projective modules "locally free"? 
We'll need localization to make sense of this, but such a theorem turns out to be true.

Definition (Local Ring)
: A local ring is a ring $R$ with a unique maximal ideal, usually written $(R, \mfm)$.

Exercise
: $R$ is local iff $R\setminus R\units \normal R$ is an ideal.

Localizing in the right way will yield local rings.

Lemma
: Let $q: R \to R/\mfm$ and $x\in R$, then $x\in R\units \iff q(x) \in (R/\mfm)\units$.

Proof
: The forward implication holds for any ring.
  The converse doesn't usually (think $\ZZ \to \ZZ/p\ZZ$).
  But if $q(x) \in (R/\mfm)\units = R/\mfm\setminus 0$, then $x\in R\setminus \mfm = R\units$.

:::{.theorem title="Projective Implies Free"}
A f.g. projective module over a local ring is free.
:::


This turns out to be true with "f.g." dropped, but that is a harder theorem.

To prove this, we'll need the following:

:::{.theorem title="Corollary of Nakayama's Lemma"}
For $(R, \mfm)$ a local ring and $M$ a finitely generated $R\dash$module.
Take a finite collection $\theset{m_i}$ such that $\theset{\bar m_i} \in M/\mfm M$ are generators as an $R/\mfm$ module.
Then $M$ is generated by $\theset{x_i}$.
:::


Usually identified *as* Nakayama's Lemma.


:::{.proof}
Let $P$ be a  f.g. projective $R\dash$module for $R$ a local ring.
Choose $Q$ such that $P \oplus Q = R^n$.
By base change, $P/\mfm P \oplus Q/\mfm Q = (R/\mfm)^n$.

So choose $R/\mfm$ bases $\theset{\bar p_i}^a$ of $P/\mfm P$ and $\theset{\bar q_j}^b$ of $Q/\mfm Q$.
Choose any lifts $p_i\in P, q_j\in Q$.
Let $A \in M_{n, m}(R)$ be the matrix formed by setting the first columns to $p_i$ and the remaining to $q_j$.

Then $\det(A) \mod \mfm \in (R/\mfm)\units$, and by the lemma, $\det(A) \in R\units$ and thus $A$ is invertible.
So $\theset{p_i, q_j}$ are $R\dash$linearly independent, so $\theset{p_i}$ span $P$ by Nakayama's lemma.
Thus $P$ is a free $R\dash$module.
:::

## Flat Modules

> Why are projective modules called such? See notes, characterization in terms of linear algebra and projection operators.

Suppose we have a SES of $R\dash$modules and we tensor with some $R\dash$module $M$:

\begin{center}
\begin{tikzcd}
& 0 \arrow[r] \arrow[dd] & N_1 \arrow[r, hook] \arrow[dd] & N_2 \arrow[r, tail] \arrow[dd, "\wait \tensor_R M"] & N_3 \arrow[r] \arrow[dd]  & 0 \\
&                        &                                &                                                     &                           &   \\
\cdots \arrow[r] & \cdots \arrow[r]       & N_1 \tensor_R M \arrow[r]      & N_2 \tensor_R M \arrow[r, tail]                     & N_3 \tensor_R M \arrow[r] & 0
\end{tikzcd}
\end{center}

Note that the induced map of the injection need not remain an injection.

Example
: Take $\ZZ \mapsto{\times 2} \ZZ \to \ZZ/2\ZZ$, then taking $\wait \tensor \ZZ/2\ZZ$ yields $\ZZ/2\ZZ \mapsvia{\times 2} \ZZ/2\ZZ$, which is the zero map.

Definition (Flat Modules)
: A module $M$ is **flat** iff $M\tensor_R \wait$ is exact, i.e. if $N_1 \injects N_2 \implies M\tensor_R N_1 \injects M\tensor_R N_2$.

Proposition (Flat Implies Torsionfree in Domains)
: If $R$ is a domain, then flat $\implies$ torsionfree.

Proof
: For the contrapositive, suppose $M$ is not torsionfree, then there exists some nonzero $r\in R^\bullet$ and $0\neq m\in M$ such that $rm = 0$.
  Then take $R\mapsvia{\times r} R$, which is injective since $R$ is a domain.
  Then tensoring with $M$ yields $M \mapsvia{\times r} M$, which has nonzero kernel by assumption.

Exercise (Important)
: Let $M_i$ be a family of $R\dash$modules, then $\bigoplus_i M_i$ is flat iff $M_i$ is flat for all $i$.

> Use the fact that tensor commutes with direct sum, use functoriality of direct sum to sum maps.

Proposition (Projective Implies Flat)
: Projective $\implies$ flat.

We now have the chain:
\begin{center}
Free $\implies$ projective $\implies$ flat $\implies_{R\text{ a domain }}$ torsionfree.
\end{center}

Proof (easy)
: By the exercise, $P$ projective implies existence of a $Q$ where $P\oplus Q$ is free, so it's enough to show that free $\implies$ flat.
  If $F$ is free, $F\cong \oplus_i R$, so $F$ is flat iff $R$ is flat.
  But $R\tensor_R R = R$, which does not change a SES at all.

So flat is somewhere between projective and torsionfree.

The next theorem is related to Cayley-Hamilton.


:::{.theorem title="Existence of Minimal Polynomials"}
Let $M$ be a finitely generated $R\dash$module with generators $\theset{x_i}$ and $I\normal R$, and take $\phi \in \endo_R(M)$ such that $\phi(M) \subseteq IM$.
Then there exist a set of coefficients $\theset{a_i}^n$ such that $\phi^n + a_{n-1}\phi^{n-1} + \cdots + a_1 \phi + a_0 = 0 \in \endo_R(M)$.
:::


Proof (Sneaky)
:   For all $i\leq n$, there exists a set $\theset{a_{ij}}_{j=1}^n \subset I$ such that $\phi(x_i) = \sum_{j=1}^n a_{ij} x_j$.
    Equivalently, for all $i$, 

    \begin{align*}
    \sum_{j=1}^n \qty{ \delta_{ij} \phi - a_{ij} } = 0
    .\end{align*}

    Let $P$ be a matrix with entry $i,j$ equal to $\delta_{ij} \phi - a_{ij} \in M_{n\times n}(R[\phi])$ where $R[\phi] \leq \endo_R(M)$ is the subalgebra generated by $\phi$.
    Note that this makes the base ring commutative, so this matrix makes sense.
    We can rewrite this as $P \cdot [x_1, x_2, \cdots, x_n]^t = 0$.

    **Claim:**
    If $S$ is a ring and $P\in M_{n \times n}(S)$, then there is an identity

    \begin{align*}
    P\adj(P) = \adj(P) P = \det(P) I_n
    .\end{align*}

    > Note that expanding this in the $2\times 2$ case yields a collection of polynomial identities, which tend to remain true in arbitrary rings (see "permanence of polynomial identities").

    Then $\det(P) I_n \vector x = \adj(P) M \vector x = \vector 0$ (often called **the determinant trick**).
    Thus $\det(P) x_i = 0$ for all $i$.
    But then $\det(P) M = 0$, and since $M$ is a faithful $R[\phi]\dash$module, we have $\det(P) = 0$.

    Then thinking of $\phi$ as a variable, expanding the determinant yields a monic polynomial in $\phi$ with coefficients that are products of $a_{ij}$, which are in $I$.


Note the analogy to $\det(I\lambda - A)$, so this yields the usual characteristic polynomial in the case of fields.

:::{.theorem title="NAK, a.k.a. Nakayama-Azumaya-Krull"}
Let $J\normal R$ be an ideal and $M\in \rmod$ finitely generated such that $JM = M$.
Then

a. $\exists x\in R$ such that $x\cong 1\mod J$ and $xM = 0$.

b. Suppose $J \in \mcj$ (the Jacobson radical), i.e. $J$ is in every maximal ideal; then $M = 0$.
:::

Note that if $R$ were local, this reduces to a simple case.

Proof (of (a))
: Apply the previous proposition to $\phi = \id_M$ and $I = J$; then the polynomial relation reduces to the existence of some $x = 1 + a_{n-1} + \cdots + a_0$ with $a_i \in J$, and this is equal to the zero endomorphism and thus $xM = 0$ and $x = 1\mod J$ as desired.

Proof (of (b))
: If $J\in \mfm$ for all $\mfm \in \maxspec(R)$, then if $x = 1 \mod J$ and $x = 1 \mod \mfm$, this forces $x\not\in\mfm$ and so $x\in R\units$.
  So if $yx = 1$ and $xM = 0 $, then $0 = yxM = M$.


Corollary
: Suppose $J \in \mcj$ and $M \in \rmod$ is f.g. with $N\leq_R M$ a submodule such that $JM + N = M$, then $N=M$.

Proof
: Apply part (b) above to $M/N$.
  If $M$ is f.g. then so is $M/N$, and $J(M/N) = \frac{JM + N}{N} = M/N$ (just from pushing into quotients).

Definition (Non-generator)
: An element $x\in M$ is a *non-generator* if whenever $S$ is a generating set for $M$, then $S\setminus x$ is still a generating set.

Thus if you're trying to find generators for a module, it never helps to add elements of $J$.

Corollary
: Let $J\in\mcj$, $M\in \rmod$ f.g., $x_1, \cdots, x_n$ such that $\theset{\bar x_i} \in M/JM$ are generators.
  Then $M$ is generated by $\theset{x_i}$.

Proof
: Take $N = \generators{\theset{x_i}} \leq M$.
  Then $\im(N) \subset M/JM$ is given by $\im(N) = \frac{N + JM}{JM} = \frac{M}{JM}$ since $\im(N)$ was assumed a generating set.
  But then $N = M$ by the previous corollary.

Theorem (3.44, Generalized NAK)
: Let $J\normal R$, $M\in\rmod$ f.g., then $JM = M \iff J + \ann M = R$.

Proof
:   \hfill 
    $\impliedby$
    $JM = M \iff M/JM = 0 \iff \ann M/JM = R$, and $\ann M/JM = \ann(M\tensor R/J) \supseteq J + \ann M = R$.

    $\implies$:
    Exercise.

Exercise
: Why does this imply part (b) in NAK?

Use the assumption that $J, \ann M$ are comaximal, and $J\in \mcz$, which forces $\ann M = R$ and thus $M = 0$.

# Monday February 17th

Last time: $R$ is a ring, $M$ a finitely-generated $R\dash$modules, $J\normal R$.

Theorem (Nakayama) 
: If $M = JM$, then there exists an $x\in R$ with $x = 1 \mod (J)$ such that $xM = (0)$.

Theorem (Generalized Nakayama)
: $M = JM \iff J + \ann M = R$.

Proof
: The reverse implication is immediate, the forward is by Nakayama.

## Injective Modules

Exercise
: Show that for $R=  R_1 \cross R_2$ and $M = M_1 \cross M_2$, $M_i$ is an $R_i\dash$module.

Recall that every $R\dash$module is free $\iff R$ is a field.

*Question:*
What is the analogous condition for every $R\dash$module to be projective?

*Answer:*
Every SES 
$$
0\to M_1 \to M_2 \to M_3 \to 0
$$ 
of $R\dash$modules splits.

Focusing on $M_2$: every submodule $M_1$ of $M_2$ is a direct summand.

Theorem (Characterization of Semisimplicity)
:   For an $R\dash$module $M$, TFAE

    1. Every submodule of $M$ is a direct summand.
    2. $M$ is a direct sum of simple modules (semisimple).
    3. $M$ is generated by its simple submodules.

Definition (Simple Modules)
: $M$ is **simple** iff $\exists 0 \subsetneq N \subsetneq_R M$.

> In this case, $M \cong R/\ann M$ (i.e. cyclic, monogenic) and the $\ann M$ is maximal.

Proof
: Omitted, see chapter 8 of notes.

Thus every $R\dash$module is projective iff every $R\dash$module is semisimple.

Definition (Injective Modules)
: Dually, now focusing on $M_1$, every SES starting with $M_1$ is split iff whenever $M_1 \leq M_2$, $M_1$ is a direct summand.
  In this case we say $M_1$ is *injective*.

Proposition (Characterization of Semisimple Modules)
:   For $R$ a ring, TFAE

    1. Every SES of $R\dash$modules splits
    2. Every $R\dash$module is projective
    3. Every $R\dash$module is semisimple
    4. Every $R\dash$module is injective
    5. (Claim) $R$ is itself a semisimple $R\dash$module.

Proof
: $3 \implies 5$ is clear, and we'll prove $5\implies 3$ shortly using *Baer's Criterion*.

Definition (Semisimple Rings)
: $R$ is **semisimple** iff for all $I\normal R$, there exists a $J\normal R$ such that $I\oplus J = R$.
Moreover, $\ann(I) = J$ and $\ann(J) = I$.

Exercise (easy)
: If $R_i$ are semisimple, $R_1 \cross R_2$ is semisimple.

Corollary
: Fields are semisimple, so any finite product of fields is semisimple.

In fact, the converse is true:

Theorem (Semisimple Rings are Products of Fields)
: If $R$ is semisimple, then $R$ is a product of fields.

Note that everything works here for left modules over non-commutative rings.

Let $R$ be a ring.


Theorem (Wedderburn-Artin)
: A ring[^ring_note] $R$ is semisimple iff $R\cong \prod_{i=1}^r M_{n_i}(D_i)$ a product of matrix rings over division rings.

[^ring_note]: Potentially non-commutative, but reduces to previous theorem in commutative case.

Let $0\to M_1 \mapsvia{\iota} M_2 \to M_3 \to 0$ be a SES.

> Note that splitting is slightly stronger than $M_2 \cong M_1 \oplus M_3$.

This sequence is split iff there exists a retraction $\pi: M_2 \to M_1$ such that $\iota\circ\pi = \id_{M_2}$.
In this case, $M_2 \cong \iota(M_1) \oplus \ker \pi$.

Definition (Injective Modules)
: An $R\dash$module $E$ is *injective* iff every SES $0\to E \to M_2 \to M_3 \to 0$ admits a retraction $\pi: M_2 \to E$.

Theorem (Characterization of Injective Modules)
:   For an $R\dash$module $E$, TFAE

    1. $E$ is injective
    2. Reversing arrows of projective condition, there exists a lift of the following form:

    \begin{center}
    \begin{tikzcd}
    &  &                                      &  & E                                    \\
    &  &                                      &  &                                      \\
    0 \arrow[rr] &  & M \arrow[rr, hook] \arrow[rruu, "\varphi"] &  & N \arrow[uu, "\exists \Phi", dotted]
    \end{tikzcd}
    \end{center}

    3. If $M\injects N$, then $\hom(N, E) \surjects \hom(M, E)$.
    4. The contravariant functor $\hom(\wait, E)$ is exact.

Note big difference: no analog of being a direct summand of a free module! 
Free modules are usually not injective.

Example
:   $\ZZ$ is a free but not injective $\ZZ\dash$module.
    Take $0 \to \ZZ \mapsvia{\times 2} \ZZ \to \ZZ/2\ZZ \to 0$.
    If this splits, we would have $\ZZ \cong \ZZ \oplus \ZZ/2\ZZ$ as $\ZZ\dash$modules.
    
    Why isn't this true?
    $\ZZ$ is a domain, the LHS is torsionfree, and the RHS has torsion.

Example
:   Suppose now $R$ is a domain and not a field, then let $a$ be a non-unit and run the same argument with multiplication by $a$.
    This would yield $R \cong R \oplus R/aR$, where the LHS is torsionfree and the RHS has torsion.
    So $R$ itself need not be an injective $R\dash$module.

Definition (Self-Injective Modules)
: A ring $R$ is *self-injective* iff $R$ is injective as an $R\dash$module.

Example
: A field or a semisimple ring.

Claim
: Let $\tilde R$ be a PID, $\pi$ a prime element, $n\in \ZZ^+$, then take $R\definedas \tilde R/(\pi^n)$.
  Then $R$ is self-injective.

Example
:   Let $R = \ZZ/p^n\ZZ$, and let $M$ be a finite $p\dash$primary commutative group (i.e. a $p\dash$group).
    Then $\exp M = p^n \iff \ann M = (p^n)$.
    $M$ is a faithful $\ZZ/p^n\ZZ\dash$module, so there exists an element $x\in M$ such that $\#\generators{x} = p^n$.
    There is a SES of $\ZZ/p^n \ZZ\dash$modules

    \begin{align*}
    0\to \generators{x} \to M \to M/\generators{x} \to 0
    .\end{align*}

    Since $\generators{x} \cong \ZZ/p^n \ZZ$, which is self-injective, so there exists a module $N$ such that $M = \generators{x} \oplus N \cong \ZZ/p^n \ZZ \oplus N$.
    Continuing on $N$ yields a decomposition of $M$ into a sum of cyclic submodules.

**Conclusion: a finitely generated torsion module over a PID is a direct sum of cyclic modules.**

In general, to show a module is injective, we need to consider lifts over all pairs of modules $M\injects N$.
How to do this in practice?

Theorem (Baer's Criterion)
:   If suffices to check the lifting condition for $N = R$ and $M = I\normal R$.
    I.e. if there is a lift of the following form:

    \begin{center}
    \begin{tikzcd}
                &  &                                            &  & E                                    \\
                &  &                                            &  &                                      \\
    0 \arrow[rr] &  & I \arrow[rr, hook] \arrow[rruu, "\varphi"] &  & R \arrow[uu, "\exists \Phi", dotted]
    \end{tikzcd}
    \end{center}

    then $E$ is injective.

Proof
: Omitted for time.

Application
:   Let $R$ be a semisimple $R\dash$module and let $E$ be any $R\dash$module.
    Let $I\normal R$, and $f\in \hom(I, E)$.
    If $R$ is semisimple, then there exists a $J\normal R$ such that $R = I \oplus J$.
    So extend $f$ to $f \oplus 0$, which yields a lift:
    
    \begin{center}
    \begin{tikzcd}
    &  &                                      &  & E                                            \\
    &  &                                      &  &                                              \\
    0 \arrow[rr] &  & I \arrow[rr, hook] \arrow[rruu, "f"] &  & R = I\oplus J \arrow[uu, "{(f, 0)}", dotted]
    \end{tikzcd}
    \end{center}

Exercise
: Prove the claim that $R$ is self-injective for $R = \tilde R/(\pi^n)$ above.

# Monday February 24th

## Divisible Modules

We know that injective implies divisible, and uniquely divisible implies injective.
Fact: quotients of divisible modules are divisible

Exercise
:   If $R$ is a domain that is not a field and $M$ is a finitely-generated divisible $R\dash$module, then $M = 0$.

Proof (of exercise)
:   Claim: for any ring $R$, any nonzero f.g. $R\dash$module $M$ has a nonzero cyclic (monogenic) quotient given by modding out by all but one of the generators.
    Thus if $M$ admits a finitely generated divisible $R\dash$module, it admits a cyclic module.

    Then $M \cong R/\ann M$, and there are two cases:

    - $\ann M = 0$, in which case $M\cong R$.
      Then choosing $r\in R^\bullet\setminus R\units$, then $[r]: R\to R$ is *not* a surjection.

    - Otherwise, choose $x\in \ann(M) \setminus \theset{0}$.
      Then $\times x: R \to R$ is the same map as $\times 0: R\to R$, so it is not surjective.

Fact: there is a classification of divisible (iff injective) $\ZZ\dash$modules:

- $(\QQ, +)$, since the fraction field of any domain is divisible.
- $(\QQ/\ZZ, +) = \bigoplus_{\text{primes}} \QQ_p / \ZZ_p$, where $\QQ_p / \ZZ_p = \lim \ZZ/p^n\ZZ$.
    This is isomorphic to the group of $p$ power roots of unity.
    On the other hand, $\QQ/\ZZ$ is the group of *all* roots of unity

Fact (Classification of Divisible $\ZZ\dash$Modules: 
:   Any divisible $\ZZ\dash$module is isomorphic to a direct sum of copies of

  - $(\QQ, +)$
  - $(\QQ_p/\ZZ_p, +)$

  Note that any direct sum of divisible groups is still divisible.
  Moreover, this decomposition is unique.

## Toward Localization

Proposition (Multiplicative Avoidance)
:   Let $S\subset R$ with $SS \subset S$, $1\in S$, $0\not\in S$.
    Define $\mci(S)  = \theset{I\normal R \suchthat I\intersect S = \emptyset}$.
    Then

    1. $\mci(S) \neq \emptyset$
    2. Every element of $\mci(S)$ is contained in a maximal element of $\mci(S)$.
    3. Every maximal element of $\mci(S)$ is prime. 

Proof
:   In parts:

    a. $(0) \in \mci(S)$ by construction.

    b. Standard Zorn's lemma argument. 

    c. Let $I \in \mci(S)$ be a maximal element, and let $x, y \in R$ such that $xy\in I$ with $x\not\in I$.
      Then $\generators{x, I} \supsetneq I$, so $S\intersect \generators{x, I} \neq \emptyset$ by maximality.
      I.e., there exists $s_1 \in S$ such that $s_1 = i_1 + ax$ for some $a\in R$.
      Continuing this way, if $y\not \in I$, produce an $s_2  = i_2 + by_1$ for some $b\in R$.
      Since $S$ is multiplicatively closed, $s_1 s_2 \in S$.
      But we also have $s_1 s_2 = (i_1 + ax)(i_2 + by) \in I$, a contradiction.

> See Kaplansky's Commutative Algebra book.

Proposition (Prime Ideals Behave Like Primes)
:   Let $\mfp \in \spec(R)$ and $I_1, \cdots, I_n \normal R$, then if $\mfp \supset \prod I_i$, then $\mfp \supset I_i$ for some $i$.

Proof
:   Suppose $\mfp \supsetneq I_i$ for any $i$, and let $x_i \in I_i \setminus \mfp$.
    Consider $x \definedas \prod x_i \in \prod I_i \subset \mfp$; then since $\mfp$ is prime, some $x_i \in \mfp$.
    
Corollary:
:   If $\mfp \supset I^n$, then $\mfp \supset I$.

> I.e. prime ideals are radical.

## Radicals

Definition (Nilpotent Elements)
:   An *element* $x\in R$ is *nilpotent* iff $x^n = 0$ for some $n\in \ZZ$.
    An *ideal* is *nilpotent* iff $I^n = (0)$ for some $n$, and is *nil* iff every element $x\in I$ is nilpotent.

Proposition (Nilpotent Implies Nil)
:   Nilpotent $\implies$ nil.

Proof
:   If $I^n = (0)$, then for any $x\in I$, $x^n \in I^n = (0)$ so $x^n = 0$.

Proposition (Nil and FG implies nilpotent)
:   If $I$ is finitely generated and nil, then $I$ is nilpotent.

Proof
:   Let $I = \generators{x_1, \cdots, x_n}$.
    Then for each $i$, choose $e_i \in \ZZ$ such that $x_i^{e_i} = 0$.
    The (check) $I^{\sum e_i} = (0)$.

Definition (Nil)
: An ideal is nil iff all generators are nilpotent.

Corollary:
:   If $R$ is Noetherian, $I$ is nilpotent iff $I$ is nil.

Exercise
:   Exhibit a ring with an ideal that is nil but not nilpotent.
    
    > Need to choose a non-Noetherian ring, e.g. a polynomial ring in infinitely many indeterminates $\theset{t_i}$, and consider $\generators{t_n^n \suchthat n\in \NN}$.

Definition (Nilradical)
:   The *nilradical* of $R$, $\nil(R)$, is the set of all nilpotent elements.

Proposition (Universal Property of Nil)
:   \hfill
    
    a. $\nil(R) \normal R$, since $a^n = b^n = 0\implies (xa + yb)^{2n} = 0$.
    b. $R/\nil(R)$ is reduced, and this quotient map is universal wrt morphism into a reduced ring.
        I.e., if $R \to S$ with $S$ reduced, there is commutative diagram
        \begin{center}
        \begin{tikzcd}
        R \arrow[rr, "f"] \arrow[rdd, "\pi"] &                                                   & S \\
        &                                                   &   \\
        & R/\nil(R) \arrow[ruu, "\exists \tilde f", dashed] &  
        \end{tikzcd}
        \end{center}

    c. $\nil(R) = \intersect_{\text{prime ideal}} \mfp$.

Proof (of c)
:   $\subseteq$: If $x\in \nil(R)$, then $x^n =0$ for some $n$, so $x^n \in \mfp$ and since $\mfp$ is prime, $x\in \mfp$.
    
    $\subseteq$: We'll show that if $x$ is not nilpotent, then it avoids some prime ideal.
    Define $S\definedas \theset{x^n \suchthat n\in\NN}$; since $x$ is not nilpotent, $S$ is multiplicatively closed and does not contain zero, so by a previous result, there is some $\mfp \in \spec(R)$ such that $S\intersect \mfp = \emptyset$.

Definition (Radical Ideals)
:   An ideal $I\normal R$ is *radical* iff for all $x\in R$ there exists an $n$ such that $x^n \in I \implies x\in I$.

Proposition (Prime Implies Radical)
:   Prime ideals are radical.

> Idea: the set of radical ideals is much easier to work with than the set of prime ideals.

# Wednesday February 26th

## Radicals

For $R$ a ring, we defined $\nil(R) \definedas \theset{x\in R \suchthat \exists n\in \NN,~ x^n = 0} \normal R$.
We had a theorem: $$\nil(R) = \intersect_{\mfp\in\spec(R)} \mfp$$

Definition (Radical of an Ideal) (Flat Implies Torsionfree in Domains)
: For $I\normal R$, we define $\rad(I) = \theset{x\in R \suchthat \exists n,~ x^n \in I} \supseteq I$.

Fact
: $I \normal R$.
  To see this, note that for any $I \normal R$, then $\nil(R/I) \normal R = \rad(I)$.

Definition (Radical Ideals)
: $I$ is a *radical ideal* iff $I = \rad(I)$.


Example
: Prime ideals are radical.
  
Definition (Closure Operators)
:   Define a *closure operator* $\ell: I \mapsto \rad(I)$.
    In general, if $(X, \leq)$ is a poset, then a Moore closure operator is a map $c: X\to X$ satisfying

    1. $c(c(x)) = c(x)$
    2. $x \leq c(x)$
    3. $x\leq y \implies c(x) \leq c(y)$.

This is most often applied to $X$ the family of subsets of a set $A$ and $\leq$ subset inclusion.
Note that this doesn't completely correspond to a topological closure, since this would also require preservation of intersections.

> Related to Galois connections, not covering in this class but good for a final topic.

We can produce a nice characterization: 
$$
\rad(I) = \nil(R/I) = \intersect_{\mfp \in R/I} \mfp = \intersect_{\mfp \supseteq I} \mfp
$$

Exercise (easy)
: If $\theset{I_i}$ is any family of radical ideals, then $\intersect_i I_i$ is radical.

Exercise
: Let $R=\ZZ$.
  What are the radical ideals? $(0), (p)$, but $(p^2)$ is not radical -- i.e. $(0), (n)$ for $n$ squarefree.

Fact
: $I$ is radical iff $R/I$ is reduced.
  Noting that by the CRT, $\ZZ/n\ZZ \cong \prod \ZZ/ p_i^{a_i} \ZZ$, which is reduced iff $a_i = 1$ for all $i$.
  If $R$ is a PID, $\pi_1 \cdots \pi_r$ radical ideals, then $(\pi_1 \cdots \pi_r)$ nonassociate prime elements ??

Exercise
: Let $R$ be a ring, $\mfp_1 \neq \mfp_2$ prime ideals.
  
  1. Must $\mfp_1 \mfp_2$ be radical?
  2. If $\mfp_1 + \mfp_2 + R$, then $\mfp_1 \mfp_2 = \mfp_1 \intersect \mfp_2$, and is thus radical.

> Product may be smaller than intersection in general.

Proposition (Algebraic Properties of Radicals)
:   Let $I, J \normal R$.

    a. $I \subset \rad(I)$, $\rad(\rad(I)) \subset \rad(I)$, and $I\subset J \implies \rad(I) \subset \rad(J)$.

    b. $\rad(IJ) = \rad(I\intersect J) = \rad(I) \intersect \rad(J)$

    c. $\rad(I+J) = \rad( \rad(I) + \rad(J) )$

    d. $\rad(I) = R \iff I = R$

    e. $\rad(I^n) = \rad(I)$ for $n\geq 1$

    f. If $R$ is Noetherian and $J\subset \rad(I)$, then $J^n \subset I$ for some $n\geq 1$.

So for Noetherian rings, two radicals are equal iff powers of each ideal land in the other.

Proof (of (b))
: $IJ \subseteq I\intersect J$ and thus $\rad(IJ) \subset \rad(I\intersect J)$.
  If $x\in \rad(I \intersect J)$, there exists an $n$ such that $x^n \in I \intersect J$.
  Then $x^{2n} = x^n x^N \in IJ \implies x\in \rad(IJ)$.

Proof (of b)
: Since $I\intersect J \subset I, J$, we have $\rad(I\intersect J) \subset \rad(I) \intersect \rad(J)$.
  If $x\in \rad(I) \intersect \rad(J)$, then $x^n\in I, x^m \in J$ for some $n, m$, so $x^{m+n} \in I\intersect J \subset \rad(I \intersect J)$.

Proof (of (f))
: By replacing $R$ with $R/I$, assume $I = (0)$, then $J\in \nil(R)$ and since $R$ is Noetherian, $J$ is nilpotent and $J^n=(0)$ for some $n$.

So we simplify things by passing from $I$ to $\rad(I)$. 
There is a class of rings for which it's feasible to understand all *radical* ideals, and hopeless to understand *all* ideals.

Example
: Take $R = \CC[x]$, a PID.
  Suppose $I\normal R$ and $\rad(I) = x^n$, then $I = (x^n)$.
  So this is no big deal, it's just an extra integer parameter.

  Now instead take $R = \CC[x, y]$, and let $I = \generators{x, y}$.
  Note that applying (f) above to $J = \rad(I)$, we find that $I \supset \generators{x, y}^n$ for some $n$.
  But note that $$\generators{x, y}^n = \generators{x^n, x^{n-1}y, \cdots, xy^{n-1}, y^n}.$$

Exercise
: Suppose $I \supset \generators{x ,y}^2$.
  For such $I$, $\dim_\CC R/I < \infty$.
  So for each $d$, try to find all ideals $I$ such that $\rad(I) = \generators{x, y}$ and $\dim_\CC R/I = d$.

> Note that these correspond to "fat points" in algebraic geometry.
> The idea $\generators{x, y}$ corresponds to a fat point at zero.
> When doing AG, we hope to restrict attention entirely to radical ideals.

Definition (Jacobson Radical)
: The *Jacobson radical* is defined by $$\mcj(R) = \intersect_{\mfm \in \maxspec(R)} \mfm.$$

Fact
: $\mcj(R) \supset \nil(R)$, since not every prime ideal is maximal.

Example
: If $(R, \mfm)$ is a local domain, then $\nil(R) = 0$ and $\mcj(R) = \mfm$.

Exercise
: Let $R$ be a domain, show that $\mcj(R[t]) = (0)$.

Proposition (Characterization of Jacobson Radical in Terms of Units)
: $x\in \mcj(R) \iff 1\pm xR \subset R\units$.

Exercise
: Show directly that $x^n = 0 \implies \forall y, 1-xy \in R\units$.

# Friday February 28th

## Radicals: The Jacobson Radical

Definition (The Jacobson Radical)
: $\mcj(R) = \intersect{\mfm \in \maxspec(R)} \mfm$.
  
For a noncommutative ring, instead of intersecting just two-sided ideals, need to intersect either left ideals *or* right ideals (the intersections turn out to be equivalent).

Fact
: If $R$ is finite dimensional over a field, then $\mcj(R) = 0 \iff R$ is semisimple.
  By Wedderburn, this happens iff $R = \prod M_{n_i}(D_i)$.

Definition (Semiprimitive)
: A ring is *semiprimitive* *(or $\mcj\dash$semisimple or Jacobson-semisimple)* iff $\mcj(R) = 0$.

Proposition (Characterization of Jacobson Radical)
: $x\in \mcj(R) \iff 1-xR \subset R\units$.

Proof
: Let $x\in \mcj(R)$ and suppose $1-xy \not\in R\units$, so $1-xy\in\mfm$ for some maximal ideal.
  But then $x\in \mfm$, so $xy \in \mfm$, so $1 = \mfm + xy \in \mfm$, a contradiction.
  
  Suppose instead that $x\not\in\mcj(R)$, so there exists some maximal such that $\generators{m, x} = R$.
  Thus for $y\in R, m\in\mfm$, we have $1 = m+xy$ so $1-xy = m \in \mfm$ and thus $1-xy \not\in R\units$.

In other words, $R\units + \mcj(R) \subset R\units$, and is the largest ideal with this property.
Thus the elements are "close to zero" in the sense that it doesn't take you outside of the unit group.

## Proposition (Commutative Algebra Analog of Euclid IX.20: Infinitely Many Primes)

Let $R$ be a domain, then recall that $p\in R^\bullet$ is irreducible iff $p\not\in R\units$ and $p=xy \implies x\in R\units$ or $y\in R\units$.
If $p$ is irreducible and $u\in R\units$, then $up$ is irreducible and associate to $p$, and $(up) = (p)$.

Define an *atom* to be the principal ideal generated by an irreducible element.

Define a *Fursentenberg domain* to be a domain such that $x\in R^\bullet\setminus R\units$ has an irreducible divisor.
Note that we have a chain of implication, UFD $\implies$ Noetherian = ACC $\implies$ ACC on principal ideals $\implies$ nonzero nonunits factor into irreducibles (atomic domain) $\implies$ Fursentenberg.
So this is a weak factorization condition.

Exercise
: Let $R = \mathrm{Hol}(\CC)$ be the ring of holomorphic functions, which is a domain by the identity theorem.
  Show that $R$ is semiprimitive, Furstenberg but not atomic.

Theorem (Euclidean Criterion)
:   Let $R$ be a domain, not a field, and semiprimitive.
  
    a. There exists a sequence of pairwise comaximal elements $\theset{a_n}_n^\infty$ such that $\generators{a_m, a_N} = R$ for $m\neq n$.

    b. If $R$ is Forstenburg, then there is a sequence of primitive pairwise comaximal *irreducible* elements, and thus infinitely many atoms.

Note that applying this to $R = \ZZ$, the only unit ideals are generated by $\pm 1$, and the result follows immediately.

Proof
: Exercise.

> For what class of rings does this criterion apply?

Application
: For $R$ a Noetherian domain, then by Hilbert's basis theorem $R[t]$ is Noetherian and semiprimitive.
  So by the above result, $R[t]$ is has infinitely many elements.
  Most interesting for $R = \FF_q$, since for e.g. $R=\RR$ we can consider ideals $(x-r)$.

Fact
:   a. If $I, J \normal R$ and $r(I) + r(J) = R$, then $I+J = R$, and $r(r(I)) + r(J) = r(I + J)$.
    b. If $I, J_1, \cdots, J_n \normal R$ and $I + J_i = R$ for each $i$, then $I + \prod I_i = R$.
    c. Suppose $I_1, \cdots, I_n$ are pairwise comaximal, then $\prod I_i = \intersect I_i$ (note: could be smaller and general).

Theorem (Chinese Remainder)
:   Suppose $R$ is arbitrary with $I_1, \cdots, I_n \normal R$ pairwise comaximal.
    Then there is a natural map 

    \begin{align*}
    \Phi: R &\to \prod_{i=1}^n R/I_i \\
    r  &\mapsto (r+ I_1, \cdots, r+ I_i)
    .\end{align*}

    1. $\Phi$ is surjective, and $\ker \Phi = \intersect I_i$.
    2. By pairwise primality, $R/\prod I_i \cong \prod R/I_i$.

Note that as modules, both sides are cyclic.

Proof
:   By induction on $n$, with trivial base case.

    Let $R' \definedas \prod_{i=1}^{n-1} R/I_i$ and assume by induction that $\Phi': R\to R'$ is surjective by induction.
    Let $(r', \bar s) \in R' \cross R/I_n$.
    By hypothesis, $\ker \Phi' = \prod_{i=1}^{n-1}$.
    So there exists an $r\in R$ such that $\Phi'(r) = r'$.
    Lifting to $s\in R$ such that $s + I_n = \bar s + I_n$.
    
    By assumption, $$I' + I \definedas \qty{ \prod_{i=1}^{n-1} I_i} + I_n = R.$$
    So there exist $x\in I', y\in I_n$ such that $s-r = x+y$.
    Note that $\Phi'(r+x) = r'$ since $x\in \ker \Phi$, so
    $$
    r_x = r+x + y = x \mod I_n
    .$$

    But then $\Phi(r+x) = (r', s)$.

Exercise (Converse to CRT (Good for Problem Sessions))
:   Let $I_1, \cdots, I_n \normal R$.
    If $\prod R/ I_i$ is a cyclic $R\dash$module, then the $I_i$ are pairwise comaximal.

    > Immediately reduce to $n=2$ case. Also a nice proof using tensor products, use characterization of $R/I \tensor R/J$.

## Monoid Rings

Here let $R$ be a ring$^*$ (potentially noncommutative) and $(M, \cdot)$ a monoid (i.e. a group without requiring inverses).

Goal: we want to define a *monoid ring* $R[M]$.

If $M$ is finite, the definition is unambiguous, but for infinite $M$ we require an extra condition.
In this case we define the *big monoid ring* $R[[M]]$.

Example
: For $R$ a nonzero ring and $M = (\NN, +)$, $R[M] = R[t]$, and $R[[M]] = R[[t]]$.

Step 1: suppose $M$ is finite, then $$R[M] \stackrel[\rmod]{=} R^M = \theset{f: M\to R},$$ the set of *all* functions.
Note that $(f+g)(m) = f(m) + g(m)$, and define a new multiplication $$(f\ast g)(m) \definedas \sum_{(x, y) \in M^2,~ xy = m} f(x) g(y),$$ the *convolution product*.
One must check that this actually satisfies the axiom of a ring, since we are building this by hand.
This is a ring iff $R$ is a ring and $(M, \ast)$ is commutative.

There is an identity, namely $1 \mapsto 1$ and $x\mapsto 0$ for $x\neq 1$.
Distributivity isn't difficult, but we need to check that $\ast$ is associative.
This follows from 
$$
((f\ast g) \ast h)(m) = \sum_{x,y,z\in M^3,~ xyz = m} f(x) g(y) h(z) = (f\ast (g\ast h))
.$$

Define $[m] \cdot [n] = [mn]$, then check that $\qty{ \sum_{m\in M} r_m [m]  } \qty{ \sum_{m\in M}s_m [m] } = ?$.

# Monday March 2nd

## Semigroup and Monoid Rings

For today, let $R$ be a ring$^*$, so not necessarily commutative, and $(M, \cdot)$ be a nonzero monoid, we then define the monoid ring $R[M]$ by the following condition:

If $M$ is infinite and *divisor-finite*, i.e. for all $m\in M$, the set $\{ (x ,y) \in M^2 \mid xy = m\}$ is finite.

Note that $M$ finite implies divisor-finite, and $M$ a group and divisor-finite implies finite.

For $S$ a set, the free commutative monoid on $S$ is given by $\bigoplus_{s\in S} (\NN, +)$.

Example
: $(\ZZ^{>0}, \cdot) = \bigoplus _{n=1}^\infty (\NN, +)$ by the fundamental theorem of arithmetic.
  The map is given by 
  $$
  M = \prod_{i=1}^n {p_i}^{t_i}  \mapsto (t_i)
  .$$ 
  
We define the *big monoid ring* $R[[M]]$.
Note that $R[M]$ and $R[[M]]$ are commutative iff $R, M$ are commutative.
For $R[M]$, we try $R[M] = R^M = \{f: M\to R\}$ with pointwise addition and instead of point wise multiplication, we take the *convolution product* 
$$
(f\ast g)(m) \definedas \sum_{xy = m} f(x) g(y)
.$$

> Note that this is a finite sum $\iff$ $M$ is divisor-finite.
> Moreover, if $M$ is divisor-finite, then this defines $R[[M]]$.

For any $M$, we define $R[M]$ as above not $R^M$ but rather $\bigoplus_{m\in M} R \subset R^M$, i.e. those $f: M\to R$ with finite support, so for all $f$, $\{m\in M \mid f(m) \neq 0\} < \infty$.

> Note that this makes the convolution product again a finite sum.

For $M$ divisor-finite, $R[M] \injects R[[M]]$, but in general the latter is larger.

Define $[m] = \delta_m$, and expand $f = \sum_{m\in M} r_m [m]$. 
Forming the product $fg$ comes down to defining what $[m_1] \ast [m_2] \definedas [m_1 m_2]$ should be.
We saw that this yields an associative product, since both ways of associating parentheses yield a sum that ranges over triples.

For $M = (\NN, +)$, we find $R[M] = \sum_{n} r_n [n]$ where $[n]\ast [m] \definedas [n+m]$, so we can define $[n] \definedas t^n$, so this is $R[t]$.

More generally, take $M = \bigoplus_{s\in S} (\NN, +)$ for $S$ an arbitrary set, then 
$$
R[M] \definedas \ R[\{ t_s \mid s\in S \}]
$$ 
is a multivariate polynomial ring.

Consider also $M = (\ZZ, +)$.
Since this construction should be functorial, there should be a containment $R[(\ZZ, +)] \supset R[(\NN, +)] = R[t]$.
In this case, $M \cong R[t, t\inv]$, the ring of Lauren polynomials.

We can also identify $R[[(\NN, +)]] = R[[t]]$ is the ring of formal power series over $R$, since we're dropping the finiteness condition.

Note that $R = \ZZ$ is not divisor finite, so we can't necessarily take $R[[M]]$.

Proposition (When Monoid Rings are Domains)
: For $R$ a ring and $(G, +)$ a commutative group, $R[G]$ and $R[[G]]$ are domains iff $R$ is a domain and $G$ is torsionfree.

> Note that $R$ being a domain is necessary because it occurs as a subring via $r\mapsto r[1]$.

Proof (Idea)
: See notes.
  If $g\in G[\tors]\setminus \theset{0}$, then $[g] - [0]$ is a zero divisor.

> See Kaplansky's Group Ring Conjecture.

Exercise
: Let $R$ be a field, identify the fraction field of $R[[t]]$. 
  Should be formal, finite-tailed Lauren series -- but what does this mean?
  
  
There is a universal property of monoid rings:
Let $R$ be a ring, $(M, \cdot)$ a commutative monoid.
Let $B$ be an $R\dash$algebra.
Then $\hom_{\ralg}(R[M], B) = \hom_{\text{monoid}}(M, (B, \cdot))$ given by restriction.

Thus if $f: M \to B$ is a monoid morphism, there exists a unique map
$$
F: R[M] &\to B \\
\sum r_m [m] &\mapsto \sum r_m f(m)
.$$
Note that this is the only possible map that could extend $f$.

Exercise
: Check that this gives an $R\dash$algebra morphism.

> Note that the monoid ring is thus adjoint to the forgetful functor $\ralg \to \text{Monoids}$.

Note that if $M = \bigoplus_{s\in S} (\NN, +)$, then
$$
\hom_{\text{Monoid}}(M, T) = \hom_{\set}(S, T)
,$$
i.e. it is fully determined by where it sends basis elements.

This yields a universal mapping property for polynomial rings, i.e. $\hom_{\ralg}(R[T], B) = \hom_{\set}(T, B)$.

## Localization

Let $S\subset R$ with $SS \subset S$,  with $1\in S$, then there exists a ring $S\inv R$ and a ring morphism $\iota: R \to S\inv R$ such that

1. For all $s\in S$, $\iota(s) \in (S\inv R)\units$
2. $\iota$ is universal for property 1, i.e.

\begin{center}
\begin{tikzcd}
                                       &    & S\inv R                     \\
                                       & {} & {}                          \\
R \arrow[rr, "f"] \arrow[rruu, "\sim"] & {} & T \arrow[uu, "\exists ! F"]
\end{tikzcd}
\end{center}

Remark: 
when $R$ is a domain, this reduces to the fraction field construction, i.e. $(R^\bullet) R = K = ff(R)$.
For $S$ any multiplicatively closed subset, 
$$
S\inv R = R[\frac {1}{s} \mid s\in S]
.$$

> Make sense of partial group completion of a monoid with respect to a submonoid.

Construction:
We'll define $S\inv R = (R\cross S)/ \sim$, where 
$$
(r_1, s_1) \sim (r_2, s_2)  \iff \exists s\in S \text{ such that } sr_1 s_2 = sr_2 s_1
.$$

> Recall that this stabilization is needed, and becomes clear if you try to carry out the construction without it.
> If $R$ is a domain, the $s$ appearing can just be canceled.

Define maps
$$
(r_1, s_1) + (r_2, s_2) &\definedas (r_1 s_2 + r_2 s_1, s_1 s_2) \\
(r_1, s_1) \cdot (r_2, s_2) &\definedas (r_1 r_2, s_1 s_2)
$$

Need to check that this is well-defined.

Exercise
: Check that localization satisfies the universal mapping property.

Question:
what is $\ker(R \to S\inv R)$ where $R \mapsto (r, 1)$? 
This has to do with the $s$ that appears in the stabilization.

# Wednesday March 4th

For $R$ a ring and $S\subset R$ such that $S^2 \subset S$ and $1\in S$, there exists a ring $S\inv R$ and a ring morphism $\iota: R\to S\inv R$ such that

1. $\iota(S) \subset (S\inv R)\units$, and
2. $\iota$ is universal for such morphisms, i.e every $R \mapsvia{f} T$ with $f(S) \subset T\units$ lifts to $S\inv R\mapsvia{\tilde f} T$.

Last time we constructed it as $R\cross S/\sim$ where $(r_1, s_1) \sim (r_2, s_2)$ iff there exists an $s \in S$ such that $sr_1 s_2 = sr_2 s_1$ (needed to obtain transitivity).

We then have $\iota(r) = [(r, 1)]$; what is its kernel?
If $(r, 1) \sim (0, 1)$ then there exists $s\in S$ such that $s\cdot r\cdot 1 = s\cdot1\cdot0 = 0$, so $\ann(r) \intersect \ker \iota \neq \emptyset$.
Note that if $0\in S$ then $\ker \iota = R$ and thus $S\inv R = 0$.
Conversely, if $0\not\in S$, then $\ann(1) \intersect S = \emptyset$, so $S\inv R \neq 0$. 
Thus $S\inv R = 0$ iff $0\in S$.

Example
: For $f\in R$, $R_f \definedas S\inv_f R$ where $S_f = \theset{1, f, f^2, \cdots}$, then $R_f = 0 \iff f\in \nil(R)$.

Definition (Saturated Multiplicatively Closed Sets)
: A  multiplicatively closed set $S$ is *saturated* iff for $s\in S, f\in R$ with $f$ dividing $S$, then $f\in S$.
  Denote the $\bar S$ the saturation of $S$ obtained by adding all divisors, then $S\inv R = \bar{S}\inv R$.
  
> Recall link to early problem of characterizing rings between $\ZZ$ and $\QQ$.
> There are more localizations than such rings, since localizing at $n$ is as good as localizing at $kn$.
 
If $R$ is a domain, then for any $S$ with $0\not\in S$, there is a diagram

\begin{center}
\begin{tikzcd}
R \arrow[hook, r] & S\inv R\arrow[hook, d] \\
 & K 
\end{tikzcd}
\end{center}

where $K = ff(R)$.

In any ring, take $S$ to be the nonzero divisors, then there is a maximal injective localization.
\begin{center}
\begin{tikzcd}
\iota R \arrow[hook, r] & S\inv R\arrow[hook, d] \\
 & \text{Total fraction field} 
\end{tikzcd}
\end{center}

> Can generalize results from domains to arbitrary rings this way.

Exercise
: Take $R_1, R_2$ nonzero rings, $R = R_1\cross R_2$, and take $S = R_1 \cross \{1\}$.
  What is $S\inv R$?
  (First figure out the kernel of the localization.)
  
## Pushing and Pulling

> Note that we can push/pull for quotients and get back what we started with -- want something similar for localization.

Consider the map $\iota: R\to S\inv R$.

Lemma
: $I\normal R$ implies that $\iota_*(I) = \theset{ \frac x s \suchthat x\in I, s\in S}$.

Proof
: Easy.

Proposition (Push-Pull Equality for Ideals in Localizations)
:   For all $J \normal S\inv R$, 
    $$
    \iota_* \iota^* J = J
    .$$

Proof
: Note that we always have containment, just need to show reverse containment.

Lemma
: For $I\normal R$, 
$$
i_*(I) = S\inv R \iff I\intersect S \neq \emptyset
.$$

Proposition (Properties of Spec for Localization)
:   \hfill 
    
    a. For $\mfp \in \spec(R)$, TFAE:

    - $\iota_* \mfp \in \spec(S\inv R)$
    - $\iota_* \subsetneq S\inv R$
    - $\mfp \intersect S = \emptyset$
      
    b. If $\mfp \intersect S = \emptyset$, then $\iota^* \iota_* \mfp = \mfp$.
    
Corollary
: $i^*$ and $i_*$ are mutually inverse, order-preserving bijections 
$$
\spec(S\inv R) 
\overset{i^*}{\underset{i_*}\rightleftarrows}
\theset{\mfp \in \spec(R) \suchthat \mfp\intersect S = \emptyset}
.$$

Lemma
: For $I\normal R$, $S$ a multiplicatively closed set, let $f: R\surjects R/I$ be the quotient map and $\bar{S} \definedas q(S)$. 
  Then 
  $$
  {S\inv R \over IS\inv R} &\mapsvia{\cong} \bar{S}\inv (R/I) \\
  \frac a s + IS\inv R &\mapsto \frac{a + I}{s + I}
  .$$
  
> Thus localizing commutes with taking quotients.

Let $\mfp \in \spec(R)$, then $S_\mfp \definedas R\set minus \mfp$ is multiplicatively closed.
(Note that localizing at any non-prime ideal gives you the zero ring.)
Let $R_\mfp \definedas S_{\mfp}\inv R$.

Proposition (Complements of Prime Ideals are Local? Extremely Important!)
: $R_\mfp$ is a local ring with a unique maximal ideal $\mfp R_\mfp$,

Proof
: The poset $\spec(R_\mfp) = \theset{q\in \spec(R) \suchthat q \intersect (R\setminus \mfp) = \emptyset \iff q\leq \mfp}$.

> This gives us a way to construct a local ring from *any* maximal ideal. 
> Perhaps the most important construction thus far.

Exercise
: Let $(R, \mfm)$ be local and $S\subset R$ be multiplicatively closed.
  Show that $S\inv R$ need **not** be local.
  
## Localization for Modules

Let $M$ be an $R\dash$module and $S\subset R$ multiplicatively closed.
We want $S\inv M$ to satisfy:

- $S\inv M$ is an $R\dash$module
- There is a morphism $M \to S\inv M$ such that for all $s\in S$, the map $S\inv M\mapsvia{[s]} S\inv M$ is an isomorphism, i.e. $S \to \endo_R(S\inv M)$ with $i(S) \subset \endo_R(S\inv M)$
- This is universal wrt the above property.

There are two potential constructions.

Construction 1:
Adapt the $S\inv R$ construction, defining $S\inv M =  M\cross S/\sim$.

Construction 2:
Define $S\inv M \definedas S\inv R \tensor_R M$, where $\iota: M \to S\inv M$ where $m\mapsto 1\tensor m$.

It can be checked that these both satisfy the appropriate Universal mapping property.

Exercise
: If $M$ is an $R\dash$module, then $M$ has an $S\inv R\dash$module structure iff $S$ acts invertibly (so $[s]: M\to M$ is invertible), and if so the structure is unique.





# Monday March 30th

We'll cover localization and Noetherian rings.

We'll need some local to global results.

Corollary
: If $R$ is a domain with fraction field $K$, then
    $$
    \intersect_{\mfm \in\maxspec R} R_\mfm = R
    $$

It follows from this that the analogous statement for prime ideals holds.

Proposition (7.11: Expressing Colon Ideal as Annihilator)
:   Let $M_1, M_2 <_R M$ be sub $R\dash$modules of $M$, then $$(M_1 :_M M_2) = \theset{x\in R \suchthat xM_2 \subseteq M_1} = \ann\qty{M_1 + M_2 \over M_1}.$$
    So the colon is an ideal.
    Suppose that $S \subset R$ be a multiplicatively closed subset satisfying

    a. If $M$ is finitely generated, $S\inv \ann M = \ann S\inv M$.
    b. If $M_2$ is finitely generated, then $S\inv(M_1 : M_2) = (S\inv M_1: S\inv M_2)$.

Proof (of Proposition)
: Omitted, see notes.

Proof (of Corollary)
:   We want to show that $R \injects \intersect R_\mfm$.
    If $x\in K \setminus R$ and $I \definedas (R : Rx) \definedas \theset{r\in R \suchthat rx \in R}$, note that $1\not\in I$.
    Thus $I$ is a proper ideal, so let $\mfm \in \maxspec R$ with $\mfm \supset I$.
    Then $(R\mfm: R\mfm x) = I_\mfm = ? \subset \mfm R_\mfm$ which is a proper ideal in $R\mfm$.
    So $1$ is not in the colon ideal.

These colon ideals aren't the obvious thing to look at, but come up in applications to algebraic geometry and number theory.

Remark
:   For $I, J \normal R$, we have $(I:_R J) = \theset{x\in R \suchthat xJ \subset I}$.
    Thus this construction formalizes the idea of a "quotient $I/J$".
    This works for ideals in a domain, but also for *fractional ideals*.

Definition (Fractional Ideal)
: A *fractional $R\dash$ideal* is a nonzero $R\dash$submodule $I$ of $K$ such that there exists an $x\in R^\bullet$ such that $xI \subset R$.

Any ideal is a fractional ideal by taking $x=1$.
Note that some books define fractional ideals as finitely generated $R\dash$submodules, but this isn't a great definition.


Exercise (Easy)
:   If $I \subset K$ is finitely generated, then $I$ is a fractional ideal.

    > Idea: scale all generators.

Note that $I$ is a fractional $R\dash$ideal iff $(R:_K I) = \theset{x\in K \suchthat xI \subset R}$ is nonzero.


Next up: local-global theory for lattices.

Theorem (Local-Global Principle for Lattices)
:   Let $R$ be a domain with fraction field $K$ and $V$ a finite dimensional $K\dash$vector space.
    Let $\Lambda \subset V$ be a finitely generated $R\dash$submodule.
    Then $\intersect_{\mfm \in \maxspec R} \Lambda_\mfm = \Lambda$.

Note that if $V=K$ and $\Lambda = R$, this recovers the previous theorem.
Thus a global lattice over an integral domain can be recovered in terms of its localizations.

Next up: rounding out some theorems about projective and free modules.

Theorem (Kaplanksy, Very Important: Projective Over Local Implies Free)
: A projective module over a local ring  is free.


We proved this for finitely generated modules, which is the most important case.
Note that projective modules are *locally free*, i.e. if $M$ is a projective $R\dash$module then for all $\mfp \in \spec R$, $M_\mfp$ is a free $R_\mfp\dash$module.

We'll now define a notion of "the least number of generators" locally.

Definition (Rank Function)
:   Suppose $M$ is a finitely generated $R\dash$module.
    For $\mfp \in \spec R$, denote $k(\mfp) = ff(R/\mfp)$ the *residue field* at $\mfp$.
    We have $R \surjects R/\mfp \injects k(\mfp)$, so we define the rank function as
    \begin{align*}
    \rk_M: \spec R &\to \NN \\
    \mfp &\mapsto \dim_{k(\mfp)} M \tensor_R k(\mfp)
    .\end{align*}
    where the RHS is base-changing to $k(\mfp)$ to get a finite dimensional vector space over $k(\mfp)$.

Exercise
:   Show the following properties of the rank function for $M, N$ finitely generated $R\dash$modules:

    a. $\rk_{M\oplus N} = \rk_M + \rk_N$ and $\rk_{M\tensor_R N} = \rk_M \cdot \rk_N$.
    b. Compute the rank function on $\ZZ/n\ZZ$ for $R = \ZZ$.
    c. For $R$ a PID, compute $\rk_M$.

- Taking $\mfp = p\ZZ$ in $\ZZ$ yields a delta function at $p$.
- If $M$ is finitely generated and free, then
\begin{align*}
\rk_M(\mfp) = \dim_{k(\mfp)} R^n \tensor_R k(\mfp) = \dim_{k(\mfp)} \bigoplus_{i=1}^n R \tensor_R k(\mfp) = \dim_{k(\mfp)} k(\mfp)^n = n
.\end{align*}
- If $M$ is locally free, then for all $\mfp \in \spec R$, we have $M_\mfp \cong R_\mfp^{\rk_M(\mfp)}$.
\begin{center}
\begin{tikzcd}
R \ar[rd] \ar[r] & R_\mfp\ar[d] \\
& k(\mfp)
\end{tikzcd}
\end{center}
    - Thus the rank can be thought of as the fiberwise dimension for bundles.

- If $M$ is *stably free*, i.e. there exists an $m, n\in \NN$ such that $M \oplus R^m \cong R^n$, then $\rk_M = n-m$.

Note that projective implies locally free.
In order for a finitely generated projective module to be free, it must have constant rank function.
The geometric analog here would be that the fibers having constant dimension is necessary for a bundle to be trivial.

Proposition (Determining if a Projective is Free)
:   Suppose $M$ is finitely generated projective of constant rank $n$.
    Then $M$ is free iff $M$ can be generated by $n$ elements.


# Wednesday April 1st

Let $M$ be a finitely generated $R\dash$module, then we define a rank function
\begin{align*}
\rk_M: \spec R \to \NN \\
\mfp \mapsto \dim_{k(\mfp)} M \tensor_R k(\mfp)
\end{align*}
where $k(\mfp) = ff(R/\mfp)$.

Question:
If $\mfp_1 \subset \mfp_2$, how do the ranks compare?

Example:
Take $R = \ZZ$ and $M = \ZZ \oplus \ZZ/(10)$, then take $(0) \subseteq (p)$.
Then $\rk_M((0)) = \dim_\QQ M \tensor_\ZZ \QQ = 1$.
However,
\begin{align*}
\rk_M((p)) = \begin{cases}
2 & p=2,5 \\
1 & \text{else}
\end{cases}
.\end{align*}

If $M$ is locally free, e.g. projective, and $\mfp_1 \subseteq \mfp_2$ then $M_{\mfp_1} = M_{\mfp_2} \tensor_{R_{\mfp_2}} R_{\mfp_1}$ is a canonical isomorphism.
Then
\begin{align*}
R_{\mfp_1}^{\rk \mfp_1} = M_{\mfp_1} = M_{\mfp_2} \tensor_{R_{\mfp_2}}
= R^{\rk \mfp_2}_{\mfp_2} \tensor R_{\mfp_1} \cong R_{\mfp_1}^{\rk \mfp_2}
.\end{align*}

Thus $\rk(\mfp_1) = \rk(\mfp_2)$.
In other words, tensor to the fraction field and take the dimension.

Proposition (FG Projective of Rank N Generated by N Elements)
: If $M$ is finitely generated projective of constant rank $n$ then $M$ is free $\iff M$ can be generated by $n$ elements.

Lemma
: If $M$ is finitely generated projective and $I \in \mcj(R)$, then $M/IM$ free implies $M$ is free.

> Nakayama: "finite generators in quotient" lifts to finite generators in total module.

Proof
:   $M/IM \cong(R/I)^n$ since it's finitely generated and free, so this fits the hypothesis of Nakayama's lemma.
    So the last number of generators for $M$ is $n$.
    Then for any $\mfm \in \maxspec R$, then after base change we get a diagram
    \begin{center}
    \begin{tikzcd}
    \mfm \ar[r]\ar[rd] & M/IM \ar[d, "\surjects"] \\
    & M/\mfm M
    \end{tikzcd}
    \end{center}

    Since $M/\mfm M$ is free of finite rank $n$, ???????.


Corollary (FG Projective Over Semilocal Implies Free iff Constant Rank)
: If $R$ is *semilocal* and $M$ is a finitely generated projective module, then $M$ is free $\iff \rk_M$ is constant.

Proof
:   $\implies$: We know free modules have constant rank function.

    $\impliedby$: $\maxspec R = \theset{\mfm_1, \cdots, \mfm_n}$, and $\mcj(R) = \intersect_{i=1}^n \mfm_i = \prod_{i=1}^n \mfm_i$.
    Thus $R/\mcf(R) = \prod_{i=1}^n R/\mfm_i$, and $M / \mcj(R) M \cong \prod_{i=1}^n M/\mfm_i M$.
    So we just need to show that the dimension is independent of $i$.
    But this follows from the rank function being constant, since the rank equals the dimension for each factor.

Proposition (Flatness is Local)
: For $M$ an $R\dash$module, then $M$ is flat $\iff M_\mfp$ is flat for all $\mfp\in\spec R \iff M_\mfm$ is flat for all $\mfm \in \maxspec R$.

> Noetherian: f.g. projective iff locally free.

Theorem (7.2, Extremely Important: FG Projective iff FG by Localizations)
:   For an $R\dash$module $M$, TFAE

    - $M$ is finitely generated and projective
    - $M$ is finitely presented and locally free
    - There exist $f_1, \cdots, f_n \in R$ such that $\gens{f_1, \cdots, f_n} = R$ and for all $1\leq i \leq n$, $M_{f_i}$ is a free $R_{f_i}\dash$module.

> Here $M_{f_i}$ means localize at the powers of $f_i$, i.e. $M \tensor R_{f_i}$.

Corollary
:   \hfill
    - Finitely generated and flat implies projective.
    - For $M$ finitely generated and $R$ Noetherian, projective $\iff$ locally free $\iff$ flat (important!)

A module $M$ is $Z\dash$locally free (Zariski) iff there exists elements $f_i\in R$ such that $\gens{f_i} = R$ and $M_{f_i}$ is free for all $i$.
Note that $Z\dash$locally free implies locally free.

Example:
$R = \prod_{i=1}^\infty \FF_2$ and let $I\normal R$ not be finitely generated.
Note that $R$ is not Noetherian since it's an infinite product of nonzero rings -- just identify as functions $\FF_2^\ZZ$ and take the maximal ideal where the first coordinate is zero (?).
Then $R/I$ is an $R\dash$module is finitely generated and flat (even though $R$ isn't a domain) but not projective, locally free but not $Z\dash$locally free.
Thus the conditions in the hypotheses of the corollary are necessary, particularly being Noetherian.

## Chapter 8: Noetherian Rings

For $(X, \leq)$ a poset, then $X$ is *Noetherian* iff it satisfies the ACC, i.e. there does not exist an order-embedding $\ZZ^+ \injects X$, and $X$ is *Artinian* iff it satisfies the DCC, i.e. there's no embedding $\ZZ^- \injects X$.

Note that $X$ is Noetherian iff $X\dual$ is Artinian, where $X\dual$ is given by $x\leq\dual y\iff y\leq x$.
We'll generally be interested in the poset of submodules of a given module and set inclusion.

Recall that $M$ is Noetherian $\iff$ every submodule is finitely generated, which is easy to show.

Exercise
: Show that for $\ZZ\dash$modules, Noetherian and Artinian are two different conditions by exhibiting the 4 possibilities.

Theorem (Artinian iff Noetherian and Primes are Maximal)
: $R$ is Artinian iff $R$ is Noetherian and $\dim R = 0$, i.e. prime ideals are maximal, $\maxspec R = \spec R$.

> So Artinian is much much stronger than Noetherian.

# Friday April 3rd

Recall that the definition of a normal series for $G$ a group.

Theorem (Jordan Holder)
: Any two composition series for the same group $G$ are equivalent (same isomorphism classes of quotients and multiplicities).

There is an analog of this for modules, even over a noncommutative ring:  this is just a sequence of submodules inclusions, since normality is automatic.
There is similarly a notion of Schreir refinement.
For $p$ groups, the composition factors have to be cyclic of order $p$.
On one hand, we could fix the series and ask for what modules have a compatible composition series -- this is the extension problem, and is difficult in general.
Here we will fix the module and see what the possible composition series are.

Question:
When does an $R\dash$ module admit a finite composition series?

Answer:
When $R$ is both Noetherian and Artinian.


Suppose that $M$ satisfies the ACC and DCC.
Then there exists a minimal simple module $M_1 < M$, an $M_2$ properly containing $M_1$ such that $M_2/M_1$ is simple, and so on.
This sequence of inclusions terminates due to the ACC, so this yields a finite composition series.

Definition (Length)
: ?

Proposition (Length is Additive over SESs)
: For $0 \to M' \to M \to M'' \to 0$, $M$ has finite length iff $M', M''$ do, and $\ell(M) = \ell(M') + \ell(M'')$.

> Dream of commutative algebra: every theorem at the level of generality of "Let $M$ be a module over a Noetherian ring".

Proposition (Quotient/Localization )f Noetherian is Noetherian)
: Quotients and localizations of Noetherian rings are Noetherian.

Proposition (Ideal Poset of Quotient Order-Injects into Ideal Poset of Full Ring)
: For $I\normal R$, $\mci(R/I) \injects \mci(R)$ is an isotone inclusion of posets.

Thus Noetherian-Artinian properties in the RHS imply the same properties in the LHS.
For localizations, we also have $\mci(S\inv R) \injects \mci(R)$ by push-pull properties.

Proposition (Artinian Domains are Fields)
: If $R$ is an Artinian domain, then $R$ is a field.

Proof
:   For the contrapositive, let $a\in R^\bullet \setminus R\units$, then $(a) \supsetneq (a^2) \supsetneq \cdots$ is an infinite descending chain.

Theorem (Properties of Artinian Rings)
:   For $R$ Artinian,

    a. $\dim_{\text{Krull}} R = 0$.
    b. $\mcj(R) = \nil(R)$.
    c. $\maxspec R = \theset{\mfm_i}^n_{i=1}$ is finite.
    d. $\nil(R)$ is a nilpotent ideal.

Proof
:   \hfill
    a. If $\mfp \in \spec k$, $R/\mfp$ is an Artinian domain and thus a field, so $\mfp$ is maximal.
    b. Produce a descending chain $\mfm_1 \supset \mfm_1 \mfm_2 \supset \cdots$ and suppose that $\prod^n \mfm_i = \prod^{n+1} \mfi$, then $\prod^n \mfm_i \subset \mfm_{n+1}$ and thus $\mfm_{n+1} \supset \mfm_i$ for some $i$, which is a contradiction.
    c. ?
    d. ?

Theorem (Akizuki-Hopkins)
: $R$ is Artinian $\iff R$ is Noetherian and $\dim R = 0$.




# Monday April 6th

Last time: a characterization of Artinian rings, the Akizuki-Hopkins theorem

Theorem (Akizuki-Hopkins)
: $R$ is Artinian iff $R$ is Noetherian with Krull dimension 1, i.e. all primes are maximal.

Proposition (Powers of Maximal Ideals in Local Rings)
:   Suppose $(R, \mfm)$ is Noetherian and local.
    Then either

    1. $\mfm^n \gneq \mfm^{n+1}$ for all $n$, or
    2. $\mfm^n = (0)$ for some $n$.

    Moreover, (2) holds iff $R$ is Artinian.

Proof
:   If $\mfm^n = \mfm^{n+1}$ for some $n$, then by Nakayama $\mfm^n = (0)$.

    If $R$ is Artinian, then (1) can not hold, so (2) must hold.
    Conversely, if (2) holds, then $$\mfm \in \nil R = \intersect_{\spec R} \mfp,$$ but this can only happen if $\spec R = \theset{\mfm}$ is precisely one ideal.
    But then every prime ideal is maximal.

Note that Artinian rings have finitely many maximal ideals.

Theorem (Primary Decomposition)
:   Let $R$ be a nonzero Artinian ring and suppose $\maxspec R = \theset{\mfm_i}^n$.
    Then $R = \prod_{i=1}^n \mfr_i$ where $\mfr_i \definedas R_{\mfm_i}$.

Note that for $R = \ZZ$ and $N = \prod_{i=1}^n p_i^{a_i}$, this recovers $Z/N\ZZ = \prod_{i=1}^n \ZZ/p_i^{a_i}\ZZ$.

Punchline: Artinian rings split as a product of local rings.
Modules over local rings are free, and thus simple, so this gives a local-to-global principle.
Moreover, every localization is a projection onto one of the factors.

Exercise
:   For $R$ Artinian, show that every $x\in R$ is either a unit or a zero divisor.
    Thus $R$ is its own total fraction ring.

Exercise
:   For a ring $R$, TFAE

    1. $R$ is semilocal (finitely many maximal ideals).
    2. $R/\mcj(R)$ is Artinian.
    3. $R/\mcj(R)$ has finitely many ideals.

Most important theorem in the course: Hilbert's basis theorem!

Theorem (Hilbert's Basis)
: If $R$ is Noetherian, then $R[t]$ is Noetherian.

Proof
:   Toward a contradiction, let $J \normal R[t]$ that is not finitely generated.
    Construct a sequence $\theset{f_n}$  and take $J_n \definedas \gens{f_1, \cdots, f_n} \subseteq J$.
    This can be done by taking $f_0 = 0$ and $f_{n+1}$ any element of $J/J_{n}$ of minimal degree.
    Note that this ensures that $\deg f_n \leq \deg f_{n-1}$.

    Set $a_n$ to be the leading coefficient of $f_n$, and let $I = \gens{\theset{a_i}}$.
    Since $R$ is Noetherian, $I$ is finitely generated, so there is some $N \in \ZZ$ such that $I = \gens{a_1, \cdots, a_N}$.

    Thus $a_{n+1} = \sum_{i=1}^N u_i a_i$ for some $u_i \in R$.
    So set $g \definedas \sum_{i=1}^N u_i f_i t^{ \deg f_{N+1} - \deg f_i }$.
    Then $g\in J_N$ and $f_N \in J/J_n$ and $f_{N+1} - g \in J\setminus J_N$.

    Now the leading term of $g$ is $\sum u_i a_i = a_{N+1}$, and since $\deg g = \deg f_{N+1}$ where $a_{N+1}$ is also the leading term of $f_{N+1}$.
    Thus $\deg(f_{N+1} - g) < \deg f_{N+1}$, contradicting minimality.

Theorem (Formal Power Series over Noetherian is Noetherian)
: $R$ Noetherian implies that $R[[t]]$ is Noetherian.

Exercise
:   If $R$ is a ring with $R[t], R[[t]]$ both Noetherian, then $R$ is Noetherian.

    > Idea: use the fact that quotients of Noetherian rings are again Noetherian.

Corollary (Single Most Important Result!)
: If $R$ is Noetherian then every finitely generated $R\dash$algebra is Noetherian.

If such an algebra is finitely generated by $n$ generators, it's a quotient of $R[x_1, \cdots, x_n]$.

Some historical notes on the Hilbert Basis Theorem:
Given $G$ a group and $T$ a ring, we can consider actions $G \to \aut(R)$ and the ring of invariants $$T^G = \theset{t\in T \suchthat gt = t ~\forall g\in G} \subset T.$$
Note that Galois theory fits into this framework.
For a classical example, consider $T = \CC[t_1, \cdots, t_n]$.
Then $G \subset \Gl(n, \CC) \actson T$ by linear automorphisms, i.e. it acts on each $t_i$ by taking it to some linear combination of $t_j$.
Note that $G$ can be chosen to be "nice", i.e. a linear algebraic group.

Question: is $T^G$ finitely generated as a $\CC\dash$algebra?
Hilbert proved that this is true when $G$ is a linear algebraic group, and the main step was the basis theorem.
Previously, people were proving these kinds of theorems for a single group at a time, whereas this encompassed all of them simultaneously!

> Quote by Gordon: "This is not Mathematics, this is theology."

This is an early triumph of abstraction in algebra, as opposed to writing out lines upon lines of equations for single proofs.
How effective is this proof?
This doesn't necessarily lead to a good algorithm for finding a finite generating set, see computational commutative algebra.

Exercise
: For $k$ a field, $k[x, y]$ is Noetherian. Show that $k[y, xy, x^2y, \cdots]$ is not Noetherian.

Note that things work out very nicely for Noetherian rings of dimension 0 and 1, but many theorems fail in higher dimensions.

Exercise (Possibly difficult to prove)
: Show that every $k\dash$subalgebra of $k[x]$ is Noetherian.






# Wednesday April 8th

Theorem (Krull Intersection, 8.39)
:   For $R$ Noetherian and $I \normal R$ a proper ideal,

    a. If there exists an $x\in \intersect_{i=1}^\infty I^n$, then $x\in xI$.
    b. Suppose either $R$ is a domain or $I \subset \mcj(R)$, then $\intersect I^n = (0)$.

Proof
:   \hfill

    a. Omitted.
    b. If $x\in \intersect I^n$, then (a) implies that there exists an $a\in I$ such that $x = xa$.
      Then $x(1-a) = 0$.
      Since $R$ is a domain and $a\neq 0$, then $1-a$ is not a zero divisor.

Exercise
: Exhibit a proper ideal $I \normal R$ Noetherian such that $\intersect_n I^n \neq (0)$.

  > Note: there is a very small ring that will work.

Exercise (Recommended, Difficult Calculus)
:   Consider $R = \theset{f:\RR\to \RR, f\in C^\infty} \subset \RR^\RR$ and $\mfm \definedas \theset{f\in R \suchthat f(0) = 0}$.

    1. Show $\mfm \normal R$ and $R/\mfm = \RR$ and thus $\mfm$ is maximal.
    2. Show $\mfm = (x)$.
    3. Show that for all $n\in \ZZ$, we have $\mfm^n = (x^n) = \theset{f \suchthat f(0) = f'(0) = \cdots - f^{n+1} = 0}$.
    4. Show that $\intersect \mfm^n = \theset{f\suchthat T_0(f) \equiv 0} \neq (0)$
    5. Show that $f\not\in f\mfm$ (so $f\neq x g$ for some other smooth $g$) therefore $R$ is not Noetherian.

> Start with a smooth function vanishing at zero, divide by $x$, define value at zero to make it continuous.
> Example: $f(x) = e^{-1/x^2}$ for $x\neq 0$ and $f(0) = 0$.


Theorem (Principal Ideal Theorem / Krull's Hauptfdealsatz)
:   For $R$ Noetherian, $x\in R\setminus R\units$, $\mfp \in \spec(R)$ *minimal over $(x)$* (to be explained).
    Then $\height(\mfp) \leq p$, where we recall that that height is given by the number of ideals below it.


Corollary
: Every nonzero ring has a minimal prime.

In particular if $\mfp = (x)$ is a prime ideal in a Noetherian ring, $\height(\mfp) \leq 1$.

Corollary
: Under these conditions, if $x$ is not a zero divisor then $\height(\mfp) = 1$.

Proof
:   We can reduce $R$ to $R_\mfp$ (using how ideals are pushed into localizations).
    Then $R_\mfp$ is a Noetherian local ring of krull dimension 0, hence is Artinian by Akazuki.
    By a previous theorem, $\mfp R_\mfp$ is thus nilpotent.

    \

    So there exists an $n$ such that $x^n = 0$ in $R_\mfp$ which is thus in the kernel of the localization map, and there exists an $a\in R/\mfp$ such that $ax^n = 0$ in $R$.
    Since $x$ is not a zero divisor, so multiplication by $x$ (and all compositions) is injective, $x^n$ is not a zero divisor and thus $a= 0$.
    But since $a\in R /\mfp$, so $a\neq 0$, a contradiction.

Thus the number of generators of a prime ideal in a Noetherian ring is bounded below by its height.

Lemma (Page 44)
: For $\mfp, \theset{\mfq_i} \in \spec(R)$, if $\mfp \subset \union_i \mfq_i$ then $\mfp \subset \mfq_i$ for some $i$.

Proof omitted.

Exercise
:   In $R = \CC[x, y], \mfm \definedas \gens{x, y}$, show that $\height(\mfm) \geq 2$ and $\mfm$ is the union of all of the principal ideals it contains.
    Thus the finiteness in the previous lemma is necessary.

For $(X, \leq)$ a poset and $x\leq y$, we define the interval $(x, y) \definedas \theset{z\in X \suchthat x\leq z \leq y}$:

![](figures/image_2020-04-08-12-06-30.png)\


Corollary
: For $\mfp \subset \mfq$ a proper containment in a Noetherian ring, $(\mfp, \mfq)$ is either empty or injective.

Note that this implies that for possible line order of length $n$, there is a ring with $\spec(R)$ having that structure.

![](figures/image_2020-04-08-12-10-23.png)

# Friday April 10th

Last time: prime avoidance, for $\mfp, \ts{\mfq_i} \in \spec R$, if $\mfp \subset \union \mfq_i$, then $\mfp \subset \mfq_i$ for some $\mfq_i$.

Theorem (Ideal Intervals in Noetherian Rings are Empty or Infinite)
: For $R$ Noetherian and $\mfp \subsetneq \mfq \in \spec R$, then $(\mfp, \mfq) \definedas \theset{\mfn \in \spec R \st \mfp \subsetneq \mfn \subsetneq \mfq}$ is either empty or infinite.

Proof
:   Wlog by passing from $R$ to $R/\mfp$, assume $\mfp = (0)$, and toward a contradiction assume that the theorem doesn't hold.
    Then $(\emptyset, \mfq) = \theset{\mfp_i}$, and by prime avoidance, there exists an $x\in \mfq \setminus \union \mfp_i$ and thus $\mfq$ is a minimal prime over $x$.
    By Hauptfidealsatz, $\height(\mfq) \leq 1$, but this is a contradiction because $\height(\mfq) \geq 2$.

   ![](figures/image_2020-04-10-11-28-42.png)\

Proposition (Generalized Hauptfidealsatz)
: For $R$ Noetherian, $I = \gens{x_1, \cdots, x_n} \normalneq R$, if $\mfp \in \spec R$ is minimal over $I$, then $\height(\mfp) \leq n$.

Corollary
: If $\mfp \in \spec(R)$ for $R$ Noetherian, then $R$ needs at least $\height(\mfp)$ generators.

> Complete intersection: minimal number of defining equations.

Last item on Noetherian rings, used to prove Nullstellensatz:

Lemma (Artin-Tate Lemma)
: If $R$ is Noetherian and $R \subset T \subset S$ with $S$ finitely generated as a $T\dash$module and finitely-generated as an $R\dash$algebra, then $T$ is finitely generated as an $R\dash$algebra.

## Boolean Rings

Definition (Boolean)
: A ring $R$ is *Boolean* if every element is idempotent, i.e. $x^2 = x$ for all $x\in R$.

Exercise
:   If $R$ is Boolean, then

    1. $R = R\units$,
    2. Every quotient is Boolean,
    3. Every subring is Boolean,
    4. (More interesting) every ideal is radical.

Exercise
:   Suppose $R$ is Boolean.

    1. If $R$ is a domain then $R \cong \ZZ/2\ZZ$.
    2. $\dim R = 0$

Exercise
: If $R$ is Boolean and local, then $R \cong \ZZ/2\ZZ$.

Proposition (Characterization of Finite Boolean Rings)
:   For $R$ Boolean, TFAE:

    1. $R$ is finite.
    2. $R$ is Noetherian.
    3. $\spec R$ is finite.

    In any of these cases, $\qty{\ZZ/2\ZZ}^n$.

Proof
:   \hfill

    - $1\implies 2$ is clear because any finite ring is Noetherian.
    - $2 \implies 3$: using Akazuki-Kopkins, $R$ is Artinian and thus $\spec R = \maxspec R$ is finite.
    - $3\implies 1$: By a previous exercise, since $\maxspec R$ is finite, $R/\mcj(R)$ is a finite product of fields (by CRT essentially).
      Then $\mcj(R) = \nil (R) = \ts{0}$ therefore $R$ is a finite product of fields, forcing $R \cong \prod  \ZZ/2\ZZ$.

## Stone Duality

This leads to Stone duality, an early example of categorical equivalence.
Let $R$ be a Boolean ring, $\spec R \subset \maxspec R$ equipped with the Zariski topology generated by the basis 
$$
\ts{U(f) \st \mfm\in \spec R,~f\not\in \mfm}_{f\in R}
.$$
Then 
$$
V(f) \definedas \spec R \sm U(f) = \ts{\mfm\in \spec R \st f\in \mfm}
.$$

For any $R$, $V(f)$ is closed and $V(f) \subseteq U(1-f)$.

But $R$ is boolean iff $f(1-f) = 0$, and if $1-f \not\in \mfm$, then $f\in \mfm$ and thus $V(f)$ is open.
So $\spec R$ has a base of clopen sets, which is referred to as a *zero-dimensional* space.
Moreover $\spec R$ is also Hausdorff, and we'll later see that $\spec R$ is Hausdorff iff $\dim R = 0$.

Exercise
:   For any $R$,  $\spec R$ is quasicompact (where compact is quasicompact and Hausdorff).

$\spec R$ is zero-dimensional and compact.
Fact:

- A zero-dimensional Hausdorff space is totally disconnected,
- A totally disconnected locally compact space is ?

$X$ is a Boolean space if it is ? and compact, iff compact and totally disconnected.

There is a notion of *Stone space*, equivalently a profinite space is an inverse limit of finite discrete spaces, which happens iff compact and totally disconnected.

To any Boolean topological space $X$ we attached its *characteristic ring* $C(X)$.
The elements are clopen subsets of $X$ with $U + V \definedas U \Delta V = U\sm V \union V\sm U$ and $U\cdot V \definedas U\intersect V$.
Note that any algebra of sets can be made into a ring in this way, and we note that $U\cdot U = U \intersect U = U$, so $C(X)$ is a Boolean ring.

### Statement of Stone Duality

For notation, set $M(R) \definedas \spec R$, and define functors

\begin{align*}
\correspond{\text{Boolean rings}} \stackrel[C]{M}{\tofrom} \correspond{\text{Boolean spaces}}
.\end{align*}

This gives a mutually inverse pair of functors which are naturally isomorphic to the identity, i.e. there is a canonical isomorphisms $C(M(R)) \cong R$ and $M(C(X)) \cong X$.


Exercise
: There exists a ring $R$ and $x,y \in R$ such that $(x) = (y)$ but there exists a $u\in R\units$ such that $x = uy$

# Monday April 13th

## Nullstellensatz

Let $k$ be a ring (later a field) and $R_n \definedas k[t_1, \cdots, t_n]$.
If $x \in k^n$ and $f\in R_n$, we can evaluate $f$ at $x$ since $f(x) \in k$, and we thus get an evaluation map
\begin{align*}
E: R_n &\to k^{k^n}\\
f &\mapsto (x\mapsto f(x))
\end{align*}

which is a ring homomorphism, where the RHS is regarded as a large direct product of rings.

When can we identify polynomials (abstract elements of a ring) with the corresponding polynomial *function*?

Exercise
:   Suppose $k$ is a domain.

    a. If $k$ is infinite, then $E$ is injective but not surjective.
    b. If $k$ is finite, the $E$ is surjective but not injective.

Definition (Incidence Relation)
: Put a relation on $R \cross k^n$ where $f\sim x \iff f(x) = 0_R$.

We'll define an antitone Galois connection
\begin{align*}
\mci(R) \stackrel[I]{V}{\tofrom} 2^{k^n}
\end{align*}

where the RHS is the powerset.
We define $V$ which takes an ideal and yields a subset of $k^n$,
\begin{align*}
V(J) &= \theset{x\in k^n \suchthat \forall f\in J,~ f(x) = 0} \\
I(S) &= \theset{f\in R \suchthat \forall x\in S,~ f(x) = 0}
.\end{align*}

> That this forms an ideal is immediate.

The pair $(I, V)$ are antitone (order-reversing) and fits into the (extremely general formal) framework of Galois connections.
This can be seen by writing $V(J) = \intersect_{f\in J} V(f)$ and $I(S) = \intersect_{x\in S} I(\theset{x} )$.
Therefore (by the formalism) there are associated closure operators:

1. $2^{k^n} \selfmap, S \mapsto \bar S \definedas V(I(S))$
2. $\mci(R) \selfmap, J\mapsto \bar J \definedas I(V(J))$.

These are both *isotone* maps (order-preserving) and are closure operators on posets, i.e. they satisfy

- $(X, \leq) \mapsto (X, \leq), x\leq y\implies C(x) \leq C(y)$ (isotonicity)
- $x\leq C(x)$
- $C(C(x)) = C()$ (idempotence)

By construction, $\bar S = \theset{x\in k^n \suchthat f(s) = 0 \implies f(x) = 0}$ and $\bar J = \theset{f\in k^n \suchthat g(x) = 0 \forall g\in S \implies f(x) = 0 }$.

Example:
Take $k$ a field, $S \subset k$.
Then 
\begin{align*}
\bar S = 
\begin{cases}
S & S \text{ is finite} \\
k & \text{else}
\end{cases}
.\end{align*}

Exercise
: For $k$ a field, show that for all $S_1, S_2 \subset k$, we have $\bar{S_1 \union S_2} = \bar S_1 \union \bar S_2$.

> This mirrors what closures in a topological space would do, so $S \to \bar S$ is in fact a *Kuratowski* closure operator and therefore is the closure operator for a unique topology (here, the Zariski topology, where the closed subsets are given by $V(I)$).
> For $n=1$, the Zariski topology on $k$ is the cofinite topology.
> If $k$ is finite, this is discrete, and is very coarse and non-Hausdorff when $k$ is infinite since any two open sets intersect.

These maps satisfy a *tridempotence* relation, i.e. $VIV =V$ and $IVI = I$, and are antitone *bijections* when restricted to closed sets.

Exercise
: The closure operator on ideals never satisfies the Kuratowski property.

So we don't have a topology on the ring/ideal side, since even unions of ideals may fail to be ideals.
We take the description sending $S\to \bar S$ to be fairly explicit, but what is the corresponding description for $J\to \bar J$?

For all $S\in k^n$, $I(S) \normal k[t_1, \cdots, t_n]$, we use the fact that $f^n(x) = 0 \implies f(x) = 0$ and thus $I(S) = \rad I(S) = \intersect_{\mfp \supset I(S)} \mfp$, and $V(J) = V(\rad J)$.
Moreover, for all $J \normal R$, we have $\rad J \subset \bar J$.

Passing from an ideal to its radical is a closure operator, so does $\bar J = \rad J$ for all $J\normal R$?
Not for all $k$, e.g. take $k = \RR, n= 1, J = \gens{t^2 + 1}$.
Then $V(J) = \emptyset$, but $\bar J = I(\emptyset) = \RR[t]$ vacuously.
Note that $\RR/J \cong \CC$, so $J$ is maximal and hence radical, so $\bar J \supsetneq \rad J = J$.

What went wrong? Potentially $\bar k\neq k$.

Exercise
: Let $k$ be a field, fix $n \in \ZZ^+$, and show that if all $\mfm \in \maxspec(R)$ satisfy $\bar \mfm = \rad \mfm$, then $L$ is algebraically closed.

Exercise
: Suppose $k = \bar k$ is algebraically closed and $n=1$, show that for all $J\normal k(t)$, we have $\bar J = \rad J$.

Theorem (Hilbert's Nullstellensatz)
:   If $k = \bar k$  and for all $n\in \ZZ^+$ and $J \normal R = k[t_1, \cdots, t_n]$, $\bar J = I(V(J)) = \rad J$
    Therefore $I, V$ induce a galois correspondence
    \begin{align*}
    \correspond{\text{Radical ideals} \\ \text{of } k[t_1, \cdots, t_n]} \iff \correspond{\text{Zariski closed subets} \\ \text{of } k^n}
    .\end{align*}

Exercise
:   If $k = \bar k$, show that the above theorem implies the *weak Nullstellensatz*, i.e. the map   
    
    \begin{align*}
    I: k^n &\mapsvia{\cong} \maxspec k[t_1, \cdots, t_n]  \\
    \vector x &\mapsto \mfm_x = I(\theset {\vector x}) = \gens{t_1 - x_1, \cdots, t_n - x_n}
    \end{align*}
    
    is a bijection.

> Try without using the formalism of Galois connections.

Proof sketch: we'll spend most of our time proving the weak Nullstellensatz, and use a trick to bootstrap up to the full theorem.
The closure operator is only the radical for algebraically closed -- what is the closure operator for other fields.



# Wednesday April 15th

Recall that we had mutually inverse maps $V, I$ and for $J\normal R$, we had a closure $\bar J = I(V(J))$ and $\bar S = V(I(S))$.

Hilbert's Nullstellensatz says that if $k = \bar k$, then for all $J$, we have $\bar J = \rad J$ and there is a Galois correspondence between radical ideals of $k[x_1, \cdots, x_n]$ and Zariski closed subset of $\AA_k^n$.
The weak Nullstellensatz gives a correspondence between maximal ideals and points of $k^n$.

For $S = \bar S = k^n$, we have $S = \union_{x\in S} \theset{x}$ and by the Galois correspondence, we find that if $J$ is radical then $J = \intersect{\mfm \supset J} \mfm$.

Definition (Jacobson)
: A ring $R$ is *Jacobson* if every radical ideal is the intersection of the maximal ideals containing it, i.e. for all $I\normal R$ we have $\rad I = \intersect_{\mfm \supset I} \mfm$

Exercise
:   For $x\in k^n$, define $$\mfm_x \definedas I(\theset{x}) = \theset{f\in R \suchthat f(x) = 0}.$$

    1. Show that $\mfm = \gens{t_1 - x_1, \cdots, t_n - x_n}$ and $R/\mfm_x = k$.
    2. Show that the following map is injective:
    \begin{align*}
    I: k^n &\to \maxspec R \\
    x &\mapsto \mfm_x
    .\end{align*}
    3. Show that $I(k^n) = \theset{\mfm \in \maxspec R \suchthat R/\mfm = k}$.
    
    > Hint: consider the images of $t_1, \cdots, t_n$ in $R/\mfm$.


The following result will imply the weak nullstellensatz:

Lemma (Zariski, 1947)
:   Let $k$ be a field, $R$ a finitely generated $k\dash$algebra, $\mfm \in \maxspec R$.
    Then $[R/\mfm : k] < \infty$.
    Equivalently, if $K/k$ is a field extension that is finitely generated as a $k\dash$algebra, then $K$ is finitely generated as a $k\dash$vector space.

Proof
:   \hfill
    Case 1: $K = k(\alpha_1, \cdots, \alpha_n)$ is algebraic.
    
    \
    In this case you get the obvious tower of extensions where each extension is finite, so $[K: k]$ is finite.
    
    \
    
    Case 2: $K/k$ is not algebraic.
    
    \ 
    
    We can choose a transcendence basis $t_1, \cdots, t_n$, and since $K$ is finitely generated as a field extension over $k$, the transcendence degree is finite.
    Then $k \subset k(t_1, \cdots, t_n) \subset K$ and $K$ is algebraic over $k(t_1, \cdots, t_n)$, so $[K: k(t_1, \cdots, t_n)] < \infty$.
    By the Artin-Tate lemma, $k(t_1, \cdots, t_n)/k$ is a finitely generated $k\dash$algebra.
    But then $k(t_1, \cdots, t_n)$ is finitely generated over $k(t_1, \cdots, t_{n-1})$, so it suffices to consider the case of one variable.
    In other words, we need to show that for all $k$, $k(t)$ is not a finitely generated $k\dash$algebra.
    \

    Supposing otherwise, let $\theset{r_i(t)}$ be a finite set of rational functions that are generators.
    Factor each $r_i$ as $f_i/g_i$
    Since $k[t]$ is a PID with infinitely many primes, i.e. infinitely many nonassociate irreducible polynomials.
    \
    
    So choose $q$ monic, irreducible, not equal to any of the $f_i$; then $1 \over q \not\in k[f_1, \cdots, f_n]$, a contradiction.

So rational function fields are not finitely generated over their base fields, or even finitely generated over their polynomial rings.

Exercise
: Show that a PID is Jacobson iff $\spec R$ is infinite.

Exercise
: Show that $R$ is Jacobson iff for every $\mfp \in \spec R$, we have $\mfp = \intersect_{\mfp \subset \mfm \in \maxspec R} \mfm$.

Proposition (Rabinovitch? Trick)
: For $k$ a field and $n\in \ZZ^{+}$, $k[t_1, \cdots, t_n]$ is a Jacobson ring.

To see why the weak Nullstellensatz and this trick imply the Nullstellensatz, we show that for $J\normal R = k[t_1, \cdots, t_n]$, 
$$
\rad J = \bar J = I(V(J)) = I(V(\rad J)) = \bar{\rad J}
,$$ 
so wlog we can assume $J$ is radical and show that $\bar J = J$.

Taking $J$ a radical ideal, 
$$
J = \intersect_{\mfp \subset J} \mfp \equalsbecause{RT} \intersect_{\mfm \supset J} \mfm \equalsbecause{WN} \intersect_{a\in k^n, \mfm_a \supset J} \mfm_a
.$$

Then $J \subset \mfm_a$ iff for all $f\in J$, $f(a) = 0$, i.e. 
$$
a \in V(J) = \intersect_{a\in V(J)} I(\theset{a}) = I(V(J)) = \bar J
.$$

Next time: proof of RT.

# Monday April 20th

Exercise
: If $f: R\to S$ is a ring morphism, then $f^*: \spec S \to \sec R$ is a continuous map of topological spaces.

Exercise
: Defining $R^{\text{red}} \definedas R/\mfm R$, show that $q^*: \spec R^{\text{red}} \to \spec R$ is a homeomorphism.

Exercise
: The bijection $\spec\qty{\prod R_i} = \coprod \spec R_i$ is a canonical homeomorphism for finite (co)products.

Proposition (Spec Is Quasicompact)
: For any ring, $\spec R$ is quasi-compact, i.e. every open cover has a finite subcover.

> Here, "compact" will denote quasi-compact and Hausdorff.

Proof (Sketch, Important to Check)
:   The open sets $U(f) \definedas \spec R \setminus V(f)$ are a base for the Zariski topology.
    It suffices to check that every open cover by basic open sets has a finite subcover.
    Can check that that the unit ideal is generated by finitely many elements.

Theorem (Idempotents Corresponds to Clopen Subsets of Spec)
:   For any ring $R$, there is a bijection
    \begin{align*}
    \correspond{\text{Idempotents of }R} &\iff \correspond{\text{clopen subsets of }\spec R} \\
    e &\mapsto U(e)
    \end{align*}

    where on the RHS we have $e(1-e) = 0 \implies V(e) = V(1-e)$.

Note that a space is connected iff the only clopen sets are trivial, thus $\spec R$ is connected iff the only idempotents of $R$ are $0, 1$.
Thus a ring is connected, i.e. it's not a nontrivial product of rings, iff its spectrum is a connected space.

Theorem (Topological Properties of Zero Dimensional Rings)
:   For a ring $R$, TFAE

    - $\dim R = 0$, so every prime ideal is maximal.
    - $\spec R$ is separated, i.e. $T1$, points are closed, i.e. for disjoint points, disjoint neighborhoods exist (note that $\maxspec R$ is always separated and quasicompact)
    - $\spec R$ is Hausdorff
    - $\spec R$ is a Boolean space (compact and totally disconnected)

Theorem (13.10: Characterization of Gelfand Rings)
:   A ring $R$ is *Gelfand* iff every prime ideal is contained in a maximal ideal (e.g. a local ring).
    TFAE: 

    1. $R/\mcj(R)$ is Gelfand.
    2. $\maxspec R$ is compact.
    3. $\maxspec R$ is Hausdorff.

  Theorem (5.9,11: Maximal Ideals in Rings of Continuous Real-Valued Functions)
:   For a topological (Hausdorff?) space $X$, define $C(X)$ to be the ring of $\RR\dash$valued functions $f$ on $X$. 
    If $X$ is compact, then there is a bijection
    \begin{align*}
    X &\mapsvia{\cong} \maxspec C(X) \\
    c &\mapsto \mfm_c = \theset{f\in C(X) \suchthat f(c) = 0 }
    .\end{align*}

Recall Kolmogorov spaces are defined as those for which distinct points never have precisely the same set of neighborhoods.

Theorem (Hocharter: When Spaces Are the Spec of a Ring)
:   Let $X$ be a topological space.

    a. $X \cong_{\text{Top}} \maxspec R$ for some $R \iff X$ is quasi-compact and separated.
    b. $X \cong_{\text{Top}} \spec R \iff X = \inverselim Y_i$ where $Y_i$ is a finite Kolmogorov space.

> For fun: find where this theorem is applied in the literature!

Definition (Irreducible)
: A topological space is *irreducible* if it is nonempty and not the union of two proper closed subspaces.

Exercise
: Show that $X$ is Hausdorff and irreducible iff $\# X = 1$.

Exercise
:   For a topological space $X$, TFAR:

    1. $X$ is irreducible.
    2. Finite intersections of nonempty open sets are nonempty.
    3. Every open subset is dense.
    4. Every open subset is connected.

Proposition (Properties of Irreducible Spaces)
:   For $X$ a nonempty topological space,

    a. If $X$ is irreducible, then every nonempty open subset is irreducible.
    b. If $Y \subset X$ is irreducible, then its closure $\bar Y$ is irreducible.
    c. If $X$ is is covered by $\theset{U_i}$ and for all $i, j$ we have $U_i \intersect U_j \neq \emptyset$, then $X$ is irreducible.
    d. The continuous image of an irreducible space is irreducible.

Recall that we have a correspondence
\begin{align*}
\correspond{\text{Radical ideals of }R} \stackrel[V]{I}{\tofrom} \correspond{\text{Closed subsets of }\spec R} \\
.\end{align*}

Question:
What is $V(\mfp)$ for $\mfp$ prime?

> Note that the radical of an ideal could be prime without the ideal itself being prime.

Proposition (Important: Variety is Irreducible iff Radical is Prime)
: For $I\normal R$, then $V(I)$ is irreducible iff $\rad I$ is prime.

Proof
:   WLOG, we can take $I = \rad I$.
    If $\mfp \in \spec R$ is prime and $V(\mfp)$ is reducible, then we will have a contradiction.
    In this case, there exist $I, J \normal R$ such that $V(I), V(J) \subsetneq V(\mfp)$ with $V(\mfp) = V(I) \union V(J) = V(IJ)$.
    So $\mfp = \rad IJ \supset IJ$, so $\mfp \supset I$ or $\mfp \supset J$.
    WLOG $\mfp \supset J$, then $V(\mfp) \subset V(I)$, which is a contradiction.
    
    \
    
    Conversely, suppose $V(I)$ is irreducible and I is radical but not empty?
    Then there exist $a, b\in R$ such that $ab\in I$ but $a, b\not\in I$.
    So $\rad a, \rad b \not\subset I$, so $V(I) \not\subset V(a)$ or $V(b)$.
    But then $V(a) \intersect V(I)$ and $V(b) \intersect V(I)$ are proper closed subsets with intersection (?) $V(I)$.
    Then $(ab) \subset I$ implies that $V(I) \subset V(b) = V(ab) = V(a) V(b)$ (?).


Under what hypotheses does $\spec R$ have only finitely many closed subsets?
Uses this correspondence, and the next proof will show that this is true when the ring is Noetherian.



# Wednesday April 22nd

Recall that we had an antitone bijection

\begin{align*}
\text{prime ideals of } R & \iff \text{irreducible closed subsets of } \sec R \\
\text{maximal ideals} &\iff \text{Singletons } \theset{p}, p\text{ closed} \\
\text{minimal primes} &\iff \text{maximal irreducible closed subsets}
.\end{align*}

Note that the last item on the RHS corresponds to an irreducible component.

Definition (Noetherian Space)
: A topological space $X$ is *Noetherian* iff the ascending chain conditions holds for open sets.

Proposition (13.14: In Noetherian Spaces, Every Subset is Quasicompact)
: $X$ is a Noetherian space iff every *open* subset $U \subset X$ is quasicompact. iff *all* subsets are quasicompact.

Note that this is a strange class of spaces!

Exercise
:   If $X$ is Noetherian and Hausdorff, then $X$ is finite.
    Conversely every finite space is Noetherian, regardless of whether or not it is Hausdorff.

Proposition (Noetherian Spaces are Finite Direct Sum )f Connected Components)
: A Noetherian space has finitely many connected components and is the direct sum (disjoint union) of its connected components.

This holds e.g. for manifolds, but not every topological space.
Thus if we're considering the topology of such spaces, we may as well assume they're connected.

Recall $\spec R$ is connected when $R$ is connected (no nontrivial idempotents), and a similar condition holds here:

Theorem (Spec R is Noetherian iff ACC Holds for Radical Ideals)
:   For a ring $R$, TFAE

    1. $\spec R$ is Noetherian.
    2. The ACC holds on radical ideals of $R$.

Note that if $R$ is Noetherian, (2) holds, so this is a weaker condition.

Proof
: This follows from the Galois correspondence.

Thus if $R$ is Noetherian, $\spec R$ is Noetherian.

Next up: any Noetherian ring has finitely many minimal primes.

Proposition (Noetherian Spaces Have Finitely Many Irreducible Components)
: A Noetherian space has finitely many irreducible components,


**Step 1:**
Show that $X$ is a finite union of irreducible closed subsets.

Let $f$ be the set of counterexamples: closed subsets of $X$ that are *not* a finite union of irreducible closed subsets.
Since $X$ is Noetherian, if $f\neq \emptyset$ it has a minimal element $Y$.
Since $Y$ is not irreducible, we have $Y = Y_1 \union Y_2$ which are proper closed subsets.
By minimality, $Y_1, Y_2 \not \in f$, so they must be finite unions of irreducible closed subsets, and thus so is $Y$.

So $f$ must be empty, and $X = Y_1 \disjoint \cdots \disjoint Y_n$ with the $Y_i$ irreducible.
If there exists an $i, j$ such that $Y_i \subsetneq Y_j$, so remove $Y_i$ and similarly all redundancies.
This yields a cover $X = \union_{i=1}^n Y_i$ where $Y_i \not\subset Y_j$ for any $i, j$.

Claim
: The irreducible components of $X$ are precisely the $Y_i$.

Proof
:   Let $Z$ be irreducible and closed, $Z = \union_{i=1}^n \qty{Z\intersect Y_i}$.
    Since $Z$ is irreducible, $Z\intersect Y_i = Z$ for some $i$, so $Z \subset Y_i$.

$\qed$

Corollary
: $R$ Noetherian implies $\mathrm{MinSpec} R$ is finite.

This wraps up everything we'll say about the Zariski topology.

## Integral Extensions

Leading toward normalization theorems, potentially Krull-Akuzuki.

We'll first generalize the notion of "algebraic" for fields

Definition (Integral Elements of Rings)
: For $R\subset S$ rings, $\alpha\in S$ is *integral* over $R$ if there exists a monic $P \in R[t]$ such that $P(\alpha) = 0$.

Note that we don't require $P$ to be monic.
We say $R\subset S$ is integral iff every $\alpha \in S$ is integral over $R$.

Theorem (Characterization of Integral Elements)
:   For $R\subset T \ni \alpha$, TFAE:

    1. $\alpha$ is integral over $R$
    2. $R[\alpha]$ is finitely generated as an $R\dash$module.
    3. There exists an $S$ such that $R \subset S \subset T$ such that $\alpha\in S$ and $S$ is finitely generated as an $R\dash$module.

This says that an integral extension is "locally finite".

Example
: For $L/K$ an algebraic field of extension of infinite degree (e.g. $\bar \QQ / \QQ$), then $K \subset L$ is integral but not finitely generated as a $K\dash$module.

> Note that we've used this to prove Zariski's lemma.

Exercise
:   Take $\bar \ZZ$ to be the set of algebraic integers, i.e. $\bar \ZZ = \theset{\alpha \in \CC \suchthat \alpha \text{ is integral over } \ZZ}$, then $\ZZ \subset \bar \ZZ$ is integral but $\bar \ZZ$ is *not* finitely generated as a $\ZZ\dash$module.

    > E.g. show that $\bar \ZZ$ is not Noetherian.

If $R\subset S$ is integral, then $S$ is finitely generated as an $R\dash$module iff $S$ is finitely generated as an $R\dash$algebra.

Proposition (Integral Properties Push to Quotients and Localizations)
:   Let $R\subset S$ be integral, then

    a. For $J\normal S$, there is an injection $R/\qty{J\intersect R} \injects S/J$ and this is integral.
    b. For $T \subset R\nonzero$ multiplicatively closed, localization induces $R_T \injects S_T$ which is integral.


Corollary (Towers of Successive Integral Containments are Integral)
: For $R \subset S \subset T$, if $R\subset S$ and $S\subset T$ are integral then $R\subset T$ is integral.

Proof
:   Take $\alpha\in T$, then there exist $b_0, \cdots, b_{n-1} \in S$ such that $$\alpha^n + b_{n-1}\alpha^{n-1} + \cdots b_1 \alpha + b_0 = 0.$$
    Then $R[\theset{b_i}, \alpha]$$ is finitely generated as an $R[\theset{b_i}]\dash$module.
    Since $R\subset S$ is integral, $R[\theset{b_i}]$ is finitely as an $R\dash$module.
    Therefore $R[\theset{b_i}, \alpha]$ is finitely generated as an $R\dash$module as well.
    \
    By condition (3) in the integrality condition theorem, $\alpha$ is thus integral over $R$.

# Monday April 27th

## Normalization

Theorem (14.19: Integral Closure is Local)
:   A domain $R$ is integrally closed iff $R_\mfp$ is integrally closed for all $\mfp \in \spec R$ iff $R_\mfp$ is integrally closed for all $\mfm \in \maxspec R$.

> Recall that the height of a prime ideal is the supremum of lengths of chains.
> Height one corresponds to principal.

Definition (Regular Prime Ideals)
: For $R$ a Noetherian ring, $\mfp \in \spec R$ is *regular* iff $\dim_{\RR_\mfp / \mfp R_\mfp} {\mfp R_\mfp \over \qty{\mfp R_\mfp}^2} = \height(\mfp)$.

This corresponds to a mild nonsingularity property for varieties.

Theorem (14.21: Going Down)
: For $R\subset S$ an integral extension of domains, $R$ is integrally closed

\begin{center}
\begin{tikzcd}
\exists \mfp_1 \ar[d, mapsto] & \mfp_2 \ar[d, mapsto] & \spec S \ar[d, mapsto] \\
\mfp_1 \ar[r, "\subset"] & \mfp_2 & \spec R
\end{tikzcd}
\end{center}

Theorem (14.22, Noether Normalization)
:   Let $k$ be an arbitrary field, $R$ a domain and a finitely generated $k\dash$algebra.
    Then

    a. There exists a $d\in\NN$ and algebraically independent elements $y_1, \cdots, y_d$ such that $k[y_1, \cdots, y_d] \subset R$ is a finitely generated module.

    b. $\dim R = d$ equals the transcendence degree of $ff(R) / k$.

Application: Noether normalization implies Zariski's lemma.

Remark (Separable Noether Normalization):
In the above setup, if $k$ is perfect that one can choose the $y_i$ such that $ff(R) / k(y_1, \cdots, y_d)$ is finite and *separable*.

## Invariant Theory

For $G$ a finite group and $R$ an arbitrary object of a category $\mcc$, the notion of a group action by makes sense: namely a group morphism $G \to \Aut_\mcc(R)$.

Definition (Ring of Invariants)
:   For a ring $R$ and a group acting by ring automorphisms, the *ring of invariants* is given by
    \begin{align*}
    R^G \definedas \theset{x\in R \suchthat gx = x \forall g\in G}
    .\end{align*}

Theorem (Invariant Rings are Integral)
: $R^G \subset R$ is integral.

Proof
:   For $x\in R$, define $\Phi_x(t) \definedas \prod_{g\in G} (t - gx)$.
    We can extend the action of $G$ by acting on coefficients and acting on $t$ trivially, yielding $\Phi_x \in (R[t])^G = R^G[t]$ and thus $\Phi_x(x) = 0$.

Proposition (Ring of Invariants Over Integrally Closed is Integrally Closed)
: If $R$ is integrally closed, so is $R^G$.

> Note that this doesn't hold with regularity!
> Here $R^G$ corresponds to "quotient varieties" in AG, which have mild "quotient singularities".

Important point: in dimension 1, normal coincides with regular.

Example (Important in Other Areas)
:   If $G = \theset{\pm 1}$, $R = \CC[x, y]$ and let $-1$ act by $\CC\dash$algebraic automorphisms acting trivially on $\CC$ and sending $x\mapsto -x, y\mapsto -y$.
    Then 
    $$
    R^G = \CC[x^2, xy, y^2] = \CC[X, Y, Z]/\gens{XZ - Y^2}
    $$ 
    which is a conic, and in particular an *affine quadric cone*.
    Since we started out with a UFD, which is integrally closed (and in fact regular), this is integrally closed but the maximal ideal $\gens{X, Y, Z} + (XZ - Y^2)$ is singular.

> Note that here the Picard group is trivial but the divisor class group has order 2.


Theorem (14.32, Noether 1928)
:   Suppose $R$ is a finitely generated $k\dash$algebra and $G$ acts on $R$ by $k\dash$algebra automorphisms.
    Then

    a. $R$ is finitely generated as an $R^G\dash$module.
    b. $R^G$ is finitely generated as $k\dash$algebra.

> This says one can take a quotient of an affine coordinate ring by an affine variety again yields an affine coordinate ring. 

Proof
:   \hfill
    
      a. $R$ is finitely generated as an $R^G\dash$algebra and $R^G \subset R$ is integral, which implies that $R$ is finitely generated as an $R^G\dash$module.

      b. Apply the Artin-Tate lemma for $k \subset R^G \subset R$ where $k \subset R$ is a finitely generated algebra and $R^G\subset R$ is a finitely generated module.


## Normalization Theorems

Normalization is a geometric synonym for integral closure.
Next up: theorems giving good properties of the integral closure.

Let $R$ be an integrally closed domain with fraction field $K$, $L/K$ a field extension, and set $S = I_L(R)$ the integral closure.

\begin{center}
\begin{tikzcd}
S \ar[r, "\subset"] \ar[d, dash] & L \ar[d, dash] \\
R \ar[r, "\subset"] & K
\end{tikzcd}
\end{center}

We know that $S$ is integrally closed, $ff(S) = L$, and $R\subset S$ is integral, we can conclude that $\dim R = \dim S$.

Questions:

1. Is $S$ finitely generated as an $R\dash$module?
2. Is $S$ Noetherian?

WLOG, we can assume $L/K$ is algebraic since we can pass to fraction fields, and integral over a field implies algebraic.
Also note that if $[L: K]$ is infinite, then we shouldn't expect either answer to be "yes".

Example
:   Take $R = \ZZ, k = \QQ, L = \bar \QQ, S = \bar \ZZ$. 
    Then $\bar \ZZ$ is not Noetherian and not finitely generated as a $\ZZ\dash$module.

Is $S$ finitely generated over $R$ or even Noetherian? 
Not necessarily, we need to assume $R$ Noetherian integrally closed and $[L: K]$ finite.

Theorem (18.1, First Normalization Theorem)
:   Supposing that $R$ is an integrally closed domain, $L/K$ finite and separable, then

    a. If $R$ is Noetherian, so is $S$.
    b. If $R$ is a PID, $S \cong_R R^{[L:K]}$ (free of finite rank).

Proof uses discriminant and some linear algebra.
There are (complicated) counterexamples: $R$ a DVR in characteristic 2, $L/K$ a quadratic extension.

Upcoming: two more normalization theorems.
