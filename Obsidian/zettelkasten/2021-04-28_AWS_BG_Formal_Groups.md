---
date: 2021-04-28 17:03:34
tags: 
  - Unfiled
---

A *formal group law* is an intermediate notion between a Lie group and a Lie algebra, being slightly more general than a Lie algebra, which has a product operation that can be represented entirely in terms of formal power series.

To flesh this out, note that a common fact from Lie theory is that there is an equivalence of categories
$$
\left\{ \begin{array}{c} \text{simply connected} \\ \text{real Lie groups} \end{array} \right\} \iff \left\{ \text{real Lie algebras} \right\}.
% ToDo: make a macro for this
$$

Taking the lie algebra $\mathfrak g$ of a lie group $G$ is viewed as a "linearization" of $G$, and amounts to studying $G$ in some neighborhood of the identity. We'd like to translate this to the setting of algebraic groups, but this process fails in characteristic $p$ and results in too much loss of information.

So we instead look for an *intermediate* structure $\mathcal F$ that is somehow between a lie group and its lie algebra; schematically,
$$
G \to \mathcal F \to \mathfrak g,
$$

and a formal group is such an $\mathcal F$ that ends up retaining enough information to work.

The analog of studying $G$ near the identity $e$ is taking the completion of $G$, given by 
$$
\widehat G \definedas \spec (\widehat{\mathcal O_{G, e}}),
$$

where $\mathcal O_{G,e}$ is the stalk at the identity. This object turns out to be a group scheme which captures information about $G$ locally near $e$, and is both captures enough information to be useful and is easy enough to study.

Thus a formal group is a natural setting in which to study objects like $\widehat G$.

Formal groups appear in Topology when considering "complex oriented cohomology theories" evaluated on $\CP^\infty$, and in particular in complex cobordism cohomology. They are also useful in class field theory to construct something called the "local Artin map". In characteristic zero, every formal group is completely determined by a corresponding Lie algebra. Moreover, a formal group is a group object in the category of formal schemes.

In Lie groups, once we choose coordinates around the identity, the multiplication on the Lie group can be expressed using power series. This procedure gives us a formal group law. 

Given a lie algebra $\mathfrak g$ over a field $k$, a *deformation* of $\mathfrak g$ is another lie algebra $\mathfrak a$ over a $k\dash$algebra $A$, along with an isomorphism
$$
\phi: \mathfrak g \to \mathfrak a \tensor_A k
$$

In general, the deformation theory of an object provides a way of studying the smoothness of the moduli space of such objects.
