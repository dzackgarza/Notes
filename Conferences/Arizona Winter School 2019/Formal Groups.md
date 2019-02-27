A *formal group law* is an intermediate notion between a Lie group and a Lie algebra, being slightly more general than a Lie algebra, which has a product operation that can be represented entirely in terms of formal power series.

To flesh this out, note that a common fact from Lie theory is that there is an equivalence of categories
$$
\left\{ \begin{array}{c} \text{simply connected} \\ \text{real Lie groups} \end{array} \right\} \iff \left\{ \text{real Lie algebras} \right\}.
% ToDo: make a macro for this
$$

Taking the lie algebra $\mathfrak g$ of a lie group $G$ is viewed as a "linearization" of $G$, and amounts to studying $G$ in some neighborhood of the identity. We'd like to translate this to the setting of algebraic groups, but this process fails in characteristic $p$ and results in too much loss of information.

So we instead look for an intermediate structure $\mathcal F$ that is between a lie group and its lie algebra; schematically,
$$
G \to \mathcal F \to \mathfrak g
$$

These appear in Topology when considering "complex oriented cohomology theories" evaluated on $\CP^\infty$, and in particular in complex cobordism cohomology. They are also useful in class field theory to construct something called the "local Artin map". In characteristic zero, every formal group is completely determined by a corresponding Lie algebra. Moreover, a formal group is a group object in the category of formal schemes.

In Lie groups, once we choose coordinates around the identity, the multiplication on the Lie group can be expressed using power series. This procedure gives us a formal group law. 

Given a lie algebra $\mathfrak g$ over a field $k$, a *deformation* of $\mathfrak g$ is another lie algebra $\mathfrak a$ over a $k\dash$algebra $A$, along with an isomorphism
$$
\phi: \mathfrak g \to \mathfrak a \tensor_A k
$$

Terms to lookup and define

- Spectrum
- Lazard ring
- Adams-Novikov spectral sequence
- Stack
- Quasi-coherent sheaf
- Representation of a group
- Nilpotent
- Ramified