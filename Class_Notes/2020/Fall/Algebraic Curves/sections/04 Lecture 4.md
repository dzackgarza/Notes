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
Given any integral domain $R$ with fraction field $K$, the **group of divisibility** $G(R)$ is defined as the partially ordered commutative group 
\[  
G(R) \da K\units / R\units
.\]
We will write the group law here additively.
The ordering is given by $x\leq y \iff y/x \in R$.
:::

:::{.remark}
Note that the way the partial order is written, it's a relation on $K\units$, but it is not quite a partial ordering there.
It is reflexive and transitive, but need not be antireflexive: if $x/y, y/x\in R$ then $x,y$ differ by an element of $u\in R\units$ so that $x=uy$.
In particular, they need not be equal.
This gives a structure of a *quasiordering*, and if you set $x\sim y \iff x\leq y$ and $y\leq x$, this leads to an equivalence relation, and modding out by it yields a partial order.
Here this is accomplished by essentially trivializing units.
\

Another way to think of $G(R)$ is as the nonzero principal fractional ideals of $K$, since any two generators will differ by a unit in $R$.
:::


