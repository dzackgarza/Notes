**Benson Farb**

- [Part 2: Surface bundles, mapping class groups, moduli spaces, and cohomology](#part-2-surface-bundles-mapping-class-groups-moduli-spaces-and-cohomology)
  - [Monodromy as a Complete Invariant](#monodromy-as-a-complete-invariant)
  - [Characteristic Classes](#characteristic-classes)
  - [The "Signature Cocycle"](#the-%22signature-cocycle%22)
  - [Another Cocycle](#another-cocycle)
- [Part 3: Reconstruction problems in geometry and topology](#part-3-reconstruction-problems-in-geometry-and-topology)
  - [Fundamental Theorem of Affine Geometry](#fundamental-theorem-of-affine-geometry)
  - [Importance](#importance)
  - [The Topology Side](#the-topology-side)
  - [Theorem 1: A homeomorphism takes embedded spheres to embedded spheres.](#theorem-1-a-homeomorphism-takes-embedded-spheres-to-embedded-spheres)
  - [Theorem 2: A Homeomorphism takes loops to loops](#theorem-2-a-homeomorphism-takes-loops-to-loops)
  - [Proof Outline of Theorem 1](#proof-outline-of-theorem-1)
    - [Step 1](#step-1)
    - [Step 2](#step-2)
    - [Step 3](#step-3)
    - [Step 4](#step-4)

# Part 2: Surface bundles, mapping class groups, moduli spaces, and cohomology
[Link to Video](https://www.youtube.com/watch?v=E_Ly2NWX1g8)

29th Workshop in Geometric Topology, Oregon State University, June 29, 2012

- Talk about the theory surface bundles.
  - This talk: not so much related to his personal work!
  - Will revisit

Throughout: $\Sigma_g$ a connected oriented $g\geq 2$ surface, will look at $\Sigma_g\dash$ bundles given by
$$
\Sigma_g \to E \mapsvia{\pi} B
$$

(Fiber bundle where the base and total space will usually be compact manifolds, fiber is a surface)

For any $f\in \mathrm{Diff}(\Sigma_g)$, take cylinder on $\Sigma_g$ and glue ends via $f$ to obtain a 3-manifold and the surface bundle
$$
\Sigma_g \to M_f^3 \mapsvia{\pi} S^1
$$

Every 3-manifold that fibers over the circle is of this form! Why? Can remove a point from $S^1$ to get a trivial bundle.

Another way to build bundles: take a representation $\rho: \pi_1 B \to \mathrm{Diff}(\Sigma_g)$, let $$E = \tilde B \cross \Sigma_g / (x,y) \sim (g.x, \rho(g)(y))$$ (standard construction) where $\tilde B$ is the universal cover of $B$.

Generalizes previous example: take real line cross surface and mod out by deck transformations.

Such bundles are called flat $\Sigma_g$ bundles, exactly those which admit flat connections.

> Note on connections: there's a map $TE \mapsvia{\pi} TB$, can look at $\ker \pi$ which is a 2-plane bundle over $E$. Take the kernel of $E \mapsvia{f} B$ is obtain a "vertical" 2-plane bundle, horizontal is not well-defined and so is a choice of a 2-plane field. Flat means curvature vanishes is equivalent to Frobenius integrability theorem - the 2-plane is integrable. So curvature measures how integrable the 2-plane field is, rephrases "when is a 2-plane tangent to a foliation".

One organizing problem: classify surface bundles over a fixed closed base manifold up to

- Bundle isomorphism
  - Fiber-wise homeomorphism, but doesn't actually permute any fibers
  - Covering the identity map
- Homeomorphism
- Diffeomorphism
- Homotopy-equivalence
- Fiber-wise Homeomorphism
  - Homeomorphism that takes fiber to fiber
- Symplectomorphism
- Biholomorphism
  - Total spaces are complex manifolds

B.F. proved algorithmic computability for bundle iso, homeo and even fiberwise homeo is unsolvable.

Why study $\Sigma_g$ bundles?

1. The simplest nonlinear bundle theory (i.e. structure group is not just $\GL(n)$, it is $S^1$)
2. For 3-manifolds: almost all (e.g. all hyperbolic) closed 3-manifolds are finitely covered by some $M_f^3$ surface bundle
   1. Famous conjecture of Thurston! Very recent
      1. His fields medal was finding a single hyperbolic structure on a closed 3-manifold fibering over the circle.
3. For 4-manifolds: huge class of symplectic manifolds.
   1. Perpendicular to work of Mike Friedman, these fundamental groups all contain free groups
   2. Donaldson: All closed symplectic 4-manifolds are Lefschetz fibrations (!!)
4. AG: $\mathcal M$ moduli spaces of Riemann surfaces, decompose problems about varieties to problems about families of algebraic curves (i.e. what we call surface bundles)

The main invariant for these bundles: **The Monodromy Representation**

Let $\mathrm{Mod}(\Sigma_g)$ be the mapping class group of the surface, i.e. $\pi_0(\mathrm{Diff}^+ \Sigma_g)$) (group of homotopy/isotopy classes of diffeos on the surface).

Representation from earlier can be projected:
$$
\pi_1 B \to \mathrm{Diff}^+ \Sigma_g \mapsvia{\pi} \mathrm{Mod}(\Sigma_g)
$$

Take a homeomorphism to its homotopy class, Mod is finitely generated.

> In AG, the mapping class group is the orbifold fundamental group of $\mathcal{M}$, and this is a $K(\pi_1)$ space in the appropriate category.

So any bundle $\Sigma_g \to E \to B$ yields a corresponding monodromy representation
$$
\rho: \pi_1 B \to \mathrm{Mod} \Sigma_g
$$

Look at LES in homotopy, the map $\pi_2 B \to \pi_1 F$ has image in the center, but $\pi_a \Sigma_g$ is centerless, yielding a SES.

For any SES of groups, you can get a representation $\pi_1 B \to \mathrm{Out} \pi_1 F$

Can produce a map $\mathrm{Mod} \Sigma_g \to \mathrm{Out}\pi_1 \Sigma_g$ by applying a homeomorphism to $\pi_1$, might move the basepoint, but these are isomorphic groups (classical theorem).

Question: when does the representation lift?

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\begin{document}
\begin{tikzcd}
 &  & \mathrm{Diff}^+ \Sigma_g \arrow[dd] \\
 &  &  \\
\pi_1 B \arrow[rr] \arrow[rruu, "?" description, dotted] &  & \mathrm{Mod} \Sigma_g
\end{tikzcd}
\end{document}
```

Equivalently, is every bundle flat? No, but this is an open question when the base is a surface (i.e. for all we know, every representation could lift). Conjectured that for the Kodaira manifold, it is not flat. Big problem, because this is perhaps the simplest nonlinear connection.

## Monodromy as a Complete Invariant

Classifying space theory: there exists a (crazy) space $\mathrm{BDiff}^+\Sigma_g$ such that
$$
\theset{\text{iso classes } \Sigma_g \to E \to B} \iff [B, \mathrm{BDiff}^+ \Sigma_g]
$$

Model: general construction, just find any contractible space on which $\mathrm{Diff}$ acts freely and take the quotient. One that works: $\mathrm{Emb}(\Sigma_g, \RR^\infty)$.

Not useful yet, because we don't know what $\mathrm{BDiff}$ is.

Some serious math, theorem of Eels-Earle 1969:
- For surfaces $g\geq 2$, $\mathrm{Diff}_0(\Sigma_g)$ (the diffeos isotopic to the identity) is homotopy-equivalent to a point!
    - Note: can write mapping class group as Diff mod the path-component of the identity (i.e. it's the group of path components)
    - Uses Beltrami equation, measurable Riemann mapping theorem, solving PDEs, some serious Math!
    - $\mathrm{Diff}_0$ acts on the space of complex structures on the surface, and the quotient is Teichmuller space(?), which is contractible, which makes the space of complex structures contractible (from the LES in homotopy). This is some solution space of some PDE.

**Corrolary**: we care about $\mathrm{Bdiff}$, classifying space theory doesn't really see contractible stuff. So:
$$
\mathrm{Bdiff}^+ \Sigma_g \simeq \mathrm{BMod}\Sigma_g = K(\mathrm{Mod}\Sigma_g, 1)
$$

Note that the last equality follows because there's no topology on the mapping class group of a discrete group.

**Huge conclusion**:

$$
\theset{\text{iso classes of } \Sigma_g\dash\text{bundles over } B} \iff
\theset{\text{conjugacy classes of representations } \rho: \pi_b \to \mathrm{Mod}\Sigma_g}
$$

Why? For any $X = K(\pi, 1)$ space, $[\wait, X] \cong$ the conjugacy classes of $[\pi_1 \wait, \pi_1 X]$(?)

Somehow, this all comes down to uniformization.

> Note: Reduces problem of classification up to bundle isomorphism (solved in general by B.F.) to a group theory problem immediately.

How are you given the bundle? Can be given as triangulation, in which case one can produce the monodromy map (huge number of steps though! $e^{e^{e^{\cdots}}}$). Or can be given the monodromy map; this determines the bundle.

**Theorem**: The conjugacy problem in $\mathrm{Mod} \Sigma_g$ solvable.

But this does not solve the problem for homeo $\Sigma_g \to M^3 \to S_1$.

Why? Relates back to a paper of Thurston's, theory of the Thurston Norm, from paper "A norm on the Homology of 3-manifolds": there exist many 3-manifolds fibering over the circle (as long as $\beta_1(M^3) > 2)$ such that $M^3$ fibers $\Sigma_h \to M^3 \to S^1$ for infinitely many $h$, but finitely many for any fixed $h$.

How do you get an invariant out of this? Given two 3-manifolds that fiber over the circle, each with a monodromy in the mapping class group - are they conjugate in the mapping class group? If so, then the manifolds are the same. If not, the bundles are not isomorphic, BUT they could be homeomorphic in some accidental different way.

How to solve: the Thurston norm is computable. Need to enumerate all the ways of fibering, and find the minimal genus fibering. (Should be the same!) Check how many ways there are of fibering. Then check, for each fibering, are the monodromies the same? At least one needs to be the same to be homeomorphic.

## Characteristic Classes

For suitably nice spaces, given by a mapping

$$
\Sigma_g \to E \mapsvia{\pi} B \iff c(E \mapsvia{\pi} B) \in H^i(B)
$$

that is natural with respect to pullbacks; i.e. take

```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\begin{document}
\begin{tikzcd}
E' \arrow[rr, "\tilde f"] \arrow[dd, "\pi'"] &  & E \arrow[dd, "\pi"] \\
 &  &  \\
B' \arrow[rr, "f" description] &  & B
\end{tikzcd}
\end{document}
```

and require that
$$
\tilde {f^*}(c(E \mapsvia{\pi} B) = c(\tilde {f^*}(E \mapsvia{\pi} B)).
$$

Any characteristic class is just an element of $H^*(\mathrm{BDiff}^+ \Sigma_g) = H^*(\mathrm{Mod} \Sigma_g)$, since every bundle will be a pullback of the universal bundle.

Lots of papers about the "stable cohomology" of the mapping class group, given by taking $g$ big enough. We know $\chi$ of the mapping class group, it grows superexponentially and we know polynomially-many. No known unstable classes in genus 5 or higher!!

What do we know?

- $H^1(\mathrm{Mod} \Sigma_g; \QQ) = 0$
- Elements of $H^2(\mathrm{Mod} \Sigma_g; \QQ)$: some known cocycles.

## The "Signature Cocycle"

Any 2-cycle (for any space) will be homologous to the image of a map $f$ of a surface into that space. Given blah, pullback the bundle over $\mathrm{BDiff}$:
```latex {cmd=true, hide=true, run_on_save=true}
\documentclass{standalone}
\usepackage{tikz}
\usepackage{dsfont}
\usepackage{amsmath, amsthm, amssymb}
\usetikzlibrary{cd}
\begin{document}
\begin{tikzcd}
 &  & \Sigma_g \arrow[rr] &  & T \arrow[dd] \\
 &  &  &  &  \\
\Sigma_g \arrow[rr] \arrow[rruu, dotted] &  & M^4 \arrow[dd] \arrow[rruu, dotted] &  & \mathrm{BDiff}^+ \Sigma_g \\
 &  &  &  &  \\
 &  & \Sigma_h \arrow[rruu, "f" description] &  &
\end{tikzcd}
\end{document}
```
Take the signature of $M_4$ (where you use the intersection pairing on $H_2$, take the signature of that form). Using Novikov additivity for signature, this satisfies the cocycle condition and finally yields a number!

## Another Cocycle

Look at the vertical bundle over $T$, you get $\RR^2 \to E \to T$.
> Note: can see this bundle by looking at moduli space of Riemann surfaces $\mathcal{M}_g$, covered by $\mathcal{M}_g^*$ with fiber $\Sigma_g$. There is a vertical bundle over this, everything that is tangent to the fiber, which is a 2-plane bundle over the covering space.

So look at the Euler class $e\in H^2(T)$, take so-called "MMM class". How to get a cocycle? Can try integrating over fiber, so
$$
e_i = \int_{\Sigma_g} e^{i+1} \in H^{2i}(\mathrm{Mod} \Sigma_g; \QQ).
$$

Note: the moduli space is a Kahler manifold, so you get the Weil-Peterson 2-form which is the Kahler class in $H^2$.

Theorem (Harrer, 1980s): $H^2(\mathrm{Mod}(\Sigma)g; \RR) = \RR$, which is one-dimensional! So all of these classes are scalar multiples of each other - and in fact, sometimes not rational multiples, so sometimes you get interesting number-theoretic quantities like $\frac {\pi^2} 6$.

See book with Dan Margalit - all of this lives in the group $\mathrm{Mod} \Sigma_g \injects \mathrm{Homeo}^+(S^1)$

---

# Part 3: Reconstruction problems in geometry and topology

[Link to Video](https://www.youtube.com/watch?v=X0XBnKBKSDI)

*Work-in-progress!*

Geometric motivation: a map $\phi: \RR^n \to \RR^n$ if there is a matrix $A \in \GL(n, \RR)$ such that
$$
\exists \vector{w} \in \RR^n :\forall \vector{v} \in \RR^n, \phi(\vector{v}) = A \vector{v} + \vector{w}.
$$

In other words, a composition of a linear map and a translation. Takes lines to lines, planes to planes.

## Fundamental Theorem of Affine Geometry
Suppose you have a set map that is a bijection
$$
\Phi: \theset{\text{affine subspaces of } \RR^n, \dim \geq 0} \selfmap
$$
which satisfies
$$
P_1 \subseteq P_2 \implies \Phi(P_1) \subseteq \Phi(P_2),
$$


then for $n\geq 3$, $\Phi$ is induced by a unique affine map $\phi$.

Much easier theorem: if you start with a bijective set map $\RR^n \selfmap$ which takes lines to lines, then it's affine. (Darboux 1800s)

## Importance

Proving [Mostow rigidity](https://en.wikipedia.org/wiki/Mostow_rigidity_theorem) (related to rigidity of lattices, semi-simple Lie groups, etc); many have seen in real hyperbolic case, but in higher rank cases (more important) for lattices in $\SL(n, \RR)$, this is a key ingredient in the proof.

A variation: suppose $\Phi: \theset{\text{lines in } \RR^n} \selfmap$ is a bijection. Look at $n=2$ case.

Suppose that for all distinct lines $L_1, L_2, L_3$, triple intersections are preserved:
$$
L_1 \intersect L_2 \intersect L_3 \neq \emptyset \iff \Phi(L_1) \intersect \Phi(L_2) \intersect \Phi(L_3) \neq \emptyset,
$$

then $\Phi$ is induced by an affine map $\phi$.

Remark: false if $\Phi$ only preserves double points (and not triple points).

Double intersections aren't quite enough, see figure 1.

*todo add from phone*

*Proof*:

1. Construct a candidate set map bijection $\phi: \RR^2 \to \RR^2$ inducing $\Phi$.
2. Apply Darboux's theorem: such a $\phi$ taking lines to lines and bijective is affine. (Note: many think this is the definition of affine!). Try to prove!

Pick a point $p$, and any two lines $l_1, l_2$ going through it. Define $\Phi(p)$ as the intersection of $\Phi(l_1) \intersect \Phi(l_2$). Is it well-defined? can have 3 lines pairwise intersecting in the image, but could be 3 different points. Need an assumption (i.e. preserving triple intersections).

Punchline: Helle's theorem, in any collection of convex subsets of $\RR^n$, if any $n+1$ intersect then all intersect.

## The Topology Side
*feat. Dan Margalit*

Theorems they proved: What is a homeomorphism?

Fix an $n\dash$manifold $M$, $n\geq 2$ let
$$
S = \mathrm{Emb}(S^{n-1}, M) / \mathrm{Homeo}(S^{n-1}),
$$

the space of embedded spheres in $M$ as subsets, so
$$
S = \theset{ \text{subsets of } M \text{ homeomorphic to } S^{n-1} }.
$$

## Theorem 1: A homeomorphism takes embedded spheres to embedded spheres.

Suppose $\Phi: S \to S$ is bijective, and $\forall X, Y \in S$,
$$
X \intersect Y = \emptyset \iff \Phi(X) \intersect \Phi(Y) = \emptyset
$$

then there exists a unique homeomorphism  $\phi: M \selfmap$ inducing $\Phi$.

Need manifold assumption - counterexample, take $Z$ to be two discs glued at two distinct points. Then $\exists \theset{\text{loops in } Z}\selfmap$ bijective, preserves disjointness, but is not induced by any homeomorphism.
Take any homeomorphism of a disc $\phi$ such that $\phi^2 = \id$ that exchanges the glued points. Then do the identity on the other disc.

Turns out this counterexample doesn't quite work! Take a figure 8 at a glue point extending into both discs, the homeomorphism will separate it into two loops.

## Theorem 2: A Homeomorphism takes loops to loops

Suppose you have a bijective set map $\Phi: \theset{\text{loops in } \RR^3}$ that preserves "linking", i.e.
$$
L(\gamma_1, \gamma_2) \neq 0 \implies L(\Phi(\gamma_1), \Phi(\gamma_2)) \neq 0
$$

Then $\Phi$ is induced by a unique homeomorphism $\phi: \RR^3 \to \RR^3$.

## Proof Outline of Theorem 1
Given $\Phi:S \to S$ a bijection preserving disjointness, need to construct a unique $\phi: M \selfmap$ inducing $\Phi$.

Useful to encode disjointness: let $\Gamma_n$ be a graph with vertices for each $X\in S$ and edges connecting $X,Y \iff X\intersect Y = \emptyset$. Can restate the theorem as
$$
\Aut(\Gamma_n) \cong \mathrm{Homeo}(M)
$$

### Step 1

Start looking at separation and nesting properties. $X \subset M$ is separating $\iff \mathrm{Link}_{\Gamma_n}(X)$ is a join, where the Link of $X$ is the set of all vertices that are disjoint from $X$.

*#todo What is a Link? What is a join?*

> Note: technique is listing topological properties that are true, then creating a dictionary  from topological properties of the manifold into properties of your graph. Similar to when working on [Tit's Buildings](https://en.wikipedia.org/wiki/Building_(mathematics)#Bruhat-Tits_trees_with_complex_multiplication).

### Step 2

$\Phi$ preserves "betweenness", i.e. $Y$ is between $X$ and $Z$ iff for any sphere intersecting both $X$ and $Z$ also intersects $Y$. (These preserved topological properties will be preserved under automorphisms of the graph!)

### Step 3

Look at embedded isotopies, $H: I \to S$ (note that we can use the compact-open on $S$) such that each $H_t \definedas H(t)$ is embedded and $\union_{t\in I} H_t(S^{n-1})$ is an embedded $S^{n-1} \cross I$ (i.e. embedded families of spheres with a preferred foliation by codimension 1 spheres.)

Getting the associated graph-theoretic property. Let $H: I \to S$ be an injective set map (want to say when it is continuous and embedded in terms of disjointness).

Need four properties:

- Disjointness: $H(r) \intersect H(s) \neq \emptyset \iff r=s$
- Order-preserving: $r\leq s \leq t \implies H(s)$ is between $H(r), H(t)$.
- No gaps: Every $\gamma \in S$ intersects some $H(t)$ for some $t\in I$.
- Continuity/vary continuously: For all $\gamma \in S,~\theset{t \in I \mid H(t) \intersect \gamma \neq \emptyset}$ is closed.

### Step 4

$\Phi$ preserves foliated punctured discs.

Not as easy as it looks - want to show that the image limits to a point, as opposed to e.g. a tree (don't have to worry about it limiting to a sphere due to the bijective correspondence.)

Uses limiting families of sphere to detect separation, linking, etc!

Possible extensions:

- What is a symplectomorphism?
- What is a covering map?
- (Just go through Munkres book and list the maps!)
