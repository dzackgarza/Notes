[2020-01-01-References](sections/2020-01-01-References.md)
[2020-01-11](sections/2020-01-11.md)
[2020-01-16 Translation Surfaces](sections/2020-01-16%20Translation%20Surfaces.md)
[2020-01-23](sections/2020-01-23.md)
[2020-01-30 Ramified Covering of Torus](sections/2020-01-30%20Ramified%20Covering%20of%20Torus.md)

Tags: #algebraic_geometry #topology #research 

# References and Basics

**References:**

- Survey Paper: Anton Zorich, [Flat Surfaces](https://arxiv.org/abs/math/0609392)
- Alex Eskin, Andrei Okounkov, [Asymptotics of numbers of branched coverings of a torus and volumes of moduli spaces of holomorphic differentials](https://arxiv.org/abs/math/0006171)
- Alex Eskin, Howard Masur, Anton Zorich, [Moduli Spaces of Abelian Differentials: The Principal Boundary, Counting Problems and the Siegel--Veech Constants
](https://arxiv.org/abs/math/0202134)
- Alex Eskin, Andrei Okounkov, [Pillowcases and quasimodular forms](https://arxiv.org/abs/math/0505545)
- Vincent Delecroix, Elise Goujard, Peter Zograf, Anton Zorich, [Contribution of one-cylinder square-tiled surfaces to Masur-Veech volumes](https://arxiv.org/abs/1903.10904)
  - See Phil for appendix! 
- Engel, [Hurwitz Theory of Elliptic Orbifolds, I](https://arxiv.org/abs/1706.06738)
- Engel, [Hurwitz Theory of Elliptic Orbifolds, II](https://arxiv.org/abs/1809.07434)

**Definition:**
A map $\pi: \Sigma \to \Sigma'$ of Riemann surfaces is said to be *ramified* at a point $p\in \Sigma'$ iff in local charts $\pi$ has the form $z\mapsto z^n$ for some $n>1$.

> I.e. all points in a punctured neighborhood of $\pi(p)$ have $n$ preimages.

**Definition:**
If $\pi$ is ramified at $p$, the number of preimages $n$ is referred to as $e_p$, the *ramification index of $p$*.

*Fact:*
$\vector{\beta}(\Sigma_g) = [1, 2g, 1, 0, \cdots]$ and $\chi(\Sigma) = 2-2g$.

**Theorem:**
If $\pi$ is an unramified covering map of degree $n$, then $\chi(\Sigma') = n\chi(\Sigma)$.

**Theorem (Riemann-Hurwitz):**
If $\pi: \Sigma \to \Sigma'$ is a ramified covering map of degree $N$, then

\begin{align*}
\chi(\Sigma') = N \chi(\Sigma) - \sum (e_p - 1) \quad\text{ i.e. } 2 g(\Sigma') - 2=  N(2g(\Sigma) - 2)  + \sum (e_p - 1)
.\end{align*}

*Another useful form:*
Let $r \in \Sigma'$ be the number of ramification points, and $b$ the number of branch points, i.e. their images in $\Sigma$.
Then

\begin{align*}
\chi(\Sigma') = N(\chi(\Sigma) - b) + r
.\end{align*}


**Holomorphic Forms:**
A holomorphic $p\dash$form on $X$ is a section of $\Lambda^p T\dual X$, the $p$th exterior power of the holomorphic cotangent bundle of $X$.

For $n = \dim_\CC X$, the $n\dash$forms are an important special case.
Any such form $w$ is given in local coordinates $(z_1, \cdots, z_n)$ by 

\begin{align*}
w = w(z_1, \cdots, z_n) dz_1 \wedge \cdots \wedge dz_n
\end{align*}

for some holomorphic function $w: \CC^n \to ?$.

**Canonical Bundle:**
Given a complex manifold $M$, we can define the tangent bundle $\CC^n \to TM \to M$ and the cotangent bundle $\CC^n \to T\dual M \to M$, which we'll just denote $T\dual M$.
Then the canonical bundle is the bundle $\CC\to \Lambda^n T\dual M \to M?$, denoted by $\omega$, obtained by taking the $n$th exterior power.

It is a theorem that the fibers are in fact complex lines $\CC^1$.
For vector bundles, this is referred to as the *determinant bundle*.
If $M$ is a smooth manifold, then $\omega$ has a global section.

> Note: a holomorphic $n\dash$form is exactly the same as a section of the canonical bundle.

Interesting aside: a Calabi-Yau is a manifold with a nowhere vanishing holomorphic $n\dash$form, which implies that the canonical bundle admits a map to a trivial line bundle that is an isomorphism, i.e. the canonical bundle is trivial.

*Exercise:*
For $\Sigma_g$ a compact Riemann surface of genus $g$, the dimension of the space of holomorphic sections of the canonical bundle, i.e. the space of holomorphic differentials on $\Sigma_G$, is given by $\dim H^0(X; \Omega) = g$ (the genus of the surface).
Proof: use Riemann-Roch.

Classification of elliptic orbifolds of dimension 2:
Define $(n_1, \cdots; m_1, \cdots)$ as the *profile*, where $n_i$ are *elliptic* points (locally look like quotient by $\ZZ/n\ZZ$), and $m_i$ are *corner reflectors* (locally look like quotient by a dihedral group):

![Image](figures/2020-01-29-20:44.png)\


Conformal (or equivalently complex) structures on a genus $g$ surface form a moduli space $\MM_g$ of dimension $3g-3$ for $g > 1$.

Let $\alpha$ be any partition of $2g-2$, and $\mch(\alpha)$ the moduli space of pairs $(\Sigma_g, \omega)$ where $\Sigma_g$ is a Riemann surface of genus $g$ and $\omega$ is a holomorphic 1-form (Abelian differential) on $M$ with the orders of its zeros given by $\alpha$.
Letting $\mch$ be the moduli space of all abelian differentials on Riemann surfaces of genus $g$ is stratified by $\mch(\alpha)$ as $\alpha$ ranges over all partitions.
For flat tori, $\mch = \GL_+(2, \RR)/\SL(2, \ZZ)$.

For $\Sigma_g$ a Riemann surface, there is a formula (Gauss-Bonnet in the flat metric) relating the degrees of the zeros of a holomorphic 1-form to the genus:

\begin{align*}
\sum d_j = 2g-2
.\end{align*}



# Notes on Paper

> Reference: [https://arxiv.org/abs/math/0609392](https://arxiv.org/abs/math/0609392)

## Section  1

Flat surfaces are characterized as surfaces with a flat metric and (finitely many?) cone-like singularities.
These surfaces appear to be isomorphic to moduli spaces of holomorphic 1-forms.
It is profitable to study the orbit of the surface under the Teichmüller geodesic flow, as well as a $\GL_n$ action.

Some introductory surveys:

- A. Eskin [E], 
- G. Forni [For2], 
- P. Hubert and T. Schmidt [HuSdt5] 
- H. Masur [Ma7],
- H. Masur and S. Tabachnikov [MaT] 
- J. Smillie [S].


We usually associate

- Constant positive curvature = $S^2$
- Constant zero curvature = $S^1 \cross S^1 \definedas T^1 = \Sigma_1$
- Constant negative curvature = $\Sigma_g$ for $g\geq 2$, a surface of higher genus

**Proposition:**
Any surface can be given a flat metric, possibly introducing singular points.

> Idea: Push all of the curvature into a cone point.

*Example:*
The standard cube embedded in $\RR^3$.

This is a flat surface with 8 cone points located at the vertices.
Note that the metric is non-degenerate on the edges, since any neighborhood of a point on an edge is still homeomorphic to $\RR^2$:

![Image](figures/2020-01-11-23:54.png)

Any neighborhood of a vertex is isometric to the vertex of the usual notion of a cone.
The cone angle can be measured by cutting a cone from the base to the vertex, yielding a flat pattern that sits in $\RR_2$, and measuring the "missing" angle in the resulting circle:

![Image](figures/2020-01-12-00:00.png)

This shows that the cone angle of the cube is $3\pi/2$, which coincides with the fact that there are 3 square (and thus 3 right angles) adjacent to any cone point.

**Definition:**
Geodesic (todo)

**Definition:**
Ergodic (todo)

> Here this means that a typical geodesic will visit any region in phase space and time spent in a region is proportional to volume.


**Definition:**
Holonomy and Holonomy group (todo)

General (wildly open) problem:

- Describe the behavior of a generic geodesic on a surface
- Prove that the geodesic flow is ergodic on a typical flat surface
- Does almost every surface have a closed geodesic that does not pass through singular points?
  - If so, how many?
  - Find the (asymptotic) number of such closed geodesics of length shorter than $L$

This remains unsolved for $S^2$ with 3 singularities (equivalent to a certain billiards problem). 
It is not even known if any flat sphere admits a single closed geodesic.

Flat surfaces have nontrivial holonomy, which makes them resemble Riemannian manifolds more than flat tori.

If we take the surface and puncture the conical points, it is locally isometric to the punctured Euclidean plane.
This allows a notion of parallel transport of tangent vectors.

Parallel transports along homotopically trivial loops are always the identity; otherwise, for homotopically nontrivial loops this rotates the vector by some angle.
Parallel transport around a cone point rotates by exactly the cone angle.
Nontrivial holonomy forces geodesics to self-intersect many times.

> Exercise: parallel transport a vector around the cone point of a cube.

The flat torus has trivial linear holonomy -- all geodesics either close up, or never self-intersect and produce a dense winding path.

**Definition:**
A translation surface is closed orientable surface with a flat metric, a finite number of conical singularities, and trivial linear holonomy.

Note that trivial linear holonomy implies that cone angles are all integer multiples of $2\pi$.

> Convention: we assume all flat surfaces come with a distinguished direction.

Remark:
Billiards gives rise to a flat surface with nontrivial linear holonomy. 

**Definition:**
A half-translation surface is a surface with a flat metric and holonomy group $\ZZ/(2)$.

> In this case, a vector $\vector v$ may come back as $-\vector v$ after parallel transport.

We'll often consider families of flat surface sharing the same genus and number/type of conical singularities.
These will correspond to strata of moduli spaces of one-forms.

It will often be useful to let $\SL(2, \RR)$ act on these families, consider the orbits, and take its closure.

Central problem / conjecture:
Taking the closure of an orbit under the action of $\GL^+(2, \RR)$ is a complex subvariety, so both the moduli space of holomorphic one-forms and the moduli space of quadratic differentials resemble homogeneous spaces under the action of a unipotent group.

The there is a projection from these orbits (Teichmüller discs)  to the moduli space of complex structures (?), which will be denoted $\MM_g$.
It is well-known that moduli spaces are not homogeneous spaces, but the conjecture here is that they behave as if they were.

## Section 2: Motivations

Open problems in rectangular billiards:

1. Describe the behavior of a billiard trajectory in a generic triangle, and prove that the billiard flow is ergodic.
2. Does (almost) any table have at least one regular periodic trajectory? Is it preserved under deformations?
3. Asymptotically in length, how many periodic trajectories are there? 
4. Does any obtuse triangle have a single periodic trajectory?

*Known example:* 
Acute triangles have at least 1, see Fagnano trajectory 

*Fox-Kershner construction:*
Yields a way to go from billiard trajectories to geodesics on a flat surface.
General idea: glue two copies of the billiard table along the edge to get a flat sphere; then paths lift to geodesics.
Such surfaces are not "very flat", i.e. they have nontrivial linear holonomy.


---
title: Notes on Tilings
---

# Thursday, Week 1 

**Motivation:** 
Gauss' Unicursal Problem.
How many distinct curves $\alpha: [0, 1] \to \RR^2$ are there with no triple crossings?

Note that if we compactify the plane to the Riemann sphere (and possibly take the curve to be piecewise linear) then we obtain a *tiling* of the sphere.
We can also take a *dual tiling* by taking the barycenters of each polygon and connecting them by an edge iff their corresponding polygons share an edge.

**Definition:**
A *translation surface* is the 2-dimensional topological manifold obtained by taking any set of polygons in $\RR^2$ and gluing their edges by translations.

*Example:*
Any elliptic curve (topologically a torus) is a translation surface.

We take equivalence up to cutting, pasting, and rearranging.

**Lemma:**
Two elliptic curves (of genus 2) are isomorphic iff the translation surfaces differ by a homothety, i.e. a rotation and scaling.

> Note: we will eventually see that the data of a translation surface is equivalently a holomorphic 1-form.

**Definition:**
A *half-translation surface* is a translation surface where we now additionally allow gluing by rotations of $\pi$ radians.

*Example:*

\begin{center}
\begin{tikzpicture}
		\node[fill=black, shape=circle]  (0) at (-3, 3) {};
		\node[fill=black, shape=circle]  (1) at (3, 3) {};
		\node[fill=black, shape=circle]  (2) at (-3, -3) {};
		\node[fill=black, shape=circle]  (3) at (3, -3) {};
		\node[fill=black, shape=circle]  (4) at (0, 3) {};
		\node[fill=black, shape=circle]  (5) at (0, -3) {};
		\draw (1.center) to node [auto] {$a$} (3.center);
		\draw (0.center) to node [left] {$a$} (2.center);
		\draw (0.center) to node [above] {$b$} (4.center);
		\draw (4.center) to node [above] {$b$} (1.center);
		\draw (2.center) to node [below] {$c$} (5.center);
		\draw (5.center) to node [below] {$c$} (3.center);
\end{tikzpicture}
\end{center}

> Note that the gluing $b$ now requires a rotation.

By gluing edges with matching letters, we get a "hot pocket" surface:

\begin{center}
\begin{tikzpicture}[
	none/.style={text opacity=0,opacity=0,fill opacity=0},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
		\node [style=none] (0) at (-3, 3) {};
		\node [style=none] (1) at (3, 3) {};
		\node [style=none] (2) at (-3, -4) {};
		\node [style=none] (3) at (3, -4) {};
		\node [style=none] (4) at (-3, 2) {};
		\node [style=none] (5) at (3, 2) {};
		\node [style=none] (6) at (-3, -0.5) {};
		\node [style=none] (7) at (3, -0.5) {};
		\node [style=none] (8) at (-3, -2.75) {};
		\node [style=none] (9) at (3, -2.75) {};
		\draw (0.center) to (2.center);
		\draw (2.center) to (3.center);
		\draw (3.center) to (1.center);
		\draw (0.center) to (1.center);
		\draw [bend right] (4.center) to (5.center);
		\draw[dotted] [bend left=15] (4.center) to (5.center);
		\draw [bend right] (6.center) to (7.center);
		\draw[dotted] [bend left=15] (6.center) to (7.center);
		\draw [bend right] (8.center) to (9.center);
		\draw[dotted] [bend left=15] (8.center) to (9.center);
\end{tikzpicture}
\end{center}

**Lemma:**
Any game of *rectangular billiards* yields a half-translation surface.

Given any domain for rectangular billiards, we inflate it to a surface:

\begin{center}
\begin{tikzpicture}[
	none/.style={text opacity=0,opacity=0,fill opacity=0},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
		\node [style=none] (0) at (-5, 6) {};
		\node [style=none] (2) at (0, 0) {};
		\node [style=none] (3) at (0, 4) {};
		\node [style=none] (4) at (3, 4) {};
		\node [style=none] (5) at (3, 2) {};
		\node [style=none] (6) at (6, 2) {};
		\node [style=none] (7) at (6, 6) {};
		\node [style=none] (8) at (-5, 0) {};
		\node [style=none] (9) at (-2.5, 6) {};
		\node [style=none] (10) at (-2.5, 0) {};
		\node [style=none] (11) at (1.5, 6) {};
		\node [style=none] (12) at (1.5, 4) {};
		\node [style=none] (13) at (4.5, 6) {};
		\node [style=none] (14) at (4.5, 2) {};
		\draw (0.center) to (8.center);
		\draw (8.center) to (2.center);
		\draw (2.center) to (3.center);
		\draw (3.center) to (4.center);
		\draw (4.center) to (5.center);
		\draw (5.center) to (6.center);
		\draw (6.center) to (7.center);
		\draw (0.center) to (7.center);
		\draw [bend right] (9.center) to (10.center);
		\draw[dotted] [bend left=15] (9.center) to (10.center);
		\draw [bend right=40] (11.center) to (12.center);
		\draw[dotted] [bend left=40, looseness=0.75] (11.center) to (12.center);
		\draw [bend right, looseness=0.75] (13.center) to (14.center);
		\draw[dotted] [bend left=15] (13.center) to (14.center);
\end{tikzpicture}
\end{center}

We can then cut along everything but the bottom edge to "unwrap" it into a half-translation surface:

\begin{center}
\begin{tikzpicture}[
	none/.style={text opacity=0,opacity=0,fill opacity=0},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
		\node [style=none] (0) at (-5, 6) {};
		\node [style=none] (2) at (0, 0) {};
		\node [style=none] (3) at (0, 4) {};
		\node [style=none] (4) at (3, 4) {};
		\node [style=none] (5) at (3, 2) {};
		\node [style=none] (6) at (6, 2) {};
		\node [style=none] (7) at (6, 6) {};
		\node [style=none] (8) at (-5, 0) {};
		\node [style=none] (9) at (-2.5, 6) {};
		\node [style=none] (10) at (-2.5, 0) {};
		\node [style=none] (11) at (1.5, 6) {};
		\node [style=none] (12) at (1.5, 4) {};
		\node [style=none] (13) at (4.5, 6) {};
		\node [style=none] (14) at (4.5, 2) {};
		\node [style=none] (17) at (-5, -6) {};
		\node [style=none] (18) at (6, -6) {};
		\node [style=none] (22) at (0, -4) {};
		\node [style=none] (23) at (3, -4) {};
		\node [style=none] (24) at (6, -2) {};
		\node [style=none] (29) at (3, -2) {};
		\draw (0.center) to node [auto] {$a$} (8.center);
		\draw (8.center) to (2.center);
		\draw (2.center) to node [auto] {$b$}  (3.center);
		\draw (3.center) to (4.center);
		\draw (4.center) to (5.center);
		\draw (5.center) to (6.center);
		\draw (6.center) to (7.center);
		\draw (0.center) to (7.center);
		\draw (8.center) to node [auto] {$a$} (17.center);
		\draw (17.center) to (18.center);
		\draw (2.center) to  node [auto] {$b$} (22.center);
		\draw (22.center) to (23.center);
		\draw (23.center) to (29.center);
		\draw (29.center) to (24.center);
		\draw (24.center) to (18.center);
\end{tikzpicture}
\end{center}

Some questions related to rectangular billiards:

**Question 1:**
Given a random starting point and direction, what proportion of the total region is traversed?
Will the trajectory entire a given region?
How long does the billiard spend in any given region?

**Theorem:**
The percentage of time spent in a given region is equal to the proportion of its area to the total area.

> This requires some ergodic theory.

**Question 2:**
If you shine a laser from a given spot, is the entire region illuminated?

**Theorem:**
No! There is a counterexample with 18 sides.
Moreover, no positive-area region can be avoided, but certain finite sets can.

**Definition:**
A *flat surface* is a generalization of translation surfaces that now allows gluing by any isometry of $\RR^2$.

*Example:*
A cube in $\RR^3$ is a flat surface, noting that the planar gluing diagram for it now requires rotations of $\pi/2$ radians:

![Image](figures/2020-01-11-22:16.png)\

Note that we can form higher genus surfaces using polygon gluing:

\begin{center}
\begin{tikzpicture}[
	none/.style={fill=black,shape=circle,scale=0.5},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
		\node[style=none] (0) at (-0.75, 2.5) {};
		\node [style=none] (1) at (0.75, 2.5) {};
		\node [style=none] (2) at (-1.75, 1.25) {};
		\node [style=none] (3) at (1.75, 1.25) {};
		\node [style=none] (4) at (-1.75, -0.25) {};
		\node [style=none] (5) at (1.75, -0.25) {};
		\node [style=none] (6) at (-0.75, -1.5) {};
		\node [style=none] (7) at (0.75, -1.5) {};
		\node [style=none] (8) at (-1.75, 1.25) {};
		\draw (0.center) to node [auto] {$d$}  (8.center);
		\draw (8.center) to node [auto] {$a$}  (4.center);
		\draw (4.center) to node [auto] {$b$}  (6.center);
		\draw (6.center) to node [auto] {$c$}  (7.center);
		\draw (7.center) to node [auto] {$d$}  (5.center);
		\draw (5.center) to node [auto] {$a$}  (3.center);
		\draw (3.center) to node [auto] {$b$}  (1.center);
		\draw (1.center) to node [auto] {$c$}  (0.center);
\end{tikzpicture}
\end{center}

**Exercise:** 
Check that there is only one vertex in this polygon.

In general, the vertices may have total angle greater than $2\pi n$.
We refer to these as *cone points*, and the total angle as the *cone angle*.

**Exercise:**
Check that the cone angle in the above example is $6\pi$ by taking a loop around the cone point.

> Note on a weird phenomenon: it seems difficult to find $\ZZ^2$ or $\QQ^2$ points on the sloped edges of a regular polygon, based on computer drawings.

*Remark:*
This flat surface admits charts to $\CC$ with the following transition functions.
Let $P$ denote the single cone point.

Then there is a 3-fold cover give by the following space, thought of as a singular helical

\begin{center}
\begin{tikzpicture}[
	none/.style={fill=black,shape=circle,scale=0.5},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
	\draw (0, 0) circle (3cm);
	\node [style=none, label=P] (0) at (0, 0) {};
	\node [style=none] (1) at (3, 0) {};
	\draw (0.center) to node [above] {$C$} node [below] {$A$} (1.center);

	\draw (0, -7) circle (3cm);
	\node [style=none, label=P] (0) at (0, -7) {};
	\node [style=none] (1) at (3, -7) {};
	\draw (0.center) to node [above] {$A$} node [below] {$B$} (1.center);

	\draw (0, -14) circle (3cm);
	\node [style=none, label=P] (0) at (0, -14) {};
	\node [style=none] (1) at (3, -14) {};
	\draw (0.center) to node [above] {$B$} node [below] {$C$} (1.center);

\end{tikzpicture}
\end{center}

which maps onto the unit disc in $\CC$:

\begin{center}
\begin{tikzpicture}[
	none/.style={fill=black,shape=circle,scale=0.5},
	dashed/.style={text opacity=0,opacity=0,fill opacity=0}
]
	\draw (0, 0) circle (3cm);

	\node [style=none, label=P] (P) at (0, 0) {};
	\node [style=none] (u1) at  ({1*360/3}: 3cm){};
	\node [style=none] (u2) at  ({2*360/3}: 3cm){};
	\node [style=none] (u3) at  ({3*360/3}: 3cm){};

	\draw (P) to (u1);
	\draw (P) to (u2);
	\draw (P) to (u3);

	\node [label=1] (u1) at  ({1*360/6}: 1.5cm){};	
	\node [label=2] (u1) at  ({3*360/6}: 1.5cm){};
	\node [label=3] (u1) at  ({5*360/6}: 1.5cm){};

\end{tikzpicture}
\end{center}

The covering map from the former to the latter is given by $z\mapsto z^{\frac 1 3}$, which coincides with the fact that the cone angle at $P$ is $3(2\pi) = 6\pi$.

One can also imagine this space in $\RR^3$ with a projection onto the plane:
\pgfplotsset{compat=1.16,width=10cm,height=14cm}
\begin{center}
\begin{tikzpicture}
\begin{axis}[trig format plots=rad,
		view={-40}{6*pi},
		colormap={adopted}{
			rgb255(0cm)=(219,0,70);
	    rgb255(1cm)=(55,70,170);
			rgb255(2cm)=(219,0,70)
		},
		z buffer=sort,
		zmin=0]
\addplot3 [surf,domain=0.001:4,domain y=-pi/2:6*pi-pi/2,samples=25,samples y=40]
({x*cos(y)},{x*sin(y)},{ln(x)+y});
\end{axis}
\end{tikzpicture}
\end{center}

Here the helicoid goes through three full twists, where the top and bottom pieces are identified.

**Proposition:**
In a neighborhood of a cone point $P$ with cone angle $2\pi n$, the map $z\mapsto z^{\frac 1 n}$ will be a local chart for any $z$ in a neighborhood of $P$.

This gives the resulting surface the structure of a *Riemann surface*, i.e. a surface admitting charts to $\CC$ with holomorphic transition functions.

Let $X$ be a Riemann surface, we can look at the *canonical bundle* over $X$ with sections that are compatible collections of $f_u(z_u) ~dz_u$ for each chart $z_u$, and for each such chart a holomorphic function $f_u(z_u)$ on $z_u(U)$ where on overlaps

\begin{align*}
f_u(z_u) ~dz_u &= f_v(z_v) ~dz_v \\
&= f_v(z_v \circ z_u) z_v'(z_u) ~dz_u
.\end{align*}

**Updated Definition:**
A *translation surface* is a Riemann surface with a section of its canonical bundle.

*Example:*
$C/\Lambda$ for $\Lambda$ any rank-2 lattice:

![Image](figures/2020-01-11-23:35.png)

> Note that the translation here is given by $\vector \lambda$.

**Definition:**
A holomorphic 1-form is a section of the canonical bundle.

*Example:*
For the above surface, we have $z_v = z_u + \vector \lambda$ and thus $dz_u = dz_v$ is nonvanishing.

Note that $dz$ is a holomorphic 1-form on the complement of the vertex/vertices of the polygon.

**Proposition:**
$dz$ extends holomorphically to charts containing cone points with cone angle $2\pi n$ and has a zero of order $n-1$ at such cone points.

*Example:*
For the chart $z=w^3$ where $w$ is the local coordinate, we have $dz = 3w^2$, yielding a zero of order 2.


# Thursday January 16th

## Correspondence

**Recall:**
Start with a translation surface with cone points with angles $2\pi n i$.
This yields a Riemann surface $\Sigma$ and a holomorphic $1\dash$form $\omega$ with zeros of order $n_i -1$.

Given a square fundamental domain, there is an order 4 automorphism given by rotating 90 degrees.
In charts, this is multiplication by $i$ and possibly a translation, which is a holomorphic map $f: \Sigma \selfmap$.
We then have $f^*(dz) = d(f(z)) = idz$, so $dz$ is an eigenvector for $f^*$.

An elliptic curve can be specified by $y^2 = f_4(x)$ for a degree 4 polynomial, so we can obtain it as a double branched cover of $S^2$.
(i.e. glue along the slits joining pairs of roots)

![Image](figures/2020-01-22-21:56.png)\

Take $E : y^2 = x^4 - 1$, this is the only elliptic curve with an order 4 automorphism.
In coordinates, this is generated by $(x, y) \mapsto (-ix ,y)$.
So $\omega = c \frac{dx}{y}$, i.e. $dx/y$ up to scaling, and $f^*(dx/y) = i \frac{dx}{y}$.
What is the constant $c$?

Take closed cycles on $E$ given by $\alpha, \beta$ (see diagram), then by FTC $\int_\alpha \omega = z \mid_0^1 = 1$.
Negation is 4 fixed points on the elliptic curve, the 2-torsion points.

![Image](figures/2020-01-22-21:55.png)\

![Image](figures/2020-01-22-21:57.png)\

We can then compute

\begin{align*}
I = \int_\alpha  \frac{dx}{y} = \int_1^2 \frac{dx}{\sqrt{x^4 - 1}} 
.\end{align*}

and since $2c I = 1$, this uniquely determines $c$.

> Note that this can be numerically evaluated, but this is an elliptic integral with (possibly) no elementary antiderivative.

Consider the decagon with sides identified.
We get a complex structure $(\Sigma, \omega)$ with cone angles $4\pi$ and $dz$ has 2 zeros of order 1 (namely the two cone points).

![Image](figures/2020-01-22-21:58.png)\

What is the genus?
The degree of the canonical bundle is 
$$
g(\Sigma) = \deg K_\Sigma = 2g - 2 = \sum_{p\in \Sigma}\ord_p \omega
$$ 
and thus $g = 2$.

**Fact:**
Every genus 2 curve is a double branched cover of $\PP^1$ branched over 6 points.

> Use Riemann-Roch.

Consider automorphisms that preserve the decagon.
Rotation by $\pi/10$ swaps the two cone points, to take rotation by $-2\pi/5$ (inserting the negative to account for pullbacks).
Then $f^* \omega = \zeta_5 \omega$, where again we just write locally $z \mapsvia{f} \zeta_5\inv + c \implies f^* dz = \zeta_5 dz$.

Consider points of order $5$ on $\PP^1$, we can take $\zeta_5^k$ and $\infty$.

![Image](figures/2020-01-22-21:58.png)\

This corresponds to the curves $y^2 = x^5 - 1$, with an automorphism $(x, y) \mapsto (\zeta_5 x, y)$.
This is the only genus 2 curve with an order 5 automorphism.

**Fact:**
The space of sections of the canonical $H^0(K_{\mathcal E}) = \CC^g$.

We can write a basis for the space of 1-forms: $\frac{dx}{y}$ and $(1-x) \frac{dx}{y}$.
Alternatively, $\omega = (a+bx) \frac{dx}{y}$ where $a, b \in \CC$.
What are the zeros of $\omega$?
$V(\omega) = V(a + bx)$ where if $b=0$ it's $\infty$.
Because this has to preserve the order 5 symmetric and map cone points to themselves, this forces $\omega = bx \frac{dx}{y}$, which has exactly two zeros: $(x, y) = (0, \pm i)$.

We can also consider the doubled pentagon, which has only one point.
This has an automorphism given by rotating each pentagon by $1/5$, it has cone angle $6\pi$, and $\omega$ has a double zero at the cone point.
Since there is only *one* genus 2 curve with order 5 automorphisms, this yields the previous Riemann surface but a distinct translation surface and a distinct form.

We can write $\alpha = a \frac{dx}{y}$.

**Proposition:**
One Riemann surface has many translation structures, and the space of such structures is the space of 1-forms.

*Proof:*
Pick a chart $w: U \to \CC$ avoiding the zeros of $\omega$.
Then $\omega = f(z) ~dz$ in this chart, and we want to compose with a biholomorphism $x$ to obtain a new chart $z$ such that $\omega = dz$ in this chart.
We can solve $dz = e = f(w) ~dw$ and $\frac{dz}{dw} = f(w)$ and by integrating we get $z(w) = \int_{p_0}^w f(w_0) dw_0$.
In this chart, $\omega = dz$, and we can correct near zeros by finding charts such that $\omega = z^n dz$ where $n$ is the order of the zero.

![Image](figures/2020-01-22-21:59.png)\

What does this buy us?
We get a translation structure by considering transitions, and $\omega = dz_1 = dz_2 \implies z_1 = z_2 + c$, which is exactly a translation structure.
Thus every $(\Sigma, \omega)$ has a translation structure for which $\omega = dz$ in local polygonal charts.

![Image](figures/2020-01-22-22:00.png)\

**Theorem:**
There is a bijection 

\begin{align*}
\correspond{\text{Translation surfaces with cone angles $2\pi n i$ }} \iff
\correspond{\text{$(\Sigma, \omega)$ a Riemann surface with holomorphic}\\ \text{1-forms with zeros of order $n_i - 1$}}
.\end{align*}

What do half-translations correspond to?
Note that $dz \mapsto -dz$, so we don't get a well-defined holomorphic 1-form.

![Image](figures/2020-01-22-22:01.png)\

The fix? 
$(dz)^2$ is some well-defined object. 
What is it?

The set $\theset{f(z) (dz)^2 = g(w)(dw)^2}$ corresponds with line bundles with transition functions given by $(dz/dw)^2$.

Thus the correspondence is 

\begin{align*}
\correspond{\text{Half translation surfaces with cone angle $\pi n_i$}}
\iff
\correspond{\text{Riemann surfaces with $q$ a section of $K_\Sigma^{\tensor 2}$ }}
.\end{align*}

I.e., these correspond with sections of the second tensor power of the canonical bundle of $\Sigma$.

A defining property of $q = (dz)^2$ for half-translation charts $z$: we can measure the order of the zero by going to charts, finding a chart to $\CC$ (see image) e.g. $w = z^{2/3}$, and then defining 
$$
\omega = dz = d(w^{3/2}) = 3/2 w^{1/2} dw
$$

Then $q = w^2 = (dz)^2$ is well-defined and equal to $\frac{9}{4} w (dw)^2$ in the local chart $w$. 

In this case, we get points that are *poles* of order 1 for the quadratic differential (sections of $K^{\tensor 2})$.

> Note: 1-forms are referred to as "abelian differentials" in the literature.

We know that $K_{\PP^1} = \mathcal O(-2)$ and $K_{\PP^1}^{\tensor 2} = \mathcal O(-4)$.

## Moduli Spaces

**Definition:**
$\mathcal{H}(k_1, \cdots, k_n) = \theset{ \Sigma \text{ with abelian differential}  \div \omega = \sum k p_i}$ where the $k_i$ record the orders of zeros of $\omega$.

> Second condition on divisor records zeros.

Similarly, define $Q(k_1, \cdots, k_n) = \theset{\cdots \suchthat \text{quadratic differential}}$ where now $k_i \geq -1, \neq 0$.

These moduli spaces are called *strata of abelian/quadratic differentials*.

Consider $M_g$, the moduli space of genus $g$ surfaces.
There is a vector bundle (the Hodge bundle) over $M_g$ where the fiber over $[c]$ is $H^0(K_C)$ with strata given by $Q$.

This is a bundle of rank $g$, and by Riemann-Roch, ? $3g-3$ and is the (co?)tangent bundle of something.

There is an $\SL(2, \RR)$ action on any stratum.
How to define -- use isomorphism with translation structures (see image) by just applying any such form $\gamma$ to the entire plane and gluing polygons in the same way.
This gives a non-holomorphic action on any stratum.

> Next time: to special case of square tiled surfaces.

# Thursday January 23rd

## Counting Square Tiled Surfaces 
Square tiled surfaces in $\mch(k)$ with $d$ squares correspond to degree $d$ branched covers of the identification square, branched over the origin, with profile (?).

To count square-tiled surfaces: label squares, look at inverse images of $\ast$ by $\theset{1 ,\cdots, d}$.
Consider the monodromy representation $\rho: \pi_1( \TT \setminus \theset{0}, \ast ) \to S_d$ where $\sigma = \rho(\alpha) = (1)(23)$ and $\tau = \rho(\beta) = (12)(3)$.
We compute ramification orders by considering the commutators $[\alpha, \beta]$.
Then $\rho([\alpha, \beta] )$ has cycle type $(1, 1, \cdots 1, 1+k, \cdots, 1+ k_n)$.
Note that $[(23), (12)]$ is a 3 cycle.

![Image](figures/2020-01-23-14:32.png)\

**Conclusion:**
The number of square-tiled surfaces in $\mch(k)$ with $d$ squares is exactly 
$$
\frac{1}{d!} \abs{\theset{\sigma, \tau \in S_d \suchthat [\sigma, \tau] \in C_{1, \cdots, 1, 1+k, \cdots, 1+ k_n}}}
.$$

Note that the division is due to the artificial labeling of squares.

**Main theorem from "Branched Covers of Torus" Paper:**
The generating function 
$$
f_\kappa(q)\definedas \sum_{d\geq 1} \#\theset{\text{Square tiled, $d$ squares in $\mch(k)$}} q^d
$$ 
is a **modular form**.

Follows from taking $q = e^{2\pi i \tau}$ which is holomorphic on $\HH$ the upper half-plane, satisfying a transformation rule with respect to $\tau \mapsto -1/\tau$, which is a finite-dimensional space.

> Actual: quasimodular mixed form.

The weights are bounded by $\abs \kappa + \ell(\kappa)$.

Concretely, $f_\kappa \in \QQ[E_2, E_4, E_8]$ where $E_k(q) = \text{const} + \sum_{d \geq 1} \sigma_{k-1}(d) q^d$, where $\sigma_{k-1}(d) = \sum_{e\mid d} e^{k-1}$.
This is the ring of quasimodular forms.

- $1$ is weight 0,
- $E_2$ is weight 2,
- $E_2^2, E_4$ are weight 4,
- $E_2^3, E_2 E_4, E_6$ are weight 6, etc

*Example:*
Take $\kappa = \theset{2} \iff \mch(2)$, then $\abs \kappa + \ell(\kappa) = 3$ and $f_{\theset z}(q) = c_1 + c_2 E_2(q)$.
In this case $[q^1] = [q^2] = 0$.

Note that surfaces in $\mch(2)$ have 1 vertex of cone angle $6\pi$ and all others of angle $2\pi$, corresponding to an abelian differential with a single zero of order 2.

A special type of square-tiled surfaces: 1 cylinder surfaces, where $\rho(\alpha)$ is a full length cycle.

This is in $\mch(3, 1)$, and corresponding surface $(\Sigma, \omega)$, which is a holomorphic 1-form with a triple zero and a single zero.
By Riemann-Hurwitz, $2g-2 = \deg \omega = 3+1 \implies g = 3$.

> Note: the genus here difficult to compute otherwise!


**Main Result of 1-Cylinder Surface Paper:**
1-cylinder surfaces have roughly a $1/d$ proportion in all square tiled surfaces, where $d = \dim \mch(\kappa)$.

Recall that we can get a square tiled surface from any unicursal curve:

![Image](figures/2020-01-23-14:41.png)\

Note that these aren't always translation surfaces:

![Image](figures/2020-01-23-14:43.png)\

This has transition maps that looks like $z \mapsto i^k z + z_0 = w$ and thus $dz = i^k dw$, so $dz^k$ is the well-defined object here.

Recall

- $(\Sigma, dz) \iff$ translation surfaces
- $(\Sigma, (dz)^2) \iff \frac 1 2 \dash$translation surfaces
- $(\Sigma, (dz)^4) \iff \frac 1 4\dash$translation surfaces
  - I.e. a Riemann surface with a section of $K_\eps^{\tensor 4}$. 


Can consider a *tricursal* curve instead (a curve that requires lifting the pen 3 times).
Taking the dual complex yields a cube. 

![Image](figures/2020-01-23-14:52.png)\

This has charts $w = z^{4/3}$ and thus $(dz)^4 = w\inv (dw)^4$.
Let $\mch(\kappa)$ be the quartic differentials with $dv \omega = \sigma \kappa_i p_i$.
Then the cube is in $\mch_4(-1, \cdots -1)$ with $8$ copies of $-1$.

This gives cone angles $n \frac{2\pi}{4}$ and the order of the zero/pole is $n-4$.

This example is in $\mch_4(-3, -3, -2)$.

**Proposition:**
The generating functions for square-tiled surfaces $\mch_4(\kappa)$ is now a quasimodular form for $\Gamma_1(4)$.

## Open Questions

**Question (can find numerical evidence?):**
How can we count these in terms of the symmetric group? 
Analogous result to proportion result earlier?
Can try to lift square example, but admits no map from a torus -- instead, quotient square by $\ZZ/4\ZZ$ and take fundamental domain.
What kind of branching do these covers have?

Every center of a square is branched of order 4.
Every center of an edge is branched of order 2.
The ramification order of a vertex is its valence, divided by the number of squares meeting at that vertex.
The degree of the covering map is $4n$ where $n$ is the number of squares.

Identify the fundamental domain with $\PP^1$,
We get a monodromy representation:

\begin{align*}
\rho: \pi_1(\PP^1 \setminus(0, 1,\infty), \ast) \to S_{4d} \\
\gamma_0 \mapsto \rho(\gamma_0)
.\end{align*}

Note that $\gamma_0 \gamma_1 \gamma_\infty = 1$.

![Image](figures/2020-01-23-15:13.png)\

It then follows that this has cycle type $(4, \cdots ,4)$.

So the number of square tiled surfaces in $\mch_4(\kappa)$ is given by

\begin{align*}
\frac{1}{(4d)!} = \# \theset{ (\sigma_0, \sigma_1, \sigma_\infty) \suchthat \sigma_0 \in C_{4, \cdots, 4} (d), \sigma_1 \in C_{2, \cdots ,2} (2d), \sigma_{\infty} \in C_{4, \cdots ,4, 4+k, \cdots, 4 + k_n}, \sigma_0 \sigma_1 \sigma_\infty = 1}
.\end{align*}

Would be nice to figure out what the proportionality constant here is.

# Ben's Talk: Eskin's Ramified Coverings of a Torus

Today: Section 2.
Main theorem: a certain generating function is quasimodular.

Consider a torus $T$ with marked points $Z = \theset{z_1, \cdots z_s}$ with a map $\sigma: \Sigma \to T$ which is *unramified* outside of $Z$.

![Image](figures/2020-01-30-14:04.png)

Then $\sigma$ is determined by the representation $\pi_1(T\setminus Z, \ast) \to \Aut(\sigma\inv(\ast)) \cong S_d$ if $\sigma$ is a degree $d$ cover.
There is a correspondence

\begin{align*}
\correspond{\text{d-fold covers ramified over } \theset{z_i}} 
\iff
\hom(\pi_1(T\setminus Z, \ast), S_d)
.\end{align*}

Fix $C_1, \cdots, C_s$ conjugacy classes in $S_d$, and let $H_d(C_1, \cdots, C_s)$ be the homomorphisms sending small loops around $z_i$ to $C_i$.

![Image](figures/2020-01-30-14:09.png)\

Then cycle types correspond to branching orders over points.

One way to count d-fold covers is to look at the weights of $\Aut(\sigma)$.
We define

\begin{align*}
\mathrm{Cov}_d (C_1, \cdots, C_s) = \sum_{\sigma \in H_d(C_i) / S(d)} \frac{1}{\abs{\Aut(\sigma)}} = \frac{\abs{H^d(C_1, \cdots, C_2)}}{d!}
.\end{align*}

This just yields a number, so we can define a generating function:

\begin{align*}
\mathrm{Cov}(C_1, \cdots, C_s) = \sum_{d=0}^\infty q^d \mathrm{Cov}_d(C_1, \cdots, C_s)
.\end{align*}

**Important note:**
To make sense of $C_i$ in all $S^d$, write $C_i = (m_{i1}, \cdots , m_{ik})$ and set $\mathrm{Cov}_d(C_i) = 0$ iff $i_k < d$, and otherwise pad with 1s to get $C_i \definedas (m_{i1}, \cdots, m_{ik}, 1, 1, \cdots)$.

*Remark:*
The generating function counts all (possibly) disconnected covers.
Example: $\mathrm{Cov}(\wait)$ counts all unramified covers, and $\phi(C_1, \cdots C_s)$ counts connected covers.
These generating functions will end up being quasimodular.

**Definition**:
Set $H_d^1(C_1, \cdots, C_S) \subset H_d(C_1, \cdots, C_S)$ be the degree $d$ coverings *without* unramified components.

**Definition**:
Set $\mathrm{Cov}'(C_1, \cdots, C_S)= \sum q^d \frac{\abs{H_d^1(C_1, \cdots, C_s)}}{d!}$.

This yields the generating function for number of coverings without unramified components.

**Lemma**:
$\mathrm{Cov}' (C_1, \cdots, C_S) = \mathrm{Cov}(C_1, \cdots, C_S) / \mathrm{Cov}()$.

*Sketch of proof:*
Look at coefficients in the expansion

\begin{align*}
\abs{H_d(C_1, \cdots, C_S)} = \sum_{k=0}^d {d\choose k} \abs{H_k(C_1, \cdots , C_S)} \cdot \abs{H_{d-k}()}
.\end{align*}

Recall that $\mathrm{Cov}_d(C_1, \cdots C_S)$ correspond to $S_d$ representations of $\pi_1(T\setminus Z)$, and we can get a presentation 
$$\pi_1(T\setminus Z) = \generators{\sigma, \gamma, g_i \suchthat [\omega,\gamma] \prod g_i = e}
.$$

![Image](figures/2020-01-30-14:33.png)\

> This just comes from doing one full loop around the outside square, which should be equivalent (up to orientation) to going around all 3 punctures.

**Definition:**
Conjugacy classes corresponds to partitions of $d$.

**Definition:**
For $C$ a conjugacy class correspond to a partition $\lambda'$ in $S_d$. 
For any partition $\lambda$, let $f_C(\lambda) = \# C \chi^\lambda(C) / \dim \lambda$, where $\chi^\lambda$ is the irreducible representation associated to $\lambda$ (note that this is a rescaling of a row of the character table, since irreducible reps happen to correspond to conjugacy classes for $S_d$).
This is a class function, so $\chi^\lambda(C)$ is its value on any $c\in C$, and $\dim \lambda \definedas \chi^\lambda(1)$.

**Proposition:**
$\mathrm{Cov}_d(C_1, \cdots, C_S) - \sum_{\abs \lambda = d} \prod_{i=1}^S f_{C_i}(\lambda)$.

*Proof:*
Let $\prod C_i = \prod \sum_{a_j\in C_i} a_j \in Z(\CC[S_d])$.
Why? Commutating elements reindexes the sum here.

We also have $\sum_{g, h} [g, h] \prod C_i \in Z(\CC([S_d]))$, since $[g ,h]^k = [g^k, h^k]$, which again just reindexes the sum.

We'll pull out a factor of $\frac 1 {d!} [\id]$, and consider what the coefficient of $[\id]$ is in the group algebra.

Thus $\frac{1}{d!} [\id] = \frac{1}{(d!)^2} \tr_{\text{reg}}\qty{ \sum [g, h] \prod C_i  }$, where we consider the regular representation: multiplying by elements of $g$ is a fixed-point free action, so these are traceless (no terms on the diagonal) whereas the trace of the identity is exactly the dimension of the regular representation, which is $d!$ (?).

Thus we define $\tr_{\text{reg}}(\wait) = \sum_{\lambda} (\dim \lambda) \tr_\lambda(\wait)$.

Note that $\rho: S_d \to \GL(V)$ extends to $\rho: \CC[S_d] \to \endo(V)$, and thus by Schur's Lemma, the image of the center will commute with every endomorphism.

We get a formula:

\begin{align*}
\frac{[\id]}{d!} 
&= \frac{1}{(d!)^2} \sum_{\abs \lambda = d} \dim \lambda \tr_{\lambda}(\sum [g, h] \prod_i C_i) \\
&= \sum_{\abs \lambda = d} \frac{(\dim \lambda)^2}{(\abs \lambda !)^2} W(\lambda) \tr_\lambda(\prod C_i)
.\end{align*}

where $W(\lambda)$ is a scalar $\sum [g, h]$ by the above observation.

Recall that $f_c(\lambda) = \# C \frac{\chi^\lambda(C)}{\dim \lambda}$ and thus

\begin{align*}
\frac{[\id]}{d!} = \sum_{\abs \lambda = d} \qty{\frac{\dim \lambda}{\abs \lambda}}^2 W(\lambda) \prod f_{C_i}(\lambda)
.\end{align*}

**Fact:**
$W(\lambda) = \qty{\frac{\abs \lambda !}{\dim \lambda}}^2$.

## Quasimodularity

**Fact:**
The functions $f_C(\lambda)$ are polynomial functions in the following way:

**Definition:**
Let $\Lambda^*(n)$ be the algebra of "shifted symmetric functions", i.e. symmetric functions in the $\lambda_i - i$.

> Subtlety: it's necessary to order to partition in weakly decreasing order of the numbers occurring!
> Example: $p(\lambda) = (\lambda_1 - 1)(\lambda_2 - 2)$, but swapping $\lambda_1 \iff \lambda_2$ results in $((\lambda_2 - 2) + 1)((\lambda_1 - 1) - 1)$ is no longer symmetric in $\lambda_i - i$.

Then define $\Lambda^* = \lim_{\from} \Lambda^*(n)$.

> Schur-Weyl duality: bijects representations of $\GL_n$ and $S_n$.

Then $f_c \in \Lambda^*$ and the degree of $f_C$ is exactly the number of non-fixed points of any permutation from $C$.

From the paper,

\begin{align*}
\mathrm{Cov}(C_1, \cdots, C_S) &= \sum_\lambda q^{\abs \lambda} \prod_i f_{C_i}(\lambda) \\
\mathrm{Cov}() &= \sum a^{\abs \lambda} = \qty{ \prod_{n\geq 1} 1-q^n }\inv = (q)_\infty\inv
.\end{align*}

> Note: the partition functions appears!

For any $F\in \Lambda^*$, we set $\generators{F}_q = (q)_\infty \sum_\lambda q^{\abs \lambda} F(\lambda)$ and 
$$
\generators{F_1 \mid F_2 \mid \cdots \mid F_S}_q = \sum_{\alpha\in \pi_S} (-1)^{\phi(\alpha) - 1} (\phi(\alpha) - 1)! \prod_{k=1}^{\phi(\alpha)} \generators{\prod_{i\in\alpha_j} F_i}_q
.$$

> This comes from Möbius inversion, and is a form of inclusion-exclusion.

**Proposition:**
$\mathrm{Cov}'(C_1, \cdots, C_S) = \generators{f_{C_1} \cdots f_{C_S}}_q$ and $\phi(C_1, \cdots, C_S) = \generators{f_{C_1} \mid \cdots \mid f_{C_S}}_q$.

**Theorem:**
For all $F\in \Lambda^*$, $\generators{F}_q$ is a quasimodular form, i.e in $\CC[E_2, E_4, E_6]$ where $E_i(q) = \const + \sum \sigma+{i-1} (n) q^n$.
