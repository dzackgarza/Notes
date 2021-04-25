[TOC]

# Difference between low and high dimensional topology
High-dimensional topology refers to manifolds of dimension 5 and above, or in relative terms, embeddings in codimension 3 and above. Low-dimensional topology is concerned with questions in dimensions up to 4, or embeddings in codimension up to 2.

The distinction is because surgery theory works in dimension 5 and above (in fact, it works topologically in dimension 4, though this is very involved to prove), and thus the behavior of manifolds in dimension 5 and above is controlled algebraically by surgery theory. In dimension 4 and below (topologically, in dimension 3 and below), surgery theory does not work, and other phenomena occur.

The precise reason for the difference at dimension 5 is because the Whitney embedding theorem, the key technical trick which underlies surgery theory, requires 2+1 dimensions.

Low-dimensional topology is strongly geometric, as reflected in the uniformization theorem in 2 dimensions – every surface admits a constant curvature metric; geometrically, it has one of 3 possible geometries: positive curvature/spherical, zero curvature/flat, negative curvature/hyperbolic – and the geometrization theorem in 3 dimensions – every 3-manifold can be cut into pieces, each of which has one of 8 possible geometries.

# Characteristic Classes
A characteristic class is a way of associating to each principal bundle on a topological space $X$ a cohomology class of $X$. The cohomology class measures the extent to which the bundle is "twisted" — particularly, whether it possesses sections or not. In other words, characteristic classes are global invariants which measure the deviation of a local product structure from a global product structure. They are one of the unifying geometric concepts in algebraic topology, differential geometry and algebraic geometry.

Let $G$ be a topological group, and for a topological space $X$, write $bG(X)$ for the set of isomorphism classes of principal G-bundles. This $bG$ is a contravariant functor from Top (the category of topological spaces and continuous functions) to Set (the category of sets and functions), sending a map $f$ to the pullback operation $f*$.

A characteristic class $c$ of principal $G$-bundles is then a natural transformation from $bG$ to a cohomology functor $H*$, regarded also as a functor to Set.

In other words, a characteristic class associates to any principal $G$-bundle $P → X$ in $bG(X)$ an element $c(P)$ in $H^* (X)$ such that, if $f : Y → X$ is a continuous map, then $c(f^* P) = f^* c(P)$. On the left is the class of the pullback of $P$ to $Y$; on the right is the image of the class of $P$ under the induced map in cohomology.

When the theory was put on an organized basis around 1950 (with the definitions reduced to homotopy theory) it became clear that the most fundamental characteristic classes known at that time (the Stiefel–Whitney class, the Chern class, and the Pontryagin classes) were reflections of the classical linear groups and their maximal torus structure.

The prime mechanism then appeared to be this: Given a space $X$ carrying a vector bundle, that implied in the homotopy category a mapping from $X$ to a classifying space $BG$, for the relevant linear group $G$. For the homotopy theory the relevant information is carried by compact subgroups such as the orthogonal groups and unitary groups of $G$. Once the cohomology ${\displaystyle H^* (BG)}$ was calculated, once and for all, the contravariance property of cohomology meant that characteristic classes for the bundle would be defined in ${\displaystyle H^* (X)}$ in the same dimensions.

Characteristic numbers solve the oriented and unoriented bordism questions: two manifolds are (respectively oriented or unoriented) cobordant if and only if their characteristic numbers are equal.

# Schoenflies Problem

A sharpening of Jordan curve theorem. It states that not only does every simple closed curve in the plane separate the plane into two regions, one (the "inside") bounded and the other (the "outside") unbounded; but also that these two regions are homeomorphic to the inside and outside of a standard circle in the plane.

# Uniformization Theorem

The uniformization theorem says that every simply connected Riemann surface is conformally equivalent to one of the three Riemann surfaces: the open unit disk, the complex plane, or the Riemann sphere. In particular it implies that every Riemann surface admits a Riemannian metric of constant curvature.

For compact Riemann surfaces, those with universal cover the unit disk are precisely the hyperbolic surfaces of genus greater than 1, all with non-abelian fundamental group; those with universal cover the complex plane are the Riemann surfaces of genus 1, namely the complex tori or elliptic curves with fundamental group $Z_2$; and those with universal cover the Riemann sphere are those of genus zero, namely the Riemann sphere itself, with trivial fundamental group.

The uniformization theorem is a generalization of the Riemann mapping theorem from proper simply connected open subsets of the plane to arbitrary simply connected Riemann surfaces.

Every Riemann surface is the quotient of a free, proper and holomorphic action of a discrete group on its universal covering and this universal covering is holomorphically isomorphic (one also says: "conformally equivalent" or "biholomorphic") to one of the following:

1. the Riemann sphere
2. the complex plane
3. the unit disk in the complex plane.

In 3 dimensions, there are 8 geometries, called the eight Thurston geometries. Not every 3-manifold admits a geometry, but Thurston's geometrization conjecture proved by Grigori Perelman states that every 3-manifold can be cut into pieces that are geometrizable.

# Principal Bundles

A principal bundle is a mathematical object that formalizes some of the essential features of the Cartesian product $X × G$ of a space $X$ with a group $G$. In the same way as with the Cartesian product, a principal bundle $P$ is equipped with

An action of $G$ on $P$, analogous to $(x, g)h = (x, gh)$ for a product space.
A projection onto $X$. For a product space, this is just the projection onto the first factor, $(x,g) ↦ x$.

A principal $G$-bundle, where $G$ denotes any topological group, is a fiber bundle $π:P → X$ together with a continuous right action $P × G → P$ such that $G$ preserves the fibers of $P$ (i.e. if $y ∈ P_x$ then $yg ∈ P_x$ for all $g ∈ G$) and acts freely and transitively on them. This implies that each fiber of the bundle is homeomorphic to the group $G$ itself.

Since the group action preserves the fibers of $π:P → X$ and acts transitively, it follows that the orbits of the $G$-action are precisely these fibers and the orbit space $P/G$ is homeomorphic to the base space $X$. Because the action is free, the fibers have the structure of $G\dash$torsors. A $G$-torsor is a space which is homeomorphic to $G$ but lacks a group structure since there is no preferred choice of an identity element.

**One of the most important questions regarding any fiber bundle is whether or not it is trivial, i.e. isomorphic to a product bundle.** A principal bundle is trivial if and only if it admits a global cross section.

## Examples

The prototypical example of a smooth principal bundle is the frame bundle of a smooth manifold $M$, often denoted $FM$ or $GL(M)$. Here the fiber over a point $x ∈ M$ is the set of all frames (i.e. ordered bases) for the tangent space $T_xM$. The general linear group $GL(n,\RR)$ acts freely and transitively on these frames. These fibers can be glued together in a natural way so as to obtain a principal $GL(n,\RR)$-bundle over $M$.

A normal (regular) covering space $p:C → X$ is a principal bundle where the structure group

$$G=\pi _{1}(X)/p_* (\pi_{1}(C))$$

acts on the fibers of p via the monodromy action. In particular, the universal cover of $X$ is a principal bundle over $X$ with structure group $π_1(X)$ (since the universal cover is simply connected and thus $π_1(C)$ is trivial).

## Classification

Any topological group $G$ admits a classifying space $BG:$ the quotient by the action of $G$ of some weakly contractible space $EG$, i.e. a topological space with vanishing homotopy groups. The classifying space has the property that any $G$ principal bundle over a paracompact manifold $B$ is isomorphic to a pullback of the principal bundle $EG → BG$.

In fact, more is true, as the set of isomorphism classes of principal $G$ bundles over the base $B$ identifies with the set of homotopy classes of maps $B → BG$.
