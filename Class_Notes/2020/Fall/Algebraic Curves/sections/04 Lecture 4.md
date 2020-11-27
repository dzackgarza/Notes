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



[^just_a_group_hopmp]: This follows from the fact that the qutoeitn map is a group morphism.
Note that the additive notation makes this more suggestive of what an original valuation satisfied.

For ultrametric norms, all triangles are isosceles: is that true for this type of function?
The answer is yes, by the following exercise: 

:::{.exercise title="?"}
If $v(x) \neq v(y)$, then $v(x+y) = \min(v(x), v(y))$.
:::

So the properties here are formally identical to the previous notion of valuation, with $(\RR, +, \leq)$ replaced by $(G, +, \leq)$.

