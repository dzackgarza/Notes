[../Subjects/Algebraic Topology](../Subjects/Algebraic%20Topology.md)
[../../Talks Index](../../Talks%20Index.md)

# Homotopy Theory and the Hopf Fibration

## Introduction
- Who am I?
- Explain ties to undergraduate research


## Algebraic Topology
- Homeomorphisms and classification
	- Partition of $\mathbf{Top}$ into homeomorphism types
- Measure holes in spaces
- Why it's interesting to study
	- Understanding + classification
	- Some practical applications
		- Topological data anaylsis - given an incomplete sample, can we determine holes in the data set? (i.e. where data is not generated)
		- Sensor networks - find holes in covered regions
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
		- 3D printing: every object needs to be a manifold!
	- Classifying bundles: another way to distinguish spaces
		- Classifications turn up in homology - see $\mathbb{Z}_2$ in relation to $\RR \to M \to S^1$
		- Continues spirit of Klein's Erlangeng program - classify geometries by associated automorphism groups
	- A section of a vector bundle is just a vector field - classifying sections yields number of independent vector fields
		- Yields results like the hairy ball theorem: there is no non-vanishing tangent vector field on $S^2$
	- Also yields a method of studying connections on bundles (important in physics)

## The Hopf Fibration
- $S^1 \to S^3 \to S^2$
	- A family of circles, parameterized by a sphere
	- The hopf map is $S^3 \to S^2$, and the preimage of a point on $S^2$ is circles
	- A nontrivial bundle, i.e. $S^3 \neq S^1 \times S^2$ (different homotopy groups)
- Stereographic projection
	- See image/diagram
- How do you get the map?
	- Identify $\mathbb{R}^4 = \mathbb{C}^2$ and $\mathbb{R}^3 = \mathbb{R} \times \mathbb{C}$ and cook up a map $(z_1, z_2) \mapsto (z_3, r)$
	- Then check all points in image have norm 1, so are on $S^2 \subset \mathbb{R}^3$
	- Then check preimage of a point, find any two points in preimage are related by a phase, so are on a circle
- Visualization: [Hopf Fibration Tool/Tutorial](http://philogb.github.io/page/hopf/)
	- Explain that this is stereographic projection from $S^3$ to $\mathbb{R}^3$
- Visualization: [Hopf Shader](https://www.shadertoy.com/view/MstfDs)
	- Explain inner torus
		- Move a point around $S^2$ and look at all of the preimage circles - generates an intertwined torus (after projection)
	- Explain larger space-filling foliations
		- Move points away from center of $S^2$
- Not nullhomotopic!
- Can suspend to yield generators of stable homotopy groups, important for studying cobordism

## Interesting Results
- $\pi_3(S^2) = \mathbb{Z}$
	- Huge surprise! Mathematicians did not expect any nontrivial higher homotopy groups
	- ![asdsa](figures/homotopyGroupsStabilize.png)
	- Compute using spectral sequence $F \to E \to B$ a fibration results in
	  $$E_2^{p,q} = H^p(B, H^q(F; G)) = H^p(B;G) \tensor H^q(F; G)$$
		- ![asdas](figures/838f4c41e48b25a7bed35abc7e7d950e_1.svg)
- $\pi_4(S^2) = \mathbb{Z}_2$
- $\pi_{\geq 3} S^3 = \pi_{\geq 3} S^2$
- How to compute