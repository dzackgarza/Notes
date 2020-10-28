
# Wednesday January 8

Reference: [@silverman_2009]

## Summary

1. Mordell-Weil theorem

  - For elliptic curves over global fields 
    - Number fields, function fields, finite fields, etc.
  
  - Proof uses Galois cohomology and height functions.
    Essentially one proof!
  
  - Holds for abelian varieties, but more difficult.
  - Need an analog of height functions, i.e. an $x\dash$coordinate).

2. Height functions.

3. Elliptic curves over $\QQ_p$ or complete discrete valuation fields[^silv_ref_one], particularly Tate curves.

4. Weil-Chatelet groups $E/k$ related to $H^1(k; E)$ with coefficients in the elliptic curve

5. Galois representation of $E/k$ for $\ch k = 0$, for 
  \[
  \rho_n: g_k \to \GL(2, \ZZ/n\ZZ)
  \]
  which leads to 
  \[
  \hat \rho: g_k \to \GL(\hat \ZZ)
  \]

[^silv_ref_one]:
See Silverman for basics, possibly Chapter 5

## Mordell-Weil Groups

Let $E/k$ be an elliptic curve over a field $k$[^note_on_fields], i.e. a smooth, projective, geometrically integral curve of genus 1 with a $k\dash$rational point $O$.

[^note_on_fields]:
Silverman is good for foundations, but assumes $k$ is a perfect field.
Here we'll let $k$ be arbitrary.

:::{.remark}
If $k$ is not algebraically closed, such a point $O$ may not exist.

By Riemann-Roch (easy computation) $E$ embeds (non-canonically) into $\Bbb{P}^2/k$ as a Weierstrass cubic 
\begin{align*}
y^2 + a_1 xy + a_3 y = x^3 + a_2 x^2 + a_4 x + a_6 \quad \Delta \neq 0
.\end{align*}

This is a smoothness condition, and this equation has a $k\dash$rational point at infinity $[0: 1: 0]$.
The line at infinity is a flex line (?), and so only intersects this curve at one point.
If $\ch k \neq 2,3$ then $y^2 = x^3 + Ax + B$.
Every elliptic curve is given by a Weierstrass equation, although not in a unique way.
:::


:::{.fact title="An amazing one!"}
The set of $k\dash$rational points $E(k)$ form an abelian group with zero as the identity.
:::

:::{.proof title="?"}
\envlist

1. Given any plane cubic $C/k$ and an origin $O \in C(k)$, the chord and tangent process yields a group structure.
  Note that there is a symmetry in connecting rational points $a, b$ with a line an intersecting at another rational point $c$ which is not present in most groups, so an additional inversion about $O$ is needed to actually make this into a group. 
  Proving associativity: difficult!

2. Look at $\mathrm{Pic}^0 E$, the degree 0 divisors on $E$ mod birational equivalence (?), which is equal to the degree 0 line bundles on $E$ mod bundle isomorphism.


:::{.exercise title="?"}
Show there is a map $C(k) \to \mathrm{Pic}^1 C$ given by sending $p$ is its equivalence class; this is a bijection by Riemann-Roch (straightforward exercise).
:::

We can then compose this with a map $\mathrm{Pic}^1 \to \mathrm{Pic}^0 C$ given by $D \mapsto D - [O]$, which decreases the degree by 1.
This gives a map $\Phi: C(k) \to \mathrm{Pic}^0 C$, just need to check that $\Phi(P \oplus Q) = \Phi(P) + \Phi(Q)$.
Check that the groups are independent of the $k\dash$rational point chosen, i.e. changing rational points yields isomorphic groups.
So the group law itself **does** actually depend on the rational point, although the structure doesn't.
:::

:::{.exercise title="?"}
Let $(E, O)/k$ be an elliptic curve and define $E^0 = E\setminus \theset{0}$ the (nonsingular, integral) affine curve given by removing the point at infinity.
Then the affine coordinate ring $k[E^0]$ is defined as $k[x, y]/(y^2 -x^3 - Ax - B)$, which is a Dedekind ring.

> The interesting thing about Dedekind domains: the ideal class group! (i.e. the Picard group)

This has ideal class group $\mathrm{Pic} k[E^0]$, and one can show that

\begin{align*}
\pic^0 E &\to \pic k[E^0] \\
\sum_p n_p \deg(p) [p] &\mapsto \sum_{p\neq 0} n_p [p] = \prod_p p^{n_p}
\end{align*}

with the sum ranging over all closed points is an isomorphism.

> Just note that the RHS can't have a point at infinity, so we just forget it.
> The isomorphism follows from some exact sequence with correction terms that vanish.

So the Mordell-Weil group of $E(k)$ is isomorphic to $\pic k[E^0]$, the class group of a dedekind domain (?).
:::

:::{.definition title="Class Group and the Mordell-Weil Group"}
Let $G$ be a commutative group.

- $G$ is a **class group** iff there exists a dedekind domain $R$ such that $G \cong \pic R$.
- $G$ is an **(elliptic) Mordell-Weil group** iff there exists a field $k$ and an elliptic curve $E/k$ such that $G \cong E(k)$.
:::

**Questions**:

1. Which $G$ are class groups?
2. Which $G$ are Mordell-Weil groups?

**Answer 1:**

:::{.theorem title="Clayborn, 1966"}
Every commutative $G$ is a class group.[^comm_alg_ref_1]
:::


[^comm_alg_ref_1]: 
Subsequent proofs: Leetham-Green (1972) and Clark (2008) following Rosen, and uses elliptic curves. See the end of Pete's Commutative Algebra notes!

**Answer 2**:
Consider $E/\CC$, then $E(\CC) \cong S^1 \cross S^1$, so the torsion subgroup is 
$$
T(1) \definedas (\QQ/\ZZ)^2 = \bigoplus_{\ell} (\QQ_\ell/\ZZ_\ell)^2
.$$
This in fact holds for any algebraically closed field of characteristic zero.

:::{.fact}
For any $E/k$, the Mordell-Weil group $E(k)$ is "$T(1)$-constrained", i.e. $E(k)[\mathrm{tors}] \injects T(1)$.
:::

:::{.theorem title="Clark, 2012"}
$G$ is a Mordell-Weil group $\iff G$ is $T(1)\dash$constrained.
:::

:::{.remark title="Some open problems."}
The analogous statement for abelian varieties, i.e being $T(g)$ constrained for some other genus $g\neq 1$, is open.
Fixing $k= \QQ$ still yields very interesting problems. 
Computing the rank and torsion subgroups is currently open, and the subject of modern research.
:::


# Monday January 13th

## Every Abelian Group is a Class Group

Theorem (Claborn - Leedham - Green - Clark)
: Any commutative group is the class group of some Dedekind domain.

Also see: partial re-proof by Rosen that uses elliptic curves.
This theorem: mostly a proof in commutative algebra, see end of Pete's commutative algebra notes.

## Proof Sketch
Let $E/k$ be an elliptic curve over a field.

### Step 1

Note that $\mathrm{End}_k(E) \cong_\ZZ  \ZZ^{a(E)}$ where $a(E) \in \theset{1,2,4}$.

> Could be $\ZZ$ as a $\ZZ\dash$module, could be an order in the imaginary quadratic field (e.g. a quaternion algebra)

There is a short exact sequence $$0 \to E(k) \to E(k(E)) \to \mathrm{End}_K(E) \to 0.$$
This splits because (as seen above), the RHS term is free and thus projective.
So $$E / k(E) \cong E(k) \oplus \ZZ^{a(E)}.$$

Note that $k(E)$ is an extension of $E_k$ to $E_{k(E)}$ the field of rational functions over $k$? (function field).
To simplify, take $a(E) = 1$ and $E(k) = \theset{0}$.

> Taking $k=\QQ$, this happens (probably, asymptotically) half of the time.
> It's easy to write down an elliptic curve that satisfies these conditions

Then $E/k(E) \cong \ZZ$.

Now pass to the field of rational functions over this field, taking $E(~k(E) ~(E/k(E))~)$.
Then 
$$
k^2(E) \definedas k(E) (E/k(E))
$$ 
and inductively define $k^n(E)$ by passing to function fields.
So $E(k^n (E)) \cong \ZZ^n$.

So we can construct elliptic curves that have any free commutative group as their Mordell-Weil group.

### Step 2

Loosely speaking, we'll iterate this process transfinitely. 
Then for any set $S$, there exists a field $k$ and an elliptic curve $E/k$ such that $E(k) \cong \bigoplus_S \ZZ$.
We now want to introduce a process that allows passing to quotients.
And $R \definedas k[E^0]$ is the affine coordinate ring of ?, remove the point at infinity (?).

### Step 3

Let $R$ be a Dedekind domain.
Note it has a fraction field with a certain ideal class group.
Let $W \subset \maxspec(R)$, then $$R^W \definedas \intersect_{\pr \in \maxspec R\setminus W} R_\pr.$$
Then $R^W$ is Dedekind (and every overring of a Dedekind domain is of this form)
and $\maxspec(R^W) = \maxspec(R\setminus W)$.

Then $$\pic R^W = \pic R / \generators{ [\pr] \suchthat \pr\in W }.$$
Note that if $(A, +)$ is a commutative group, writing $A = \bigoplus_S \ZZ/H$, we have a Dedekind domain $R = k[E^0]$ such that $\pic R = \bigoplus_S \ZZ$.

> Note: $\pic R$ is the class group.

Definition (Replete)
: A Dedekind domain $R$ is **replete** iff every element of the class group $\pic R$ is the class group $[\pr]$ of some ideal $\pr \in \maxspec(R)$.

> Is every ideal class the class of a prime ideal? 
> For $k$ a field, $R = \ZZ_k$. 
> This follows from Chebotarev Density (most important theorem for arithmetic geometers!)

Definition (Weakly Replete)
: A Dedekind domain $R$ is **weakly replete** iff every subgroup $H \subset \pic R$ is generated by classes of prime ideals.

Exercise (Easy)
: $K[E^0]$ is weakly replete, and an easy application of Riemann-Roch shows that if $0\neq p \in E(k) = \pic k[E^0]$, then $[p] \in \pic k[E^0]$ is generated by a prime ideal.

Note: most applications of Riemann-Roch to elliptic curves are easy!
In this case, it gives you an identification $E \cong \pic^1(E)$.

So there exists a subset $W \subset \maxspec k[E^0]$ such that $\generators{[p] \suchthat p\in W} = H$.
Then 
$$
\pic k[E^0]^W \cong \bigoplus_S \ZZ/H \cong A
.$$

$\qed$

Note that Dedekind domains don't have to be replete or even weakly replete.
The class group of a Dedekind domain could be $\ZZ$, and the class of every prime ideal could be $1 \in \ZZ$

Proof (Claborn) 
: Start with an arbitrary Dedekind domain $R$ and attach one that's replete.

	Can ask for a similar result for abelian varieties, there are conjectures here, few clear results.
	Need to get $\ZZ/(m) \cross \ZZ/(n)$, since these occur as Mordell-Weil groups.
	Take a modular curve and a generic point.
	Look at universal elliptic curves over elliptic curves and take their Mordell-Weil groups (?)

	If $k$ is algebraically closed and $\ch k = p$, can't have $\ZZ(p) \cross \ZZ/(p)$.
	Consider the $p\dash$primary torsion $E_k[p^\infty]$. 
	It is zero iff $E$ is supersingular (no points of order $p$).
	It is $\QQ_p/\ZZ_p = \lim_{\rightarrow_n} \ZZ/(p^n)$ iff $E$ is ordinary.

	> Can sometimes reduce to cases where $k=\CC$ and do things analytically.

## Mordell-Weil

Theorem (Mordell-Weil)
: 	Let $k$ be a global field (extension of $\QQ$ or function field over $\FF_p$) and $E/k$ and elliptic curve.
	Then $E(k) \cong \ZZ^r \oplus T$ (by classification of abelian groups) where $T$ is finite, and $T \cong \ZZ/(m) \oplus \ZZ/(n)$ for $m\divides n$.
	So $T$ is generated by at most two elements.

Proof (3 steps)
: **Step 1:**
	Weak Mordell-Weil theorem.

	Take any $n\geq 2$ and $\ch k$ not dividing $n$.
	Show that $E(k)/n E(k)$ is finite.

	**Step 2:**
	Define a height function $h: E(k) \to \RR$ satisfying 3 properties (see next time).
	This is approximately a quadratic form.

	> Decompose at places of a number field, see Number Theory II.

	**Step 3:**
	For any commutative group $A$, there is a notion of a height function $$h: A \to \RR.$$
	Show the Height Descent Theorem: if $A$ admits a height function and $A/nA$ is finite for some $n\geq 2$, then $A$ is finitely generated.

	> Also how you'd prove this theorem for abelian varieties, more difficulty defining $h$.


# Wednesday January 15th

## Proving the Mordell-Weil Theorem

Recall that we're trying to prove the Mordell-Weil theorem.
Let $K$ be a global field, so it's the field of functions over some nice curve.
Then the Mordell-Weil group $E(K)$ is finitely generated.

**Step 1:** 
The weak Mordell-Weil theorem for all $n\geq 2$ with $\ch k$ not dividing $n$, $E(k) / n E(k)$ is finite.

**Step 2:**
Construction of a height function $h: E(K) \to \RR$ that is "trying" to be a quadratic form.

**Step 3 (Today):**
The Height Descent Theorem, i.e. if $(A, +)$ is a commutative group such that $A/nA$ is finite for some $n\geq 2$ and it admits a heigh function $h: A\to \RR$, then $A$ is finitely generated.

### Step 3: Proving the Height Descent Theorem

*Question:*
What does the weak Mordell-Weil group $E(K)/ nE(K)$ tell us about $E(K)$?

Note that we'll inject this into a larger group, which we'll show is finite, but this isn't great for learning about the size.

Example
: Consider $E/\CC$, then $E(\CC) = S^1 \cross S^1$ and $E(\CC)/nE(\CC) = 0$, so the map $x\to nx$ is a surjective map and $E(K)$ is $n\dash$divisible here.
  In general, whenever $K = \bar K$ is algebraically closed, then $x \mapsto nx$ is again surjective and the weak Mordell-Weil group is trivial.
  So knowing this is small doesn't tell us much about $E(K)$ at all.

Example
:   For $E/\RR$, $E(\RR)$ is either $S^1$ (cubic with one real root, $\Delta = 0$) or $S^1 \cross \ZZ/(2)$ (cubic with three real roots, $\Delta > 0$) are the two possible group structure.

    Then

    \begin{align*}
    ? = 
    \begin{cases}
    0 & n \text{ odd } \\
    0 & n \text{ even and } \Delta < 0 \\
    \ZZ/(2) & n \text{ even and } \Delta > 0
    \end{cases}
    .\end{align*}

Example
: Consider $E/\QQ_p$, then for all $\ell \gg 0$ $E(\QQ_p) \mapsvia{[\ell]} E(\QQ_p)$ with $E(\QQ_p)/\ell E(\QQ_p) = 0$ while $E(\QQ_p) / p E(\QQ_p)$ is not zero.

Note: here is an example of a Boolean space, that ends up being homeomorphic to a Cantor set.

Suppose $E(K)$ is finitely generated, so $E(K) \cong \ZZ^r \oplus T$ with $T$ finite.
Then knowing $E(K)/ n E(K)$ gives an upper bound on $r$.

Example
:   Take $n=2$, then $E(K) / nE(K) \cong (\ZZ/(2))^s$ for some $s\in \NN$.
    Then 
    $$
    (\ZZ^r \oplus T) / 2(\ZZ^r \oplus T) \cong (\ZZ/(2))^r \oplus T/2T
    $$ 
    for $r\leq s$.
    Then either

    - $r = 2$ and $E(K[2]) = (0)$.
    - $r=1$ and $E(K[2]) \cong \ZZ/(2)$,
    - $r = 0$ and $E(K[2]) \cong (\ZZ/(2))^2$.

Note that we don't need the Mordell-Weil theorem to compute the torsion subgroups of $E(k)$.
It is often easier to compute these directly.
For all non-archimedean places $v$ of $K$, $E(K_v)[\text{tors}]$ is finite (see Silverman?) and embeds into a number of finite things.

To compute $E(K_v)[\text{tors}]$,

1. Find $N \in \ZZ^+$ such that $E(k)[\text{tors}] \subset E[N]$.
  
  - Choose 2 different places $v_0, v_1$ of good reduction (from Weierstrass equation) with different residue characteristics $\ell_1 \neq \ell_2$
  
  - Consider the map $E(K_{v_i})[\text{tors}] \to E(\FF_{v_i})$
  
  - The kernel is a finite $p_i\dash$primary group.
  
  - Comes down to torsion and formal groups, see first course.

2. Compute $E[N](K)$ (several algorithms, just checking for rational points on a zero-dimensional variety?)

> See division polynomials, can check for roots of polynomials over any global field.
> Easy to check for rational points on finite fields.

Suppose $E(K) \cong \ZZ^r \oplus T$ is finitely generated and we know $E(K) / nE(K)$ for some $n$ and we know $T$.
Then we explicitly know $r$.

> See Tate Shafarevich group -- important! But difficult, a piece of information that helps compute the rank (?).

Definition (Height Functions)
: Fix $n\geq 2$. 
  An $n\dash$**height function** on $(A, +)$ is a map $h: A\to \RR$ satisfying

  1. For all $R\geq 0$, the set $h\inv(-\infty, R)$ is finite.
  
  2. For all $Q\in A$, there exists a $C_2 = C_2(A, Q)$ such that for all $P \in A$, 
  $$
  h(P + Q) \leq 2h(P) + C_2
  (?).$$ 
  
  3. There exists a $C_3 = C_3(A, n)$ such that for all $P \in A$, 
  $$
  h(nP) \geq n^2 h(P) - C_3
  $$
  
Note: (3) would be an equality for an honest quadratic function, so this deviates in a controlled way.

Theorem (Height Descent)
: Let $(A, +)$ be a commutative group with an $n\dash$height function $h: (A, +) \to \RR$.
  If $A/nA$ is finite, then $A$ is finitely generated.

Proof
:   Let $r$ be the size of $A/nA$.
    Choose coset representatives $Q_1, \cdots, Q_r$ of $nA$ in $A$.
    Let $p\in A$ and define a sequence $\theset{P_k}_{k=0}^\infty$ in $A$ by $P_0 = P$ and for $k\geq 1$, choose $P_k$ such that $P_{k-1} = nP_k + Q_{i_k}$.
    Then for all $k\in \ZZ^+$, it's true that $P = n^k P_k + \sum_{j=1}^k n^{j-1} Q_{i_j}$.

    Claim
    : There exists a constant $c > 0$ depending only on $A, n$ such that for all $P \in A$, there exists a $K = K(P$ such that for all $k \geq K$, we have $h(P_k) \leq 0$.

    Note that this is sufficient -- if so, $A$ is generated by $\theset{Q_1, \cdots, Q_r} \union h\inv((-\infty, C])$, which are both finite.

Next time: proof of claim.

> Note: similar setup goes through for abelian varieties, see Néron–Tate height canonical height, which yields an honest "quadratic form".

# Friday January 17th

## Continuing Step 3

Recall the Height Descent Theorem (see previous notes).
Most important property of height function: the collection of elements under a given height is finite.

> Note that $A/nA$ is the cokernel of multiplication by $n$.

Proof
: Let $r$ be the size of $A/nA$ and choose coset representatives $Q_1, \cdots, Q_r$.
 	For $P\in G$ (?) define $P_0 = P$ and $P_k$ such that $P_{k-1} = n P_k + Q_i$ for any $i$.

For all positive $k \in \ZZ$, we have $P = n^k P_k + \sum n^j Q_i$.

Claim
: There exists a $c> 0$ such that for all $P \in A$ there exists a $K = K(P)$ such that for all $k\geq K$, $h(P_k) \leq C$.
	If this holds, $A$ is generated by $\theset{Q_i} \union h\inv((-\infty, C])$.

Proof (of claim)
: Let $c_2 = \max_{1\leq i \leq r} c_2(-Q_i)$.

	Then

	\begin{align*}
	h(P_k) 
	&\leq \frac 1 {n^2} \qty{ h(nP_k) + c_3  } \\
	&= \frac 1 {n^2} \qty{ h(P_{k-1} - Q_i) + c_3  } \\
	&\leq \frac 1 {n^2} \qty{ 2h(P_{k-1}) + c_2 + c_3  } \\
	&\leq \frac 1 {n^2} \qty{ \frac 2 {n^2} \qty{ 2h(P_{k-1}) + c_2 + c_3  } + c_2 + c_3} \quad \text{by repeating} \\
	&= \qty{ \frac{2}{n^2}  }^2 h(P_{k-2}) + (1 + \frac{2}{n^2})(c_2 + c_3) \\
	&= \qty{\frac 2 {n^2}  }^k h(P) + \frac 1 {n^2} \qty{1 + 2/n^2 + (2/n^2)^2 + \cdots (2/n^2)^k   }(c_2 + c_3) \\
	&\leq \qty{\frac{2}{n^2}  }^k h(P) + \qty{ \frac{1}{1 - \frac{2}{n^2}}  }(c_2 + c_3) 
	,\end{align*}

	where the last inequality follows because $n \geq 2$ implies the leading term is bounded by 1 and the middle term contains a convergent series.

	This proves the claim for any $n$?

Definition (Linear and Quadratic Forms on Groups)
: A function $h:A \to \RR$ from a commutative group is **quadratic** if the associated function

	\begin{align*}
	B_h:A^2 &\to \RR \\
	(x, y) &\mapsto h(x+y) - h(x) - h(y)
	.\end{align*}

	is bilinear.
	The function $h$ is **linear** iff $B_h$ is constant.

	The function $h$ is a **quadratic form** iff $h$ is quadratic and for all $m\in \ZZ$ and for all $x\in A$, $h(mx) = m^2 h(x)$, i.e. a degree 2 homogeneous function.


Theorem (Canonical Height Descent)
:  Suppose $(A, +)$ is commutative and $h: A\to \RR$ is a quadratic form.
Suppose 

	1. $A/nA$ is finite, and
	2. $h\inv((-\infty, R])$ is finite for all $R$,

	then letting $y_1, \cdots, y_r \in A/nA$ be coset representatives and taking $C = \max h(y_i)$, we can conclude that $A$ is generated by $\theset{x\in A \suchthat h(x) \leq C}$.

## Step 4

Theorem (Abstract Weak Mordell-Weil)
: Let $k$ be a field, $E/k$ an elliptic curve, choose $n$ such that $\ch k$ doesn't divide $n$, and let $k' \definedas k(E[n])$ be $k$ with the $n\dash$torsion points of $E$ adjoined.
	Note that this adjoins finitely many algebraic points to $k$.

	Suppose there exists a Dedekind domain $R$ with fraction field $k'$ with finite class group, so $\Pic(R) < \infty$, and $R\units$ is finitely generated
	Then $E(k) / n E(k)$ is **finite**.

Corollary
: Let $k$ be a global field $n\geq 2$, then $E(k)/ n E(k)$ is finite.

Proof (of Corollary)
: $k$ is a number field, so is $k'$.
	Pick $k' = \ZZ_k$, which is a Dedekind domain. 
	By Number Theory I, the hypotheses above are satisfied.

	If $k$ is a function field, $k/\FF_p(t)$ is finite and separable, so $k' / \FF_p(t)$ is finite and separable.
	For $A = \FF_p(t)$, $A \subset \FF_q(t)$, then take $R/A \subset k'/\FF_q(t)$ the integral closure of $A$ in $k'$.
	By Number Theory I, $R$ is a Dedekind domain.

	![Image](figures/2020-01-17-12:57.png)\

	Then $R = \FF_p[C^0]$, and by Number Theory II, $\Pic(R)$ is finite.

	> Removing primes makes unit group larger and the class group smaller.

	> Localizing at a prime ideal yields a DVR? This kills the Picard group (since it's a PID?) but blows up the units group.

	> Note that the proof for abelian varieties adapts very easily.


## Sketch Proof of Abstract Mordell Weil

**Step 1:**
Reduce to the case that $E$ has full $n\dash$torsion, i.e. $k' = k$.
If $L/k$ is finite Galois (as is $k'/k$), and $E(L)/nE(L)$ is finite, then $E(k) / nE(k)$ is finite.

Remark
: For any extension $L/k$, there is an injection $E(k) \injects E(L)$, but $E(k) / nE(k)$ need not inject into $E(L)/n E(L)$.
For counterexamples, take $k = \RR$ and $\CC/k$, then $E(\CC) / nE(\CC)$ can be trivial.

**Step 2:**
Let $L\definedas  k([n]\inv E(k))$ be the compositum $k[\theset{P}]$ over the $P\in E/\bar k$ such that $[n] P \in E(k)$ is $k\dash$rational.
It's straightforward to show that $L$ is separable and Galois (it is an etale covering).
That it's galois: if $[n]P$ is rational, so is $[n] \sigma(P)$ for any $\sigma$ in the galois group.
We'll show that this is a finite extension.

**Step 3:**
Construct a Kummer pairing to show that finiteness of $[L: k]$ is equivalent to $E(k)/nE(k)$ being finite. 

**Step 4:**
Reduce finiteness of $[L: k]$ to algebraic number theory.

# Wednesday January 22nd

## Stronger Weak Mordell Weil

Theorem (Stronger Weak Mordell-Weil)
:   Let $n\geq 2$, $k$ a field, $\ch(K)$ not dividing $n$, $E/k$ an elliptic curve $K \definedas K(E[n])$.

    Suppose there exists a Dedekind domain $R$ with fraction field $K$ such that

    - $\pic R[n]$ is finite
    - The cokernel of $x\mapsto nx$ is finite

    Then $E(K)/ n E(K)$ is finite.

Exercise
: Take $k = \bar k$, $C/k$ a "nice" affine curve, $R = k[C]$, $K = k(C)$, $\ch(k)$ not dividing $n$.
  Show that if $E/k$ is any elliptic curve, then the hypotheses of Stronger Weak Mordell-Weil hold, as does the conclusion, and in fact $E(K)$ need not be finitely generated.

> Uses ANT II.

### Step 1

Let $L/K$ be a Galois extension and consider 
$$
\iota: E(K)/n E(K) \to E(L)/ n E(L)
.$$
This is not injective in general, and in fact 
$$
\ker(\iota) = (E(K) \intersect nE(L))/ nE(K)
.$$

Proposition
: \hfill
    a. There exists a map $\ker \iota \to \maps(g_{L/K}, E[n])$, where $g_{L/K}$ is the Galois group of $L/K$.
  
    b. If $L/K$ is finite, then $\ker \iota$ is finite
  
So if $E(L) / nE(L)$ is finite, then $E(K) / nE(K)$ is finite.

Proof
: Let $p\in E(K) \intersect n E(K)$.
  Choose $Q_p \in E(L)$ (only determined up to an $n\dash$torsion point) such that $[n] Q_p = p$.
  For all $\sigma \in g_{L/K}$ we have 

  \begin{align*}
  [n] (\sigma(Q_p) - Q_p) = \sigma([n] Q_p) - [n] Q_p = \sigma(p) - p = 0
  .\end{align*}

  Thus $\sigma(Q_p) - Q_p \in E[n]$.

  > Note: this resembles a certain coboundary map in a cohomology theory.

  We then associate a map

  \begin{align*}
  \lambda_p : g_{L/K} \to E[n] \\
  \sigma \mapsto \sigma(Q_p) - Q_p
  .\end{align*}

  Suppose that for $p, p' \in E(K) \intersect n E(L)$, so $\lambda_p = \lambda_{p'}$.
  Then for all $\sigma \in g_{L/K}$, we have 

  \begin{align*}
  \sigma(Q_p - Q_{p'}) &= \sigma(Q_p) - Q_p - (\sigma(Q_{p'}) - Q_{p'} ) + (Q_p - Q_{p'}) \\
  &= \lambda_p(\sigma) - \lambda_{p'}(\sigma) + Q_p - Q_{p'} \\
  &= Q_p - Q_{p'}
  .\end{align*}

  So $Q_p - Q_{p'} \in E(K)$, and thus $p - p' = [n] (Q_p - Q_{p'}) \in nE(K)$.
  Thus $$\ker \iota = \frac{E(K) \intersect nE(L)}{nE(K)}.$$

From now on, we'll assume $K = K' = K(E[n])$.

### Step 2

Define the Kummer pairing.

Let $L = K\sep$ and take $p \in E[K]$ such that $[n] Q_p = p$, and define 

\begin{align*}
\lambda_p : g_k \leq \aut(K\sep/K) &\to E[n] \\
\sigma &\mapsto \sigma(Q_p) - Q_p
.\end{align*}

Note that since $E[n] = E[n](K)$, this no longer depends on the choice of $Q_p$.

Define a Kummer pairing

\begin{align*}
\kappa: E(k) \cross g_K &\to E[n] \\
(p, \sigma) &\mapsto \sigma Q_p - Q_p
.\end{align*}

Proposition
: This pairing satisfies the following properties:

  1. For all $p, q\in E(K)$ and $\sigma \in g_k$, $\kappa(p+q, \sigma) = \kappa(p, \sigma) + \kappa(q, \sigma)$
  2. For all $p \in E(K)$ and $\sigma, \xi \in g_k$, $\kappa(p, \sigma \xi) = \kappa(p, \sigma) + \kappa(p, \xi)$.
  3. For all $p\in E(K)$, we have $\kappa(p, \sigma) = 0$ for all $\sigma$ iff $p\in nE(K)$.
  4. For all $\sigma \in g_K$, we have $\kappa(p, \sigma) = 0$ for all $p\in E(K)$ iff $\sigma \in g_L$ where $L\definedas K([n]\inv E(K)) = K(Q_p/P \in E(K))$.
  
  So $\kappa$ induces group homomorphisms
  \begin{align*}
  g_K / g_L = g_{L/K} &\injects \hom(E(K) / nE(K), E[n]) \\
  E(K)/ nE(K) &\injects \hom(g_{L/K}, E[n])
  .\end{align*}

> Thus $E(K) / n E(K)$ is finite iff $g_{L/K}$ is finite iff $[L: K]$ is finite.

Thus $g_{L/K}$ is abelian of exponent dividing $n$.
So we can study this using Kummer theory and class field theory.

Proof (of 1)
: Can take $Q_{p + p'} = Q_p + Q_{p'}$, which is a fine choice, and then $\kappa(p + p', \sigma) = \kappa(p, \sigma) + \kappa(p', \sigma)$.

Proof (of 2)
: 
  \begin{align*}
  \kappa(p, \sigma \xi) 
  &= \sigma\xi Q_p - Q_p - \sigma \xi Q_p - \sigma Q_p + \sigma Q_p - Q_p \\
  &= \sigma(\xi Q_p - Q_p) + \kappa(p, \sigma) = \sigma(\kappa(p, \xi) + \kappa(p,\sigma)) \\
  &= \kappa(p, \xi) + \kappa(p, \sigma)
  .\end{align*}

Proof (of 3)
: For $\sigma \in g_K$, then $\kappa(E(K), \sigma) = (0)$ iff $\sigma Q_p - Q_p = 0$ for all $P \in E(K)$ iff $\sigma$ pointwise fixes $L$ iff $\sigma \in g_L$.

Exercise
: Replace $E/k$ with $A/k$ a commutative group scheme such that $[n]: A\to A$ is etale and $A[n]$ is finite.
  The proof goes through without modification if $\ch k$ doesn't divide $n$ and $A/k$ is an algebraic group, reduced, and of finite type.

Exercise
: Take $A = \GG_m$, the multiplicative group of $K$.
  Then $A(K) / nA(K) = K\units/K^{\cross n}$.
  Suppose $K$ contains $n$th roots of unity, then regular Kummer theory gives a map $K\units/K^{\cross n} \cong \hom(g_K, \mu_n)$ where $\mu_n$ are $n$th roots of unity.

  This says that $K\units/K^{\times n} = \chi(g_{L/K})$ where $L$ is the maximal abelian extension of $K$ of exponent dividing $n$, and $\chi(\wait) = \hom(\wait, \ZZ/n\ZZ)$, i.e. these are Pontryagin duals.

So far, works for any algebraic group, but we'll need properness later.

# Friday January 24th

## Stronger Weak Mordell-Weil

Let $K$ be a field, $n\geq 2$ with $\ch k$ not dividing $n$, and $A/K$ a commutative algebraic group (includes abelian varieties, additive/multiplicative groups, etc).
Assume that $K$ contains all $n$th roots of unity (we showed that this can be assumed).

Let $$L \definedas K([n] \inv A(K)) = K(\theset{Q \in A(K\sep) \suchthat [n] Q \in A(K)}).$$
We've shown that $L/K$ is Galois, and moreover abelian of exponent dividing $n$ and $L/K$ is finite iff $A(K) / n A(K)$ is finite.

> Take $K = \QQ$, then $\QQ[p]$ for every $p$ gives infinite extensions.

We want to show that if $A=E$ is an elliptic curve (or an abelian variety) and $K$ is the fraction field of some Dedekind domain $R$ with some finiteness condition on $\pic(R)$ and $R\units$, then $L/K$ is finite.

### Step 3 

Let $\pr \in \maxspec(R)$ with $\pr$ not dividing $n$ such that $E$ has good reduction at $\pr$.

> Take an $R\dash$integral Weierstrass equation $W/R$ for $E$, then the discriminant satisfies $\Delta(W) \neq 0$.
> So just exclude the (finitely many) primes where $\pr \divides \Delta(W)$.
> For abelian varieties, reducing the equations mod $p$ can result in singularities for only finitely many $p$.

Then $L/K$ is unramified at $\pr$ (i.e. it's ramified at only finitely many primes).

*Proof:*
We have 
$$
L = \prod_{Q \suchthat n[Q] = P \in E(K)} L(Q)
$$
as a compositum of extensions, so it's enough to show that
$$
L_p \definedas \prod_{[n] Q = p, ~p \in E(K)} K(Q)
$$ 
is unramified over $K$.

Take integral closures:

![Image](figures/2020-01-24-12:34.png)

Take the inertia group 
$$
I \definedas I(\pr \mid p) = \theset{\sigma \in g_{L_p/k} \sigma(\pr) = \pr, \sigma\actson S_p/\pr = \id} \in \aut(L_p/K)
.$$

We want to show that $\forall \sigma \in I$, $\sigma(Q) = Q$.
We have 
$$
0 = \sigma(P) - P = \sigma([n]Q) = [n]Q = [n](\sigma Q - Q)
$$ 
and thus $\sigma Q - Q \in E[n] = E[n](K)$.

We now introduce the reduction map

\begin{align*}
r: E(L_p) \to \tilde E(S/\pr)
,\end{align*}

where we use the fact that we can complete at $\pr$ and then take a reduction to obtain a map $E(L_p) \to E(\hat L_p) \to \tilde E(S/p)$, which is where we use the fact that the reduction is good.

We know $\sigma Q - Q$ is $n\dash$torsion.
Then $r$ is a homomorphism, so $r(\sigma Q - Q) = r(\sigma Q) - r(Q) = 0$ by the definition of the inertia group.
So $\sigma Q - Q$ is an $n\dash$torsion point in the kernel of the reduction map.

Fact from elliptic curves I (Silverman Ch. 7), the only torsion in the kernel of the reduction map is $\ch (S/p)\dash$primary torsion.
Since $\ch(S/p)$ does not divide $n$ here, $\ker r = 0$, so $\sigma Q = Q$.

$\qed$

> In the case of abelian varieties: The kernel of a good reduction is a formal group law of $g$ dimensions.
> Reference: Prop 3.1, Clark and Xales (?) 2001.
> Here is where it doesn't work for $\GG_m$.
> Projective variety: clear denominators for the fraction field, now need to look at integral points?


### Step 4: Number Theory

Let $S \subset \maxspec(R)$ be the finite set of $p$ such that $p \divides n$ (using global characteristic assumption here) or $E$ has bad reduction at $p$.
Then take $L = K([n]\inv E(K))$.
We know $L/K$ is abelian of exponent dividing $n$, and is a compositum of extensions $L_Q$, each of bounded degree at most $n^2$, each unramified outside of $S$.

> $Q$ is an $n$ division point of something $k$ rational. Multiplication by $n$ has degree $n^2$, so $[K_Q : K] < n^2$.

Theorem (Hermike - Minkowski)
: Let $d \in \ZZ^+$, $K$ a number field, and $s \subset \maxspec \ZZ_\ell$ finite.
 Then $$\#\theset{\text{ $L/K$ of degree $d$ unramified outside of $S$}} < \infty.$$

> One of a few finiteness theorems in elliptic curves/NT, probably the hardest one.
> Galois extension like branched cover, too few preimages. Take surface with marked points (corresponding to prime) and take all branched covering spaces that fix the degree and only ramify at those points. I.e. take unramified coverings. Then $\pi_1$ is free and f.g., which is the analogy here.

*Proof:*
See Neukirch Ch. 3, 2.13, or Milne's ANT Theorem 8.42.
Use Hermite's theorem that any given $\Delta \in \ZZ$ can only be the discriminant $\Delta(K)$ for finitely many $K$.

If $K$ is a number field, then take $R = \ZZ_k$ and we're done.

Otherwise, let $R_s \definedas \intersect_{\pr \in \maxspec(R\setminus S)} R_{\pr}$.
Then $R_s$ is a Dedekind domain, $\maxspec R_s = \maxspec(R\setminus S)$.
Also $\pic(R_s)$ is a quotient $\pic(R) / \generators{[\pr] \suchthat \pr \in S}$.

Assume $\pic R$ is finitely generated, then so is $\pic R_s$.
If so, by enlarging $S$, we can make $R_s$ a PID.

> Note $R_s$ is not necessarily a localization, although it could be, so we expect the unit group to get bigger.

Theorem (Pete's CA Notes Lemma 23.4)
:  Let $R$ be a Dedekind domain and $R\subset T \subset K$.
Then

    a. $T\units/R\units$ is torsion-free.

    b. Let $\pr \in \maxspec ?$ and define $T \definedas \intersect_{q\neq \pr} R_q$. 
      TFAE:

      - $T\units / R\units = \ZZ$.
      - $T\units \supsetneq R\units$.

    c. $[p] \in \pic R[?]$.

So killing off primes either adds factors of $\ZZ$ or does nothing at all.

By the lemma, passing from $R$ to $R_s$ by killing finitely many maximal ideals, if $\Pic R$ and $R\units$ are both finitely generated, then they are still finitely generated for $R_s$.
Thus we can assume $R_s$ is a PID.

> Proof of theorem next time. Need ramification and taking $n$th roots in local fields.

# Monday January 27th

## Weak Mordell-Weil: Finishing the Proof

Recall that $n\geq 2$, $K$ a field with $\ch K$ not dividing $p$, $E/K$ an elliptic curve, $R$ a Dedekind domain with fraction field $K(E[n])$
such that $\pic R$ and $R\units$ are finitely generated.
Then $E(K) / nE(K)$ is finite.

We've shown:

- May take $K = K(E[n])$, so $K$ contains the $n\dash$torsion and all $n$th roots of unity $\mu_n \in K$.
- $R$ a PID with fraction field $K$,
- $E(K) / n E(K)$ is finite iff $L\definedas K([n]\inv E(K))$ is a finite degree extension over $K$.
- $L/K$ is abelian of exponent dividing $n$
- $L/K$ is only ramified over $\pr \in \spec(R)$ if $p\divides n$ or $E$ has bad reduction at $\pr$ (so bad reduction at only finitely many primes).

Last step of the proof: 

### Applying Kummer theory to show $L/K$ is finite

Lemma
: Let $K$ be a field with a discrete valuation $v: K \surjects \ZZ \union \theset{\infty}$ such that $v(n) = 0$.
  When are Kummer extensions unramified?
  Every Kummer extension $L$ is a compositum $L \definedas K(a^{1/n})$.
  Then $L/K$ is unramified at $v$ iff $n$ divides $v(a)$.

Proof (of Lemma)
:  \hfill

    $\implies$: 
    We can extend $v$ to $L$, and $v$ is unramified iff $v(L\units) = \ZZ$.
    Noting that $v(a^{1/n}) = \frac 1 n v(a)$, if we suppose $v(L\units) = \ZZ$, we're done.

    $\impliedby$:

    > Can check being unramified by passing to completion.

    Pass from $K$ to the completion $K_v$ and let $\pi$ be a uniformizer, so $v(\pi) = 1$.
    Then define $a' = a/\pi^{v(a)}$, so $v(a') = v(a) - v(a) = 0$ and thus $a \in R_v\units$.
    Writing 
    $$
    a/a' = \pi^{v(a)} \in (K\units)^n
    ,$$ 
    so $K(a^{1/n}) = K((a')^{1/n})$.
    So we reduce to the case $v(a) = 0$.

    Since $R_v$ is integrally closed, we have $x\in K_v^{\times n} \iff x\in R_v^{\times n}$, so there is an isomorphism

    \begin{align*}
    R_v\units / R_v^{\times n} \cong k_v\units / k_v^{\times n}
    \end{align*}

    which follows from Hensel's Lemma.

    Thus $K_v(a^{1/n})/K$ is unramified.

    > Standard argument from NT II.


Now let $S\subset \spec R$ be the set 
$$
S = \theset{\pr \in \spec R \suchthat \pr \divides n \text{ or } E  \text{ has bad reduction at } \pr }
,$$ 
and 
$$
T_S =  \theset{ a\in K\units / K^{\times n} \suchthat \forall \pr\in \spec(R\setminus S),~ n \divides \ord_p(a)}
.$$

We will be done if $T_S$ is finite.

Claim
: There exists a surjective group homomorphism $\psi: R\units \to T_S$.

Then since $R\units$ is finitely generated, so is its image, but if $T_S = T_S[n]$ is an $n\dash$torsion group, this forces $T_S$ to be finite.


\begin{tikzcd}
R\units \arrow[rr, hook] \arrow[rrrrdd] \arrow[rrrr, "\psi", bend left] &  & K\units \arrow[rr, hook'] &  & K\units/K^{\times n} \\
                                                                        &  &                           &  & \\
                                                                        &  &                           &  & T_S \arrow[uu, hook]
\end{tikzcd}


Take $\bar a \in T_s$ and lift it to $a\in K\units$, and consider $(a)$ as a fractional $R_S$ ideal; it is an $n$th power.
So write $(a) = I^n$ for $I$ another fractional $R_S$ ideal.

> Really only need to assume that the class group of $R_S$ does not have $n\dash$torsion.

Since $R_S$ is a PID, $I = (b)$, so $(a) = (b)^n = (b^n)$ so there is some $u\in R_S\units$ with $a = ub^n$.
But then 
$$
\bar a = \psi(a) = \psi(u) \psi(b^n)
 = \psi(u)
 ,$$ 
 so $\psi$ is surjective.

This finishes the proof of weak Mordell-Weil.
$\qed$

Remark
: We could weaken the assumptions to $R$ with fraction field $K(E[n])$ such that $(\pic R)[n]$ is finite
and $R\units / R^{\times n}$ is finite.

Exercise
: Let $k = \bar k$ and $C/k$ be a "nice" affine curve.
  Let $R$ be the affine coordinate ring of $C$, i.e. $R = k[C]$, and $K = k(C)$ with $\ch(k)$ not dividing $n$.
  Show that if $E/K$ is an elliptic curve then $E(K) / n E(K)$ is finite.

$n\dash$torsion on an abelian group is finite. 
Note that the Mordell-Weil group here may not itself be finite!
Also note that proof almost goes through for abelian varieties, since we didn't use anything particular to elliptic curves.

## Height Functions

Definition (Product Formula Field)
: A **product formula field** is a triple $(K, \Sigma_K, A)$ where $K$ is a field, $\Sigma_K$ is a set of places on $K$, and $A$ is a set of normalizing constants.

Definition (Place)
: A **place** $v$ on a field $K$ is an equivalence class of absolute values $\abs{\wait}: K \to [-, \infty)\subset \RR$, where e.g. the equivalence is given by absolute values inducing the same topology.

Here we don't mind if raising to some power invalidates the triangle inequality, as long as raising to *some* power preserves it.

> See ultrametric, Archimedean.

$\Sigma_K$ is **a** set of equivalence classes of absolute values (not necessarily all) such that 

1. **(PF1)**
  $$
  \Sigma_K^{\text{Arch}}  \subset \Sigma_K
  .$$

2. **(PF2)**
  For all $x\in K\units$, 
  $$
  \# \theset{ v\in \Sigma_K  \suchthat \abs{x}_v \neq 1} < \infty.
  $$ 

    A non-Archimedean valuation in $\Sigma_K$ satisfies $\abs{x}_v = c_v^{-v(x)}$ for some rank 1 valuation $v: K \to \RR\union\infty$ with $c_v > 1$, and $A$ is that data of a choice of $c_v$ for each non-Archimedean $v$.

3. **(PF3)**
  For all $x\in K\units$, we have 
  $$
  \prod_{v\in \Sigma_K} \abs{x}_v = 1
  .$$

Note that we don't care about the $c_v$s necessarily, but we do need to choose them to preserve this product formula.

All global fields are PFFs, so we'll use this to define height functions on projective spaces.

# Wednesday January 29th

## Remarks on Weak Mordell-Weil

Definition (Small Groups)
: A profinite group (e.g. group occurring as an absolute Galois group) is **small** if for all $n \in \ZZ^+$, the set of open subgroups of $g$ of index $n$ is finite.

Proposition
: For any $g = g_K = \Aut(K\sep/K)$, $g$ is small iff $K$ has only finitely many separable extensions of any fixed degree $d$.

Definition (Big Fields)
: A field $K$ is *big* iff its Galois group $g_K$ is small.

**Warning**: In general not related to cardinality.

If $K$ is big and contains $n$th roots of unity $\mu_n \in K$, then for all $n\geq 2$, the maximal abelian extension of exponent dividing $n$ is finite (by Kummer theory)
Therefore, if $A/K$ is any commutative algebraic group (plus conditions?), then $A(K)/ nA(K)$ is finite.

Fields that are big:

- Finite fields
- Algebraically closed fields
- $\RR$ and any real closed field $\iff$
- $p\dash$adic fields

But $\FF_q((A))$ is *not* big.

> The Weak Mordell Weil proof goes through if you look at integral points instead of just rational points.
> Dirichlet unit theorem gives WMW for the multiplicative group.

## Height Functions

Let $(K, \Sigma_K, A)$ be a product formula field where $K$ is a number field and $K = k(C)$ for $C/K$ is a nice curve for $k$ any field.

> Don't need to assume separability, but we will!

A height function is a function $H: \PP^n(K) \to \RR$.
We assume the product formula field $K$ has the *Northcott property*, i.e. $\theset{ p\in \PP^n(K) \suchthat H(P) \leq R  }$ is finite for ever $n$ and every $R$.

Remark
: A number field $K$ has the Northcott property, and $k(C)$ has this property iff $k$ is finite.

1. This gives an estimate for change in $H$ under finite morphisms $f: \PP^n \to \PP^m$.
2. For $E/K$ with $y^2 = P_S(x)$, then $H: E(K) \to \RR$ given by $p\mapsto H([X(p): 1])$.

View $X: E \to \PP^1$ is a 2:1 map given by taking $x$ coordinates.

Sticking point:
The "near-quadraticity" of $H$, i.e. the second property of height functions.
We won't have Weierstrass equations for abelian varieties, so we don't want to do this.
Instead, we'll develop 

1. Weil's height machine
2. Néron-Tate canonical heights on abelian varieties $A/K$.

Note that if $(x_0, \cdots, x_n) \in \PP^n(\QQ)$, where $\QQ$ is the fraction field of $\ZZ$, a UFD, so this is a UFD.
Appropriately clearing denominators, we can get $\gcd(x_0, \cdots, x_n)$.
So $H(x_0, \cdots, x_n) = \max_{0\leq i \leq n} \abs{x_i}$, and (check!) the Northcott property holds.

Let $(K, \Sigma_K, A)$ where $\Sigma_K$ is a set of inequivalent places $\abs{\wait}_v$.

1. PFF1: The Archimedean places $\Sigma_K^{\text{Arch}}$ have valuations $v: K \to \RR \union \infty$ where $\abs{\wait}_v = c_v > 1$.

2. PFF2: For all $x\in k\units$, $\abs{x}_v = 1$ for all $v$.

3. PFF3: Height is invariant under scaling, i.e. for all $x\in k\units$, $\prod_{v\in\Sigma_K} \abs{x}_v = 1$.

Example
: 	Take $K = \QQ$, then 

   - $\abs{x}_p = p^{-\ord_p(x)}$
   - $\abs{x}_\infty = \abs{x}$ the standard real absolute value
   - $\abs{x}_\infty = \qty{\prod_p \abs{x}_p  }\inv$ for all $x\in \ZZ^\bullet$.

Example
: $k$ any field, $R = k[t]$, and $K = k(t)$.
	Then it's not quite true that $\Sigma_K = \theset{v_p, ~p \text{ monic irreducible polynomials}}$.
	Question: what is $C_{v_p}$.

	For $c>1$, we can write 
	$$
	\abs{\wait}_p \definedas c^{-v_p}
	.$$
	Write $x = \eps p_1^{a_1} \cdots p_{r}^{a_r}$ with the $p_i$ monic irreducibles and $\eps \in k\units$.
	Then 
	$$
	\prod_p \abs{x}_p = \prod_p c^{-v_p(x)} = c^{-\sum^r a_i}
	.$$
	
	But this isn't one!
	We don't have the "counterbalance" here, so we may want to add an infinite place to compensate.

Remark
: If $k$ is algebraically closed, then $p_i = t - x_i$ and $\sum a_i = \deg v$.

Adding a place:
Define $v_\infty(f/g) = v_\infty(f) - v_\infty(g)$, and 
$$
\abs{\wait}_{v_\infty} = c^{-v_\infty(f/g)} = c^{\deg f - \deg g}
.$$
This yields

\begin{align*}
\abs{x}_\infty \prod_p \abs{x}_p 
&= \prod_p C^{-v_p(x)} C^{\deg x} \\
&= c^{-\sum^r a_i} C^{\deg x} \\
&= C^{-\deg x}C^{\deg x}
.\end{align*}

In general, 
$$
\deg\qty{\prod_{i=1}^r p_1^{a_1} \cdots p_r^{a_r}} = \sum_{i=1}^r a_i \deg(p_i)
.$$

Then 
$$
k_v \definedas \deg p_v \cdot c \quad\text{and}\quad \abs{x}_p \definedas C^{-\deg(p) v_p(x)}
.$$

# Friday January 31st

## Finite Separable Extensions are PFFs ?

Given a product formula field (PFF) $(K, \Sigma_K, A)$, recall that we want the product formula:

\begin{align*}
\forall x\in K\units,\quad \prod_{v\in \Sigma_K} \abs{x}_v = 1
.\end{align*}

We want to show that given any finite separable extension $L/K$, endow it with a PF structure where the places of $L$ are given by $\Sigma_L =$ all extensions of $v\in L/K$ to $L$ (?)

> Note that separability is not necessary but does simplify things, c.f. Serre.

The structure for $A$: to be decided.

A technical remark: 
A global field is given by $K = \FF_q(C)$ where $C/\FF_q$ is a nice curve.

Then $\QQ$ has a PF structure, $K(t)$ has a PF structure.
Note that the extensions over $\QQ$ will be separable, since we're in characteristic zero, so the question is about separable extensions over $K(t)$.

If $C/K$ is a nice curve over any field, then there exists a finite degree extension $K(C) / K(t)$ iff $C \mapsvia{f} \PP^1$.

> Reminder: Noether's normalization, integral affine variety over any field, can geometrically map it down to affine d-space via an algebraic (finite) map.
> So we end up with a finitely generated module over a polynomial ring.

We want a separable extension, and from field theory, since $\FF_q$ is perfect we can find $\FF_q(t) \subset \FF_q(C)$ which is separable.

If $k$ is any perfect field, then we can find a separable Noether normalization.
If $K/k$ is a finitely generated field extension of transcendence degree $d$.
Moreover, we can find an extension 
$$
K \mapsvia{\text{finite, separable}} k(f_1, \cdots, f_d) \to k
.$$

So let $L/K$ be degree $d$ and separable.
There is a surjective map $\Sigma_L \surjects \Sigma_K$ with fibers of size $\leq d$.
For $v\in \Sigma_k$, this is defined by $L_v\definedas L \tensor_k K_v$, and if $L/K$ is separable then $L \cong k[t]/(f)$ where $f$ is separable and irreducible.
Thus $L_v \cong K_v[t] / (f)$ where $f = f_1 \cdots f_r$ which are irreducible over $K_v$.
By the Chinese Remainder Theorem, $$L_v \cong \prod_{i=1}^r K_v[t] / (f_i) \cong \prod_{w \mid v} L_w.$$

> Primitive element theorem: finite separable extensions of fields are generated by one element.

How do we extend the norm?
For $x\in C_w$, define 
$$
\abs{x}_w \definedas \abs{ N_{L_w}/ K_v (x) }_v^{\frac 1 d}
$$ 
where $d$ is the global degree $d = [L : K]$.

> Note that the exponent here is not necessary to get the product formula, but it works anyway and is useful when we later look at heights.

Lemma
: For $x\in C$, 
$$
\prod_{w \mid v} \abs{x}_w = \abs{N_{L/K}(x)}_v^{\frac 1 d}
.$$

This yields the normalization $A_L$.

Theorem (Finite Separable Extensions are PFFs)
: The product formula holds, i.e. $(L, \Sigma_K, A)$ is a PFF.

For all $x\in L\dual$, we have 
$$
\prod_{w\in \Sigma_L} \abs{x}_w = \prod_{v\in \Sigma_K} \prod_{w\mid v} \abs{x}_w = \prod_{v\in \Sigma_K} \abs{ N_{L/K}(x)  }_v^{\frac 1 d} = 1
$$ 
by the product formula on $K$.


## Height Functions

For $(K, \Sigma_K, A_K)$ a PFF, define $x\definedas (x_0, \cdots, x_n) \in \AA^{n+1}(K)$ and 
$$
H(x) \definedas \prod_{v\in \Sigma_K} \max_{0\leq i \leq n} \abs{x_i}_v
.$$
Then $H(x) = 0$ iff $x = (0, 0, \cdots, 0)$.

Lemma
: For all $\lambda \in K\units$, $H(\lambda x_1, \cdots, \lambda x_n) = H(x_1, \cdots, x_n)$, so $H$ descends to $H: \PP^n(K) \to \RR$.

Thus for any $p \in \PP^n(K)$, can write $p = [x_0, \cdots, x_n]$ where some $x_i = 1$.
So each term appearing in the product is at least 1.

For $x\in K$, we define $H(x) = H([x: 1])$.

Example
: Take $K = \QQ$ and $n=1$, we can compute $H([x: y]) = H([a, b])$ where $\gcd(a, b) = 1$. 
	This equals $\prod_{p\leq \infty} \max(\abs{a}_p, \abs{b}_p)$, the $p\dash$adic norms.
	This equals 
	$$
	\qty{\max(\abs a, \abs b)} \qty{ \prod_p \max(\abs{a}_p, \abs{b}_p)  }
	,$$ 
	where the second term collapses to 1 because every term is 1, because no $p$ can divide both $a$ and $b$.
	So $H([a, b]) = \max(\abs a, \abs b)$.

Example
: Take $K=\QQ, n$ arbitrary.
	WLOG, we can consider $\theset{x_i}$ with $\gcd(x_i) = 1$, then $H([x_0: \cdots : x_n]) = \max(\abs{x_0}, \cdots, \abs{x_n})$.

	We in fact have a finite bound

	\begin{align*}
	\#\theset{P \in \PP^n(\QQ) \suchthat H(P) \leq R \in \ZZ} \leq (2R + 1)^{n+1} 
	.\end{align*}

Note that the probability that two numbers are prime is $1/\zeta(2)$; look at Euler product expansion.

> Idea of proof: don't want both to be divisible by 2, by 3, by 5, etc.

Example
: Let $K = k(t) \supset k[t]$ for $k$ arbitrary.
	Write $H([x_0: x_1]) = H([a:b])$ where $a, b\in k[t]$ with $\gcd(a, b) = 1$.
	Recall that the infinite-adic norm is given by $\abs{a}_\infty = C^{\deg(a)}$.
	Then 

	\begin{align*}
	H([a: b]) &= \prod_{p\leq \infty} \max(\abs{a}_p, \abs{b}_p) \\
	&= \qty{ \max(\abs{a}_\infty,\abs{b}_\infty)} \prod_p \max(\abs{a}_p, \abs{b}_p) \\
	&= \max(C^{\deg a}, C^{\deg b})
	,\end{align*}

	where the same argument goes through.
	Thus $\log_C H([a: b]) = \max(\deg a, \deg b)$, literally the maximum degree of these two polynomials.

Note that there are only finitely many polynomials of a given degree $d$ iff the field is finite.
So the PFF formalism doesn't care about the field, but the Northcott property depends on the cardinality of the field in a key way.

Fact
: The Northcott property holds for all $R> 0$ and for all $n$, i.e. 
	$$
	\#\theset{P\in \PP^n \suchthat H(P) \leq R} < \infty
	$$ 
	iff $K$ is finite.
	
	This holds iff $$\#\theset{P\in \PP^n \suchthat \log_C H(P) \leq R}$$ is finite.
	Note that if $K = \FF_q$, then for $R\in \ZZ^+$, 
	$$
	\#\theset{P \in \PP^n(\FF_q) \suchthat \log_C H(P) \leq R} = (q^{r+1})^{n+1}
	$$ 
	by counting choices for coefficients.

We'll show that the Northcott property passes to finite extensions.

Theorem (Finiteness for Northcott PFFs)
: Let $K$ be a Northcott PFF, then for all $n\in \ZZ^+$, for all $R\in \RR$, for all $d\in \ZZ^+$, 
$$
\#\theset{ P \in \PP^n(K\sep) \suchthat [K(P): K] \leq d,~H(P) \leq R  }
$$ 
is finite.

# Monday February 3rd

## Extending Height Functions to Separable Closure 

We started with a product formula field $(K, \Sigma_K, A)$, then took $L/K$ finite and separable and equipped it with a PFF structure:
$\Sigma_L$ is equal to the places extending $v\in \Sigma_K$, and for $v\in \Sigma_L$, we have $\abs{x}_w = \abs{L_w/K_v (x)  }_v^{1/d}$.

We defined a height function 
\begin{align*}
H: \PP^n(K) &\to [1,\infty) \\
[x_0, \cdots, x_n] &\mapsto \prod_{v\in \Sigma_K} \max(\abs{x_0}_v, \cdots)
.\end{align*}

If $L/K$ is separable of degree $d$, we can consider $p\in \PP^n(K) \subset \PP^n(L)$ and define $H_K, H_L$ respectively.
It is then a fact that $H_L(p) = H_K(p)$.
For $\alpha \in \AA^1$, we have 
$$
H_L(\alpha) = H_K(N_{L/K}(\alpha))^{1/d} = H_K(\alpha^d)^{1/d} = H(\alpha)
.$$

This allows us to extend height functions to the separable closure, $H: \PP^n(K\sep) \to \RR$.

Lemma
: If $p\in \PP^n(K\sep)$ and $\sigma \in g_K = \aut(K\sep/K)$, then $\sigma(p) \definedas [\sigma(x_0), \cdots, \sigma(x_n)]$ does not change the height.

Proof
: Exercise.
	Check that the norms of points are the same as the norms of their Galois conjugates.
	
So the height is Galois-equivariant.

For $v\in \Sigma_K$, let $\eps_v$ be the **Artin constant**: the smallest $\eps_v \in \RR$ such that $\abs{x + y}_v \leq \eps_v \max(\abs{x}_v, \abs{y}_v)$.

> Artin constant: measures how much better a norm does than the triangle inequality.
> Note that $\eps_v = 1$ for ?

Lemma
: Let $K$ be a PFF and $d\in \ZZ^+$.
	If there exists an $M(K, d) > 0$ such that for all separable 
	$$
	f(T) = T^d + a_{d-1}T^{d-1} + \cdots a_1 T + a_0 \in K[T]
	,$$ 
	i.e. $f(T) = \prod_{i=1}^\alpha (T-\alpha_i)$ with $\alpha_i \in K\sep$, then 
	$$
	H(a_0, \cdots, a_{n-1}, 1) \leq M(K, d) \prod_{i=1}^d H(\alpha_i)
	.$$

Proof
: **Step 1:**
	Suppose $\alpha_i \in K$ for all $i$.
	If so, we can take $M(K, d) = \prod_{v\in \Sigma_K} \eps_v^{d-1}$.

	Why?
	We need to show that for all $v\in \Sigma_K$, we have 
	$$
	\max \abs{a_i}_v \leq \eps_v^{d-1} \prod_{i=1}^d \max(\abs{\alpha_i}_v)
	.$$
	If so, take the product over all $v$.

	Proceeding by induction, where the $d=1$ is clear, suppose $d\geq 2$ so result holds for $d-1$.
	Choose $k$ such that $\abs{\alpha_k}_v \geq \abs{\alpha_i}_v$ for all $i$.
	We can then write 
	$$
	f(T) = (T-\alpha_k)( T^{d-1} + b_{d-1}T^{d-2} + \cdots + b_1 T + b_0 )
	$$ 
	where $b_{d-1} = 1$ and $b_{-1} = b_d = 0$.
	Then for all $i$, we have $\alpha_i b_{i-1} - \alpha_k b_j$.

	We then apply the triangle inequality:

	\begin{align*}
	\abs{a_i}_v 
	&= \max_i \abs{b_{i-1} - \alpha_j b_i} \\
	&\leq \eps_v  \max \abs{b_{i-1}}_v \abs{\alpha_k b_i}_v \\
	&\leq \eps_v (\max_n \abs{b_i}_v) \max(\abs{\alpha_k}_v, 1) \\
	&\leq_{IH} \eps_v^{d-1} \max_i \abs(\abs{a_i}_v, 1)
	.\end{align*}

	**Step 2:**
	Now suppose $\alpha, \cdots, \alpha_d \in K\sep$.

	Replace $K$ with $K(\alpha_1, \cdots, \alpha_d) \definedas L$.
	This is an extension of $K$ of degree at most $d!$.

	Note that if we define $\eps = \max \eps_v$, and $\abs{\Sigma_K^{Arch}} = A$, then 
	$$
	\prod_{v\in \Sigma_K} \eps_v^{d-1} \leq (\eps^A)^{d-1} = \eps^{A(d-1)}
	.$$
	We also have 
	$$
	\abs{\Sigma_L^{Arch}} \leq d! A
	$$ 
	and for the argument over $K$, we can take $M(K, d) = \eps^{A d!(d-1)}$.

Theorem (Northcott implies Strong Northcott)
: Let $K$ be a PFF satisfying the Northcott property.
	Then for all $d, n \in \ZZ^+$ and for all $R\in \RR$, the set $$\theset{ P \in \PP^n(K\sep) \suchthat [K(P): K] \leq d,~ H(P) \leq R  }$$ is finite.

I.e. passing to finite separable extensions preserves the Northcott property, although this statement is stronger, since this is a *uniform* bound (hence the term "strong").

Stated scheme-theoretically, we can write $P = [x_0, \cdots, x_n]$ where some $x_i = 1$ be rescaling.
Then $K(P) = K(x_0, \cdots, x_n)$ is a finite separable extension.

Proof
: Let $P \in \PP^n(K\sep)$ with $\deg P \leq d$, where $P = [x_0, \cdots, x_n]$ with one $x_i = 1$.

	\begin{align*}
	H(P) 
	&= \prod_{v\in \Sigma_K} \max_i \abs{x_i}_v \\
	&= \prod_{v\in \Sigma_K} \max_i (\abs{x_i}_v  , 1) \\
	&\geq \max_i \prod_{v\in \Sigma_K} \max(\abs{x_i}_v  , 1) \\
	&= \max_i H(x_i)
	.\end{align*}

	So if $H(P) \leq C$ and $[K(P):K] \leq d$, then $\max_i H(x_i) \leq C$ and $\max_i [K(x_i): K] \leq d$.

	Define $$X(K, C, d) = \theset{ x \in K\sep \suchthat H(x) \leq C,~ [K(x): K] \leq d  },$$ we'll show this is a finite set.
	Let $x \in X(K, C, d)$ and $d' \definedas [K(x): K] \leq d$, and $$f(T) \definedas \minpoly x = \prod_{i=1}^{d'} (T - x_i) = T^{d'} + \sum_{i=0}^{d'-1} a_i T^i.$$
	Take $M\definedas \max_{1\leq i \leq d} M(K, i)$ from the previous lemma.

	By the lemma, we have $$H(a_0, \cdots, a_{d'-1}, 1) \leq M \prod{i=1}^{d'} H(x_i).$$
	But Galois conjugate points have the same height, so this is equal to $M H(x)^{d'} \leq MC^d$.
	By the Northcott property, there exist only finitely many such tuples $(a_0, \cdots, a_{d'-1}, 1)$, and thus only finitely many possibilities for $x$.

## Key Theorem: Bounds on Heights of Morphisms for PFFs

Theorem (The Key Theorem)
: Let $K$ be a PFF, and $f: \PP^n \to \PP^m$ be a degree $d$ morphism over $K$ (given by a collection of homogeneous polynomials of degree at most $d$).
	Then there exist constant $C_1, C_2 > 0$ depending only on $K$ such that 

	\begin{align*}
	C_1 H(P)^d \leq H(f(P)) \leq C_2 H(P)^d
	.\end{align*}

Proof
: See Theorem 8.5.6 in Silverman I.

# Friday February 7th

## Weil Height Machine

What is the analog of the $x\dash$coordinate of an elliptic curve for a general abelian variety?
Answer: an ample base point divisor.

Let $K$ be an NPFF (Northcott Product Formula Field), $V/k$ a projective variety and $\phi: V \to \PP^n$, then define

\begin{align*}
h_\phi: V(K\sep) &\to [0, \infty) \\
p &\mapsto \log H(\phi(p))
.\end{align*}

*Key property:*
Take hyperplanes $\psi: V \to \PP^m \supset H'$ and $\phi: V\to \PP^n \supset H$, noting that the Picard group of $\PP^n$ is $\ZZ$.

Suppose $\phi^* \sim \psi^* H'$, then $h_\phi = h_\psi + O(1)$.
Generally, we'll want to identify functions whose difference is a bounded function.

> Highly recommended: Diophantine Geometry, Handry-Silvermann GTM

Theorem (Weil Height)
:  Let $K$ be a NPFF (e.g. a global field) and $V/K$ a smooth projective variety.
  There exists a map $h_{V, \wait}: \div V \to \RR^{V(K\sep)}$ from divisors on $V$ to ? which is unique modulo bounded functions such that 

  a. For $H \subset \PP^n$ a hyperplane, the divisor $h_{\PP_1^n H} = h + O(1)$ (for the previously defined $h$).

  b. Pullbacks: For $\phi: V\to W$ a smooth morphism and $D\in \div W$, we have $h_{V, \phi^* D} = h_{W, D}\circ \phi + O(1)$.

  c. Linearity: For all divisors $D_1, D_2 \in \div V$, $h_{V, D_1 + D_2} = h_{V, D_1} + h_{V, D_2} = O(1)$.

  d. If $D_1 \sim D_2$, then $h_{V, D_1} = h_{V, D_2} + O(1)$.

  e. Positivity: Let $D\subset \div V$ be effective and $B$ the base locus (common intersection of linearly equivalent effective divisors), then$h_{V, D}(p) \geq O(1)$ for all $P \in (V\setminus B)(K\sep)$.

  f. Let $D, E. \in \div V$ with $D$ ample and $E$ algebraically equivalent to $0$. 
  Then 
  $$
  \lim_{P \in V(K\sep), h_{V,D}(p) \to \infty} h_{V, E}(p) / h_{V,D}(p) = 0
  .$$

  > Ample: Chern class of line bundle is zero.

  g. Finiteness: $D \in \div V$ is ample. For all map into $L/K$ and $r\in \RR$, the set $\theset{p\in V(L) \suchthat h_{V, 0}(p) \leq R  }$ is finite.

Note every ample divisor has the Northcott property.
Every abelian variety has an ample *symmetric* divisor.

Let $V = A/K$ be an abelian variety and $D\in \div A$ a divisor, see section A.7 in Silverman.

*Some properties of such divisors*:

1. (A.7.25) For all $n\in \ZZ$, 
  $$
  [n]^* D \sim \frac{n^2 + n}{2}D + \frac{n^2 - n}{2} [-1]^*D
  $$ 
  (standard fact).
  
  If $[D]$ is symmetric, i.e. 
  $[-1]D \sim D$, then 
  $$
  [n]^* D \sim n^2 D
  $$
  
  If $[D]$ anti-symmetric, i.e. 
  $[-1]^* D \sim -D$, then 
  $$
  [n]^*D \sim nD \text{ .i.e. } [-1]^* D \sim -D
  ,$$ 
  then 
  $$
  [n]^*D \sim nD \text{ i.e. } [-1]^* D \sim -D
  ,$$ 
  then $[n]^*D \sim nD$.

2. (A.7.210?) Let $D$ be effective, then $2D$ is basepoint free and TFAE:

  - $D$ is ample.
  - $\psi_\ell: A \to A\dual$ where $x \mapsto \tau_x^*D - D$ (where $\tau_x$ is translation by $x$) has finite kernel.
  - $A \to \PP(L(2D))$ is finite.

3. **(A.7.33)** Define 4 maps, $\sigma, \delta, \pi_1, \pi_2: A\cross A \to A$,
\begin{align*}
\sigma(P, Q) = P + Q \quad \delta(P, Q) = P - Q \quad \pi_1(P, Q) = P \quad \pi_2(P, Q) = Q
,\end{align*}

  Then
  
  a. For $D\in \div A$, $[D]$ is symmetric iff 
  $$
  \sigma^* D + \delta^* D \sim 2\pi_1^* D + 2\pi_2^* D
  .$$
  
  b. [D] is antisymmetric iff 
  $$
  \sigma^* \sim \pi_1^* D + \pi_2^* D \iff [D] \in \pic^0 A
  .$$

  > Proof: see Silverman, uses "Theorem of the Square" and the "Seesaw Principle".

Corollary
: For $A/K$ an abelian variety over $K$ a NPFF and $D\in \div A$, then

  a. $p\in A(K\sep)$ and 
  $$
  h_{A, 0}([n]p) = \frac{n^2 + n}{2} h_{A, D}(p) + \frac{n^2 - n}{2} h_{A, D}(-p) + O(1)
  .$$
    If $D$ is symmetric, then 
    $$
    h_{A, D}([n]p) = n^2 h_{A, D}(p) + O(1)
    .$$
    If $D$ is antisymmetric, then 
    $$
    h_{A, D}([n]p) = nh_{A, D}(p) + O(1)
    .$$
    
  > Note: This follows from properties of the Weil height machine.

  b. If $[D]$ is symmetric, than we get the **quadraticity** relation: for all $P, Q \in A(K\sep)$, 
  $$
  h_{A, D}(P+Q) + h_{A, D}(P-Q) = 2h_{A, D}(p) + 2h_{A, D}(Q) + O(1)
  .$$

Proof
: We have 
  $$
  h_{A\cross A, D}(\sigma(P, Q)) + h_{A\cross A, D}(\delta(P,Q)) = 2h_{A\cross A, D}(\pi_1^* D) + 2h_{A\cross A, D}(\pi_2^* D) + O(1)
  .$$

  For $\phi: V \to W$ and $D\in \div W$, we have 
  $$
  h_{C, \phi^*(D)}(p) = h_{W, D}(\phi(p)) + O(1)
  .$$
  So 
  $$
  h_{A\cross A, D}(\sigma(P, Q)) = h_{A, D}(\sigma(P, Q)) = h_{A, D}(P + Q)
  ,$$ 
  and applying it to the other terms works the same way.

Abelian variety has attached *polarization*, and are projective group varieties.
Every projective variety has an ample divisor, by definition?

## Sketch of Proof of Mordell-Weil for $A/K$ a Global Field

1. Weak MW

2. Choose an ample symmetric $D \in \div A$, by definition $A$ carries an ample divisor $D_0$; then $D \definedas D_0 + [-1]^* D_0$ is ample and symmetric.

3. Work with $h_{A, D}$ instead of $h_X$ for elliptic curves

Then the proof goes through as before.

Note $h$ is trying to be a quadratic form (we'll review such forms on groups) except for the $O(1)$.
Maybe we can modify $h$ by a bounded function to make it quadratic -- this is the Neron-Tate canonical height.

> Regulator: defined in terms of the Neron-Tate canonical height on the Mordell-Weil group of an elliptic curve.

# Wednesday February 12th

## Correction to Weil's Height Machine

Let $K$ be a NPFF (from now onwards: just a global field) and $X/K$ a nice variety.
Let $D\in \div(X)$ be ample and consider the points of bounded height $\theset{ p\in V(K) \suchthat h(p) \leq R  }$; by the Northcott property this is finite for every $R \in \RR$.

Counterexample:
Let $X = E$ an elliptic curve and $D = [0]$.
Then $\ell(D) = \dim{f\in K(X) \suchthat \div f\geq -D}$, the rational functions with poles no worse than order $D$.
Then $\ell[0] = 1$.

Then there is a corresponding morphism to projective space 
$$
\phi_D: X \to \PP(L(D)) = \PP^{\ell(d) - 1}
.$$

Here 
$$
\phi_D: E \to \PP^{\ell[0] - 1} = \PP^0 = \pt
.$$

Thus if $E(K)$ is infinite, which is possible, then $\forall R\geq 1$ the set $\theset{p\in E(K) \suchthat h(p) \leq R} = E(K)$ is infinite as well.

How to fix this?
Replace "$D$ is ample" with "$D$ is ample and $\ell(D) \geq 2$".


> Note: not listed as a correction in Silverman's book.


Theorem (C.1.9 Of Hindry-Silverman)
:   Let $K$ be a number field (perhaps works with global function fields) and $n\geq 2$, with $A/K$ an abelian variety of dimension $g$.
    Suppose $A[n] = A[n](K)$ (so a large extension of $K$), and let $S$ be a set of finite non-Archimedean places of $K$ containing places dividing $n$ and places of bad reduction.
  
    Suppose all that the ring of $S\dash$integers, $\ZZ_{K, S}$, is a PID.


    Then 
    $$
    \rk A[k] \leq 2g \cdot \rk \ZZ_{K, S}\units
    .$$
    We can then apply the Dirichlet unit theorem, the RHS is $2g(r_1 + r_2 + \# S - 1)$ where $r_1$ is the number of real places and $r_2$ is the number of complex places.

This is an explicit upper bound, but a pretty bad one!

## Néron-Tate Canonical Height

Let $K$ be a global field.
We'll get a good canonical representative of the height functions studied previously, provided we get one additional piece of data.

Theorem (Néron-Tate)
:   Let $V/K$ be a nice variety and $D \in \div V$, and suppose there exists a morphism $\phi: V\to V$ such that there exists an $a\in \QQ^{> 1}$ with the induced map on $\pic V$ satisfies $\phi^* D \sim \alpha D$. 
  
    > So $D$ is an "eigendivisor".

    Then there exists a unique function 

    \begin{align*}
    \hat{h}_{V, \phi, D}: V(K\sep) \to \RR
    \end{align*}

    such that 

    1. (CH1) $\hat h_{V, \phi, D} = h_{V, D} + O(1)$

    2. (CH2) $\hat h_{V, \phi, D} \circ \phi = \alpha \hat h_{V, D}$

    Moreover, for all $p\in K\sep$, there is a stabilization 

    \begin{align*}
    \hat h_{\phi, D}(p) = \lim_n \frac{1}{\alpha^n} h_{V, D}(\phi^n(p))
    .\end{align*}

Proof
: We first need to show that the stated limit exists.
  Applying Weil's Height Machine to $\phi^* D \sim \alpha D$, there exists a $c$ such that

  \begin{align*}
  \abs{ h_{V, D} \circ \phi  - \alpha h_{V, D}} \leq c
  .\end{align*}

  So take a separable point $p\in V(K\sep)$.

Claim
: $\alpha^{-n} h_{V, D}(\phi^n(p))$ is Cauchy in $\RR$ and thus convergent.

Proof
:   **Step 1**:

    Let $m\leq n$, then we want to show

    \begin{align*}
    \abs{ \alpha^{-n} h_{V, D}( \phi^n (p) ) - \alpha^{-m} h_{V, D}( \phi^n (p) ) } 
    &=
    \abs{ \sum_{i=m+1}^n \alpha^{-i} \qty{ h_{V, D} (\phi^i(p)) - \alpha h_{V, D}( \phi^{i-1}(p)  )  }  } \\
    &=
    \sum_{i=m+1}^n \alpha^{-i} \abs{ \qty{ h_{V, D} (\phi^i(p)) - \alpha h_{V, D}( \phi^{i-1}(p)  )  }  } \\
    &\leq 
    \sum_{i=m+1}^n \alpha^{-i} C \\
    &<
    C \sum_{i=m+1}^\infty \alpha^{-i}\\
    &= \frac{\alpha^{-m-1}{1-\alpha}} C \\
    &\converges{m\to\infty}\to 0
    .\end{align*}

    **Step 2**:
    Write

    \begin{align*}
    \hat h_{V, D}(\phi(p)) 
    &=
    \lim_{n\to\infty} \alpha^{-n} h_{V, D} ( \phi^n(\phi(p))  ) \\
    &=
    \alpha \lim_{n\to\infty} \frac{1}{\alpha^{n+1}} h_{V, D} ( \phi^n(\phi(p))  ) \\
    &=
    \alpha \hat h_{V, \phi, D}(p)
    .\end{align*}

    **Step 3**:
    Suppose $\hat h$ and $\hat{h'}$ both satisfy CH1 and CH2.
    Let $g\definedas \hat h - \hat{h'}$.
    By CH1, $\abs g \leq C$ for some $C$.
    Then by CH2, $g\circ \phi = \alpha g$, and for all $n\in \ZZ^+$, $g\circ \phi^n = \alpha^n g$.
    We thus get

    \begin{align*}
    g = \frac{g\circ \phi^n}{\alpha^n} \implies \abs{g} \leq \frac{C}{\alpha^n} \converges{n\to\infty}\to 0
    .\end{align*}


## 10 Cents of Dynamics

Anytime we have an endomorphism, we can iterate it and consider the associated dynamical system.

Let $S$ be a set, $\phi: S\to S$ a function, $\phi^n = \phi \circ \phi \circ \cdots \circ \phi$ with $\phi^0 = \id_S$.
Then $p\in S$ is $\phi\dash$periodic if there exists an $n\in \ZZ^+$ such that $\phi^n(p) = p$.
We say $p$ is $\phi\dash$preperiodic iff the set $\theset{\phi^n(p) \suchthat n\in \NN}$ is finite.
In this case, there exists some $n\in \NN$ such that $\phi^n(p)$ is $\phi\dash$periodic:

![Image](figures/2020-02-12-13:01.png)\

**Proposition:**
Setup as in the last result, $\phi: V\to V$, $D\in \div V$ and $\phi^*D \sim \alpha D$ for $\alpha \in \QQ^{\geq 1}$.
For $\ell(D) \geq 2$ and $D$ ample, we have

a. For all $p\in V(K\sep)$, $\hat h_{V, D, \phi}(p) \geq 0$
  Moreover, $\hat h_{V, D, \phi}(p) = 0$ off $p$ is $\phi\dash$preperiodic.

b. The set $\theset{p\in V(K) \suchthat p \text{ is $\phi\dash$ preperiodic} }$ is finite.

*Proof of (a):*

We know positivity by the Weil Height Machine.
Let $p\in A(K\sep)$, then $K \to K(p)$ for ?.
Suppose $\hat h_{V, D, \phi}(p) = 0$, then

\begin{align*}
h_{V, D}( \phi^n(p)  ) 
&= \hat h_{V, \phi, D}(\phi^n(p)) + O(1) \\
&= \alpha^n \hat h_{V, \phi, D}(p) + O(1) \\
&= O(1)
.\end{align*}


Then the set of forward orbits $\theset{\phi^n(p) \suchthat n\in \NN}$ has bounded height.
By the finiteness property of the Weil Height Machine, this set is finite and $p$ is thus $\phi\dash$preperiodic.

If $p$ is $\phi\dash$preperiodic, then $\theset{h_{V, D}(p)}$ bounded, so

\begin{align*}
\hat h_{V, \phi, D} (p) = \lim_n \frac{1}{\alpha^n} h_{V, D}(\phi^n(p)) = 0
.\end{align*}


*Proof of (b):*

By part (a), if $p\in V(K)$ then $p$ is $\phi\dash$preperiodic, so $\hat h_{V, \phi, D} = 0$ and thus $h_{V, D}(p) = O(1)$.
By the Weil Height Machine, this set of points is finite.

$\qed$


### Important Examples

**Example 1:**
Let $\phi: \PP^n \to \PP^n$ of degree $d\geq 2$ and $H\subset \PP^n$ the hyperplane divisor, $\phi^* H \sim d H$.
So take $\alpha = d$, this is an eigendivisor, now applying this theory, a consequence is that $\theset{p\in V(K) \suchthat p \text{ is } \phi\dash\text{preperiodic}}$ is finite. 
(Theorem by Northcott, properties of heights were established to show this statement!)

**Example 2:**
Let $A/K$ an abelian variety with $D\in \div A$ ample, $\ell(D) \geq 2$ with $[-1]^* D \sim D$.
Take $\phi = [n]$ for some $n\geq 2$, then $\phi^*(D) \sim n^2 D$ where $\alpha = n^2 > 1$.
The $\phi\dash$preperiodic points of $A(K\sep)$ are precisely the torsion points.

> Note that this proves that the set of torsion points on an abelian variety is finite.

# Friday February 14th

## Canonical Heights

Last time: the Néron-Tate Canonical Height.
Simple if you buy the Weil Height Machine!
Recall the statement of the theorem:

Theorem (Existence of Canonical Height Functions)
:   Let $K$ be a global field, $V/K$ a nice variety, $D\in \div(V)$.
    Suppose there exists $\phi:V \to V$ such that $D$ is an "eigendivisor", i.e. $\phi^* D \sim \alpha D$ for some $\alpha \in \QQ$.

    Then there exists a unique function $\hat h_{V, \phi, D}: V(K\sep) \to \RR$ such that

    - (CH1) $\hat h_{V, \phi, D} = h_{V, D}  O(1)$
    - (CH2) $\hat{h_{V, \phi, D}} \circ \phi = \alpha \hat{h_{V, \phi, D}}$, which is constructed in the following way:
        For all $p\in K\sep$, $\hat h_{V, \phi, D}(p) = \lim_n \frac{1}{\alpha^n} h_{V, D}(\phi^n(p))$.


Two important examples:

Example 
:   Morphism from $\PP \to \PP$, then $\pic \PP = \ZZ$ so everything's an eigendivisor.
    So just take a degree $\geq 2$ map and a hyperplane divisor.

Example (Key example)
:   $A/K$ an abelian variety, $D$ ample, $\ell(D) \geq 2$ (so at least 2 sections of the line bundle), and symmetric in the sense that $[-1]^* D \sim D$.
    Then for all $n\in \ZZ$, $[n]^* D \sim n^2 D$, so take $\phi$ to be multiplication by $n$ for $\abs{n} \geq 2$.

    In this case $\hat h_{A, D} = \hat h_{A, [n], D}$.
    It agrees with the usual Weil height, and moreover $\hat h_{A, D}([n]p) = n^2 \hat h_{A, D}(p)$.
    Note that this is at least one property we'd want from a quadratic form.

The geometry associated to the height function on other types of varieties can become more interesting, e.g. $K_3$ surfaces and Calabi-Yau.

Next up:
Showing $\hat h_{A, D}: A(K\sep) \to \RR$ is a "quadratic form", but what is a quadratic form on an abelian group?

## Quadratic Functions

Let $A, B$ be abelian groups written additively.
Then a map $f: A\to B$ is *quadratic* if the associated function 

\begin{align*}
B_f: A\cross A &\to B \\
(x, y) &\mapsto f(x+y) - f(x) - f(y) + f(0)
\end{align*}
is bilinear.

A function is *homogeneous quadratic* iff $f$ is quadratic and $f(0)= 0$.
A *quadratic form* is homogeneous, quadratic, and symmetric in the sense that $f(-x) = f(x)$ for all $x\in A$.

> Note: multiplication on $\RR$ by 2 is an isomorphism, i.e. $\RR$ is *uniquely 2-divisible*. 
> If $B$ doesn't have this property, things can get slightly more complicated.

Lemma
:   $f: A\to B$ is quadratic iff for all $x, y, z\in A$ we have

    \begin{align*}
    f(x + y + z) - f(x + y) - f(x + z) - f(y+z) + f(x) + f(y) + f(z) - f(0) = 0
    .\end{align*}

In other words, knowing what it does on values and pairs determines what it does on triples.

Proof
:   Straightforward computation.

Lemma
:   Let $f:A\to B$ such that

    1. $f$ is a quadratic form.
    2. $f$ satisfies the *parallelogram law* (also: quadraticity) $f(x + y) + f(x-y) = 2f(x) + 2f(y)$.

    Then 1 implies 2, and if the 2-torsion $B[2]$ is trivial, then 2 implies 1.

Lemma
:   Suppose $f$ is a quadratic function, then $f$ is a quadratic form iff $\forall n\in \ZZ,~\forall x\in A$, $f(nx) = n^2f(x)$.

Note that $n=0$ implies homogeneity, and $n=1$ implies symmetric.
Proceed by strong induction.

Lemma
:   Let $f: A\to B$ be a quadratic function.
    Define the even and odd parts of $f$ in the following way:

    \begin{align*}
    q: x &\mapsto \qty{ f(x) - f(0) } + \qty{ f(-x) - f(0)  } \\
    l: x &\mapsto \qty{ f(x) - f(0) } - \qty{ f(-x) - f(0)  } \\
    .\end{align*}

    Then 

    a. $q$ is a quadratic form, $l$ is a group morphism, and $2f = q + l + 2f(0)$.

    b. If $B$ is uniquely 2-divisible, then dividing by 2 yields $f = \frac 1 2 q + \frac 1 2 l + f(0)$ where $q$ is a quadratic form, $l$ is a linear morphism, and $f(0)$ is constant.
      This decomposition is unique.

Exercise
:   Show that if $f: A\to B$ a quadratic function,

    a. $f(A[\tors]) \subseteq B[\tors]$.

    b. For $n$ odd, $f(A[n]) \subset B[n]$.

    c. The map $f: \ZZ/2\ZZ \to \ZZ/4\ZZ$ where $0\mapsto 0, 1\mapsto 1$ is a quadratic form.
        Thus the $n$ odd condition above is necessary.

This comes up in Galois cohomology of abelian varieties? See Pete's paper.
It takes an $n$ torsion to an element that is no worse than $2n$ torsion.

From now on, take $B = \RR$.
Note that if $B=\RR$, height functions kill all torsion.

Define a pairing

\begin{align*}
\inner{\wait}{\wait}: A\cross A &\to B \\
\inner{x}{y} &= \frac 1 2 \qty{ f(x+y) - f(x) - f(y)  }
.\end{align*}

If $f$ is a quadratic form, $\inner{x}{x} = f(x)$, so this reduces to the usual bilinear form associated to a quadratic form.

Exercise
:   a. Show that for all $x\in A, y\in A[\tors]$, we have $f(x+y) = f(x)$.
      Thus $f$ factors through a morphism $\hat f: A/A[\tors] \to \RR$ through the torsion-free quotient.

      > This is stronger than just killing torsion, since $f$ isn't necessarily linear.

    b. If $f$ is a quadratic form, $\hat f$ is as well.

Theorem (Canonical Height Descent)
:   Let $h: A\to \RR$ be a quadratic form and suppose $\exists n\geq 2$ such that 

    1. $\cok{A \mapsvia{\times 2} A} = A/nA < \infty$,
    
    2. The Northcott property holds, i.e. $\theset{x\in A \suchthat h(x) \leq R} < \infty$ for each $R\in \RR$,

    Letting $y_1, \cdots, y_r$ be coset representatives for $nA \subset A$ and $C_0 \definedas \max h(y_i)$, then $A$ is generated by the finite set $\theset{x\in A \suchthat h(x) \leq C_0}$.

Proof:
: Omitted.

Theorem (The Néron-Tate Height is a Quadratic Form)
:   Let $K$ be a global field, $A/K$ an abelian variety, $D$ ample and $\ell(D) \geq 2$ with $[D]$ symmetric.
    Then there exists a unique function $\hat h_{A, D}: A(K\sep) \to \RR$ such that

    1. $\hat h_{A, D} = h_{A, D} + O(1)$

    2. $\hat h_{A, D}$ is a *quadratic form* (stronger conclusion), and in particular $\hat h_{A, D}([n]p) = n^2 \hat h_{A, D}(p)$.

Proof
:   We have 1, we'll show 2 by establishing the parallelogram law and use a previous lemma.

    > Note $\phi$ is suppressed here, since by uniqueness, multiplication by $n$ always yields the same function. So we'll take multiplication by 2.

    For all $P, Q \in A(K\sep)$, we can compute

    \begin{align*}
    \hat h_{A, D}(P + Q) + \hat h_{A, D}(P-Q) 
    &=
    \lim 4^{-n} \qty{ h_{A,D}([2^n]P + [2^n]Q) + h_{A, D}\qty{ [2^n]P - [2^n]Q  }  } \\
    &=
    \lim 4^{-n} \qty{ 2 h_{A,D}([2^n]P) + 2 h_{A, D}([2^n]Q) + O(1) } \\
    &=
    2 \hat h_{A, D}(P) + 2\hat h_{A, D}(Q)
    .\end{align*}

# Monday February 17th

## Canonical Heights for Abelian Varieties

Theorem (Canonical Heights for Abelian Varieties)
:   If $A/K$ is an abelian variety, $D\in \div(A)$, ample, $\ell(D) \geq 2$, $[D]$ symmetric, then there exists a canonical height $$\hat h_{A, D}: A(K\sep) \to \RR$$  such that

    1. $\hat h_{A, D} = h_{A, D} + O(1)$
    2. $\hat h_{A, D}$ is a *quadratic form* (defined last time).

In particular, $\hat h_{A, D} \circ [n] = n^2 \hat h_{A, D}$.
We can define an associated bilinear form 

\begin{align*}
\inner{P}{Q} = \frac 1 2 \qty { \hat h_{A,D}(P+Q) - \hat h_{A, D}(P) - \hat h_{A, D}(Q) }
,\end{align*}

so consider the **linear extension**

\begin{align*}
\hat h_{A, D}: A(K\sep) \tensor \RR &\to \RR \\
\sum_{i=1}^n [P]\tensor \alpha_i &\mapsto \sum_{i=1}^n \alpha_I \hat h_{A, D}
.\end{align*}

Exercise
:   This yields a quadratic form on the domain.

*Question:*
What is $\ker(A(K\sep) \to A(K\sep) \tensor \RR)$?

*Answer:*
It contains the torsion, but turns out to be precisely this.
Note that $\ker(M \to M\tensor \QQ) = M[\tors]$, and we can tensor up in two steps:
$A(K\sep) \tensor_\ZZ \RR = (A(K\sep) \tensor_\ZZ \QQ) \tensor_\QQ \RR = A(K\sep)[\tors]$.

Theorem (Linear Extension is Positive Definite)
:   With the same setup as the previous theorem, the linear extension is *positive definite*, i.e. 
    $$
    q(x) \geq 0 ~\forall x \quad\text{and}\quad q(x) = 0 \iff x=0
    $$

Definition (Regulator)
:   If $P_1, \cdots, P_n \in A(K\sep) \tensor \RR$ are $\RR\dash$linearly independent, then we can define the **regulator** 
    $$\reg(P_1, \cdots, P_2) \definedas \det(\inner{P_i}{P_j}) > 0.$$

Note that this is the determinant of the Gram matrix, forms can be diagonalized into $\sum a_i x_i^2$, and positive-definite implies $a_i \geq 0$? 

If $\theset{P_i}$ is a $\ZZ\dash$basis for $A(K\sep) / A(K\sep) [\tors]$, then we define $\reg(A, K, D) \definedas \det(\inner{P_i}{P_j}) > 0$.

> This is well-defined for exactly the same reason that the discriminant of a number field is well-defined.

Proof
:   Mostly algebra, mostly omitted here.
    Uses the following lemma.

Lemma
:   Let $A \cong \ZZ^n$ and $q:A\to \RR$ be a quadratic form such that 

    1. For all $x\in A$, $q(x) \geq 0$ and $q(x) = 0 \iff x=0$,
    2. The Northcott Property holds, i.e. $\forall R\in \RR, \# \theset{x\in A \suchthat q(x) \leq R} < \infty$.

    Then $q\tensor \RR: A\tensor \RR \to \RR$ is still positive-definite.

Example
: See Cassels-Silverman.
  Let $K$ be a real quadratic field, e.g. $K = \ZZ[\sqrt 2] \subset \RR$.
  Define $q:A \to \RR, x\mapsto x^2$; this is positive-definite but for $q\tensor \RR$, there exist $x\neq 0$ such that $q(x) = 0$.

*Note:*
There exists a **canonical** canonical height which is used for the BSD conjecture.

### Constructing Canonical Heights for Abelian Varieties

**Step 1:**
For elliptic curves $E/K$, $D = 2[O] \iff D_x$ where $x: E\to \PP^1$ is taking the $x\dash$coordinate, note that if $y^2 = f(x)$, then $x([-P]) = x([P])$ making this an even function.
So taking the quotient $E \mapsvia{q} E/[-1]$ yields a 2-to-1 map, which factors through an isomorphism $E/[-1] \cong \PP^1$.
However, $2[-O] = [-1]^* D = D$, but we also have $2[O] = x^*([\infty])$.
Then $K(x) \subset K(E)$ contains all of the even functions, i.e. every even function is a function of the $x\dash$coordinate.
So take any rational function $f\in K(x) \setminus K$ yields a composition $F: E\mapsvia{x} \PP^1 \mapsvia{f} \PP^1$ where $\deg(F) = 2\deg(f)$.

Define $D_f = F^*([\infty])$, which is a pullback of a symmetric function (since $x$ is only a function of one coordinate), so $[-1]^* D_f = D_f$, so $D_f$ is a symmetric divisor.
Moreover, $\deg D_f = 2\deg f$.
Take $\hat h_{E, f} = \hat h_{E, D_f}$, since by Riemann-Roch the number of sections is at least 2.
How does this depend on $f$? 
Does the regulator depend on $f$?

> There is a dependence, but it's understandable enough to be removed at the end.

We can apply the Weil Height Machine, and a comparison shows $h_{E, D_f} = \qty{\deg f} h_{E, D_x} + O(1)$.
Therefore $\hat h_{E, D_f} = \qty{\deg f} \hat h_E, D_x$ on the nose.
By a computation, $\reg(E, D_f) = \deg(f)^{n} \reg(E, D_x)$ where $n = \rank(E(K))$.
So there is a dependence, but nothing too scary.

Silverman defines the canonical height in the curve case as

\begin{align*}
\hat h_E \definedas \frac{\hat h_{E, D_f}}{2\deg f}
.\end{align*}

**Step 2:**
For abelian varieties, define a height pairing $\hat h: A(K\sep) \cross A\dual(K\sep) \to \RR$, where the dual variety is defined such that the functor of points $A\dual \iff \pic^0(A)$, where $A\dual(K) = \pic^0(A)$.

There is a (well-defined up to linear equivalence) *Poincare divisor* $\mcp \in \div(A\cross A\dual)$ which is ample and symmetric.
We can then define $\hat h_{A\cross A\dual, \mcp}$ and take the associated bilinear form

\begin{align*}
\inner{\wait}{\wait}_{A\cross A\dual, \mcp}:\qty{A(K) \cross A(K\sep)}^2 \to \RR
.\end{align*}

So choose bases $P_1, \cdots, P_R$ for the Mordell-Weil group mod torsion $A(K)/\tors$, and by isogeny, a basis $Q_1, \cdots, Q_R$ of $A\dual(K)/\tors$.
Then define $\reg(A, K) \definedas \abs{\det{\inner{P_i}{Q_j}}} > 0$.

> Note that swapping signs in the basis changes the determinant by $\pm 1$, hence the absolute value.
> This is the regulator that appears in the BSD conjecture.

Recall Mumford's formula:
If $D\in \div(A)$, then

\begin{align*}
[n]^* D \sim \left[ \frac{n^2 + n}{2}\right] D + \left[ \frac{n^2-n}{2}\right] [-1]^* D
.\end{align*}

If $D$ is symmetric, then $[n]^* D \sim n^2 D$, i.e. the quadratic eigendivisor condition.
In this case $\hat h_{A, D}$ is a quadratic *form*.

If $D$ is skew-symmetric, i.e. $[-1]^* D = -D \iff D \in \pic^0(A)$, then $[n]^* D = nD$ and we obtain a *linear* eigendivisor condition.

> Note: $D\in \pic^0(A)$ means algebraically equivalent to zero.

If $D\in \pic^0(A)$, then $\hat h_{A, D}: A(K\sep)\to \RR$ is a linear form.
By the Weil Height Machine, up to $O(1)$ we have $\hat h_{A, D_1 + D_2} = \hat h_{A, D_1} + \hat h_{A, D_2}$.
So we do have a bilinear pairing

\begin{align*}
\inner{\wait}{\wait}: A(K\sep)^2 &\to \RR \\
(P, Q\iff D\in \div(A) \text{ after extending bases  }) &\mapsto \hat h_{A, D}(P) \in \RR
.\end{align*}

> Note: we could equivalently define it on $A(L)$ for every finite separable extension $L/K$.

This explains the regulator appearing in BSD.
This concludes the discussion of height functions and the Mordell-Weil group.

# Friday February 21st

Question: how do we define $h_{V, D}$?

Answer: write $D = D_1 - D_2$ which are (very) ample divisors and basepoint free.
We then obtain embeddings

\begin{align*}
\varphi_1: V &\injects \PP_K^{n_1} \\
\varphi_2: V &\injects \PP_K^{n_2}
.\end{align*}

So write
$$
h_{V, D}(p) = h(\varphi_1(p)) - h(\varphi_2(p)) + O(1)
$$

Example
: For $E/K$ an elliptic curve,

    - $2[0]$ is an ample divisor
    - $3[0]$ is a very ample divisor.

Let $K$ be a local field (i.e. $\CC, \RR,$ a $p\dash$adic field, or $\FF_q((t))$ formal Laurent series) and $A/K$ be an abelian variety; we want to understand $A(K)$.
We know this has the structure of compact abelian $K\dash$analytic Lie group.

- Question 1: What does Lie theory say?

- Question 2: What extra information comes from $A/K$ being a $g\dash$dimensional abelian variety?

If $K = \CC$, then $A(K) \cong (\RR/\ZZ)^{2g}$.
If $K = \RR$, then $A(K) \cong (\RR/\ZZ)^g \oplus \prod_{i=1}^d \ZZ/2\ZZ$ where $0\leq d \leq g$.

Fix $d$, then

- Let $E_1/\RR$ with $\Delta > 0$ (and thus 3 real roots), then $E_1(\RR)[2] = \qty{\ZZ/2\ZZ}^2$.

- Let $E_2/\RR$ with $\Delta < 0$ (and 1 real root), then $E_2(\RR)[2] = \ZZ/2\ZZ$.

By taking products of $E_1$ and $E_2$, i.e. $A =(E_1)^{d} \cross (E_2)^{g-d}$.


> Todo: find reference in Silverman?

Fact
: $A(K)$ is totally disconnected and homeomorphic to a Cantor set.

Fact (From Lie Theory, Serre p.116)
:   If $G$ is an abelian compact $K\dash$analytic Lie group, then there exists a filtration by open finite index subgroups

    $$
    G = G^0 \supset G^1 \supset \cdots \supset G^n \supset \cdots
    $$

    such that

    1. The successive quotients are finite, and each $G^i$ is *standard*, i.e. obtained by evaluating a formal group law on $\qty{\mfm^i}^g$.

    2. $\intersect_i G^i = (0)$.

    3. $G^i / G^{i+1}$ has exponent $p$, i.e. it is a finite dimensional $\ZZ/p\ZZ\dash$vector space.

    4. $G'[\tors] = G'[p^\infty]$, all of the prime-to-$p$ torsion is $p\dash$primary.

> Todo: define $p\dash$primary torsion, $\QQ_p$.

What structure theorem does this give?


Theorem (C-Lacy)
:   Let $G$ be a compact, second countable, $K\dash$analytic abelian Lie group of dimension $g\geq 1$.
    Then

    a. If $\ch K = 0$ and $d = [K: \QQ_p]$, then
    $$
    G \cong_{\text{TopGrp}} \ZZ_p^{dg} \oplus G[\tors]
    $$
    where $G[\tors]$ is finite.

    b. If $\ch K = p$, i.e. $K = \FF_q((t))$, and if it is true that $G[\tors]$ is finite iff $G[p]$ finite, then
    $$
    G \cong_{\text{TopGrp}} \prod_{i=1}^\infty \ZZ_p \oplus G[\tors]
    $$

For any $g\geq 1$, $(T, +)$ a finite discrete abelian group $(R, +) \cong (\ZZ_p^d, +)$ and $R^g \oplus T$ is a compact abelian $K\dash$analytic Lie group isomorphic to $\ZZ_p^{dg} \oplus T$ (?).

> Question: what does this mean for $G = S^1$? Ask Pete!

Theorem (Cartan)
: Let $K$ be a local field, $\QQ\injects K$ dense (so $K = \RR, \QQ_p$).
  Then if $G_1, G_2$ are $K\dash$analytic, and $\varphi \in \hom_{\text{TopGrp}}(G_1, G_2)$, then $\varphi \in \hom_{k\dash\text{analytic}}(G_1, G_2)$.

Example
: For $R = \FF_q[[t]]$, $(R, +)^g [p] = (R, +)^g$.

Example
: Take $G = \GG_a^g(K)$ the additive group or $A/K$ a $g\dash$dimensional abelian variety (i.e. $G = A(K)$) then $G[p] \subsetneq (\ZZ/p\ZZ)^{2g}$ and is finite.


## Proof of Cartan's Theorem


### Step 1

We want to show that $G[p] < \infty$, then $G[\tors] < \infty$.
We'll use the filtration in Serre's result; then for $i \gg 1$, we'll have $G^i[p] = 0$.
Thus for $i \gg 1$, we'll have $G^i[p^\infty] = 0$; but this is the only torsion that can appear.
We'll then obtain an injection $G[\tors] \injects G/G^i < \infty$.

Lemma
: Let $H$ be an abelian torsionfree pro$\dash p$ group (e.g. $\prod \ZZ_p$).
  Then $H \cong \prod_{i\in I} \ZZ_p$, and if $H$ is second-countable, then $I$ is countable.

Proof
:   Omitted.
    Idea: use Pontrayagin duality $G\dual \definedas \hom_{\text{Top}}(G, \RR/\ZZ)$ for locally compact abelian groups.

    \

    Use the fact that this is naturally an exact contravariant functor, this lets you trade in profinite groups for discrete torsion abelian groups.

> Note: look up pro-p groups. Is the Pontrayagin dual a cohomotopy group?


# Monday February 24th

## Classification of Locally $K\dash$Analytic Lie Groups

Let $K$ be a locally compact field with discrete valuation, $R$ a valuation ring with $\mfm = (\pi)$ its maximal ideal where $R/\mfm \cong \FF_q = \FF_{p^a}$.
There are two cases:

- If $\ch K = 0$, then $\QQ_p \subset K$ and $d = [L: \QQ_p]$
- If $\ch K = p > 0$, then $K \cong \FF_q((t))$.

Fact (Lie Theoretic)
:   Let $G$ be a compact commutative $g\dash$dimensional $K\dash$analytic lie group (i.e. locally looks like $k^n$ with transition harts given by convergent power series) which is 2nd countable.

    a. There exists a filtration by open subgroups $G = G^0 \supset G^1 \supset \cdots \supset G^n \supset \cdots$ such that
      0. $G^0/G^i$ is finite and discrete for all $i$, 
      1. $G^i \cong (\mfm^i)^g$, with addition given by a $g\dash$dimensional formal group law,
      2. $\intersect G^i = (0)$, so the filtration is exhaustive,
      3. $G/G^{i+1}$ is $p\dash$torsion,
      4. $G^1[\tors] = G^1[p^\infty]$
    b. If $\ch(K) = 0$, then there exists an open subgroup $U$ of $G$ such that $U \cong (R^g, +)$ as $K\dash$analytic Lie groups.

> Analog in Lie theory: Lie groups with isomorphic Lie algebras yield isomorphic universal covers.
> Can then recover the formal group from the Lie algebra.
> Wildly false in characteristic $p$, since we lose information about the height of the formal group.

Theorem (C-Lacy)
:   a. If $\ch(K) = 0$ (i.e. in a $p\dash$adic field), then $G \cong (R, +)^g \oplus G[\tors]$ as topological groups, where $G[\tors]$ is finite, which is in turn isomorphic to $\ZZ_p^{dg} \oplus G[\tors]$.
    
    b. If $\ch(K) = p$, then there exists a countable set $I$ such that $G \cong \prod_{i\in I} \ZZ_p \oplus G[\tors]$ as topological groups, where each of the groups on the RHS are closed subgroups.
      Moreover, $G[\tors] < \infty \iff G[p] < \infty$, and when these conditions hold, $I$ is infinite.

Lemma 
:   If $H$ is a a commutatve torsionfree pro-$p$ group, then $H \cong \prod_{i\in I} \ZZ_p$.
    If $H$ is 2nd countable, then $I$ is countable.

:::{.proof title="of lemma, sketch"}
We'll take *Pontryagin duals*.
Recall that if $G$ is an locally compact abelian (LCA) group, then $G\dual \definedas \hom(G, \RR/\ZZ)$ is an LCA group.
Note that the dual of a profinite group (inverse limit) is an ind-finite group (direct limit), which are discrete torsion groups.

$H\dual$ is a discrete $p\dash$primary torsion group.
Example: $\ZZ_p\dual = \QQ_p/\ZZ_p$, which flips the following exact sequence:


\begin{tikzcd}
0 \arrow[rr]   &  & \ZZ_p \arrow[rr] &  & \QQ_p \arrow[rr] &  & \QQ_p/\ZZ_p \arrow[rr] \arrow[llll, bend left=49] &  & 0
\end{tikzcd}


Then $H\dual = [p] H\dual$, and thus $H\dual$ is divisible.
We then apply the structure theory of divisible group to get a direct sum, then applying duality again yields a direct product, which proves the lemma.
:::

Proof (of Theorem)
:   Assume that $G[\tors]$ is finite.
    We have a SES of commutative profinite groups:

    \begin{align*}
    0 \to G[\tors] \to G \to G/G[\tors] \to 0
    ,\end{align*}

    and taking Pontryagin duals yields
    
    \begin{align*}
    0 \to (G/G[\tors])\dual \to G\dual \to G[\tors]\dual
    .\end{align*}

    Then $G/G[\tors]$ is torsionfree and has a finite index pro-$p$ subgroup,
    so $G/G[\tors]$ is itself a pro-$p$ group.
    By the lemma, $G/G[\tors] \cong \prod_{i\in I} \ZZ_p$, so 
    $$
    \qty{G/G[\tors]}\dual \cong \bigoplus_{i\in I} \QQ_p/\ZZ_p
    .$$
    But this is divisible, and hence injective since we're over a PID, so the dual sequence above splits.
    So the original sequence splits.

    We thus have an isomorphism of topological groups 
    $$
    G \cong G/G[\tors] \oplus G[\tors] \cong \prod_{i\in I} \ZZ_p \oplus G[\tors]
    ,$$ 
    where $G[\tors]$ was assumed finite.

    Suppose $\ch(K) = 0$.
    We have two open subgroups of $G$, $\prod_{i\in I} \ZZ_P \leq G$ (open since its complement is finite) and $(R, +)^g \cong \ZZ_p^{dg}$ by Serre.
    It follows that $\abs{I} = dg$.

    Suppose instead that $\ch(K) > 0$.
    The claim is that $[G: pG]$ is infinite and thus $\abs{I}$ is infinite.
    This is because the cokernel of multiplication by $p$ on $\prod \ZZ_p \oplus G[\tors]$ is infinite iff $I$ is infinite, so it suffices to check the size of this cokernel.
    
    Consider the formal group law in characteristic $p$ given by 

    \begin{align*}
    [p] \in R[[X_1^p, \cdots, X_g^p]]^g
    .\end{align*}

    It suffices to restrict to $G^1 = (t \FF_q[[t]]^g, \text{fgl} )$.
    Then $pG_1 \subseteq t \FF_q[[t]]^g \intersect \FF_q[[t^p]]^g$.
    But $[\FF_q[[t]]: \FF_q[[t^p]] ]$ is infinite, so $[G: pG_1]$ is infinite, so $[G: pG]$ is infinite and thus $I$ is infinite.

If we know the torsion is finite, can we find bounds on their size?
We'll need to revisit Néron models (as covered in the abelian varieties course), and introduce Tate curves.

# Wednesday February 26th

Example (regarding generalization from last time)
: Let $G = \prod^\infty \ZZ/p^n\ZZ$, which is a commutative pro-$p$ group.
  Then 
  $$\oplus \ZZ_p^n \ZZ ~(?)~\subsetneq G[\tors] \subsetneq G
  $$ 
  with proper containments, but the direct sum is dense in the direct product, so $G[\tors]$ is proper and dense and thus not closed.


## (Clark-Xarles) Local Bounds for Torsion Points on Abelian Varieties

> Recommended reading! Introduces a lot of tools in their most basic form.

Let $K/\QQ_p$ be a $p\dash$adic field with $[K: \QQ_p] = d$, $R$ a valuation ring, $\mfm$ a maximal ideal, $\FF_q = R/\mfm$.

> Recall previously: finiteness on torsion subgroups in certain cases.
> Mordell-Weil works for global fields, but what is that finite group?
> No positive results bounding the torsion for a Laurent series field, can be arbitrary large.


Let $A/K$ be a $g\dash$dimensional abelian variety and recall 

\begin{align*}
A(K) &\cong_{\mathrm{TopGrp}} (R, +)^g \oplus T \cong \ZZ_p^{dg} \oplus T
,\end{align*}
where $\abs{T} < \infty$

We'll prove bounds in three steps:

1. Good reduction
2. Potentially good reduction
3. General reduction and results in the case of *anisotropic reduction*.

## Good Reduction

Definition (Good Reduction for Abelian Varieties)
: $A/K$ has *good reduction* if there exists a smooth group scheme $A?R$ with generic fiber $A/K$.

Noting that $\spec(R) = \theset{(0), (\pi)}$ is a two point space, we have the fibers

\begin{tikzcd}
A \arrow[dd] &  & A/K \arrow[dd] &  & A/\FF_q \arrow[dd] \\
             &  &                &  &                    \\
\spec(R)     &  & (0)            &  & (\pi)             
\end{tikzcd}




We get a SES
$$
0 \to A' \to A(R) \mapsvia{\text{reduction}} A(\FF_q) \to 0
$$
and the fact that it is surjective is due to **Hensel's lemma**.
Here $A' = \mfm^g$ endowed with a formal group law.
Since we have a projective variety, we can clear denominators to replace $A(R)$ with $A(K)$ in the above sequence.
Note that the quotient is precisely a Mordell-Weil group, so using the Weil conjectures, we can say quite a bit about its size.

Thus $A' \injects A(K)$ is an open finite-index subgroup.
Moreover, all of the torsion is $p\dash$primary, and $A'[\tors] = A'[p^\infty]$.
Define $G[\tors]'$ to be the torsion that is prime to $p$.
If the kernel is $p\dash$primary torsion, then the reduction map induces an isomorphism 

\begin{align*}
r: A(K)[\tors]' \mapsvia{\cong} A(\FF_q)[\tors]'
.\end{align*}

Theorem (Weil, Serre. Improved Weil Bounds)
: $\# A(\FF_q) \leq \floor{ (1 + \sqrt q)^2}^g$.
  (Note that Weil's original bound is just this without the floor function.) 

Therefore, for $A/K$ and $K/\QQ$ a number field of degree $d$,
choose $\mfp_1, \mfp_2$ in $\spec \ZZ_k$ points of good reduction.
Then

\begin{align*}
\# A(K)[\tors] \leq \floor{ \qty{1+p_1^{\frac d 2}   }^2  }^g
\floor{ \qty{ 1 + p_2^{\frac d 2}  }^2  }
.\end{align*}

> Note: potentially "blah" always means "blah" after some base extension.

## Potentially Good Reduction

Definition (Potentially Good Reduction)
: Let $K$ be a $p\dash$adic field, then $A/K$ has *potentially good reduction* iff there exists a finite degree extension $L/K$ such that base extending to $L$, $A/L$, has good reduction.

Proposition
: $\# A(K)[\tors]' \leq \floor{\qty{1 + \sqrt q  }^2  }^g$.

Remark
: If $\endo(A)$ is "large enough", e.g. if $A$ has $X\dash$multiplication for $X = \CC, \HH$ (complex or quaternionic) then $A$ must have potentially good reduction (see Pete's thesis).

Proof
: Serre-Tate observed that if you have potentially good reduction, it can always be obtained via a totally ramified extension $L/K$.
  That is, if $S$ is the valuation ring of $L$ and $\mfm_S$ is its maximal ideal, then $S/\mfm_S \cong \FF_q$, so it doesn't change the size of the residue field.
  Applying step 1 over $L$ yields a bound.

Application
: If $E/\QQ$ is an elliptic curve with potentially good reduction over $2, 3$ (i.e. the $j\dash$invariant doesn't have 2 or 3 in the denominator).
  Applying the bound yields 

  \begin{align*}
  \# E(\QQ)[\tors] 
  &\leq \floor{(1 + \sqrt 2)^2  } \floor{ (1 + \sqrt 3)^2 } \\
  &= (5)(7) \\
  &= 35
  .\end{align*}

  Note that a much harder theorem yields a tighter bound at $15$, but this is much easier and not much worse of a bound.

  Taking now $A/\QQ$ with $\dim A = 2$ with the same conditions yields 
  $\# A(\QQ)[\tors]' \leq (35^2) = 1225$.

  Note that without this minor observation, the known bound is astronomically larger!

Theorem (C-Xarles)
: Fix $A/\QQ$ with $\dim A = 2$ and everywhere potentially good reduction.
  Then 
  $$
  \# A(\QQ)[\tors] \in [1, 16] \union [18, 20], \union \theset{22, 24, 25, 28, 30, 36, 48, 60, 72}
  $$

  Conversely, $[1, 10] \union \theset{12, 16, 18, 19 ,20, 24, 36}$ are known to occur.

> Note that for elliptic curves over $\QQ$, it's $\theset{1,2,4,6}$.

Proof (Sketch)
: For $K$ a $p\dash$adic field, the absolute unramified extension has galois group $\hat \ZZ$, then extend to $\bar K$ with galois group $H$ to obtain a SES
  $$
  1 \to H \to g_K \to \hat \ZZ \to 0
  $$
  Since $\hat \ZZ$ is a free profinite group, thus a projective object in that category of profinite groups, so this sequence splits and $g_K \cong \hat \ZZ \oplus H$.

  What does this buy us? 
  We can think of the subgroup $H$ now as a quotient, so there is a $K^{\mathrm{tr}} \leq \bar K$ such that $\Aut(K\tr/K) = H$, i.e. we have a compositum

  
  \begin{tikzcd}
                                  & \bar K \arrow[ldd, "H"'] \arrow[rdd] &                                \\
                                  &                                      &                                \\
  K^\text{unramified} \arrow[rdd] &                                      & K^{\text{tr}} \arrow[ldd, "H"] \\
                                  &                                      &                                \\
                                  & K                                    &                               
  \end{tikzcd}

  

  
  Thus $\bar K = K^{\text{unramified}} \cross K^{\text{tr}}$.


## General Reduction 

Let $A/K$ be an abelian variety, $A/R$ the Néron model, which is a smooth finite type group $R\dash$group scheme with generic fiber $A/K$ and $A(K) = A(R)$.
There is a reduction map $A' \to A(R) \mapsvia{r} A(\FF_1) \to 0$ given by reduction, which is again surjective by Hensel's lemma.

Here the kernel $A'$ is exactly as before, obtained by evaluating a $g\dash$dimensional formal group law on $\mfm^g$.
The difference here is that $A(\FF_q)$ is no longer an abelian variety, and instead the group of $\FF_q$ rational points of a commutative algebraic group over $\FF_q$.

There is structure theory of commutative algebraic groups, which may be disconnected, so we'll need to consider things like the component group -- but this can be arbitrarily large, which can be an issue.

# Friday February 28th

## Clark-Xarles Paper

Continuing Clark-Xarles paper on torsion points of abelian varieties $A/k$, where $[k: \QQ_p] = ef$ and $q = p^f$.
If $A/k$ has potentially good reduction, the prime to $p$ torsion injects into the torsion of the residue field, which gave an estimate 
$$
\# A(k)[\tors]' \text{(prime to $p$)}
\leq 
\floor{ \qty{1 + \sqrt q  }^2  }^ g
= 
\floor{ q + 2\sqrt q + 1  }^ g
$$

Can also get a bound on $\# A(k)[p^\infty]$ in terms of $p, g, e$, and if $p \gg e$, the bound is precisely 1.

We want to generalize this: let $R$ be a valuation ring, then there exists a finite type smooth commutative (not necessarily proper) $R\dash$group scheme $A/R$ with generic fiber $A/k$, the Néron model, such that $A(R) = A(K)$ and 
$$
0 \to A'(R) \to A(R) = A(k) \mapsvia{r} A(\FF_q) \to 0
.$$
Note that $A'(R)$ here comes from a formal group law.

For $A/\FF_q$ a smooth commutative algebraic group, and $A/k$ has good reduction $\iff A/\FF_q$ is an abelian variety.

We obtain 
$$
0 \to A^0/\FF_q \to A/\FF_q \to \Phi \to 0
,$$ 
where the first entry is the component group and the third is a finite etale $\FF_q\dash$group scheme.
Identify $\Phi$ with $\Phi(\bar \FF_q)$ as a $g_{\FF_q}\dash$module, then $\Phi(\FF_q) = \Phi^{g_{\FF_q}}$ coming from a Galois action.

Note that $A^0/\FF_q$ is a connected commutative smooth algebraic group over the perfect field $\FF_q$, so we can apply some classification theory.

## The Chevalley Decomposition

Let $k$ be any perfect field and $G/k$ be a commutative connected algebraic group, then there exists a unique SES of such groups 
$$
0 \to T\oplus U\to G \to B \to 0
.$$
Plugging in $\bar k$ points would yield a SES of Galois modules.
Plugging in $k$ points may not work, because a surjection of elliptic curves (isogeny) is not necessarily surjective on $k\dash$points.
Say $\dim G= g, \dim B = \beta$ be the abelian ranks.

Since $B/k$ is an abelian variety, $T/k$ is a linear torus and $T/\bar k = \GG_m^\mu$, so define $\dim T = \mu$ the "toric rank".
Then $U/k$ is a commutative unipotent *linear algebraic group*, so it embeds in some $\GL(n, k)$ with eigenvalues only 1.
Note that $\GG_a = \theset{ [1, x; 0, 1] \suchthat x\in k}$, and anything here will be a repeated extension of the additive group.
Let $\alpha = \dim U$ be the additive rank.

If $A/\FF_q$ is an abelian variety of dimension $\beta$, we have the bound $\# A(\FF_q) \leq \floor{ q + 2\sqrt q + 1  }^\beta$, if $T_{\FF_q}$ is a torus of dimension $u$, then $\# T(\FF_q) \leq \qty{q+1}^\mu$.
Note that if $\dim T = 1$, then $T$ is isomorphic to either $\GG_m$ or $$N = \ker( \GG_m/\FF_{q^2} \to \GG_m/\FF_q  )$$ (Weyl restriction) over $\FF_q$.
Moreover, $N(\FF_q) = \ker(\FF_{q^2}\units \to \FF_q\units)$ which is cyclic of order $q+1$.

Note that if we have a nodal cubic, and the group splits to $\GG_m$ if the slopes of the two tangents at the node do (??) lie in $\FF_q$, and lands in the second case if the slopes are Galois conjugate.

If $U/\FF_q$ is a commutative unipotent algebraic group of dimension $\alpha$, then $\# U(\FF_q) = q^[\alpha]$, the number of points of $\GG_m^\alpha$ (?).

We'll find a filtration 
$$
0 = G^3 \subset G^2 \subset G^1 \subset G^0 = A(k)
.$$
Take $G^1$ to be the points reducing into $A^0(\FF_q)$, i.e. $$\ker( A(k) \mapsvia{r} A(\FF_q) \mapsvia{?} \Phi(\FF_q) ).$$
Then $G^0 / G^1 \injects \Phi(\FF_q)$.
Take $$G^2 = \ker(A(k) \mapsvia{r} A(\FF_q)),$$ then $G^1/ G^2 \injects A^0(\FF_q)$.
Note that $G^2$ comes from the formal group law.

Now let $T^i = G^i \intersect A(k)[\tors]$, then 
$$
\# A(k)[\tors]' \leq \# \Phi(\FF_Q) \# A^0(\FF_q),
,$$ 
and since we know everything about $A^0(\FF_q)$, we have

\begin{align*}
\#A(k)[\tors]' \leq \# \Phi(\FF_q) \floor{ q + 2\sqrt q + 1  }^\beta \qty{q + 1}^\mu
.\end{align*}

Note that $q^\alpha$ is $p\dash$torsion, so we don't need the unipotent piece here.

Theorem (Lestra-Oort)
:   Suppose $\mu = 0$, so no toric part.
    Then $\# \Phi' \leq 2^{2\alpha} \leq 2^{2g}$.

Thus if $\mu = 0$, we have

\begin{align*}
\#A(k)[\tors]' \leq \# \Phi(\FF_q) ~\floor{ q + 2\sqrt q + 1  }^\beta ~\qty{q + 1}^\mu ~2^{2\alpha}
.\end{align*}

Noting that $\alpha + \mu + \alpha = g$, this can give a better bound than in the case of good reduction.

Definition (Anisotropic Torii)
:   Let $T/k$ be a torus, then $T$ is *anisotropic* iff there does not exist an embedding $\GG_m \injects T$ over $k$.

Definition (Anisotropic Reduction)
: $A/k$ has *anisotropic reduction* (or AR) iff the torus part is anisotropic.

Theorem (Clark-Xarles)
:   If $A/k$ has anisotropic reduction, then
  
    \begin{align*}
    \#A(k)[\tors]' 
    &\leq \# \Phi(\FF_q) \floor{ q + 2\sqrt q + 1  }^\beta \qty{q + 1}^\mu 2^{\alpha} \\
    &\leq \floor{ q + 2\sqrt q + 1 }^g
    .\end{align*}

This generalizes the potentially good reduction case, since p.g.r. implies anisotropic.

Next up: need to understand $p\dash$adic uniformization of abelian varieties, and particularly for abelian varieties.

# Friday March 6th

## Analytic Uniformization and Tate Curves

Gives us a way to use analysis to understand a variety.

Tate curves: let $(K, \abs{\wait}) = \RR, \CC$ or a complete nonarchimedean field.
Recall that if $K$ is $p\dash$adic, then $(K, +)$ has no nontrivial lattices (closed, discrete subgroups).
For $\CC$ we have an infinite-dimensional covering map 
$$
\operatorname{exp}: \CC/\ZZ \mapsvia{z\mapsto e^{2\pi i z}} (\CC\units, \cdot)
$$ 
which is an isomorphism of $\CC\dash$lie groups.

If $\tau \in \HH$ and $\Lambda_s = \generators{1, \tau}$, then taking the exponential yields 
\begin{align*}
C/\Lambda_S \mapsvia{\operatorname{exp}} \CC\units/\generators{q_\tau}
\end{align*}
where $q_\tau = e^{2\pi i q}$ and $0 < \abs{q_\tau} < 1$, which is a type of "additive uniformization".

Thus if $E/\CC$ is any elliptic curve, then there exists such a $q\in \CC$ such that 
$$
E(\CC) \cong C\units/\generators{q}
.$$

:::{.remark}
The map $q \mapsto j(q)$ is generally not injective.
Note that $j$ factors through the quotient


\begin{tikzcd}
j\HH \arrow[rr] \arrow[rrdd, dashed] &  & \CC                                    \\
                                     &  & \\
                                     &  & {\liesl(2, \ZZ)\ \HH} \arrow[uu, "\cong"]
\end{tikzcd}


In other words, for $(a, b; c, d) \in \liesl(2, \ZZ)$ we have $j(\tau) = j\qty{\frac{a\tau + b}{c\tau + d}}$.
The indeterminacy here is given by $e^{2\pi i \tau_1} = e^{2\pi i \tau_2}$ iff $j_2 = j_1 + b$ for some $b\in  \ZZ$ and $(1, b; 0, 1) \xi = \xi + b$.
:::

Last time we saw that $(K, \abs{\wait})$ is locally compact and $q\in K$ with $0< \abs q < 1$, then $\generators{q} = q^\ZZ$ is a full lattice in $K\units$.

> Proof last time: a one-liner using compactness of the unit ball.

Exercise
: If $\Lambda \in K\units$ is a full lattice (discrete, closed, compact quotient/cocompact), then $\Lambda = q^\ZZ$ for a unique $q$ with $0 < \abs q < 1$.
  The content: can't take $\abs{q} = 1$.
  Think about what happens if you take a $p\dash$adic field and start taking powers, see what it is dense in.

> Modding out by finite group doesn't lose compactness.

Exercise
: What are the full lattices in $(K\units)^g$?
  Higher dimensional abelian varieties are also uniformized by lattices in $\CC^g$.
  Claim: all isomorphic to $\ZZ^g$.

Exercise
: For $K = \RR$, $0 < \abs{q} < 1$, then 

\begin{align*}
R\units /\generators{q} \cong 
\begin{cases}
\RR/\ZZ \cross \ZZ/2\ZZ \quad q > 0 \\
\RR/\ZZ \quad q < 0
\end{cases}
.\end{align*}

> Primary source material for Tate Curves: Silverman Chapter 5

In fact, for all $E/\RR$ there exists a $0 < \abs q < 1$ such that $E(\RR) \cong E_q$ as $\RR\dash$lie groups, where $E_q \cong \RR\units / \generators{q}$.
So the Tate parameter $q$ is telling you whether or not 2-torsion exists.
Also relates sign of $q$ to sign of discriminant.
Can take $q$ series in the sense of modular forms, starting next week.

> Note: these $q$ series will still converge in $K$.

For our purposes, take $(K, \abs{\wait})$ a complete nonarchimedean field, $0< \abs{q} < 1$ in $K$, $E_q \definedas K\units/\generators{q}$ is a compact commutative 1-dimensional $K\dash$analytic lie group.

How all of this will end up working:

Theorem (Tate, Part A)
: For $(K, \abs{\wait})$ a complete nonarchimedean field and $q$ a Tate parameter, there exists an elliptic curve $E_q/K$ and a $K\dash$analytic group isomorphism
  $$
  \phi: K\units/\generators{q} \mapsvia{\cong} E_q(K)
  $$
  Moreover, $E_q$ has split multiplicative reduction.

Theorem (Tate, Part B)
:   Moreover, for all finite extensions $L/K$, note that we can extend the norm to the algebraic closure uniquely (by Number Theory II), and the following diagram commutes
  
    
    \begin{tikzcd}
    K\units/\generators{q} \arrow[dd, hook] \arrow[rr] &  & E_q(K) \arrow[dd, hook] \\
                                                      &  &                         \\
    L\units/\generators{q} \arrow[rr]                  &  & E_q(L)                 
    \end{tikzcd}
    

Taking the $\directlim$ over finite $L/K$, 
$$
\phi: \bar K\units /\generators{q} \mapsvia{\cong} E_q(\bar k)
.$$
Moreover, $\phi$ is equivariant for $\aut(\bar K/K)$, i.e. for all 

\begin{align*}
\forall \sigma \in \aut(\bar k/k),~ x\in \bar K\units/\generators{q}, \quad\quad \phi(\sigma x) = \sigma(\phi x)
.\end{align*}

For $N \in \ZZ^+$ with $\ch K \notdivides N$, we have 
$$
E_q[N] \cong (K\sep)\units / \generators{q} [N]
$$ 
as $g_K\dash$modules.
Note that $\mu_N$ is a subgroup of the RHS, which is fixed under the galois action.

Punch line: every elliptic curve comes with a unique order $N$ subgroup which is galois-invariant.
Thus we reduce the question of computing the galois module structure of torsion points to a qual-level algebra problem of computing galois extensions.

Theorem (Tate, Part C)
: Suppose $K$ is discretely valued, $\abs{x} = C^{-v(x)}$, $v(K^x) = \ZZ$. 
  Then $E_q$ has **split** multiplicative reduction (by A), and 
  $$
  v(j(E_q)) = v\qty{\frac 1 q} = -v(q) \in \ZZ^+
  .$$
  This implies that the component group of the Néron special fiber is *constant* and isomorphic to $\ZZ/v(q)\ZZ$.

> See Kodaira-Néron classification

Major difference: only uniformizing curves with split multiplicative reduction, as opposed to all curves in $\RR, \CC$ case.

Theorem (Tate, Part D)
: For all $j\in K$ with $\abs{j} > 1$, there exists a unique $q\in K$ such that $0 \abs{q} < 1$ and $j(E_q) = j$.
  So the Tate parameter is uniquely recovered.


For every $q$, we build a curve $E_q$, and get a galois structure on its torsion points.
They must have split multiplicative reduction, and every such curve is isomorphic to $E_q$ for a unique $q$.
Pretty strong result!

Theorem (Tate, Part E)
: Assume $\ch K \neq 2$.
  If $E/K$ is any elliptic curve with $\abs{j(E)} > 1$ (so not integral), then there exists a unique $q$ such that $E/K$ is a *quadratic twist* of $E_q/ K$.
  For $K(\sqrt \alpha) / K$, we have 
  $$
  E/K(\sqrt \alpha) \cong E_q / K(\sqrt \alpha)
  .$$
  Moreover,
  
  \begin{align*}
  E/K \text{ has } 
  \begin{cases}
  \text{split mult. reduction} & K(\sqrt \alpha) = K \quad \sim \GG_m\\
  \text{non-split mult. reduction} & K(\sqrt \alpha)/K \text{ is unramified } \quad\sim T\text{ a nonsplit torus} \\
  \text{additive reduction} & K(\sqrt \alpha) / K \text{ is ramified }
  \end{cases}
  .\end{align*}

Remark: the torsion can be arbitrarily large.

Example
: Take $K = \QQ_p$ and $q = p^n$ so $\abs{p^n} < 1$.
  Then 
  $$
  E_q(\QQ_p) \cong \QQ_p\units / \generators{p^n}
  .$$
  What is the torsion subgroup?
  
  Note that roots of unity in $\QQ_p$ inject into the quotient, and $\mu(\QQ_p) \cong \FF_p\units \cong \ZZ/(p-1)$ (by Number Theory II).
  The class of $p$ is order $n$, and thus also torsion, so 
  $$
  T \cong \ZZ/(p) \times \ZZ/(p-1)
  ,$$ 
  where the containment is obvious and staring at this calmly will show that this in fact the entire torsion subgroup.

In general, for $(K, \abs{\wait})$ discretely valued, it's easy to give an upper bounds.
We have 
$$
E_q(K)[N] \injects \mu_N(K) \times Z
,$$ 
where $Z$ is cyclic of order $v(q)$.
Equality occurs if (not iff) $q$ is a perfect $v(q)$th power.

Taking $E_q(\bar K)[N]$ is generated by $\zeta_n$, a primitive $n$th root of unity, and any $n$th root of $q$, $q^{\frac 1 n}$.
Thus this is literally a Kummer extension, and this is no big deal to work out.

The culprit: the component group can be arbitrarily large!

# Monday March 30th

We'll begin by recalling some properties that Tate curves have.

## Tate Curves

Let $(K, \abs{\wait})$ be a complete nonarchimedean normal field and $q\in K$ with $0 < \abs{q} < 1$ so $\abs{j(E_q)} = {1 \over \abs q} > 1$.
Let $R$ be its valuation ring.
Then

**Remark (a)**:

There exists an elliptic curve $E_1/K$ and a $K\dash$analytic group isomorphism
\begin{align*}
\phi_K: K\units/\gens{q} &\mapsvia{\cong} E_q(K)
,\end{align*}
a *multiplicative uniformization*.

For all finite $L/K$, the norm extends uniquely over $L$, and there is a compatibility in the following sense

\begin{tikzcd}
K\units / \gens{q} \ar[d, hook] \ar[r, "\cong \phi_K"] & E_q(K) \ar[d, hook] \\
K\units/ \gens{q} \ar[r, "\cong \phi_L"]               & E_q(L)
\end{tikzcd}


And taking the $\directlim$ over separable $L/K$ yields
\begin{align*}
\phi: (K\sep)\units/\gens{q} \mapsvia{\cong} E_q(K\sep)
,\end{align*}
which is an isomorphism of $g_K\dash$modules where $g_K = \aut(K\sep/K)$.

Note that in this case, $E_q(K)$ will not have potentially good reduction, and in fact we precisely get all curves with split multiplicative reduction.

**Remark (b)**:

Suppose $*K, \cdot)$ is discretely valued.
Then $E_1$ has split multiplicative reduction and the component group is cyclic of order $v(q)$.

Example
: If $\pi$ is a uniformizing element for $K$ and $q = \pi^n$ then $E_q(K)[\tors] \cong K\units / (\pi^n)$ and the class of $\pi$ has order $n$.
  So the torsion can be arbitrary large, but we can understand this quotient using Kummer theory.

Suppose that $K$ is a complete discrete valuation field with perfect residue field $k$.

- If $\abs{j(E)} \leq 1$ then $E$ has potentially good reduction.
  - Note that we just need to pass to an extension of degree 2 or 4.

- If $\abs{j(E)} > 1$ then $E$ has **no** potentially good reduction and is a unique quadratic twist of a *unique* Tate curve.

The latter is a strong statement: we'll attached a unique $q$ and $E_q$ to $E$ such that $j(E) = j(E_q)$.
Thus these $E$ will have explicit identifications, and since we understand the former case of potentially good reduction somewhat well, we'll be in good shape.

Theorem
:   If $(K, v)$ is a complete discrete valuation field with perfect residue field $k$.
    Let $E/K$ be an elliptic curve suchj that $\abs{j(E)} < 0$ (so it's a quadratic twist of a Tate curve).
    Let $\ell \geq 3$ where $\ell$ does not divide $\ch K v(j(E))$.

    > If $\ch K = 0$ and $\ch k = p$, then $\ell = p$ is allowed.

    Let $I_K$ be the inertia group of $K$ (noting that we're over a local field so $g_K$ is local), a subgroup of the absolute Galois group of $K$, i.e.
    $1 \to I_K \to g_K \to g_k \to 1$.

    Then there exists a basis $e_1, e_2$ of $E[\ell](K\sep)$ and $\sigma \in I_K$ such that
    \begin{align*}
    \phi_\ell(\sigma) =
    \begin{bmatrix}
    1 & 1 \
    0 & 1
    \end{bmatrix}
    ,\end{align*}
    i.e. $e_1 \mapsto e_1$ and $e_2 \mapsto e_1 + e_2$.

Note that this matrix is in Jordan form.
It is unipotent, and every unipotent matrix in a field of $\ch = \ell$ has order $\ell$.
Thus we have a very particular element of order $\ell$ in the Galois group.


### Proof

Proof
:   We can replace $K$ with any algebraic extension $L/K$ such that $\phi(L/K)$ is finite and prime to $\ell$.
    In particular, we can assume that $L$ contains the maximal unramified extension $L \supset K^\text{unr}$, which occurs iff $k = \bar k$ is algebraically closed.
    Thus we can take Galois groups instead of inertia groups.

    We may also assume that $E$ is isomorphic to a Tate curve over $L$, i.e. $E \cong_L E_q$ by replacing $L$ with a quadratic extension, and that $L$ has a primitive $\ell$th root of unit $\zeta_\ell$.
    This is because the ramification index is equal to the degree $\ell-1$ which is still prime to $\ell$.
    Thus we can use the Tate parametrization and Kummer theory.

    Let $Q \in L\sep$ such that $Q^\ell = q$, i.e. take an $\ell$th root of the Tate parameter.
    By classical Kummer theory, $L(Q) / L$ is cyclic of degree $\ell$, so let $\sigma \in \aut(L(Q) / K)$ be a generator.
    Then $\zeta \definedas \sigma(Q) / Q$ is nontrivial and thus a primitive $\ell$th root of unity.

    Note that $E_1(L\sep) \cong (L\sep)\units / \gens{q}$.
    So we can construct a basis by taking $e_1 = \zeta$ and $e_2 = Q$.

Corollary
:   For $K, E/K, \ell$ as in the theorem, so $\abs{j(E)} > 1$ and $\ell$ does not divide $\ch K v(j(E))$
    Then $E/K$ has an **unique** $K\dash$rational $\ell\dash$isogeny.

Proof
:   There exist a quadratic twist $E_q$ of $E$ that is a Tate curve since the reduction is not potentially good, so $j\neq 0, 1728$, so the only twists are quadratic.
    Thus WLOG we can assume $E \cong E_q$.

    > Next time: to each quadratic twist we'll associate a quadratic character $\chi$, to which we associate a Galois representation.

    If we take $H \definedas \theset{\mu_\ell \gens{q}} < \GG_m/\gens{q}$ the group of roots of $\ell$th roots of unity, which is a $g_K\dash$stable subgroup.
    We also have $\sigma \in I_K$ with
    $?\phi(\sigma) = \begin{bmatrix}
    1 & 1 \
    0 & 1
    \end{bmatrix}$
    and the cyclic subgroups of $E[\ell]$  are generated by $[1, 0]$ and $[x, 1]$ where $x\in ?$.



# Monday April 6th

We've been talking about quadratic twists of Tate curves.
Let $K$ be a field, $\ch K \neq 2$, $V/K$ a nice variety, $\iota: \aut(V)$ an involution, $L = K(\sqrt d)/K$, then $J(V, \iota, L) = V^d/K$ is a quadratic twist.
We have $V^d / K(\sqrt d) = V_{K(\sqrt d)}$, and $\Aut K(\sqrt d) / K = \theset{1, \sigma}$ is a two element set, so
\begin{align*}
V^d(K) \definedas \theset{ p \in V(K(\sqrt d)) \suchthat \sigma(p) = \iota(p) }
.\end{align*}

Example:
For $E/k$ an elliptic curve with $\iota = [-1]$, if $E: y^2 =x^3 + Ax + B$ yields $E^d: dy^2 = x^3 + Ax + B \sim y^2 = x^3 + d^2Ax + d^2 B$.
This works out similarly for hyperelliptic curves $C$: for $y^2 = f(x)$, we obtain $C^d:  dy^3 = f(x)$.
Note that there is not such a description in equations for abelian varieties.

Theorem (C- Stankewicz, 2018)
:   Let $K$ be a number field and $C/K$ a "nice" curve (conditions to be described) with $\iota$ an involution on $C$.
    Then

    a. For all but finitely many $d \in K\units / (K\units)^2$, $C^d(K) = \emptyset$.
    b. There exist infinitely many $d$ such that $C^d$ has $K_v\dash$rational points for all places $v$.
    c. If $K = \QQ$, then as $x\to\infty$ the number of $d$ with $\abs{d} \leq x$ such that $C^d$ violates the Hasse principle is $\gg x/\log x$

Punchline: under some conditions, you get a lot of Hasse principle violations.

Conditions:

1. $\theset{p\in C(K) \suchthat \iota(p) = p} = \emptyset$
2. $\theset{p \in C(\bar K) \suchthat \iota(p) = p} \neq \emptyset$.
3. There exists some $d\in K\units / \qty{K\units}^2$ such that $C^d$ has points everywhere locally.
4. $(C/\iota)(K)$ is finite.

This works for hyperelliptic curves, conditional on the abc conjecture.

For condition 4, we can just take the genus $>2$ and apply Falting's theorem.
We can apply this to Atkin-Laner (?) twists of elliptic curves.

> Note that there is a lot of work being done on quadratic twists.

For $A/K$ an abelian variety, take $\iota = [-1]$ and $K(\sqrt{d}) / K$ with $\ch K \neq 2$.
What is the quadratic twist $A^d/K$?
For $N\geq 3 \in \ZZ^+$ and $\dim A = g$, there is a representation $\rho_N: g_K \to \Gl(2g, \ZZ/n\ZZ) = \Aut(A[N]) =\Aut(\qty{\ZZ/N\ZZ}^{2g})$.
This is the "mod $N$ galois representation".

What is the galois representation on the quadratic twist $\rho^d_N: g_K \to \GL(2g, \ZZ/N\ZZ)$?
They both restrict to the same function on $g(K(\sqrt d))$.
The succinct answer is that $\phi^d_N = \phi_N \tensor \chi_d$, where $\chi_d: g_k \to \theset{\pm 1}$ where $\sigma \mapsto 1$ iff $\restrictionof{\sigma}{K(\sqrt d)} = 1$ and -1 otherwise.
What is this tensor?
We can think of $\theset{\pm 1}\in \qty{\ZZ/N\ZZ}\units = \Gl(1, \ZZ/N\ZZ)$.
In other words, for all $\sigma \in g_k$, we have $\rho_N^d = \chi_d(\sigma) \rho_N(\sigma) = \pm \rho_N(\sigma)$, where we identify $\pm 1$ with the scalar matrices $\pm I$ in $\Gl(2g, \ZZ/N\ZZ)$.
Thus it's a twist by a quadratic character.

Now let $G \subset A[n] \subset A$ where $G = \gens{p}$ is cyclic of order $N$ and $p\in A(K\sep)$.
Then $G$ is $g_k\dash$stable, so we can choose a basis $p = p_1, \cdots, p_{2g}$ of $A[n] / \ZZ/N\ZZ$.
We can then write
\begin{align*}
\phi_N(\sigma) =
\begin{bmatrix}
\chi_G(\sigma) & \ast \\
0 & \ast
\end{bmatrix}
\end{align*}

where $\sigma(p) = \chi_G(\sigma) p$, and thus
\begin{align*}
\begin{bmatrix}
\chi_d(\sigma) \cdot \chi_G(\sigma) & \ast \\
0 & \ast
\end{bmatrix}
.\end{align*}

We then have a diagram of inclusions

\begin{tikzcd}
G \ar[r, hook] \ar[d, hook] & A^d[N] \ar[r, hook] & A^d \ar[d, hook] \\
G \ar[r, hook]              & A[N] \ar[r, hook]   & A^d
\end{tikzcd}


What if we now want an actual $K\dash$rational point of order $N$?
Cyclic order $N$ $K\dash$rational subgroups of $A$ are equal to cyclic order $N$ $K\dash$rational subgroups of $A^d$, so

For $E/K$, we proved that it has a unique cyclic order $\ell$ subgroup corresponding to $\mu_\ell$.
So the same holds for every quadratic twist, and every rational point has to come from the original $\mu_\ell$ since cyclic subgroups aren't changing under quadratic twists.
Thus only the isogeny character can change.

So when does quadratic twisting gain or lose a rational point?
The image of the isogeny character must be order 1 or 2, corresponding to a quadratic extension, and the isogeny character is trivialized.
We'll eventually conclude that none of the quadratic twists will have a rational point of order $N$.

# Wednesday April 8th

Exercise
:   If $\ch K \neq 2,3$ and $E_1, E_2/ K$ are elliptic curves, set $L = K(\sqrt{d})$.
    If $E_1 \not\cong_K E_2$ but $E_1 \cong_{K(\QQ)} E_2$, then $E_2 \cong E_1^d$ (so $E_2$ is a quadratic twist of $E_1$).

> Note that we take the twist with respect to the inversion map.

This is not generally true for quadratic twists of $(V, \iota)$.
It depends on $\aut(V)$.
If $\aut(E) \theset{\pm 1}$, this holds for $j =  0 ,1728$.
Then for $E/K$ an elliptic curve, $J(E) = \theset{ E'_K \suchthat E' \cong_{K(\sqrt d)} E}$, which is in correspondence with $H^1_{\text{gal}} (\Aut(K(\sqrt d) / K), \aut(E) )$.
This is given by $H^1(\theset{1, \sigma}, I)$, which reduces to a hom set.

Last time we justified the argument that every ramified quadratic twist of a Tate curve, resulting in an elliptic curve with additive reduction.

Question:

Given $E_1, E_2/K$, how we can decide if $E_1 \cong_K E_2$ if $j\neq 0,1728$?

1. Check if they are isomorphic over $\bar K \iff j(E_1) = j(E_2)$.
    If not, stop, otherwise if so, they are quadratic twists of each other.
2. Use an invariant (see Silverman) $\gamma(E)$; then $E_1 \cong E_2 \iff j(E_1) = j(E_2)$ and $\gamma(E_1) = \gamma(E_2)$.

Proposition (An Application)
:   Let $F$ be a field, $F \injects \CC$, $E/F$ an elliptic curve with complex multiplication.
    Then $\endo(E) = \OO$ (taken over the algebraic closure) is some order in an imaginary quadratic field $K  = \QQ(\sqrt{\Delta})$, and $j(E) \in \bar{\ZZ}$, the algebraic integers.
    Then $\QQ(j(E))$ is a number field $L$, and for all $\mfp \normal \ZZ_\ell$, $E$ has potential good reduction at $\mfp$ (i.e. the $j\dash$invariant is $p\dash$adically integral).

> We more or less need to show that complex multiplication and "being a Tate curve" are mutually exclusive.

Proof (Sketch)
:   Let $K = \endo(E) \tensor_\ZZ \QQ$ and $L\definedas K(j(E))$.
    Then there are two cases:

    1. If $j(E)$ is algebraic then $L$ is a number field.
    2. Otherwise $j(E)$ is transcendental, and thinking of $j$ as an indeterminate we have $L \cong K(j)$, a rational function field.

    **Case 1:**
    Take $\mfp \in \ZZ_L$ and $E/L_\mfp$ a $p\dash$adic field.
    We want to show that $v_\mfp (j(E)) \geq 0$.
    Assume the proposition doesn't hold, toward a contradiction.
    Then after a quadratic base extension $M_\mfp / L_\mfp$, the curve $E/M_\mfp$ is a Tate curve.

    \

    For $\ell \gg 0$, define $N_\ell \definedas M_\mfp (E[\ell])$ and there is a map $\theta_\ell: g_{M_\mfp} \to \GL(2, \ZZ/\ell\ZZ)$.
    Note that $N_\ell / M_\mfp$ is Galois, and $\theta_\ell \definedas \Aut(N_\ell / M_\mfp) \cong \rho_\ell(g_{M_\mfp})$.

    \

    Because $E / M_\mfp$ has $\mu_\mfp\dash$ central (?) complex multiplication, $G_\ell$ is commutative and $\rho_\ell: g_{M_\mfp} \to \GL(1, \OO/\ell\OO)$ which is commutative.
    Since it's a Tate curve, we have an explicit description of the $\ell\dash$torsion coming from Kummer theory.
    This buys us the fact that $\mu_\mfp(E[\ell]) = M_\mfp(\mu_\ell, q^{1/\ell})$, which is just the splitting field of $t^\ell - q$ over $M_\mfp$ by "non-abelian Kummer Theory".

    > Qual alert: computing with these splitting fields shows up often on Algebra quals!

    Choosing $\ell \gg 0, \ell > 2$, and $\ell$ not dividing $v_\mfp(q)$ makes this splitting field irreducible.
    Thus the galois group is given by $G_\ell \cong \ZZ/\ell \ZZ \semidirect \chi_\ell(g_{M_\mfp})$ where the RHS is the cyclotomic character sitting inside of $\qty{\ZZ/\ell\ZZ}\units$, with the action given by multiplication.
    (See Lang's Algebra or Pete's Field Theory notes.)

    \

    What is the abelianization?
    We can compute $\#[G_\mfp: G_\ell] = \# \chi_\rho(g_{M_\mfp})$, and eventually this reduces to the case of a finite field $\FF_q$  and considering $[\FF(?): \FF_q]$.

    **Case 2**:
    Suppose $j(E)$ is transcendental over $K$, then $K(j)$ is a rational function field equal to $ff(K[j])$ with $v_\infty \definedas -\deg(P(j))$ and $v_\infty(j) = -1$.
    Letting $K_\infty$ be the completion of $K(j)$ with respect to $v_\infty$, then $K_\infty \cong K((1/j))$ with residue field $K = \QQ(\Delta)$.
    Now $E/K_\infty$ has complex multiplication, $v_\infty(j(E)) < 0$, and we again have a quadratic extension and $E$ is a Tate curve with complex multiplication.
    Using the fact that a number field only contains finitely many roots of unity, the same argument works.

There is a higher-genus notion of a Mumford curve which are analogously $p\dash$adically uniformized (much in the same way $\HH$ uniformizes) by lattices in $\GG_m^g$.

# Friday April 10th

Let $(K, \abs{\wait})$ be complete and $q\in K\units$ be the Tate parameter with $\abs{q} < 1$.
The *Tate curve* is given in equations by
\begin{align*}
E_q: y^ + xy = x^3 + a_1(q) x + a_2(q)
.\end{align*}

For all $k\geq 1$, we define $S_k(q) = \sum_{n=1}^\infty {n^k q^n \over 1 - q^n}$ for which convergence in $K$ can easily be checked since in the non-Archimedean settings, series converge iff the terms go to zero.

Fact:
\begin{align*}
a_4(q) &= -S_3(q) \\
a_6(q) &= {-5 S_3(q) + 7 S_5(q) \over 12}
.\end{align*}

This is some multiplicative analog of exponentiating the Weierstrass elliptic equations in $\CC\units$.
The discriminant is given as in the theory of modular forms as
\begin{align*}
\Delta (E_q) = q \prod_{n=1}^\infty \qty{1 - q^n}^{?} \neq 0
,\end{align*}

so $E_q$ is an elliptic curve.

The $j\dash$invariant is given by
\begin{align*}
j(E_q) &= {1 \over q} + 744 +  196844q + \cdots \\
& = \frac 1 q \sum_{n=1}^\infty c(n) q^n,\quad c(n) \in \ZZ
.\end{align*}

> Connection to irreducible representations of the Monster group.

Note that $\abs{j(E_q)} = {1 \over \abs q} > 1$ and (claim) the norms of $S_k, a_4, a_q$ are less than 1.

After reducing mod $n$, we obtain $\ts{x\in K \st \abs x < 1}$ and
\begin{align*}
\tilde E_q:  y^2 + xy = x^3
\end{align*}
which becomes singular at $(0, 0)$.

Taking the lowest degree part yields $0 = y^3 + xy = y(y+x)$, meaning we have split multiplicative reduction.
We now want the Tate parameterization.

For $u \in K\units \sm q^\ZZ$, define
\begin{align*}
X(u, q) &\definedas \sum_{n\in \ZZ} {q^n u \over \qty{1 - q^n u}^2} - 2S_1(q)
Y(u, q) &\definedas \sum_{n\in \ZZ} {\qty{q^n u}^2 \over \qty{1 - q^n u}^2} - 2S_1(q)
.\end{align*}

> Note the similar formulas involving $g_2, g_3$ in the case of modular forms.

We have a uniformizer map
\begin{align*}
\phi: K\units &\to E_q(K) \\
u &\mapsto
\begin{cases}
(X(u, q), Y(u, q)) & u\in q^\ZZ \\
0 & u\in q^\ZZ
\end{cases}
.\end{align*}

> Usual group symmetry trick, just add up over orbit of the group.

This immediately yields a map $K\units / \gens{q^\ZZ} \to E_q(K)$, and the work goes into showing that $\phi$ is a $K\dash$analytic group isomorphism.
The hard part here is showing surjectivity, see Silverman II, Chapter 5 (4 page proof).

Since $(K, v)$ is complete and discretely valued (with multiplicative reduction), we have $v(j(E_q)) = -v(q)$.
See Kodaira-Neron.
Moreover, the identity component of the generic fiber is cyclic of order $v(q)$.

Question: is every curve with an integral $j\dash$invariant a Tate curve?

Lemma
:   Let $\alpha \in K$ with $\abs \alpha > 1$.
    Then there exists a unique $q \in K(\alpha)$ (a finite extension) such that $\abs q < 1$ and $j(E_q) = \alpha$.

Thus the function $j$ which maps $q \mapsto j(E_q)$ is bijective, so you can recover the Tate parameter $q$ from either the elliptic curve or the $j\dash$invariant, which is not true over $K = \CC$.

Proof
:   Define $f(q) \definedas {1 \over j(q)} = {1 \over 1 + ?q + ? q^2 + \cdots}$.
    By inverting formal power series, this is equal to $q - 744 q^2 + 35665 q^3 + \cdots \in \ZZ[[q]]$.
    To get a functional inverse, for any ring $R$, any  $f\in R[[q]]$ such that $g \circ f = f\ \circ g = \id$ iff $a_1(f)$ is a unit.
    Then there is a $\beta \in E, \abs \beta < 1$ such that $\abs{g(\beta)} = \abs{\beta}$.
    Defininng $q \definedas g(1/\alpha) \in K(\alpha)$, we have $0 < \abs q = \abs{1 \over \alpha} < 1$, and inverting yields ${1 \over J(q)} = f(q) = f(g(1/\alpha)) = 1\alpha$, so $\alpha = j(q)$.
    This shows existence, so the $j$ function is surjective.

    \

    For uniqueness, suppose $j(q) = j(q')$ with $\abs{q}, \abs{q'} < 1$.
    Then $f(q) = f(q')$ and so $0 = \abs{f(q) - f(q')} = \abs{q-q'} \abs{1 - 744(q+q') + 35665 \qty{q^2 + qq' + (q')^2} + \cdots}$.
    The second term has norm 1, so this is equal to $\abs{q - q'}$.
    So the $j$ function is injective.

Note that this proof doesn't go through for $\CC$, and the injectivity is false.
Over $\CC$, the function
\begin{align*}
j: \HH/ \SL(2, \ZZ) &\mapsvia{\cong} \CC
j(q) = j(q') &\iff q' = {aq + b \over cq + d},
\begin{bmatrix}
a & b \
c & d
\end{bmatrix}
\in \SL(2, \ZZ)
\end{align*}

where $q = e^{2\pi i j}, q' = e^{2\pi i j'}$, we have $j(q) = j(q') \notimplies q = q'$.
E.g. for curves over $\CC$, the $\tau$ parameter can be associated to multiple curves.

Next time: non-Archimedean uniformization of higher dimensional varieties, particularly analytic torii.
Any compact connected $\CC\dash$analytic Lie group is a torus.
Note that the moduli space of elliptic curves of dimension ? is greater than the corresponding moduli space of abelian varieties, so additional conditions are needed to ensure they are torii.
The abelian varieties that can be uniformized are exactly those with split multiplicative reduction.


# Monday April 13th

## Non-Archimedean Uniformization of Abelian Varieties

We'll start by recalling the Archimedean uniformization theory, i.e. over $\CC$:
every compact connected $\CC\dash$analytic (thus commutative) Lie group is isomorphic to $\CC^g / \Lambda$ a discrete cocompact lattice isomorphic as a $\ZZ\dash$module to $\ZZ^{2g}$.
Note that $\Lambda$ is a complex torus, and not a linear torus $\GG_m^n$.

> Thus all complex torii are isomorphic as topological (even real Lie) groups.

Note that if $(K, \abs{\wait})$ is a complete non-Archimedean field, then full lattices in $k$ do not exist in characteristic zero, so we want a multiplicative version.
The right notion of isomorphism to use here is homothety (scaling by a complex unit) and thus $\Lambda \subset \CC^g$ has an action of $\GL_n(\CC)$ so $\CC^g/\Lambda \cong \CC^g/m \Lambda$, so we may choose $\Lambda$ to have a $\ZZ\dash$basis given by $\lambda_1 = e_1, \lambda_g = c_g$ generalizing the usual basis of $1, \tau$ in the 1-dimensional case.

We have an exponential map $\operatorname{exp}: \CC^g \to (\CC\units)^g$ where $\vector z \mapsto e^{2\pi i \vector z}$, so pushing $\Lambda$ through $\operatorname{exp}$ yields a full lattice $\Lambda' \subset (\CC\units)^g$ where $\CC^g / \Lambda \cong (\CC\units)^g/\Lambda'$.

In $\dim g > 1$, not every $\CC\dash$torus corresponds to an abelian variety (contrasting the $g=1$ case).
Changing basis for $\Lambda$ yields a matrix $(I \mid Z)$ where $Z \in \Mat_{g, g}(\CC)$, and Riemann showed that $\CC^g / \Lambda$ determines an abelian variety iff this matrix is symmetric with positive definite imaginary part.
This occurs iff $\Lambda$ admits a *Riemann form*, which is an analog of the polarization form, and is given by $H: \CC^g \cross \CC^g \to \CC$ that is Hermitian and positive definite such that $H(\Lambda) \subset \ZZ$.

> Equivalently, having an ample line bundle, some multiple of which embeds it into some projective space.

By counting parameters, we can determine the dimension of the moduli space of $g\dash$dimensional complex torii: since we have a $g\times g$ nonzero matrix, this yields $g^2$.
Similarly, counting moduli for abelian varieties yields $g(g+1)/2$.
Note that these coincide for $g=1$ but differ for $g>1$, so there's an entire dimension of torii that aren't abelian varieties.

We define a $K\dash$analytic torus as $T(\Lambda) = (K\units)^g / \Lambda$.
This is a $g\dash$dimensional $K\dash$analytic manifold which is compact iff $K$ is locally compact.

Question: For which $\Lambda$  is there an abelian variety $A/K$ such that $A \cong T(A)$?
This should mean that for all $K \subset L \subset \bar K$, we have $A(L) \cong (L\units)^g / \Lambda$.
But which category should we take this in?
We need to ensure that the notion of isomorphism isn't so weak that these isomorphism occur for trivial reasons.

We'll work in the category of rigid $K\dash$analytic spaces: locally ringed spaces (with a sheaf of functions) equipped with a Grothendieck topology, which are locally isomorphic to *affinoid* spaces.
The most basic example of an affinoid space: $\ZZ_p \injects \QQ_p$, locally compact but not compact, taking the $p\dash$adic disc (defined by an inequality in the norm) is affinoid. 
In general, points in a space satisfying norm inequalities and thus bounded, generalizing what happens in $p\dash$adic fields.

> Affinoid spaces will be analogous to CW complexes.

A Grothendieck topology (like the etale topology) will be a generalization of open sets to arbitrary categories by saying what it means for an object to cover another.
These restrict the coverings allowed by the general topology to those that appear in algebraic geometry.

Remark: 
A connected rigid $K\dash$analytic space $X$ has a in fact has a *field* of meromorphic functions $K(X)$, which is an important invariant.

Example:
Take a connected complex manifold, we can consider its meromorphic functions which is a sheaf that is locally given by quotients of holomorphic functions.

For $\Lambda \subset (K\units)^g$, the transcendence degree of $K(T(\Lambda))$ over $K$ is finite and $\leq g$ because $T(\Lambda)$ is a proper (similar to compact) $K\dash$analytic spaces.
There is a correspondence between curves and function fields, which we get whenever the transcendence degree is 1.
So this yields a good analog for complex torii.

Recall that if $T(\Lambda)$ is a complex torus implies that $0 \leq \deg_\CC^{\text{transc.}} \CC(T(\Lambda)) \leq g$, then there exists a universal quotient $A_n$ with $T\surjects A_n$.

Let $\Lambda = (K\units)^g$ and $\lambda\dual = \hom_\ZZ(\Lambda, \ZZ)$, then $T(\Lambda)$ is an abelian variety iff there exists a map $\sigma: \Lambda \to \Lambda\dual$ such that $\sigma(\gamma_1)(\gamma_2) = \sigma(\gamma_2)(\gamma_1)$ and $(\gamma_1, \gamma_2) \definedas - \log \abs{ \sigma(\gamma_2)(\gamma_1)}$ is positive definite.

Assume no that $K$ is a discretely valued valuation field, and abbreviate the identity component of the Néron special fiber as the Néron group ($g\dash$dimensional algebraic group over the special fiber which is an abelian variety iff good reduction)

Theorem
:   \hfill
    1. If $T(\Lambda)$ is an abelian variety, this it has split multiplicative reduction and the Neron group is isomorphic to $\GG_m^g / \Lambda$
    2. Conversely, if $A/K$ has split multiplicative reduction, then $A$ is isomorphic to an analytic torus.

We define $S/K$ to be a *semi-abelian* variety if $0 \to T \to S \to B \to 0$ where $T$ is a linear torus of dimension $u(s)$ and $B$ is an abelian variety of dimension $\beta(s)$.

Theorem
: If $(K, \abs{\wait})$ is a complete non-Archimedean field and $A/K$ a $g\dash$dimensional abelian variety then there exists a semi-abelian variety $0\to T\to S\to B \to 0$ of dimension $g$ which has potentially good reduction and a $g_K\dash$module $M \cong_\ZZ \ZZ^{u(s)}$ and $0 \to M \to S(K\sep) \to A(K\sep) \to 0$ where $\rk_\ZZ M^{g_k}$ (the invariants) is the split toruc ? of the Neron group of $A$ and for all $L/K$ the Néron groups of $S/L$ and $A/K$ are isomorphic.

> Note that we're taking the Néron group of a semi-abelian variety here, which is a generalization.

# Wednesday April 15th: Non-Archimedean Uniformization of Algebraic Curves

See Mumford 1972, or the Springer monograph "? Groups and Mumford Curves" which we'll attempt to summarize today.

Let $(K, \abs{\wait})$ be a complete discretely valued field with valuation ring $R$ and residue field $k$.

Definition
: A *Mumford curve* is a curve $C/R$ that is proper, flat, normal, and nice generic fibers $C/K$ where $C/k$ is semistable  and totally degenerate: each component $u$ is isomorphic to $\PP^1_k$, and the intersections of fibers are only transverse double points.

To such a curve we attach a *dual graph* $G(C)$ with vertices corresponding to components and edges corresponding to intersections between components.
We thus think of the special fiber as combinatorially object.

Blowing up such a curve stays within this class of curves, and for genus $>1$, there is a unique regular minimal model.
For an elliptic curve $E$, this says that $E$ has split multiplicative reduction.

For $C/k$ has genus $g\geq 1$, then the Euler characteristic of the dual graph $G$ is given by $\chi(G(C)) = 1-g$, the number of vertices minus the number of edges.

Example:
$E/k$ with split multiplicative reduction, given a minimal regular model, the dual graph is $C_n$.

For $C/k$ a genus $g$ Mumford curve, for $\Jac(C)$ the Néron group is $\GG_m^g/k$.
Thus the Jacobian of a Mumford curve has an analytic uniformization $(K\units)^g/\Lambda$


Theorem (Main Result)
: A curve $C/k$ admits an analytic uniformization iff it is a Mumford curve.

Similar to how abelian varieties admit uniformizations iff split multiplicative reduction.

Example
:   If $B/\QQ$ is a nonsplit indefinite quaternion algebra, which are classified by their discriminants $\disc B = D = p_1 \cdots p_n$.
    Then $X^D/\QQ$ is a Shimura curve, and for each $p$ dividing $D$, $X^D/\QQ_p$ is a Mumford curve and has an explicit $p\dash$adic uniformization (given by Cerdnik-Drinfeld?).

A quick opaque way is to define $\mch$ as the $p\dash$adic upper half plane for some (complicated) "connected" rigid analytic space, then $\mch(K) = \PP^1(\bar K) \setminus \PP^1(K)$.
There is a faithful action by some discrete subgroup $\Gamma \subset \PGL(2, K)$ on $\mch(K)$ by linear fractional transformations.
Every Mumford curve can be realized as $\Gamma \textbackslash \mch$.

Note that $\Gamma$ acts on $\PP \definedas \PP^1(E)$.

Definition
: A point $x\in \PP$ is a *limit point* of $\Gamma$ if there exists a $y\in \PP$ and distinct $\gamma_n$ in $\Gamma$ such that $\gamma_n y \to x$.

These are essentially the accumulation points of the orbits of $\Gamma$.
Define $\Lambda(\Gamma)$ be the set of all limit points, which turns out to be closed in $\PP$, and $U(\Gamma) - \PP\setminus \Lambda(\Gamma)$ the regular points.
Say that $\Gamma$ is *discontinuous* if $U(\Lambda) \neq \emptyset$ and every neighborhood of $\Gamma$ in $\PP$ has compact closure.

Definition
: A *Schotky group* is a discrete $\Gamma \subset \PGL(2, K)$ that is finitely generated and torsionfree.

Theorem 
:   \hfill 
    1. Every Schotky group is free on $g$ generators, each being a hyperbolic element of $\PGL(2, K)$, i.e. the two eigenvalues have distinct norms.
    2. Every discontinuous group has a finite index normal Schotky subgroup.

Here $\Gamma$ is a Schotky group of genus $g$ and $\Gamma$ acts freely on $U(\Gamma)$, which is open in $\PP^1$.
Since $\PP^1$ naturally has the structure of a $k\dash$analytic space, the space $\Gamma \textbackslash U(\Gamma)$ exists in the category of rigid $k\dash$analytic spaces, and is the analytic space associated to a genus $g$ Mumford curve $X/k$.
Conversely, every such $X/k$ arises from such a $\Gamma$.

> Analogy: properly discontinuous group actions. 
> For any point, taking a neighborhood and translating it by the group action yields only finitely many intersecting with the original neighborhood.

Example:
Take $K = \CC$ and $0 < \abs{q} < 1$.
Define $\Gamma = \gens{\gamma_q}$ where 
\begin{align*}
\gamma_q =
\begin{bmatrix}
q & 0 \
0 & 1
\end{bmatrix}
.\end{align*}
What is the subset of $\CC$ on which $\Gamma$ acts freely?
We see $0, \infty \in \PP^1(\CC)$ are the only fixed points, and at every other point $\Gamma$ acts discontinuously.
So $\Lambda(\Gamma) = \theset{0, \infty}$ and $U(\Gamma) = C\units$, and thus $\Gamma \textbackslash U(\Gamma) = q^\ZZ \textbackslash \CC\units$.
What is the fundamental domain for the $\Gamma\dash$action on $U(\Gamma)$?
It will be given by an annulus with the boundaries identified, which yields a torus.

In general, there will be $2g$ discs given by $A_1, B_1, \cdots, A_g, B_g$, so choose $\gamma_i \in \PGL(2 ,K)$ such that $\gamma_i$ maps $A_i^\circ \mapsvia{\cong} B_i^\circ$.
Then $\Gamma = \gens{\gamma_i}$ is a free group of rank $g$, and in fact a Schotky group.
Then $F(\Gamma) \definedas \PP^1 \setminus \union^{2g} D_i$ for $D_i$ open discs, then $F(\Gamma)$ is a fundamental domain for the action of $\Gamma$ on $U(\Gamma)$ and is a genus $g$ torus.

![](figures/image_2020-04-15-13-20-43.png)\

Note that this yields an affinoid space?
We can take the $\Gamma$ invariant meromorphic functions on $U(\Gamma)$, this will yield an extension of transcendence degree 1 that will be the function field of the curve.


# Friday April 17th

Let $X$ be locally compact and $\Gamma \actson X$ by homeomorphisms.
Recall that $\Gamma$ acts properly discontinuously at $x\in X$ iff there exists a neighborhood $N_x$ such that $\theset{\gamma\in \Gamma \suchthat \gamma\cdot N_x \cdot N_x \neq \emptyset}$ is finite.
Equivalently, th e orbit $\Gamma\cdot x$ is discrete in $X$ and the stabilizer $\Gamma^x$ is finite.
Moreover $\Gamma$ acts freely iff $\Gamma^x$ is trivial for all $x$.

Proposition
: For such $X, \Gamma$ as above, the map $X \to \Gamma/X$ is a galois covering iff $\Gamma$ acts freely and properly discontinuously.

> Note: Galois covering here is just the usual notion involving deck transformations.

This requires $\Gamma$ to be discrete, otherwise a sequence converging to the identity would have infinitely many neighborhoods converging on a neighborhood of the identity.

A *Fuchsian* group is a discrete subgroup of automorphisms of $\HH \subset \CC$, i.e. $\Gamma \subset \aut_\CC (\HH) = \PSL(2, \RR)$.

Fact
:   Every Fuchsian group acts properly discontinuously on all of $\HH$.
    Thus the discreteness which is necessary is also sufficient in this case.
    Then $\HH \to \Gamma \textbackslash \HH$ is a covering map and the action is free $\iff \Gamma$ has no elements of finite order.

Thus the complex structure (sheaf of holomorphic functions?) pushes forward to the quotient, giving it the structure of a Riemann surface.

Definition
: A *Kleinian* group is a discrete subgroup of $\PSL(2, \CC) = \PGL(2, \CC) = \aut_\CC(\PP^1)$.

Note that $\HH$ carries a hyperbolic structure, and this group precisely preserves it.

Define the regular set as $\ell(\Gamma) = \theset{x\in \PP^1 \suchthat  x \text{ acts freely and PDC}}$

Fact
: A Kleinian group is conjugate in $\PSL(2, \CC)$ to a Fuschian group if it stabilizes a circle in $\PP^1(\CC)$.

Exercise
:   Let $\Gamma = \gens{[q, 0; 0, 1]} \subset \PSL(2, \CC)$ and $\Lambda(\Gamma) = \PP^1\setminus \theset{\vector 0}$.
    Show $\Lambda(\Gamma)$ is open but could be empty, has either 0,1,2, or infinitely many connected components.

Exercise
:   Show that for $\Gamma = \PSL(2, \ZZ)$, $\Lambda(\Gamma) = \HH^+ \union \HH^-$.

If $U(\Gamma) \neq \emptyset$, then $\Lambda(\Gamma) \to \Lambda(\Gamma)/\Gamma$ is a galois covering that endows the quotient with the structure of a Riemann surface.

For $G$ a group and $X$ a set with a map $M: G\cross X \to X$, we say $X$ is a $G\dash$set.
We can make a category from this: given $(X, \mu_x)$ and $(Y, \mu_y)$, a $G\dash$map is given by a diagram

\begin{tikzcd}
G\cross X \ar[r, "\mu_x"] \ar[d, "\id \cross f"] & X \ar[d, "f"] \\
G\cross Y \ar[r, "\mu_y"]                        & Y
\end{tikzcd}


The set $X$ is transitive if for all $x, y\in X$, there is a $g\in G$ such that $gx = y$.
$X$ is *simply transitive* if this $g$ is unique.

Exercise
:   $G\cross G \mapsvia{\mu} G$ given by group multiplication is simply transitive.
    Conversely, any simply transitive $G\dash$set $X$ is isomorphic to $G$.
    Choosing $p_0 \in X$, consider the map $\phi: X\to G$ where $p \mapsto p - p_0$.

This is a torsor, i.e. a principal homogeneous space?

Example:
ODEs, the solutions for the inhomogeneous equation are torsors for the homogeneous solutions (?).


Let $k$ be a field and $G/k$ a commutative algebraic group.
A torsor (or principal homogeneous space) under $G$ is a nonempty $k\dash$variety $X/A$ equipped with a morphism $\mu: G\cross X \to X$ such that the following holds.

1st try: define $\mu(\bar k): G(\bar k) \cross X(\bar k) \to X(\bar k)$ to be a simply transitive action.
This is a good definition in characteristic zero.
In general, we have an isomorphism 
\begin{align*}
G\cross X &\to X
(g, x) &\mapsto (x, gx)
.\end{align*}
This is trivial iff $(X, \mu) \cong (G, \cdot)$ with its group structure.

Claim
:   $X$ is trivial $\iff X(k) \neq \emptyset$

Proof
:   $\implies: X \cong_K G$ and $G(k) \neq \emptyset$, so $X(k)\neq \emptyset$.
    \
    $\impliedby:$ Let $p_0 \in X(k)$, then the map 
    \begin{align*}
    \mu(\wait, p_0): G \to X
    \end{align*}
    is defined over $k$ and is a bijection on $X(\bar k)$, and thus an isomorphism in characteristic zero.

This implies that every $X$ under $G$ is a twisted form of $G$, i.e. $X/\bar k \cong G/\bar k$.


There's a group law on the torsors called the Baer sum, and a group structure yielding the Weil-Chevallet group.
Every torsor will be given by a galois cohomological cocycle.

# Monday April 20th

Today: torsors.

Let $k$ be a (perfect, separable) field and $G/k$ a commutative algebraic group (a finite type reduced group ?).

Definition
:   A variety $X/k$ is a *torsor under $G$* is $\mu: G\cross X \to X$ a group action such that the map

    \begin{align*}
    G\cross X \to X \cross X \\
    (g, x) \mapsto (\mu(gx), x)
    \end{align*}
    is an isomorphism.

For $\ell/k$ any field extension, the base change to $X/\ell$ induces $\mu_\ell$ making $X/\ell$ a $G/\ell$ torsor.
$X$ is trivial iff it is isomorphic to 
\begin{align*}
\mu: G\cross G &\to G \\
(g, hg) &\mapsto gh
.\end{align*}

Claim
: $X$ is trivial iff $X(k) \neq \emptyset$.

First "proof": for $p\in X(k)$, define $\mu(\wait, p): G \to X$.
Want to get a map $G(k\sep) \to X(k\sep)$, when does this happen?
In characteristic zero, we have some map $G\to X$ (???) which is surjective with trivial kernel and thus an isogeny but has not $k\sep$ points.
But this doesn't work in positive characteristic.

Second proof: the map $G\cross X \to X \cross X$ being an isomorphism says that upon base change on $X \to \spec k$, $X$ becomes isomorphic to $G$.
But then it also becomes isomorphic over base change for which $X$ is intermediate.
So if we have

\begin{tikzcd}
T \ar[rr] \ar[rd] &           & \spec k \\
                  & X \ar[ur] &
\end{tikzcd}

which factors through $Y$, if $p\in X(k)$ then $\spec k\to X$ and thus $X/k \cong G/k$.

The form of the assumed isomorphic implies that the base change of the $G\dash$torsor $X$ from $\spec k$ to $X$ is trivial as a $G\cross X$ torsor over $X$.

$\qed$

For $k$ a field, $G/k$, an equivalent definition would be that a $G$ torsor is $X/k$ with a $G$ action that becomes trivial over $k\sep$.
Therefore A $G$ torsor $X$ is a $k\sep /k$ twisted form of $X$ where $X/k\sep \cong G/k\sep$.

Example:
Let $G = E$ an elliptic curve, and $X/k$ is a nice curve of genus 1, but $X(k)$ is likely empty.
Conversely, given such a curve of genus 1, we can take the Picard variety $\underline{\Pic}^0 X$, i.e. the Jacobian.
Then there is an isomorphism
\begin{align*}
X &\mapsvia{\cong} \underline{\Pic}^1 X \\
p &\mapsto [p]
.\end{align*}

So every nice curve is a torsor for its Jacobian (?).
Note that in higher dimensions, we'd need to take the albanese, and the same statement would work: every abelian variety is a torsor over its albanese.

For $G/k$ commutative, we can make the set of torsors $X$ for $G/k$ modulo equivalence into a commutative group.
We define the Weil-Chatelet group of $G/k$ as $WC(k, G)$. 
For two torsors, we can define the *Baer sum* $X_1 \oplus X_2$ by first defining a map 
\begin{align*}
\mu_{\pm}: G\cross \qty{X_1 \cross X_2} &\to X_1 \cross X_2 \\
(g, x_1, x_2) &\mapsto (\mu_1(g, x_1), \mu_2([-1]g, x_2)  )
\end{align*}
and defining $X_1 \oplus X_2 = \qty{X_1 \cross X_2} / \mu_{\pm}$.
Then the action $\mu_{\pm}$ on $X_1 \oplus X_2$ is a $G$ torsor.

This makes $WC(k , G)$ into a commutative group where $\mu: G\cross G\to G$ defines $[-1](X, \mu) \definedas (X, \mu([-1]\wait  ))$.

Exercise
:   For $C/k$ a nice genus one curve, $G = E = \underline{\Pic}^0 C$ and $C = \underline{\Pic}^1 C$.
    Show that $n[C] \underline{\Pic}^n C$.

> Note that by adding divisor classes, there is a map $\underline{\Pic}^1 C \cross \underline{\Pic}^1 C \to \underline{\Pic}^2 E$.

Corollary
:   For $E/k$ an elliptic curve, $WC(k, E)$ is a torsion abelian group iff for all genus 1 curves $C$, there exists an $n\in \ZZ^{\geq 0}$ such that $\qty{\underline{\Pic}^n C}(k) \neq \emptyset$.

We can define the *period* of an elliptic curve as the least $n$ for which the torsor becomes trivial, this is an interesting numerical invariant.

Next up: cocycles and descent.

# Wednesday April 22nd

Remarks:

1. In the category of $G\dash$sets, we have $\aut_{G\dash\text{set}}(G) = G$ where $G$ acts on itself by translation.

2. For $k$ a field, $G/k$ a smooth algebraic group, $X/k$ a variety, $\mu: G\cross X \to X$ is a torsor iff the map
  \begin{align*}
  \phi: G \cross X &\to X\cross X \\
  (g, x) &\mapsto (\mu(g, x), x)
  \end{align*}
    is an isomorphism.
  Letting $G_X \definedas G\cross X, X_X \definedas X\cross X$ be the base changes, this asks for a commuting diagram
  
  \begin{tikzcd}
  G_X \cross_X G_X \ar[r, "\mu_{G_X}"] & G_X \ar[d, "1\cross \phi"] \\
  G_X \cross_X X_X \ar[r, "\mu_{X_X}"] & X_X
  \end{tikzcd}
  
  thus the base change to $X$ is the trivial $G\dash$torsor on $X$.


Suppose $G$ is commutative and recall we have a Weil-Chevalley group $WC(k, G)$.
Question:
What is the difference between a twisted form $X/k$ of $G/k$ and a torsor under $fG/k$?

Better question:
Suppose $(X, \mu) \in WC(k, G)$.
How many other elements of $WC(k, G) \ni (X', \mu)$ have $X' \cong_k X$?

Recall that $\wait [(X, \mu)] = (X, \mu([-1]\circ \wait, \wait)  )$.
Letting $G = E$ an elliptic curve, we can consider the subtraction map
\begin{align*}
v: X\cross X &\to E \\
(p, g) &\mapsto g
\end{align*}

with $p= g+q$ iff


\begin{tikzcd}
\underline{\Pic}^1 X \cross \underline{\Pic}^1 X  \ar[rr, "v"]\ar[rd, "v"]
& & E \\ 
&  \underline{\Pic}^0 X  \ar[ru, dotted] &
\end{tikzcd}


For $X/k$ a nice genus one curve, $E/k$ an elliptic curve, $\mu: E\cross X \to X$ is a torsor iff the map $\underline{\Pic}^0 X \to E$ is an isomorphism.
Therefore two elements $X_1, X_2 \in WC(k, E)$ are isomorphic iff $X_1, X_2$ lie in the same $\Aut(E)\dash$orbit of $WC(k, E)$.

Remarks:
Thus the torsors over $E$ aren't much more interesting than $E$ itself.
E.g. characteristic zero, $j\neq 0, 1728$, you just mod out by $\pm 1$.
There is a version of this for abelian varieties.

- $WC(k, E) = (0) \iff$ every genus 1 curve with Jacobian $E$ has a $k\dash$rational point.
- $\forall E/k WC(k, E) = (0) \iff$ every genus 1 $C/k$ has $C(k) \neq\emptyset$.

Example
: For $k = \bar k$, all nonempty $V/k$ have $V(k) \neq \emptyset$.

Example
:   Say a $k$ is *pseudo algebraically closed* iff every geometrically integral $V/k$ has a $k\dash$rational point, i.e. $V(k) \neq \emptyset$.
    E.g., if $k$ is *separably closed* it is pseudo algebraically closed.

Example
:   For $k = \FF_q$ a finite field, if $X/k$ is nice of genus $g$, then $$\abs{\# X(\FF_q) - (q + 1)} \leq 2g \sqrt q.$$
    Thus for $g=1$, for elliptic curves, we get $$q+1 - 2\sqrt q \leq \# X(\FF_q) \leq q+1 + 2\sqrt{q}$$ and since $q>2$, the number of points is strictly positive.

Example (Non-Example)
:   Take $C: y^2 = P_4(x) \in k[x]$ for $P_4$ a separable degree 4 polynomial.
    Look at $C \mapsvia{x} \PP^1$, and define the *index* $I(C)$ of a genus 1 curve $C/k$ to be the least positive degree of a $k\dash$rational divisor on $C$, equivalently the gcd of degrees of closed points on $C$.

Exercise
: If $C$ is a genus 1 curve, then $C$ is given by $y^2 = P_4(x)$ iff $C$ has a $k\dash$rational divisor of degree 2 iff $I(C) \in \theset{1, 2}$.

Exercise
: If $C: y^2 = ax^4 + bx^3 + cx^2 + dx + e$, then $C(k)$ is ? iff there exists $x, y\in k$ such that $y^2 = P_4(x)$ or $a\in k\units$ is a square.

Example
:   Take $k=\RR$ and $C: y^2 = - \qty{x^4 + 1}$.
    The leading term is negative, and not a square, and the point at $\infty$ doesn't need to be check (this would yield exactly 2 real points, thus not a 1-dimensional real manifold).
    Thus $C$ is a nontrivial element of $WC(\PP, \underline{\Pic}^0 C)$.

Exercise
:   Let $p$ be a prime number and find $P_4(x) \in \QQ_p[x]$ such that $y^2 = P_4(x)$ has no $\QQ_p\dash$points.

    > Try not choosing $p=2$, and try polynomials in $\ZZ[x]$ and apply Hensel's lemma.

Exercise
:   If $C: F(x, y,z) = 0$ is a nice plane cubic curve over $k$
    
    a. Show that $C/k$ admits such a defining equation iff it has a rational divisor of degree 3 iff $I(c) \in \theset{1, 3}$.

    b. Take $k= \QQ_p$ and find $C/k$ with no $k\dash$rational points.

For $G/k$ a smooth (commutative, but not necessary) group, $X/k$ a $G\dash$torso, choose $p\in k\sep$.
Then defining $g\definedas \aut(k\sep / k)$, then $X(k\sep)$ has two actions: a galois action $g\actson$ the left, and a $G(k\sep)$ action on the right.
For all $\sigma \in g$, there exists a unique $a_\sigma \in G(k\sep)$ such that $\sigma p = p a_{\sigma}$.

This defines a map $a_\bullet: g\to G(k\sep)$ -- however, this is not a group morphism, it is a "twisted" version.
For $\sigma, \tau \in g$, by definition we have $p_{a_{\sigma \tau}} = \sigma \tau p = \sigma(\tau p) = \sigma (P a_\tau) = \cdots$ and we can conclude $$ a_{\sigma \tau} = a_\sigma^\sigma a_\tau, $$ which is in fact a 1-cocycle.


