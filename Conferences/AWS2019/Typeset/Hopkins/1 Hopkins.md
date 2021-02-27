# Lubin-Tate Spaces, Day 1

Some prerequisite things to know about:
- Lubin-Tate space
- Abelian extensions 
- Chern classes
- Stacks
- p-adic fields
- Witt vectors
- Equivariance
- Picard group
- Morava stabilizer group
- Cartan formula

# Motivation

We start with a classical theorem.

**Theorem (Kronecker-Weber):**  All abelian Galois extensions of $\QQ$ are just equal to $\QQ[\zeta_n]$ for $\zeta_n$ an $n\dash$th root of unity.

The analog of roots of unity are points of finite order in the multiplicative group.

Modified by Lubin-Tate, showed you can get all of the totally ramified extensions of p-adic fields by adding points of finite order by using formal groups.

Properties of a formal group law (see posted notes):
- Unital
- Commutative
- Associative

Behaves like a 1-dimensional Lie group in an appropriate category, i.e. a group object in this category.

**Question**: can we count/classify formal groups? And how do we construct them?

**Theorem (Lazard):** There is a functor
$$
F: R \to \theset{\text{formal group laws over }R}
$$

where $F$ is representable as 
$$
\hom(\ZZ[x_1, x_2, \cdots, x_n], R) \in \mathbf{Ring},
$$ 
i.e. ring homomorphisms from a polynomial ring into the ring $R$.

# How Formal Groups are Used in Algebraic Topology

These show up in general cohomology theories $E$ with Chern classes in $\CC\dash$line bundles. So for each vector bundle $V \surjects X$, there are characteristic classes 
$$
c_i(X) \in E^{2n}(X)
$$ 
which satisfy the **Cartan formula.**

Although we have 
$$
c_n(V \oplus W) = \sum_{i+j=n} c_i(V)c)j(W),
$$

it is not generally true that for line bundles $L_i$
$$
c_n(L_1 \tensor L_2) = c_n(L_1) + c_n(L_2),
$$

although this does work for ordinary homology theories.
> Does this mean the technical definition of "ordinary homology theory"?

**Theorem (Quillen):** The proper formula is given by
$$
c_n(L_1 \tensor L_2) = c_n(L_1) +_F c_n(L_2),
$$
where $F$ is a formal group law.

He also showed that for some cohomology theories (e.g. complex cobordism, which is the universal cohomology theory for which there are Chern classes for complex line bundles), $F$ is in fact Lazard's formal group law.

There is a spectral sequence
$$
H^i(\mathcal M_{FG}, \omega^j) \Rightarrow \pi_{2j-i}S^0 = \lim_{n\to\infty}\pi_{2j-i+n}S^n,
$$

where the LHS is essentially the cohomology of a moduli space with coefficients in the section of a line bundle.

The object $\mathcal M_{FG}$ is a **moduli stack of formal group laws,** thought of as a category or even just a space quotiented by a group action (so like an orbifold). The space is the Lazard space of infinitely many sequences of elements in the ring $R$ (equivalent to formal group laws over $R$), modulo isomorphism.

The object $\omega^j$ is a section of line bundle, the dual of the Lie algebra, $(\mathrm{Lie} F)^\dual$, i.e. the space of invariant differentials on the formal group $F$. To obtain this, just take the tangent space at the identity in $\mathcal M_{FG}$.

> This allows us to have an algebraic interpretation of $F$, given by definitions and formulas, and a geometric object, as a group structure on a line.

We can thus understand something about homotopy groups of spheres by knowing something about the modui space of all formal groups.

# Invariants
We first define the height of a formal group. 

Let $k$ be a field of characteristic $p>0$ and suppose we have a homomorphism between two formal groups,
$$
f: G_1 \to G_2.
$$

Then there is a *unique* unit $g(x)$ where $g'(0)\neq 0$ and some $q = p^a$ (some power of $p$) such that $f(x) = g(x^q)$ (where $a$ could be infinity). 

The **height** of a formal group $F$ is this value of $a$ for the homomorphism
$$
f: F \to F \\
x \mapsto px.
$$

Note that the height is an isomorphism invariant of formal groups. 

**Theorem:** If $k$ is perfect and algebraically closed, this is a *complete* invariant.

# Deforming Away from $p$
We know what happens in characteristic $p$, so now we try to deform away from $p$ -- this is what yields the Lubin-Tate deformation space. 

Here's the setup:

Let $k$ be a field of characteristic $p>0$ with a formal group law over $k$ given by $\Gamma$. We know $\Gamma$ is classified by its height, but what happens over other rings? Let $B$ be a complete local ring with maximal ideal $\mathrm m$ (i.e. $\mathrm m$ is nilpotent, or it is topologically complete wrt powers of $\mathrm m$).

The data of a deformation is given by $(G, i, f)$ where $G$ is a formal group over $B$, where
$$
k \mapsvia{i} G/\mathrm m \xleftarrow{p} G
$$

and $f: G \to i^* \Gamma$ is an isomorphism given by regarding $\Gamma$ as a formal group over $G/\mathrm m$.
> Should this be $p^*$...?

We can make this into a category, which we'll call $\mathrm{Deform}_\Gamma (B)$. This is a codiscrete groupoid, so there is at most one map between any two objects. This means there is at most one isomorphisms between any two deformations, and so if two formal groups $G, G'$ induce the same homomorphism mod $\mathrm m$, then they are in fact the same.

We immediately replace it by taking its $\pi_0$, which yields the set of isomorphism classes of its objects.

**Theorem:** Let $n$ be the height of $\Gamma$, then
$$
\pi_0 \mathrm{Deform}_\Gamma(B) \cong \mathrm m ^{n-1}.
$$

This says that this deformation space is just a product of the maximal ideal. (This isomorphism is natural.)

This gives you a method: start in characteristic $p$, deform it through other rings in characteristic $p$ to get to characteristic zero. Then each time you deform there are only $n-1$ "deformation parameters".

This doesn't completely classify formal groups -- this space has points yielding information if two deformations are isomorphic specifically by an isomorphism *covering the identity,* but we want to know if they're just abstractly isomorphic (perhaps by an isomorphism not over the identity). So we mod out by equivalences which don't necessarily cover the identity.

Note that we have extra information: $\pi_0 \mathrm{Deform}_\Gamma(B)$ as a set is acted on by $\aut k$, i.e. the Galois group of $k$, as well as $\aut \Gamma$. What we really want to understand is $\mathrm m^{n-1} / \aut \Gamma$.

> In Algebraic Topology, there is a way of writing the cohomology groups $H^i(\mathcal M_{FG}, \omega^j)$ in terms of the cohomology of $\Gamma$ acting on something. This corresponds to a decomposition, i.e. chromatic homotopy theory.

Since the above isomorphism was natural, we can consider the universal deformation, which will be over the ring
$$
E_0 W[[x_1, x_2, \cdots x_{n-1}]]
$$

of formal power series in $n-1$ variables over the Witt vectors of $k$, which is the Lubin-Tate deformation space. Ring homomorphisms involving this represent the functor we are after.

We write $\aut \Gamma = S_n$, the $n\dash$th Morava stabilizer group, which acts on
$$
E_* \definedas E_0[x, x^{-1}].
$$

In Algebraic Topology, we're interested in the cohomology rings
$$
H^*(\aut \Gamma; E_0),\\
H^*(\aut \Gamma; E_*).
$$

Everything we know about these is a results of explicit computation, so we'd like a better theoretical understanding. 

**Question:** Can we explicitly write down the action $\aut \Gamma \actson E_0$? There is some information that comes from the "crystalline period map", we also know this explicitly for any finite subgroup of $\aut \Gamma$.

**Question:** What is the Picard group of Lubin-Tate space, i.e.
$$
H^1(\aut \Gamma; E_0^\times)
$$

where the coefficients are now just in the group of units? 

**Conjecture:** for $n=2$ or $n\geq 5$, it is topologically generated by two explicit elements -- but no theoretical way to get at it. See calculation in problem sets.

It is also the case that for $n=2, p\geq 3$,
$$
H^*(\aut \Gamma; W) \mapsvia{\cong} H^*(\aut \Gamma; E_0),
$$

where $W$ is just the constant functions on Lubin-Tate space while the RHS is *all* such functions.

Note -- we can get a lot of mileage out of replacing the ring of formal functions with the ring of entire p-adic analytic functions. This lets you understand the action via an etale map to $\PP(k, {n-1})$, which relates this to $\GL(n)\dash$equivariant line bundles on the [drinfeld upper half plane](https://en.wikipedia.org/wiki/Drinfeld_upper_half_plane). This provides a way of describing line bundles in two different ways, but we don't yet know how to pass between them. 
$\qed$