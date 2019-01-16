# Benson Farb

[Part 2: Surface bundles, mapping class groups, moduli spaces, and cohomology](https://www.youtube.com/watch?v=E_Ly2NWX1g8)

29th Workshop in Geometric Topology, Oregon State University, June 29, 2012

- Talk about the theory surface bundles.
  - This talk: not so much related to his personal work!
  - Will revisit

Throughought: $\Sigma_g$ a connected oriented $g\geq 2$ surface, will look at $\Sigma_g\dash$ bundles given by 
$$
\Sigma_g \to E \mapsvia{\pi} B
$$

(Fiber bundle where the base and total space will usually be compact manifolds, fiber is a surface)

For any $f\in \mathrm{Diff}(\Sigma_g)$, take cylinder on $\Sigma_g$ and glue ends via $f$ to obtain a 3-manifold and the surface bundle 
$$
\Sigma_g \to M_f^3 \mapsvia{\pi} S^1
$$

Every 3-manifold that fibers over the circle is of this form! Why?Can remove a point from $S^1$ to get a trivial bundle.

Another way to build bundles: take a representation $\rho \pi_1 B \to \mathrm{Diff}(\Sigma_g)$, let $E = \tilde B \cross \Sigma_g / (x,y) \sim (g.x, \rho(g)(y)$ (standard construction) where $\tilde B$ is the universal cover of $B$.

Generalizes previous example: take real line cross surface and mod out by deck transformations.

Such bundles are called flat $\Sigma_g$ bundles, exactly those which admit flat connections.

Note on connections: there's a map $TE \mapsvia{\pi} TB$, can look at $\ker \pi$ which is a 2-plane bundle over $E$


---

[Part 3: Reconstruction problems in geometry and topology](https://www.youtube.com/watch?v=X0XBnKBKSDI)

- Work-in-progress!

Geometric motivation: a map $\phi \RR^n \to \RR^n$ if there is a matrix $A \in \GL(n, \RR)$ such that $\exists \vector{w} \in \RR^n :\forall \vector{v} \in \RR^n, \phi(\vector{v}) = A \vector{v} + \vector{w}.$

In other words, a composition of a linear map and a translation. Takes lines to lines, planes to planes.

Fundamental Theorem of Affine Geometry:
Suppose you have a set map that is a bijection $\Phi: \theset{\text{affine subspaces of } \RR^n, \dim \geq 0} \selfmap$ which satisfies
$$
P_1 \subseteq P_2 \implies \Phi(P_1) \subseteq \Phi(P_2),
$$

then for $n\geq 3$, $\Phi$ is induced by a unique affine map $\phi$.

Much easier theorem: if you start with a bijective set map $\RR^n \selfmap$ which takes lines to lines, then it's affine. (Darboux 1800s)

Importance: proving [Mostow rigidity](https://en.wikipedia.org/wiki/Mostow_rigidity_theorem) (related to rigidity of lattices, semi-simple Lie groups, etc); many have seen in real hyperbolic case, but in higher rank cases (more important) for lattices in $\SL(n, \RR)$, this is a key ingredient in the proof.

A variation: suppose $\Phi: \theset{\text{lines in } \RR^n} \selfmap$ is a bijection. Look at $n=2$ case.

Suppose that for all distinct lines $L_1, L_2, L_3$, triple intersections are preserved:
$$
L_1 \intersect L_2 \intersect L_3 \neq \emptyset \iff \Phi(L_1) \intersect \Phi(L_2) \intersect \Phi(L_3) \neq \emptyset,
$$

then $\Phi$ is induced by an affine map $\phi$.

Remark: false if $\Phi$ only preserves double points (and not triple points).

Double intersections aren't quite enough, see figure 1. #todo add from phone

Proof:
1. Construct a candidate set map bijection $\phi: \RR^2 \to \RR^2$ inducing $\Phi$.
2. Apply Darboux' theorem: such a $\phi$ taking lines to lines and bijective is affine. (Note: many think this is the definition of affine!). Try to prove!

Pick a point $p$, and any two lines $l_1, l_2$ going through it. Define $\Phi(p)$ as the intersection of $\Phi(l_1) \intersect \Phi(l_2$). Is it well-defined? can have 3 lines pairwise intersecting in the image, but could be 3 different points. Need an assumption (i.e. preserving triple intersections).

Punchline: Helle's theorem, in any collection of convex subsets of $\RR^n$, if any $n+1$ intersect then all intersect.

# The Topology Side
feat. Dan Margalit

Theorems they proved:
What is a homeomorphism?

Fix an $n\dash$manifold $M$, $n\geq 2$ let 
$$
S = \mathrm{Emb}(S^{n-1}, M) / \mathrm{Homeo}(S^{n-1}),
$$

the space of embedded spheres in $M$ as subsets, so 
$$
S = \theset{ \text{subsets of } M \text{ homeomorphic to } S^{n-1} }.
$$

# Theorem 1: A homeomorphism takes embedded spheres to embedded spheres. 

Suppose $\Phi: S \to S$ is bijective, and $\forall X, Y \in S$,
$$
X \intersect Y = \emptyset \iff \Phi(X) \intersect \Phi(Y) = \emptyset
$$

then there exists a unique homemorphism  $\phi: M \selfmap$ inducing $\Phi$.

Need manifold assumption - counterexample, take $Z$ to be two discs glued at two distinct points. Then $\exists \theset{\text{loops in } Z}\selfmap$ bijective, preserves disjointness, but is not induced by any homeomorphism.
Take any homeomorphism of a disc $\phi$ such that $\phi^2 = \id$ that exchanges the glued points. Then do the identity on the other disc. 

Turns out this counterexample doesn't quite work! Take a figure 8 at a glue point extending into both discs, the homeomorphism will separate it into two loops.

# Theorem 2: Suppose you have a bijective set map $\Phi: \theset{\text{loops in } \RR^3}$ that preserves "linking", i.e. 
$$
L(\gamma_1, \gamma_2) \neq 0 \implies L(\Phi(\gamma_1), \Phi(\gamma_2)) \neq 0
$$

Then $\Phi$ is induced by a unique homeomorphism $\phi: \RR^3 \to \RR^3$.

# Proof outline of theorem 1:
Given $\Phi:S \to S$ a bijection preserving disjointness, need to construct a unique $\phi: M \selfmap$ inducing $\Phi$.

Useful to encode disjointness: let $\Gamma_n$ be a graph with vertices for each $X\in S$ and edges connecting $X,Y \iff X\intersect Y = \emptyset$. Can restate the theorem as
$$
\Aut(\Gamma_n) \cong \mathrm{Homeo}(M)
$$

Step 1: Start looking at separation and nesting properties. $X \subset M$ is separating $\iff \mathrm{Link}_{\Gamma_n}(X)$ is a join, where the Link of $X$ is the set of all vertices that are disjoint from $X$.

*#todo What is a Link? What is a join?*

> Note: technique is listing topological properties that are true, then creating a dictionary  from topological properties of the manifold into properties of your graph. Similar to when working on [Tit's Buildings](https://en.wikipedia.org/wiki/Building_(mathematics)#Bruhat-Tits_trees_with_complex_multiplication).

Step 2: $\Phi$ preserves "betweenness", i.e. $Y$ is between $X$ and $Z$ iff for any sphere intersecting both $X$ and $Z$ also intersects $Y$. (These preserved topological properties will be preserved under automorphisms of the graph!)

Step 3: Look at embedded isotopies, $H: I \to S$ (note that we can use the compact-open on $S$) such that each $H_t \definedas H(t)$ is embedded and $\union_{t\in I} H_t(S^{n-1})$ is an embedded $S^{n-1} \cross I$ (i.e. embedded families of spheres with a preferred foliation by codimension 1 spheres.)

Getting the associated graph-theoretic property. Let $H: I \to S$ be an injective set map (want to say when it is continuous and embedded in terms of disjointness).

Need four properties:
- Disjointness: $H(r) \intersect H(s) \neq \emptyset \iff r=s$
- Order-preserving: $r\leq s \leq t \implies H(s)$ is between $H(r), H(t)$.
- No gaps: Every $\gamma \in S$ intersects some $H(t)$ for some $t\in I$.
- Continuity/vary continuously: For all $\gamma \in S,~\theset{t \in I \mid H(t) \intersect \gamma \neq \emptyset}$ is closed.

Step 4: $\Phi$ preserves foliated punctured discs.

Not as easy as it looks - want to show that the image limits to a point, as opposed to e.g. a tree (don't have to wory about it limiting to a sphere due to the bijective correspondence.)

Uses limiting families of sphere to detect separation, linking, etc!

Possible extensions:
- What is a symplectomorphism?
- What is a covering map?
- (Just go through Munkres book and list the maps!)