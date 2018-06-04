# Homotopy Theory and the Hopf Fibration

## Introduction
- Who am I?
- Link to undergraduate research


## Algebraic Topology
- Homeomorphisms and classification
	- Partition of $\mathbf{Top}$ into homeomorphism types
- Why it's interesting to study
	- Understanding + classification
	- Some practical applications
- The method of algebraic invariants


## Homotopy Theory
- What is a homotopy
- Homotopy equivalence of spaces
	- Partition of $\mathbf{Top}$ into homotopy types
- Weak equivalences
- Homotopy category
	- Obtained by 'localizing' at weak equivalences
	- Categorical version, recover module localization by localizing at multiplication maps

# Fibrations
- Use in homotopy theory (algebraic side)
	- The homotopy lifting property + uniqueness
		- Allows pushing homotopies upstairs
		- Use: covering space theory
	- Every map can be replaced by a fibration
		- $X \to_f Y$ factors through $M_f = X \times I \cup_f Y$ via a homotopy equivalence
			- See diagram for $M_f$, can also interpret it as the pullback of the endpoint map on $Y$, i.e. $Y^I \to Y, \gamma \mapsto \gamma(1)$.
	- Fibrations induce LES in homotopy
	- Modern categorical work:
		- Follows late work of Grothendieck (~1990)
		- Model categories, defined by weak equivalences and (co)fibrations
		- Generalizes both homotopy theory and homological algebra
		- Derived and $(\infty, n)$ categories for small  $n$ (See Jacob Lurie's work)
		- Homotopy hypothesis, a categorical equivalence between $\mathbf{Top}$ and $\infty\mathbf{Groupoid}$
- Use on the geometric side: Fiber Bundles
	- Fibration, but drop uniqueness and add local triviality
		- Locally a product: see cylinder vs mobius strip
	- Most immediately useful applications: vector bundles. Most canonical example: tangent bundle on a manifold
		- Tangent space at a point: think of circle in $\mathbb{R}^3$ now, a tangent vector at a point is somewhere on a line. Rotate up for a cylinder
		- More generally: a plane touching a blob
		- Allows doing calculus: if $f: M \to N$ is a $C^1$ function, then one can define the derivative as $DF: TM \to TN$
	- Interlude on why Manifolds are important (more than just theoretically)
		- Random sampling: can suppose that the underlying dimension has a manifold structure
		- Nonlinear fitting: instead of fitting to a line or projecting to nearby planes, fit to an arbitrary smooth shape
		- Dimensionality reduction: replace PCA, Linear Discriminant Analysis, etc with projections onto a low dimensional manifold
		- Currently making it's way into machine learning, see [scikit-learn](http://scikit-learn.org/stable/modules/manifold.html)

## The Hopf Fibration
- Explanation of fibrations
	- Fiber bundles: cylinder vs mobius strip
- $S^1 \to S^3 \to S^2$
- Stereographic projection
	- Image
- Visualization: [Hopf Fibration Tool/Tutorial](http://philogb.github.io/page/hopf/)
	- Explain that this is stereographic projection from $S^3$ to $\mathbb{R}^3$
- Visualization: [Hopf Shader](https://www.shadertoy.com/view/MstfDs)
	- Explain inner torus
	- Explain larger space-filling foliations

## Interesting Results
- $\pi_3(S^2) = \mathbb{Z}$
- $\pi_4(S^2) = \mathbb{Z}_2$
