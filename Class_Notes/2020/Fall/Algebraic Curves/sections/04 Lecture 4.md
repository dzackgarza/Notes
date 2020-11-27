# Lecture 4 

## One Variable Function Fields (Ch. 1)

Since we have the field-theoretic preliminaries out of the way, we now start studying one-variable function fields in earnest.
The main technique that we use to extract the geometry will be the theory of valuations.
These may be familiar from NTII, but we will cover them in more generality here.

### Valuation Rings and Krull Valuations

Recall that NTII approach to valuations:

:::{.definition title="Valuation"}
A **valuation** on a field $K$ is a map $v:K\to \RR\union \ts\infty$ such that $v(K\units) \subset \RR$, $v(0) = \infty$, and $v$ is of the form $-\log(\abs{\wait})$ where $\abs{\wait}: K \to [0, \infty)$ is an *ultrametric norm*.[^efficient_valuation]
Recall that an *ultrametric norm* satisfies not only the triangle inequality but the ultrametric triangle inequality, i.e. $d(x, z) \leq \max(x, z)$.

[^efficient_valuation]: In other words, $e^{-v(\wait)}$ is an ultrametric norm.

:::

We now take an algebraic approach to this definition, where we'll end up replacing $\RR$ with something more general.

:::{.definition title="Valuation Ring"}
A subring $R$ of a field $K$ is a **valuation ring** if for all $x\in K\units$, at least one of $x$ or $x^{-1}$ is in $R$.
:::

:::{.remark}
This is a "largeness" property. 
It also implies that $K = \ff(R)$.
:::

:::{.definition title="Group of Divisibility"}
Given any integral domain $R$ with fraction field $K$, the **group of divisibility** $G(R)$ is defined as the *partially ordered commutative group*[^compatibility_note]

\[  
G(R) \da K\units / R\units
.\]
We will write the group law here additively.
The ordering is given by $x\leq y \iff y/x \in R$.

[^compatibility_note]: This means that the two structures are compatible.

:::

:::{.remark}
Note that the way the partial order is written, it's a relation on $K\units$, but it is not quite a partial ordering there.
It is reflexive and transitive, but need not be antireflexive: if $x/y, y/x\in R$ then $x,y$ differ by an element of $u\in R\units$ so that $x=uy$.
In particular, they need not be equal.
This gives a structure of a *quasiordering*, and if you set $x\sim y \iff x\leq y$ and $y\leq x$, this leads to an equivalence relation, and modding out by it yields a partial order.
Here this is accomplished by essentially trivializing units.
\

Another way to think of $G(R)$ is as the nonzero principal fractional ideals of $K$, since any two generators of an ideal will differ by a unit.
:::

:::{.remark}
Inside this group there is a *positive cone* $G(R)^+$ of elements that are "nonnegative": since we're in a commutative setting, the zero element is equal to 1, and the positive cone is given by $\ts{y\geq 0} = \ts{y\in R}$, and is thus given by the group $G(R)^+ = (R, \cdot)$.
\

This is very general: if you're studying factorization in integral domains, many properties are reflected in $G(R)$.
E.g. being a UFD (the most important factorization property!) implies that $G(R)$ is a free commutative group.
:::

:::{.remark}

In general this is only a *partially* ordered group and not totally ordered. 
For example, take $R = \ZZ$ and $x=2, y=3$, then neither of $2/3, 3/2$ are in $\ZZ$, so $x\not\leq y$ and $y\not\leq x$.
On the other hand, if we do have a total order, then either $x$ or $x^{-1}$ is in the ring, which are exactly valuation subring of a field.
:::

:::{.claim}
$R$ is a valuation ring $\iff$ $G(R)$ is totally ordered.
:::

:::{.remark}
Note that $\RR$ is a totally ordered group.
:::

This makes $G(R)$ the "target group" of a generalized analytic valuation.
Whenever we have a valuation ring, we have a totally ordered commutative group, and the valuation $v: K\units \to G(R)$ is a quotient map which we can extend to $K$ by $v(0) \da \infty$.
This has some familiar properties:

- (VRK1) For all $x,y\in K\units$,[^just_a_group_hopmp]

\[  
v(xy) = v(x) + v(y)
.\]

- (VRK2) For all $x,y \in K\units$ such that $x+y\neq 0$,
\[  
v(x+y) \geq \min(v(x), v(y))
.\]



[^just_a_group_hopmp]: This follows from the fact that the quotient map is a group morphism.
Note that the additive notation makes this more suggestive of what an original valuation satisfied.

For ultrametric norms, all triangles are isosceles: is that true for this type of function?
The answer is yes, by the following exercise: 

:::{.exercise title="?"}
If $v(x) \neq v(y)$, then $v(x+y) = \min(v(x), v(y))$.
:::

So the properties here are formally identical to the NTII notion of valuation, with $(\RR, +, \leq)$ replaced by $(G(R), +, \leq)$.

:::{.exercise title="?"}
Conversely, if $v: K\units \to G$ is a map into a totally ordered commutative group satisfying VRK1 and VRK2[^krull_valuation], then
\[  
R_v \da \ts {x\in K\units \st v(x) \geq 0} \union \ts{0}
\]
is a valuation ring.[^exc_hint_num1]
We can thus extract valuation rings in this situation.

[^krull_valuation]: Any such map satisfying these two properties is a **Krull valuation**, Krull's generalization of classical valuations.

[^exc_hint_num1]: Note that in a totally ordered group, either $v(x) \geq 0$ or $-v(x) \geq 0$, so we get the property that either $x, x^{-1} \in R_v$.

:::


:::{.exercise title="?"}
A valuation ring is **local**, i.e. there is a unique maximal ideal
\[  
\mathfrak{m}_v \da \ts{x\in K\units \st v(x) > 0} \union \ts{0}
.\]
:::

:::{.remark}
These two constructions are morally mutually inverse.
This doesn't hold on the nose, since there is extraneous data in the new analytic valuation.
Recall that in NTII we have a notion of equivalence of norms, and two distinct norms that are equivalent can give rise to the same valuation.
For example, given a valuation, one can scale it by $\alpha \in \RR$, and it's easy to check that this gives the same valuation.
It is possible for the valuation not to surject onto $\RR$, but this doesn't happen in practice.
The image is usually infinite cyclic, what we call a *discrete valuation*, and so one is led to the definition of the *value group* of the valuation as its image.
If you have a notion of equivalence of Krull valuations, you want to allow for isomorphisms of the value group.
The cleanest notion of equivalence is thus the following:
:::

:::{.definition title="Equivalence of Krull valuations"}
Two Krull valuations on a field $K$ are **equivalent** iff their valuation rings are *equal*.
:::

:::{.remark}
Going back to NTII, if you have two nonarchimedean norms on a field, then there are many equivalent conditions for equivalence, and this is one of them.
:::

Some general valuation theory:

- Every totally ordered commutative group is a group of divisibility.[^tot_ord_comm_div]

- A totally ordered group has **rank 1** if it is nontrivial and embeds into $\RR$
  - If the value group is trivial, $R = K$

- A Krull valuation of rank at most 1 is the NTII notion of a valuation.

[^tot_ord_comm_div]: Pete's Commutative Algebra Notes, Ch. 17.10
 

:::{.exercise title="?"}
For $n\geq 2$, put the lexicographic order on $\ZZ^n$, and show this has rank strictly larger than 1.
Thus $\ZZ^n\injects \RR$ as a commutative group, but not as a totally ordered commutative group.
:::

:::{.remark}
In fact, for any ordered group $G$, one can attach a rank: a cardinal number $r(G)$.
Here, $r((\ZZ^n, \text{lex})) = n$.
This is useful when studying $\spec(R)$ for $R$ a DVR.
:::

A valuation of rank bigger than 1 does not induce a norm on $K$ in the metric sense, although this is not so important.
A closer notion is expanding the notion of a metric space by allowing the metric to be defined on $X$ as $d: X\cross X \to R$ for some $R$ more general than $\RR$, like a totally ordered group or a nonarchimedean field.
This would yield a class of topological spaces that are reminiscent of metric spaces.

:::{.definition title="Important: Regular and Centered"}
Let $v:K\units \to (G, +)$ be a Krull valuation and let $A \subset K$ be a subring of $K$.
Then $v$ is **$A\dash$regular** or **centered in $A$** if $A$ is a subset of some valuation ring $R_v$.
In this case, $\mathfrak{p} \da \mathfrak{m}_v \intersect A \in \spec(A)$ is denoted the **center of $v$ in $A$**.[^pullback_hom]

[^pullback_hom]: 
Here $\mathfrak{m}_v$ denotes pulling back the maximal ideal along this morphism of rings.

:::

:::{.remark}
The term regularity here arises because we'll want to think of elements of $A$ as functions and the valuation as a type of point, then the notion of being a regular function at a point will carry over.
The center is the subset of $A$ with strictly positive valuation.
Also recall that pulling back prime ideals yields prime ideals, and maximal ideals are a special kind of prime ideal, but in general pulling back a maximal ideal may not result in another maximal ideal.
So somehow the valuation affects every subring on which it is regular.
:::

:::{.definition title="Key: Zariski-Riemann Space"}
For $A \subset K$, define
\[  
\Sigma(K/A) &\da \ts{\text{valuation rings } A \subset R \subsetneq K \st K = \ff(R)} \\
\tilde \Sigma(K/A) &\da \ts{\text{valuation rings } A \subset R \subseteq K \st K = \ff(R)}
.\]
The set $\tilde \Sigma(K/A)$ is the **Zariski-Riemann space**.
:::

:::{.remark}
Note that in this definition, we're taking all $A\dash$regular valuation rings $R$ in $K$.
If someone says $R$ is a valuation ring of $K$, they likely mean that $K = \ff(R)$.
Note that fields are valuation rings, so otherwise, any subfield of $K$ would also be a valuation ring of $K$.
Here, $K$ itself plays the role of a generic point. (?)
The only difference in these two definitions is that in the first, the trivial valuation ring is being excluded.
:::

:::{.definition title="Key: Places, Points of a Curve"}
If $K/k$ is a one variable function field[^def_function_field_reminder]
, then $\Sigma(K/k)$ will be the **points of the associated algebraic curve** or **places**.
These can be thought of as valuation rings, or equivalence classes of Krull valuations, where two valuations are equivalent if they have the same valuation ring.

[^def_function_field_reminder]: Finitely generated field extension of transcendence degree one.

:::

:::{.remark}
In terms of scheme theory, these will be the closed points of our algebraic curve.
We will view elements $f\in K$ as meromorphic functions on $\Sigma(K/k)$.
:::

:::{.definition title="Zariski Topology"}
The **Zariski topology** on $\Sigma(K/A)$ has a sub-base
\[  
\ts{U(f) \st f\in K } && U(f) \da \ts{v\in \tilde \Sigma(K/A) \st v(f) \geq 0} = \tilde \Sigma(K/ A[f])
.\]
and we thus take the minimal topology such that all of these sets are open.
In other words, every open set is a finite intersection and/or arbitrary unions, including empty intersections/unions.
The last term is precisely the subring generated by $A$ and $f$.
Thus a base is $U(f_1, \cdots, f_n) = \tilde \Sigma(K / A[f_1, \cdots, f_n])$.
The Zariski topology on $\Sigma(K/A)$ is defined the same way and/or via the subspace topology, since this removes a single point.
:::

:::{.remark}
We thus get the subrings of $K$ that contain $A$ and are finitely generated as $A\dash$algebras.
We'll be specifically looking at the case where $A$ is a field and $K$ is a one variable function field.
:::

:::{.theorem title="Zariski"}
$\tilde \Sigma(K/A)$ is quasi-compact.
:::

:::{.proof title="?"}
See Mazamara (?) in the chapter discussing valuation rings.
:::

Note that by definition, $v_n \not\in \Sigma(K/A)$.
In $\tilde \Sigma(K/A)$, we have a trivial valuation $v_n$ whose value group is trivial and valuation ring is $K$ itself, and $v_n$ is a generic point of $\Sigma(K/A)$: its closure is the entire space.
In other words, it is in every nonempty open subset.
Since we have at least one generic point, and in general there may be many, if $\abs{\tilde\Sigma(K/A) > 1}$ then this is not a separated ($T_1$) space since the point is not closed.[^French_note_separated]
Another example of such a space would be $\spec(R)$ for $R$ a commutative ring with positive Krull dimension, which will be Kolmogorov ($T_0$) but not separated.
Such a spectrum is the underlying topological space of some affine scheme, and in general, schemes will have these kinds of properties that are bad (but not *too* bad).

[^French_note_separated]: Note that in French, separated may be interpreted as Hausdorff, but here we mean points are closed or equivalently any two distinct points admit open neighborhoods that do not meet the other point.

In our case of interest, when $K/k$ is finitely generated of transcendence degree one, we'll see that this is the cofinite topology on an infinite space: the proper closed subsets are precisely the finite subsets, or equivalently every nonempty open subset has finite complement.
This is far from Hausdorff: the intersection of two open subsets will still have finite complement, so any two nonempty open subsets must intersect.
\

It's not generally true that just removing the generic point $v_n$ will make the space separated, but in our case, it will be.
So if we restrict to nontrivial valuation rings, then the underlying set will be infinite and we'll get the cofinite topology.
This will be the coarsest separated topology, i.e. if you want singletons to be closed, finite subsets must be closed.
If $k \subset A \subset K$ where $A$ is a Dedekind domain with fraction field $K$, we will see that if we consider not the $k\dash$regular elements but the $A\dash$regular ones, we'll get $\Sigma(K/A) = \maxspec(A)$ and both Zariski topologies are cofinite.
Note that in a Dedekind domain, trading in a prime spectrum for a max spectrum is removing a generic point, so this matches up.
The moral: the topology of $\Sigma(K/k)$ is not doing anything interesting and we won't need it much.

When $K/k$ instead has transcendence degree *bigger* than 1, then $\tilde \Sigma(K/k)$ is much more interesting.
If we were doing things scheme-theoretically, we could try to define a structure sheaf: attaching a sheaf whose stalks are local commutative rings to make it a locally ringed space.[^Schemes_in_rings_spaces]
Here, the choice of a ring is straightforward: literally $\tilde \Sigma(A, A[f_1, \cdots, f_n])$.
There's an exercise that shows that although defining a sheaf on the entire space is somewhat annoying, defining it on a basis suffices.

:::{.exercise title="?"}
Endow $\tilde \Sigma(K/k)$ with the structure of a locally ringed space.
:::

:::{.remark}
In dimension 1 (the case we're studying), the corresponding Zariski-Riemann space will be the scheme associated to the complete nonsingular model of the curve.
So this valuation-theoretic approach will take you from the function field back to a nice model of the scheme itself.
But note that in larger dimensions, there is no unique complete nonsingular model -- for example, you can blow any one up to get another -- so this pattern can't possibly continue to hold.
In fact, it's not clear if we even know if there's *one* such model!
:::

[^Schemes_in_rings_spaces]: Schemes are a full subcategory of the much larger category of locally ringed spaces.


:::{.remark}
Thus in dimension $>1$, you get something that is decidedly not a scheme, but is still relevant to the study of resolution of singularities for your function field.
Where do these come up?
Zariski used $\Sigma(K/A)$ to prove resolution of singularities [^resolution_of_singularities]
in characteristic zero and dimensions 2 and 3 in 1944, although dimension 2 was classical by the Italian school.
Later, Hironaka (1984) got the Fields medal for proving resolution of singularities for all dimensions in characteristic zero using an ingenious inductive argument that avoided Zariski-Riemann spaces entirely.
It remarkably doesn't use any new objects/tools, just uses existing ones in a clever way.
So why talk about Zariski-Riemann spaces at all?
In the last 10 years or so, work of Ternkin and Conrad has revived and generalized them.
They study *relative* such spaces.

[^resolution_of_singularities]: Resolving means given $K/k$, we want to find a complete nonsingular affine variety whose function field is $K$.

:::

:::{.problem title="Open"}
In positive characteristic, resolution of singularities is only known up to dimension $\leq 3$.
:::

The following is an extremely important result from commutative algebra:

:::{.theorem title="CA 17.17"}
Let $A \subset K$ be a subring of a field, then 
\[  
\intersect_{v\in \tilde \Sigma(K/A)} R_v
,\]
the intersection of all valuation subrings of the field, is the integral closure of $A$ in $K$.
:::

The proof is mostly a Zorn's lemma type of argument.
Note that each $R_v$ is generally big, contains $A$, and $\ff(R_v) = K$.
Moreover, each valuation ring is integrally closed, although we haven't proved this yet.

:::{.corollary title="?"}
For $K/k$  function field, $\intersect_{v\in \Sigma(K/k)} R_v = \kappa(K)$, the constant subfield of $K$.
:::


:::{.proof title="?"}
Note that $\kappa(K)$ is the integral (algebraic) closure of $k$ in $K$.
Applying the theorem directly almost works, except the theorem involves $\tilde \Sigma$.
Can we remove the tilde?
Suppose not, this can only happen if $\Sigma(K/k) = \emptyset$ and the intersection is just $K$ itself, the largest thing in the intersection.
But can the integral closure of $k$ in $K$ be $K$ itself?
No, since the transcendence degree of the function field is positive.
So $K/k$ is transcendental, while $\kappa(K) / k$ is an algebraic extension, a contradiction.
:::

:::{.remark}
Note that $\Sigma(K/k)$ is nonempty: there is a nontrivial valuation ring between $k$ and $K$ in great generality, and there are often many.
:::


:::{.claim title="Key"}
If $\trdeg(K/k) = 1$, then every $v\in \Sigma(K/k)$ is discrete and thus has value group isomorphic to $\ZZ$.
:::

So despite the fact that we've introduced a more general notion of higher rank valuations, in dimension 1, every single valuation is discrete.


:::{.proof title="?"}
Let $v\in \Sigma(K/k)$ be a place, so its a valuation ring with fraction field $K$ that is not $K$, then $R_v$ is not a field.
So its maximal ideal $\mathfrak{m}_v$ is nonzero, so choose a nonzero element $t\in @\mathfrak{m}_v$.
Then $t
:::
