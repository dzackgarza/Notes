
# Monday July 6th

## Motivation

We'll start with $X$ a finite CW complex.

:::{.definition title="CW Complex"}
A **CW complex** is a topological space built by inductively attaching $i\dash$dimensional discs ($i\dash$cells) $\DD^i \definedas \theset{\vector x\in \RR^i \suchthat \norm{\vector x} \leq 1}$ along their boundary $\bd \DD^i = S^{i-1} \definedas \theset{\vector x\in \RR^i \suchthat \norm{\vector x} = 1}$.
:::

:::{.definition title="Euler Characteristic"}
Define $\chi(X) = \sum_{i\in \ZZ} (-1)^i \abs{C_i}$ where $\abs{C_i}$ is the number of $i\dash$cells.
:::

:::{.remark}
Note that a homotopy equivalence between spaces induces an equality between Euler characteristics.
:::


Recall that we can define the cellular chain complex
\[
C_*^{\text{cell}}(X, \CC)\definedas \cdots \mapsvia{\del_{i+1}} C_n^{\text{cell}} (X, \CC) \mapsvia{\del_{i}} \cdots \to C_0^{\text{cell}}(X, \CC)
\]

and $H_i(X, \CC) \definedas \ker \del_i / \im \del_{i+1}$.

:::{.exercise title="?"}
\[
\sum (-1)^i \dim H_i(X, \CC) = \chi(X)
\]
:::

In this sense, cellular homology categorifies the Euler characteristic: we've replaced a set of objects with a category.
This is an improvement because we may not have maps between the elements of sets, *but* we do have maps between objects in a category.
We can also talk about things such as functoriality.

:::{.example}
The euler characteristic is a weaker invariant than homology.
Note that
\[  
\chi(S^1) = 0 &\quad\text{and}\quad \chi(S^1\disjoint S^1) = 0 \\ \\ 
H_0(S^1) = \CC &\quad\text{while}\quad H_0(S^1\disjoint S^1) = \CC\oplus \CC
,\]
so these aren't distinguished by euler characteristic alone.
:::


Our first goal will be to assign invariants to oriented links $L$, where homotopy equivalence will be replaced with isotopy.
We'll assign a Khovanov complex $C_*(L,\CC)$, a complex of $\ZZ\dash$graded $\CC\dash$vector spaces, along with the Jones polynomial $J(L) \in \ZZ[t, t\inv]$.
By taking the (graded) Euler characteristic of the chain complex, we'll recover $J(L)$.

## Setup

:::{.definition title="Links and Knots"}
A *link* $L$ is a smooth, closed 1-dimensional embedded submanifold of $\RR^3$. 
$L$ is a *knot* if it consists of one connected component.

:::

We have planar projections:

![Planar projection of the Hopf link](figures/image_2020-07-06-11-30-13.png){width=250px}

Under this correspondence, isotopy of knots will correspond to planar isotopy of the diagrams and the following 3 Reidemeister moves:

:::{.definition title="Reidemeister Moves"}
There are three planar moves that preserve the isotopy class of a planar projection of a knot:

![Reidemeister Moves](figures/image_2020-07-06-11-31-38.png){ width=300px }

:::

:::{.example}
How to change knot diagrams using Reidemeister moves:


![Changing knot diagrams using Reidemeister moves.](figures/image_2020-07-06-11-35-44.png){ width=400px }

:::


We now want to take an oriented, planar link diagram $D$ and associate to it a polynomial $J(D)$.
We start by defining the Kauffman bracket

:::{.definition title="Kauffman Bracket"}
Let $D_f$ be $D$ with the orientation forgotten, then $\gens{D_f} \in \ZZ[v, v\inv]$ is defined recursively by

![Recursive definition of Kaufman bracket](figures/image_2020-07-06-11-40-29.png){width=400px}

In the last case, the first term is a "0-resolution/0-smoothing" and the second is a "1-resolution/1-smoothing".
:::

:::{.definition title="Positive and Negative Crossings"}
We have a notion of positive/negative crossings:

![Positive and negative crossings.](figures/image_2020-07-06-11-44-50.png){width=300px}

:::

:::{.definition title="The Jones Polynomial"}
We set 
\[
J(D) = (-1)^{n_-} v^{n^+ - 2n_-} \gens{D_f}
.\]
:::


:::{.example}
\hfill

1. $J(S^1) = v + v\inv$

2. $J(?) = (-1) v^{-2} \qty{ -v^2 (v+v\inv)} = v+v\inv$.

3. $J(?) = v^{-6} + v^{-4} + v^{-2} + 1$ 

![Bracket of the Hopf link.](figures/image_2020-07-06-11-50-40.png)

:::

:::{.proposition title="Invariance under Reidemeister moves"}
The Jones polynomial is invariant under move $R1$.
:::

:::{.proof}
Can be checked in diagrams:

![$J(D') = J(D)$](figures/image_2020-07-06-11-54-27.png){width=450px}

:::

:::{.remark}

You can now check that 
\[
J(D') = (-1)^{n_-(D)} v^{n_+(D) + 1} - 2n_-
.\]
:::



:::{.exercise title="?"}
Check invariance under R2, R3.
:::



# Tuesday July 7th

Recall that we had recursive rules for computing the Kausffman bracket, and a normalization factor for the Jones polynomial that made it into an invariant.
We'd like a closed formula for these.

We do this by ordering the crossings of the unoriented link $1, \cdots, n$, then there is a correspondence
\[
\theset{0, 1}^n &\iff \text{Complete resolutions} \\
(\alpha_1, \cdots, \alpha_n) &\iff \alpha_i \text{ resolves the $i$th crossing}
.\]

:::{.example}

![](figures/image_2020-07-07-11-07-33.png)
:::

:::{.claim}
\[
\gens{D} = \sum_{\alpha \in \theset{0, 1}^n} (-1)^{\abs \alpha}  v^{\abs \alpha} (v+v\inv)^{c_\alpha(D)}
,\]

where $\abs \alpha$ is the number of 1-resolutions and $c_\alpha$ is the number of circles in the resolution corresponding to $\alpha$.
:::


:::{.proof}
Idea: look at resolving the $n$th crossing locally and apply the recursive relation.
Then rewrite the sum by appending $\alpha_n = 0$ and $\alpha_n = 1$ respectively.
Note that we can rewrite the sum as 
\[
\sum_{r=0}^n (-1)^r \sum_{\abs \alpha = r} v^r (v+v\inv)^{c_\alpha(D)}
.\]

This amounts to summing over the "columns" in the previous diagram:

![](figures/image_2020-07-07-11-22-49.png)

Here this yields
\[
(v+v\inv)^2 + (-1)2v(v+v\inv) + v^2 (v+v\inv)^2
.\]

:::

Note that this formula starts to resemble an Euler characteristic!

:::{.remark}
*Problem*:
The coefficient 
\[
\sum v^r(v+v\inv)^{c_\alpha(D)} \in \ZZ^{\geq 0}[v, v\inv]
\]
is a Laurent polynomial instead of a natural number, so this can't immediately be interpreted as a dimension of a vector space.

*Solution*: 
Replace finite-dimensional $\CC\dash$vector spaces by $\ZZ\dash$graded vector spaces.
The category consists of objects given by $V = \bigoplus_{i\in \ZZ} V_i$ and linear maps $f:V\to W$ such that $f(V_i) \subseteq W_i$ for all $i$.

:::

We previously had vector spaces categorifying the natural numbers by taking the dimension, so for graded vector spaces, we take the **graded dimension**:

:::{.definition title="Graded Dimension"}
\[
\grdim \bigoplus_{i\in\ZZ}V_i = \sum_{i\in \ZZ}\qty{\dim V_i}v^i \in \ZZ^{\geq 0}[v, v\inv]
.\]

:::


**Goal**:
We want to associate to an oriented link diagram $D$ a cochain complex of finite-dimensional graded $\CC\dash$vector spaces $C_i(D) \mapsvia{\bd} C_{i+1}(D) \to \cdots$.
Since each chain space decomposes, the differential does as well, and we get a large collection of chain complexes

<!--% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAB12BjKCHBAL6l0mXPkIoAjOSq1GLNgGEA+sCykABJIEghI7HgJEATDOr1mrRCBVqA1NK069IDAfFEAzGbmW2nHj5BYVdRQwkSUklZCwVrAN5+XRC3MSMpKJj5KxtVdQ1iZxSwjxRTaPNspTyHTULk-TSI7wrfOI5uRODG8KIyYyy-eM6ghtD3dORpAcqh3LVNAFptMdTestIZtpzbLFqNZaKe0uRvLdichNGBWRgoAHN4IlAAMwAnCABbJDIQHAgkNJtkgwEwGAxqAw6AAjGAMAAKJXSIAYMBeODG7y+gOo-yQpmBw2hUDymhWkJhcMREwkKLRGJcWO+iAJeMQ3kJoPBFNhCKRtNR6MxH2ZABZcQDEABWWZxLkQlGUvk0tiChkhJlIGV-SUANlll3YxNJBR0PKp-NV9OF2MQ+p1SAA7AaQWCFVDedSmlahYyRUgABwSpAAThdiHl5uV3usaptzLDDsQkl+F38RpJCwO5MVnstsetfttKeDyaBaYjbqjXvWdN9FAEQA-->
\begin{tikzcd}
\cdots \arrow[r] & {C_{i, 1}} \arrow[r, "{\bd_{i, 1}}"]   & {C_{i+1, 1}} \arrow[r]  & \cdots \\
\cdots \arrow[r] & {C_{i, 0}} \arrow[r, "{\bd_{i, 0}}"]   & {C_{i+1, 0}} \arrow[r]  & \cdots \\
\cdots \arrow[r] & {C_{i, -1}} \arrow[r, "{\bd_{i, -1}}"] & {C_{i+1, -1}} \arrow[r] & \cdots
\end{tikzcd}

This yields two gradings: the first is homological, the second is "internal".

:::{.remark}
We want the following:

1. If $D, D'$ are related by a finite sequence of Reidemeister moves, then 
\[
H_{i, j}(C_{\wait, \wait}(D)) = H_{i, j}(C_{\wait, \wait}(D')) = \ker \bd_{i, j} / \im \bd_{i-1, j} \text{ for all }i, j.
\]

2. Additionally,
\[
J(D) = \chi_{\gr}(C_{*, *}(D)) = \sum_{i\in \ZZ} (-1)^i \grdim \qty{ C_{*, *}(D) }
\]

Note that you can also take the dimension of the homology instead, and at the end of the day this yields $\sum_{i, j\in \ZZ} (-1)^i v^j \dim(H_{i, j})$.
:::


:::{.definition title="Homogeneous elements"}
For $A = \bigoplus A_i, B = \bigoplus B_i$, $a\in A$ is called *homogeneous* of degree $k$ if $a\in A_k$, i.e. it is a sum of basis elements from only the $k$th graded piece.
In this case we say $\abs a = k$.
:::

:::{.proposition title="Bases for various combinations of graded spaces"}
We can union bases over all graded pieces to get a basis for the entire space.

For direct sums $A\oplus B$, a basis is given by $(\alpha_i, 0)$ and $(0, \beta_j)$.
We put $\alpha_i$ in degree $\abs{\alpha_i}$, in which case
\[
\grdim(A\oplus B) 
&= \sum_{k\in \ZZ} \dim(\qty{A\oplus B}_k) v^k \\
&= \sum_k \dim A_k v^k + \sum \dim B_k v^k \\
&= \grdim(A) + \grdim(B)
,\]
so taking direct sums commutes with taking graded dimensions.

Similarly for tensor products $A\tensor_\CC B$, we get a basis $\alpha_i \tensor \beta_j$ placed in degree $\abs{\alpha_i}  + \abs{\beta_j}$. 
:::

:::{.exercise title="?"}
Show that
\[
\grdim(A\tensor_\CC B) = \grdim(A) \cdot \grdim(B)
.\]
:::

We also have degree shifts by $i$ for any $i$, denote $A(i)$, where $A_j \mapsto A_{j+i}$ for every $j$.
Thus the $k$th graded piece is given by $(A(i))_k = A_{k-i}$, thus 
\[
\grdim(A(i)) = v^i \grdim(A)
\]

:::{.example title="Important"}
\[  
H^*(S^2; \CC)
=
\begin{cases}
\CC & * = 0, 2 \\
0 & \text{else}.
\end{cases}
\]

Let $A\definedas H^*(S^2; \CC)(-1)$, which now has $\CC$ in degrees $\pm 1$, and $\grdim A = v + v\inv$.

Note that

- $(v+v\inv)^2$ corresponds to $A^{\tensor 2}$.
- $2v(v+v\inv)$ corresponds to $A(1)^{\oplus 2}$.
- $v^2(v+v\inv)$ corresponds to $A^{\tensor 2}(2)$.

So we can assemble these into a chain complex and take the Euler characteristic in order to recover the Kauffman bracket in the earlier example.
:::


:::{.theorem title="?"}
There exists a unique isotopy invariant of oriented links in $\RR^3$ called $P(D) \in \CC(a, v)$, a rational function in two variables, the HOMFLY-PT polynomial.
It satisfies

![](figures/image_2020-07-07-11-56-40.png) 

:::

:::{.example title="The Hopf Link"}
Yields
\[
P(D) = -a(aia\inv) + a^2 \qty{a-a\inv \over v-v\inv}^2
.\]

:::





# Wednesday July 8th

Recall that we assigned a chain complex of graded vector spaces to links, where the chains where various tensor powers and shifts of $\mca \definedas H^*(S^2; \CC)(-1)$.
We can consider the diagonal embedding
\[
S^s \mapsvia{\Delta} S^2 \cross S^2
\]

which induces maps on both cohomology and homology, and applying the Kunneth formula and the Poincare isomorphism, we get maps
\[
m:      H^*(S^2)^{\tensor 2} &\to H^*(S^2) \\
\delta: H^*(S^2) &\to H^*(S^2)^{\tensor 2}
.\]

We thus get maps
\[
m:        \CC[x]/(x^2) \tensor \CC[x]/(x^2) &\to \CC[x]/(x^2) \\
\delta:   \CC[x]/(x^2) &\to \CC[x]/(x^2) \tensor \CC[x]/(x^2)
.\]

See course notes for how to construct differentials out of these, categorifying the bracket, and how to correct with shifts to categorify the Jones polynomial.

## Lecture 3


:::{.definition title="Geometric Braids"}
For $n\geq 1$, the geometric braid $b$ on $n$ strands is a topological subspace of $\RR^2 \cross [0, 1]$ such that

a. $b \cong \disjoint_{i=1}^n [0, 1]$ is a homeomorphism
b. We have 
  \[
  b\intersect (\RR^2 \cross \theset{0}) &= \theset{(1,0,0), \cdots, (n,0,0)} \\
  b\intersect (\RR^2 \cross \theset{1}) &= \theset{(1,0,1), \cdots, (n,0,1)}
  .\]
c. The projection $\RR^2 \cross [0, 1] \mapsvia{\pr_2}$ maps each strand homeomorphically onto $[0, 1]$.


:::

:::{.remark}
Braids can be moved via isotopy, and part (c) prevents the following situation:

![Situation to rule out.](figures/image_2020-07-08-11-38-02.png){width=250px}

:::


There is a purely combinatorial description, namely braid diagrams.
Isotopies on the geometric side will correspond to planar isotopies and Reidemeister moves R2 and R3 (since R1 is ruled out).

![Moves 2 and 3.](figures/image_2020-07-08-11-42-13.png){width=250px}

:::{.theorem title="?"}
Two braids are isotopic iff their diagrams are related by planar isotopy and a finite sequence of Reidemeister moves.
:::

:::{.definition title="The Braid Monoid"}
Define $B_n$ to be the set of braid diagrams on $n$ strands up to isotopy and Reidemeister moves, then there is a multiplication given by stacking braid diagrams.
This is associative with identity, so we obtain a monoid:

![Braid monoid.](figures/image_2020-07-08-11-45-36.png){width=650px}

:::

:::{.definition title="Elementary braids"}
We define elementary braids:

![](figures/image_2020-07-08-11-46-13.png)

:::

:::{.remark}
\hfill

- $\theset{\sigma_i^\pm}_{i=1}^{n-1}$ generates $B_n$ as a monoid, so $\beta \in B_n$ implies 
\[
\beta = \prod_{k=1}^n \sigma_{i_k}^{\eps_k} \text{ where } i_k \in \theset{1, \cdots, n-1} \text{ and }\eps_j \in \theset{\pm 1}
.\]

- $\sigma_i^+ \sigma_i^- = \sigma_i^- \sigma_i^+ = 1$ for all $i$, thus every braid $b$ has a two-sided inverse given by reversing the $\sigma_{i_k}$s and swapping $\pm$, so $B_n$ is a group.

We can describe this group completely algebraically as $B_n^{\text{Artin}}$, the group generated by $\theset{\sigma_i}_{i=1}^{n-1}$ with relations 
\[  
\sigma_i \sigma_j &= \sigma_j \sigma_i && \text{for } \abs{i-j} \geq 2 \\ 
\sigma_i \sigma_{i+1} \sigma_i &= \sigma_{i+1} \sigma_i \sigma_{i+1} &&  \text{for } i\in \theset{1, \cdots, n-2}
.\]

:::

:::{.proposition title="?"}
There is an isomorphism
\[
B_n^{\text{Artin}} &\mapsvia{\cong} B_n \\
\sigma_i &\mapsto \sigma_i^+ \\
\sigma_i\inv &\mapsto \sigma_i^-
.\]

:::

:::{.proof}
\hfill

**Well defined**:
Need to check that the map preserves the relations, this is a consequence of changing height of crossings by planar isotopy:

![Changing heights of crossings.](figures/image_2020-07-08-11-56-18.png)

![Changing heights of crossings.](figures/image_2020-07-08-11-57-06.png) 

- Surjectivity: clear by definition of map.

- Injectivity: omitted.

:::

:::{.remark}
Importantly, we have a way of going from braids to knots and links.
Let $D^{\text{or}}$ be the set of oriented planar link diagrams, then define a map
\[
B_n &\to D^{\text{or}} \\
b &\mapsto \hat b
\]

where $\hat b$ is given by "closing" the braid:

![](figures/image_2020-07-08-12-00-35.png)

:::


:::{.theorem title="?"}
Every oriented link in $\RR^3$ is isotopic to a closed braid.
:::

:::{.remark}
In fact, there is a map
\[
\disjoint_{n\geq 1} &\surjects D^{\text{or}} /\sim \\
b & \mapsto \hat b
\]
 
where the RHS is the equivalence relation generated by planar isotopy and Reidemeister moves.
This is not injective, since many braids can map onto the unknot.
:::



# Thursday July 9th

Problem: the map sending links to the Artin braid group is surjective but not injective, so we need to mod out by some form of equivalence in the domain.

We have a directed system of inclusions $B_n \injects B_{n+1}$, so we can consider the group $\disjoint_{n\geq 1} B_n$.
The equivalence relation we'll take is *Markov equivalence* $\sim_M$:

:::{.theorem title="?"}
$b \sim_M b' \iff ?$
:::

:::{.proof}
For the reverse direction

![](figures/image_2020-07-09-11-17-40.png)  

For the forward direction, see Kassel-Tuvaev's "Braid Groups" for a full rigorous proof.

:::

:::{.definition title="?"}
For any set $E$, a *Markov function* is a family of maps $\theset{f_n: B_n \to E}_{n\geq 1}$ such that

1. $f_n(\alpha \beta) = f_n(\beta\alpha)$ for all $\alpha, \beta\in B_n$

2. $f_{n+1}(i_n(\beta)\sigma_n\inv) = f_n(\beta) = f_{n+1}(i_n(\beta) \sigma_n)$ for all $n\geq, \beta \in B_n$.
:::

*Question*: where does the skein relation come from? 

Take $\FF_q$ a finite field of size $q$ and set $G = \Gl(n, \FF_q)$.
Define $C(G) = \theset{G\to \CC}$ which is a $\CC\dash$vector space with an associative multiplication given by 
\[
(f\ast f')(g) \da \sum_{n\in G} f(n) f'(n\inv g)
\]


Define 
\[
C\qty{\dcoset{B}{G}{B}} = \theset{f: G\to \CC \suchthat f(bg) = f(g) = f(gb)}
\]
the set of bi-invariant functions.
This is closed under $\ast$ with a unit defined by setting 
\[  
\delta_g(h) &= \indic{h=g} \\
\delta_0 &= {1\over \abs B} \sum_{g\in B} \delta_g
.\]

There is an augmentation map 
\[  
\eps: \qty{\dcoset B G B} &\to \CC \\
f &\mapsto  \sum_{g\in G} f(g) \in \CC
.\]
which is a $\CC\dash$algebra morphism.
Can we write down a basis?

Recall that the symmetric group is generated by adjacent transpositions, say $s_1, \cdots, s_{n-1}$, so we can write
\[
S_n \cong \gens{\bar s_1, \cdots, \bar s_{n-1} \suchthat \bar s_i^2 = 1, \bar s_i \bar s_j = \bar s_j \bar s_i, \bar s_i \bar s_{i+1} \bar s_i = \bar s_{i+1} \bar s_i \bar s_{i+1} }
.\]

> Need to check that elements in $S_n$ satisfy these relations, check cardinality, etc.

For any $w\in S_n$, we can consider its length $\ell(w)$ defined as the smallest number of adjacent transpositions need to write $w$ as a product of adjacent transpositions.
We define the *Bruhat cell* $B w B \definedas \theset{bwb\inv \suchthat b, b' \in B}$ where $B$ is a permutation matrix for $w$.

![Example of a permutation matrix for $s_i$](figures/image_2020-07-09-11-37-26.png)

:::{.exercise title="?"}

![](figures/image_2020-07-09-11-38-04.png)

:::


:::{.proposition title="?"}
The functions 
\[
\delta_w: G &\to \CC \\
\delta_w(g) &= {1\over \abs B}\indic{g\in BwB}
\]
as $w$ ranges over $S_n$ form a basis for $\qty{\dcoset B G B}$.
:::

:::{.proof}
Use the Bruhat decomposition $G = \disjoint_{w\in S_n} BwB$.
:::

## Multiplicative Structure

There is a multiplicative structure, since 
\[
(\delta_{s_i} \ast \delta_{s_i})(g) 
&\definedas \sum_{h\in G} \delta_{s_i}(h) \delta_{s_i}(h\inv g) \\
&= \sum_{h\in Gs_i B} {1\over \abs B} \delta_{s_i} (h\inv g) \\ \\
&= \sum_{\substack{ h\in S }} 
{1\over \abs{B}^2}
&& S = \ts{h\in B_{s_i} B \st h^{-1} g \in B_{s_i} B} \\
&= {\abs{Bs_i B \intersect gBs_i B} \over \abs{B}^2}
.\]

To express this in terms of our basis, check where $B_si B \intersect g B s_i B \neq \emptyset$.
If $h$ is in this intersection, then $h = bs_i b = gb'' s_i b'''$, so 
\[
g = b s_i b' (b''')\inv s_i (b'')\inv \in Bs_i Bs_i B \subset P_i
\]
where $P_i$ is a parabolic subgroup of $G$ defined by

![](figures/image_2020-07-09-11-47-18.png)

We can identify $P_i = Bs_i B \union B$ (i.e. add in upper triangular matrices).
We can thus write $\delta_{s_i} \ast \delta_{s_i} = \alpha \delta_{s_i} + \beta \delta_0$ where $\delta_0 = \delta_e$ and $\alpha, \beta \in \CC$.

Let $\bbone$ be the identity matrix,  then 

\[ 
{\abs{B s_i B} \over \abs{B}^2} 
= (\delta_{s_i} \ast \delta_{s_i}) (\bbone) 
= \alpha \delta_{s_i} + \beta \delta_0(\bbone)
.\]

where the first term is in $B$ and thus equals zero, and the second term equals $1\over \abs B$, so this equals $\beta{1\over \abs{B}}$, thus $\beta = {\abs{Bs_i B} \over \abs{B} }$.
Similarly, we get $\alpha = {\abs{Bs_i B} \over \abs B} - 1$.

A counting argument shows 
\[
\abs{B} = (q-1)^n q q^2 \cdots q^{n-1} = (1-1)^n q^{n(n-1) \over 2}
.\]

Similarly 
\[
\abs{Bs_i B} = (q-1)^n q^{{n(n-1) \over 2} + 1}
\implies 
{\abs{Bs_i B} \over \abs B} = 1
.\]
Thus
\[
(\delta_{s_i} \ast \delta_{s_i}) 
= (q-1) \delta_{s_i} + q\delta_0
.\]

In particular, $\delta_{s_i}$ is a unique with inverse $q\inv \delta_{s_i} - (1-q\inv) \delta_0$.

:::{.claim}
More generally, for $s_i \in S_n, w\in S_n$ with $\ell(s_i w) > \ell(w)$, we have $\delta_{s_i} \ast \delta_w = \delta_{s_i w}$.
:::

:::{.proof}
Omitted, see Bump "Hecke Algebras".
:::

Upshot: we have a group morphism
\[
\phi: B_n &\to C\qty{\dcoset B G B}\units \\
\sigma_i &\mapsto \delta_{s_i}
.\]

Need to check that this is well-defined using the braid relations, comes from 
\[
\delta_{s_i} \ast \delta_{s_j} = \delta_{s_i s_j} = \delta_{s_j s_i} = \delta_{s_j} \ast \delta_{s_i}
\]

# Friday July 10th

## The Iwahori-Hecke Algebra

:::{.definition title="Iwahori-Hecke Algebra"}
For $n\geq 1$ and $R$ a commutative ring with $q,z \in R\units$, define the *Iwahori-Hecke algebra* $H_n^R(q, z)$ is the associative unital $R\dash$algebra 
\[
\gens{T_i \suchthat R} \text{where the relations $R$ are defined by } \\
T_i T_j &= T_j T_i && \abs{i - j} \geq 2 \\
T_i T_{i+1} T_i &= T_{i+1} T_i T_{i+1} \\
T_i^2 &= zT_i q1
\]
where $1$ is the unit of the algebra.
The first relation is the *braid relation*, the other two are *quadratic* or *skein* relations.

:::

:::{.theorem title="Basis of the Hecke Algebra"}
\hfill

1. For all $w \in S_n$, there exists a unique $T_w\in H_n^R(q, z)$ such that whenever $w = \prod s_{i_k}$ is a minimal expression as a product of simply transpositions, then $T_w = \prod T_{i_k}$.
2. The set $\theset {T_w \suchthat w\in S_n}$ is an $R\dash$module basis of $H_n^R(q, z)$ (the standard basis).
:::

:::{.remark}
\hfill

1. $H_n^R(q, z)$ is a two-parameter generalization of $C(\dcoset B G B)$, and in fact there is an $R\dash$algebra isomorphism 
\[
H_n^\CC(q, q-1) &\cong C(\dcoset B G B)\\
T_w &\mapsto \delta_w
.\]

2. There is an $R\dash$algebra isomorphism $H_n^R(1, 0) \cong R[S_n]$, so we interpret this as a deformation of the group algebra $R[S_n]$.

3. There is an $R\dash$algebra isomorphism 

  \[
  H_n^R(q, z) \cong H_n^R(q, z) \cong R[B_n] / \gens{T_i^2 - zT_i - q\cdot 1}
  \]
  as a quotient of the group algebra on the braid group.

There is also an $R\dash$algebra morphism
\[
\iota_n: H_n^R(q, z) &\to H_{n+1}^R(q, z) \\
T_i &\mapsto T_i
.\]

:::

:::{.theorem title="?"}
There exists a unique collection of $R\dash$linear maps for $n\geq 1$:
\[
\tr_n: H_n^R(q, z) &\to R
.\]

This is uniquely determined by the properties
\[
\tr_n(ab) &= \tr_n(ba) 
&& \forall a,b\in H_n^R(q ,z) \\
\tr_{n+1}(\iota(a) T_n) &= \tr_n(a) = \tr_{n+1} (\iota(a) T_n\inv) 
&&\forall a\in H_n^R(q, z) \\
\tr_{n+1}(\iota(a)) &= {1 - q \over z} \tr_n(a) 
&&\forall a \in H_n^R(q, z) \\
\tr_1(1) &= {1 -q \over z}
.\]

:::

:::{.proof}
See KT, slightly technical. Just have to do it and show uniqueness.
:::

:::{.remark}
Note that a function from the braid group satisfying the first two conditions gives a Markov function.
:::


:::{.example}
Take $n=3$.
Let $1\in H_3^R(q, z)$.
\[
\tr_3(1) \in H_3 
&= {1 -q \over z} \tr_2(1) \in H_2 \\
&= \qty{1 - q \over z}^2 \tr_1(1) \in H_1 \\
&= \qty{1-q \over z}^3
.\]

Now consider $T_1$. 
Using the fact that $a=1 \implies \iota(a) = 1$,
\[
\tr_3(T_1) 
&= {1-q \over z} Z \tr_2(T_1) \\
&= Z \tr_1(1) \\
&= Z^2 \\
&= \tr_3(T_2) \quad Z  \\
&= {1-q \over z}
.\]

Now using relation 2 twice,
\[
\tr_3(T_1 T_2) = \tr_2(T_1) = \tr_1(1) = Z = \tr_3(T_2 T_1)
.\]

Now using the quadratic relation,
\[
\tr_3(T_2 T_1 T_2) 
&= \tr_3(T_1 T_2^2) \\
&= \tr_3(zT_1 T_2 + qT_1) \\
&= z\tr_3(T_1 T_2) + q\tr_1(T_1) && \text{by } R\dash\text{linearity}\\
&= zZ = qZ^2
.\]
:::


:::{.theorem title="?"}
The family $\theset{\tr_n \circ w_n: B_n \to R}_{n\geq 1}$ defined by

\begin{tikzcd}
B_n \ar[r, "w_n"] & H_n^R(q, z)\units \ar[r, "\tr_n"] & R \\
\sigma_i \ar[r] & T_i \ar[r] & \tr_n(T_i)
\end{tikzcd}
\[
\]
is a Markov function.

:::


:::{.proof}
Clear, because the first two relations are defined precisely to do this.
:::

:::{.remark}
Taking $R = \CC(a, v)$ with $q = a^{-2}$ and $z = a\inv(v - v\inv)$ precisely recovers the HOMFLY-PT polynomial!
More precisely, if $D$ is an oriented link diagram with $b\in B_n$ and $\hat b = D$, then $P(D) = \tr_n(w_n(b))$.

\[
T_i^2 - zT_i -q1= 0 
&\mapsvia{\cdot T_i\inv} T_i -z1 - qT_i\inv = 0 \\
&\implies T_i - a\inv(v-v\inv)1 - a^{-2} T_i\inv = 0 \\
&\implies aT_i - (v-v\inv)1 - a\inv T_i\inv = 0
.\]

Note that since HOMFLY was a unique invariant, it suffices to check that this polynomial satisfies the skein relations and takes the correct value on the unknot.

To see that it takes the right value on the unknot, we can compute
\[
\tr_1(w_1(1)) = \tr_1(1) = {1-q \over z} = {1 - a^{-2} \over a\inv(v - v\inv)} = {a\inv(a - a\inv) \over a\inv(v - v\inv)} = {a-a\inv \over v-v\inv}
.\]

Then to check that it satisfies the skein relations,
given an oriented link diagram, write the various resolutions at closures of braids:

![](figures/image_2020-07-10-11-40-29.png)


\[
&a \tr_n \circ w_n(\alpha \sigma_1 \beta)- a\inv \tr_n \circ w_n (\alpha \sigma_i\inv \beta) - (v-v\inv) \tr_n \circ w_n(\alpha \beta) \\ \\
&= a \tr_n \qty{ w_n(\alpha) T_i w_n(\beta)} - a\inv \tr_n \qty{ w_n(a) T_i\inv w_n(\beta)} - (v-v\inv) \tr_n\qty{ w_n(\alpha) w_n(\beta)} \\ \\
&= \tr_n \qty{ a \qty{ w_n(\alpha) T_i w_n(\beta)} - a\inv \qty{ w_n(a) T_i\inv w_n(\beta)} - (v-v\inv) \qty{ w_n(\alpha) w_n(\beta)}} \\ \\
&= \tr_n\qty{ w_n(\alpha) \qty{ aT_i - a\inv T_i\inv - (v-v\inv)  }w_n(\beta) } \\ 
&= 0
.\]

:::

## Categorifying the Hecke Algebra

Idea: to categorify HOMFLY-PT, we will try to categorify the Hecke algebra.
This doesn't quite make sense yet: what does it mean to categorify an entire algebra instead of just a number?

:::{.definition title="Additive Categories"}
A category $\mca$ is *additive* iff

1. The homs $\mca(X, Y)$ is a $\ZZ\dash$module for all $X, Y\in \mca$
2. $\mca(X, Y) \cross \mca(Y, Z) \to \mca(X, Z)$ where $(f, g) \mapsto g\circ f$ is $\ZZ\dash$bilinear.
3. $\exists 0\in \mca$, an object that is both initial and terminal.
4. For all $X, Y\in \mca$, there exists a coproduct $X\oplus Y$
:::

:::{.definition title="Initial Objects"}
Recall that an object $I$ is initial in $A$ iff for every $X$ there exists a unique $I\to X$, and terminal iff there exists a unique $X\to I$.
:::

:::{.definition title="Coproduct"}
Recall that a coproduct of $X, Y$ is an object $X\oplus Y$ with two morphism $\iota_X: X\to X\oplus Y, \iota_Y: Y\to X\oplus Y$ satisfying the appropriate universal property.
:::

:::{.example}
$R\dash$bimodules over $R$ a ring.
:::

:::{.definition title="Essentially Small"}
An additive category $\mca$ is *essentially small* iff the isoclasses $[X]$ of objects form a set.
:::

:::{.definition title="Split Grothendieck Group"}
Assume $\mca$ is additive and essentially small.
Then we can define a free abelian group on 
\[
F(\mca) \definedas \theset{[X] \suchthat X\in \mca}
\]
along with a subgroup
\[
N(\mca) \definedas \theset{[X\oplus Y] - [X] - [Y]}
.\]
Define the *split Grothendieck group* as the following:
\[
K_0^\oplus \definedas F(A) / N(A)
\]
:::


:::{.remark}
Note that this starts to look like categorification: we can express direct sums in terms of sums in a module.
Notation: mod denotes finitely generated, Mod denotes full categories.
:::

:::{.example}
$\mca = k\dash$mod, the category of finite-dimensional $k\dash$vector spaces.
There is a well-defined group morphism defined on generators
\[
\phi: F(\mca) &\surjects \ZZ \\
[V] &\mapsto \dim_k(V)
\]
which is surjective since $-[V]$ exists in the domain and $[k^n] \mapsto n$ for all $n$.

Note that this will factor through $K_0^\oplus(\mca) = F(\mca)/ N(\mca)$ via a map $\bar\phi$ iff $N(\mca) \subseteq \ker \phi$.
We can check
\[
\phi\qty{[V\oplus W] - [V] - [W] } 
= \dim(V\oplus W) - \dim(V) - \dim(W) = 0
.\]

:::{.claim}
$\phi$ is actually injective.
:::

:::{.proof}
Suppose 
\[
0 = \bar\phi\qty{ \sum \lambda_i [V_i]} = \sum \lambda_i \bar \phi([V_i]) = \sum \lambda_i \dim(V_i)
.\]

We can now check
\[
\sum \lambda_i [V_i] = \sum \lambda_i \dim(V_i) [k] = [k] \sum \lambda_i \dim(V_i)
,\]
where we use the fact that if $\dim V = n$, then $[V] = [k^n] = n[k]$.
:::

:::

:::{.definition title="Categorification"}
Let $G$ be an abelian group, then $\mca$ **categorifies** $G$ iff $K_0^\oplus(\mca) \cong G$.
:::




# Monday July 13th

## Ring structure on $K_0^\oplus(\id)$.


:::{.definition title="Monoidal Categories"}
A *monoidal category* is a tuple $(\mcc, \wait \tensor \wait, 1, \alpha, \ell, r)$ such that

- $\mcc$ is a category
- $\wait \tensor \wait: \mcc \cross \mcc \to \mcc$ is a bifunctor.
- $1\in \mcc$
- Natural isomorphisms 
  \[
  \alpha_{X,Y,Z}: (X\tensor Y)\tensor Z \mapsvia{\cong} X\tensor (Y\tensor Z)
  \] 
  for all $X,Y,Z\in \mcc$ (associators).
- Natural isomorphisms 
\[
\ell_X: 1\tensor X &\mapsvia{\cong} X\\
r_X:X\tensor 1 &\mapsvia{\cong}X
\] and for all $X\in \mcc$.

Along with coherence axioms: for all $W,X,Y,Z\in \mcc$,

![](figures/image_2020-07-13-11-09-53.png)


\begin{tikzcd}
X \tensor(1\tensor Y)\ar[rd, "\id_x \tensor \phi_Y"] \ar[rr, "\alpha_{X, 1, Y}"] & & X\tensor 1 \tensor Y \ar[ld, "r_X \tensor \id_Y"] \\
& X\tensor Y &
\end{tikzcd}

:::

:::{.remark}
If $\mcc$ is additive, we require $\wait \tensor \wait$ to be biadditive, i.e. $X\tensor \wait$ and $\wait \tensor Y$ are additive functors.
In particular, 
\[
X\tensor (V\oplus W) \cong (X\tensor V) \oplus (X\tensor W)
\] 
and similarly 
\[ 
(V\oplus W) \tensor Y \cong (V\tensor Y) \oplus (W\tensor Y)
.\]
:::

:::{.example}
$\rmod$ with $R$ a commutative unital ring, take $\tensor \definedas \tensor_R$ with $1$ the "regular left $R\dash$module" ${}_R R$ with $R$ acting on the left by multiplication.
Similarly, $R\dash$bimodules, take $1 = {}_R R_R$.
:::


:::{.proposition title="?"}
If $\mca$ is additive and $(\mca, \tensor, 1, \alpha, \ell, r)$ is monoidal, then setting $[X] \cdot [Y] \definedas [X\tensor Y]$ defines a ring structure on $K_0^\oplus(\mca) = F(\mca) / N(\mca)$.
:::

:::{.proof}
\hfill

- This is well-defined on $F(\mca)$.
- Unital: Check $[X][1] = [X\tensor 1] = [X] = [1\tensor X] = [1][X]$
- Associativity: 
\[
([X][Y])[Z] 
&= [X\tensor Y][Z] \\
&= [(X\tensor Y) \tensor Z]  \\
&= [X\tensor (Y\tensor Z)]  \\
&= [X][Y\tensor Z] = X([Y][Z])
.\]
- Distributive: Check.

Therefore $F(\mca)$ is a unital ring.

- Check $N(\mca) \subseteq F(\mca)$ is a two-sided ideal (use the isomorphism from the earlier remark.)
:::

:::{.example}
The group morphism $\bar \phi: K_0^\oplus(\kmod) \mapsvia{\cong} \ZZ$ is in fact a ring morphism.

- Check 
\[
\bar \phi([V][W]) 
&= \bar\phi([V\tensor_k W]) \\
&= \dim(V\tensor_k W) \\
&= \dim(V) \dim(W) \\
&= \bar\phi([V]) \bar\phi([W])
.\]
- Check $\bar\phi([k]) = \dim k = 1$.

For $\mca$ an additive category, for all $i\in \ZZ$ there exist additive functors

\[
(i): \mca &\to \mca \\
X &\mapsto (i)(X) = X(i)
.\]
:::

:::{.remark}
These satisfy $(j) \circ (i) = (i+j)$ and $(0) = \id_\mca$, so they will correspond to degree shifts.
:::

:::{.proposition title="?"}
Setting $v^i[X] \definedas [X(i)]$ defines a $\ZZ[v, v\inv]\dash$module structure on $K_0^\oplus(\mca)$.
:::

:::{.proof}
\hfill

- Check that this is well-defined on $F(\mca)$; the module axioms will follow from the above remark.

- Check that is descends to the quotient, i.e 
  \[
  v^i([X\oplus Y] -[X] - [Y])
  &= v^i]X\oplus Y - v^i[X] - v^i [Y] \\
  &= [(X\oplus Y)(i)] - [X(i)] - [Y(i)] \\
  &= [X(i)\oplus Y(i)] - [X(i)] - [Y(i)]
  .\]
:::

:::{.exercise title="?"}
Show that $K_0^\oplus(k\dash\text{grmod}) \cong \ZZ[v, v\inv]$ where $[v] \mapsto \sum_{k\in \ZZ} \dim(V_n)v^n$ is an isomorphism of $\ZZ[v,v\inv]\dash$modules (and in fact an isomorphism of $\ZZ[v,v\inv]\dash$algebras).
:::

:::{.remark}
For $(\mca, \tensor, 1, \alpha, \ell, r)$ a monoidal category with additive functors $(i)$ as above, if
\[
(i) \circ (X\tensor \wait) \cong (X\tensor \wait) \circ (i) \\
(i) \circ (\wait \tensor Y) \cong (\wait \tensor Y) \circ (i) 
\]
using the fact that 
\[
(X\tensor Y)(i) \cong X \tensor (Y(i)) \cong (X(i)) \tensor Y
.\]
Thus $K_0^\oplus(\mca)$ is a $\ZZ[v, v\inv]\dash$algebra.
:::

Recall that $H_n^R(q, q-1)$ taking $R = \ZZ[v, v\inv]$ with $q=v^{-2}$ and $q-1 = z$ was the Iwahari-Hecke algebra, generated by $\theset{T_i}_{i\leq n-1}$ and the braid/skein relations.

Substitute $Hs_i = vT_i$ (Soergel's correction) to obtain a new presentation of $H_n^{\ZZ[v, v\inv]}(v^{-2}, v^{-2}-1)$.
The generators are now $\ts{ H_{s_i} \st i\leq n-1}$ and 
\[  
H_{s_i} H_{s_{i+1}} H_{s_i} 
&= H_{s_{i+1}} H_{s_i} H_{s_{i+1}} \\
H_{s_i} H_{s_j} 
&= H_{s_j}  H_{s_i} 
&& 
\abs{i-j} \geq 2 \\
H_{s_i}^2 
&= v^2 T_i^2 \\
&= v^2 \qty{ (v^{-2} - 1)T_i + v^{-2}1} \\
&= (1-v^{-2}) T_i + 1 \\
&= (v\inv - v) H_{s_i} +1
.\]

Notation: we'll abbreviate $\mch(S_n) = H_n^{\ZZ[v, v\inv]} (v^{-2}, v^{-2} - 1)$.
There is a standard basis
 \[  
H_w \definedas H_{s_{i_1}} \cdots H_{s_{i_r}} = v^{\ell(w)} T_w 
&&
w\in S_n,\,\, 
w = s_{i_1} \cdots s_{i_r}, \,\, 
\ell(w) = r
 .\]
where $w$ is written as a minimal length reduced expression.

## Some technical tools

(1) The Bruhat order.

This is a partial order on the symmetric group $S_n$ where $w'\leq w$ iff there exists a word for $w'$ obtained by deleting some $s_i$ from the reduced expression for $w$.


:::{.example}
For $S_3$:

![](figures/image_2020-07-13-11-54-42.png)
:::


(2) The Bar involution.

There is a ring morphism 
\[
\mch(S_n) &\to \mch(S_n) \\
h &\mapsto \bar h
.\]
uniquely determined by $\bar{H_{s_i}} = H_{s_i\inv}$ (which incidentally equals $H_{s_i} + (v-v\inv)1$) and $\bar v = v\inv$.

:::{.theorem title="KL-Soergel"}
For all $w\in S^n$ there exists a unique $C_w \in \mch(S_n)$ such that

1. $\bar{C_w} = C_w$, self-duality
2. $C_w = H_w + \sum_{x < w} h_{x, w} H_x \in v\ZZ[v]$, upper triangularity.
:::


:::{.definition title="?"}
$\theset{C_w \suchthat w\in S_n}$ is the *KL-basis* of $\mch(S_n)$.
:::

This is a basis because we can refine $\leq$ to a total order, then write a change-of-basis matrix from the standard basis to this:

![](figures/image_2020-07-13-11-59-25.png)

The elements $h_{x, w} \in \ZZ[v, v\inv]$ are called the *KL-polynomials* where we set $h_{w, w} = 1$ and $h_{x, w} = 0$ when $x\not\leq w$.

:::{.example}
Note $C_e = H_e$ and 
\[  
C_{s_1} &= H_{s_1} + v1 \\
C_{s_2} &= H_{s_2} + v1
.\]

Thus (2) is satisfied, and (1) follows from
\[
\bar{C_{s_i}} 
&= \bar{H_{s_i} + v_1} \\
&= \bar{H_{s_1}} + \bar{v} 1 \\
&= H_{s_i\inv} + v\inv 1 \\
&= H_{s_i} + (v-v\inv)1 + v\inv 1 \\
&= H_{s_i} + v1
.\]

Can also check that
\[
C_{s_1 s_2} &= C_{s_1 s_2} 
&&\text{automatically self-dual} \\
&= (H_{s_1} + v) (H_{s_2} + v) \\
&= H_{s_1} H_{s_2} + v H_{s_2} + vH_{s_1} + v^2
.\]

Similarly expand $C_{s_2 s_1} = H_{s_2 s_1} + vH_{s_1} + vH_{s_2} + v^2$.

Finally compute 

\[
C_{s_2} C_{s_1} C_{s_2} 
&= (H_{s_2 s_1} +v H_{s_1} + vH_{s_2} + v^2 )(H_{s_2} + v) \\
&= H_{s_2 s_1 s_2} + v H_{s_1 s_2} + v H_{s_2}^2 + v^2 H_{s_2} = v H_{s_2 s_1} + v^2 H_{s_1} + v^2 H_{s_2} + v^4
.\]

Note that coefficients need to be contained in $v\ZZ[v]$ but we still need self-duality.
:::




# Tuesday July 14th

:::{.remark}
\hfill
- The KL basis can be complicated -- you can compute them recursively, but may need to subtract off "constant coefficients" to obtain self-dual elements.
- There are no closed formulas in general.
- For any $P\in ! + q \ZZ^{\geq 0}[q]$ there exists an $m\in \ZZ$ such that $v^m P(v^{-2})$ occurs as a KL-polynomial.
- **The KL Positivity Conjecture**: 
  $h_{x, w} \in \ZZ^{\geq 0} [v]$, and in fact these non-negative coefficients can be realized as the graded dimension of the local intersection cohomology of Schubert varieties.
:::

## Why care about KL Positivity?

Set 
\[
\lieg = \liesl(n, \CC) = \theset{A\in \CC^{n\times n} \suchthat \tr(A) = 0}\\
\text{with } 
[AB] = AB - BA
.\]

The case of finite-dimensional representations is well understood, since everything decomposes into simple modules.
In the infinite case, we consider the principal block of category $\OO$, denoted $\OO_0(\lieg)$.

There is a correspondence
\begin{tikzcd}
\correspond{\text{Simple modules in } \OO_0}  & \ar[l] S_n \ar[r] & \correspond{\text{Verma modules in }\OO_0} \\
\parbox{3cm}{\centering Weight modules $L(w)$ } & \ar[l] w \ar[r] & \Delta(w)
\end{tikzcd}

The **KL-multiplicity conjecture** states 
\[ 
[\Delta(w) : L(x)] = h_{x, w}(1)
,\] 
where the LHS counts how often $L(x)$ occurs as a subquotient in a composition series for $\Delta(w)$.
Determining the characters $\ch L(w)$ can be done using translation functors, and corresponds to determining the characters of all simple highest weight modules (not necessarily finite-dimensional), and is a vast generalization of Weyl's character formula.

This was the birth of geometric representation theory, and the proof involved $D\dash$modules, perverse sheaves, and Deligne's proof of the Weil conjectures.

**Goal**: 
categorify $\mch_n(S_n)$, the associative unital $\ZZ[v, v\inv]\dash$algebra given by $\gens{\theset{H_i \suchthat i\leq n-1}}$ subject to
\[
H_{s_{i+1}}
H_{s_{i}}
H_{s_{i+1}} &= 
H_{s_{i+1}}
H_{s_{i}}
H_{s_{i+1}} \\
H_{s_{i}}
H_{s_{j}}
&=
H_{s_{j}}
H_{s_{i}} 
&& \abs{i-j} \geq 2 \\
H_{s_{i}}^2 &= (v\inv - v) H_{s_i} + 1
.\]

Or equivalently, setting $C_{s_i} = H_{s_i} + v$,
\[
C_{s_{i+1}}
C_{s_{i}}
C_{s_{i+1}}  + C_{s_i} &= 
C_{s_{i+1}}
C_{s_{i}}
C_{s_{i+1}} + C_{s_{i+1}} \\
C_{s_{i}}
C_{s_{j}}
&=
C_{s_{j}}
C_{s_{i}}  
&&\abs{i-j} \geq 2 \\
C_{s_{i}}^2 
&= (v\inv - v) H_{s_i} + 1
.\]

:::{.remark}
The presentation above can be "lifted" to a categorical level.
So we want to find a category $\mca$ which is additive, monoidal, graded, and abelian such that

- $K_0^\oplus(\mca) \cong H(S_n)$ is an isomorphism of $\ZZ[v, v\inv]\dash$algebras.
- There are objects $B_{s_i}$ such that

\[  
1. && B_{s_i} \tensor B_{s_i} &\cong B_{s_i}(1) \oplus B_{s_i}(-1) \\
2. && B_{s_j} \tensor B_{s_i} &\cong B_{s_i} \tensor B_{s_j} && \text{ for } \abs{i-j} \geq 2 \\
3. && B_{s_i} \tensor B_{s_{i+1}} \tensor B_{s_i} \oplus B_{s_{i+1}} &\cong B_{s_{i+1}} \tensor B_{s_{i}} \tensor B_{s_{i+1}} \oplus B_{s_{i}}
.\]

:::


Question 1: What are the objects $B_{s_i}$? 
Set $R = \CC[x_1, \cdots, x_n]$ with $\abs{x_i} = 2$, yielding a graded $\CC\dash$algebra where $s_i$ permutes $x_i, x_{i+1}$.
We can look at the invariant ring, 
\[
R^{s_i} \definedas \theset{f\in R \suchthat s_i f = f}
\]
and note that $R$ and any of its shifts are modules over this ring.
So set, 
\[
B_{s_i} \definedas R \tensor_{R^{s_i}} R(-1)
\]
which is a graded $R\dash$bimodule.

:::{.proposition title="?"}
We have an isomorphism of $R\dash$bimodules satisfying the desired relations.
:::

:::{.claim}
$R\cong R^{s_i}(2) \oplus R^{s_i}$ as graded $R^{s_i}\dash$bimodules.
:::


:::{.proof}
It suffices to show that every $f\in R$ can be written uniquely as 
\[
f = g(x_i - x_{i+1}) + h  \text{  with } g, h \in R^{s_i}
.\]
\

**Uniqueness**: 
If $f =g'(x_i - x_{i+1}) + h'$ then
\[
g'(2x_i - 2x_{i+1}) 
&= f - s_i f \\
&= g(x_i - x_{i+1}) - g(x_{i+1} - x_i)  \\
&= g(x_i - x_{i+1} - x_{i+1} + x_i) \\
&= g(2x_i - 2x_{i+1})
.\]

Since this is an integral domain, $g=g'$, and
\[
h = f - g (x_i - x_{i+1}) = f - g'(x_i - x_{i+1}) = h'
.\]

**Existence**:
$x_k \in R^{s_i}$ is $s_i$ invariant if $k\neq i, i+1$, and
\[
x_i = {1\over 2}\qty{ x_i - x_{i+1}} + {1\over 2}\qty{x_i + x_{i+1}} \in R^{s_i} \qty{\cdots} + R^{s_i}  \\
x_{i+1} = -{1\over 2}\qty{ x_i - x_{i+1}} + {1\over 2}\qty{x_i + x_{i+1}} \in R^{s_i} \qty{\cdots} + R^{s_i}  \\
.\]

So every $f\in R$ can be expressed as a polynomial in $x_i - x_{i+1}$ with coefficients in $R^{s_i}$.
Since $\qty{x_i - x_{i+1}}^2 \in R^{s_i}$, any polynomial in $x_i - x_{i+1}$ with coefficients in $R^{s_i}$ can be written as $g(x_i - x_{i+1}) + h$ with $g, h \in R^{s_i}$.
This proves the claim.

We can now check
\[
B_{s_i} \tensor_R B_{s_i} 
&=
\qty{R \tensor_{R^{s_i}} R} \tensor_R 
\qty{R \tensor_{R^{s_i}} R}(-2) \\
&\cong R \tensor_{R^{s_i}} R \tensor_{R^{s_i}} R(-2) \\
&\cong R \tensor_{R^{s_i}} \qty{ R^{s_i}(2) \oplus R^{s_i}  } \tensor_{R^{s_i}} R(-2) \\
&\cong R \tensor_{R^{s_i}} \qty{ R^{s_i}(2)   } \tensor_{R^{s_i}} R(-2)  \oplus
R \tensor_{R^{s_i}} \qty{ R^{s_i}  } \tensor_{R^{s_i}} R(-2) \\
&\cong R \tensor_{R^{s_i}} R \oplus R\tensor_{R^{s_i}} R(-2) \\
&\cong B_{s_i}(1) \oplus B_{s_i}(-1)
.\]
:::


## Soergel's Dream

Come up with a purely algebraic proof of the KL conjecture (without using machinery from geometric representation theory).
Consider the center of category $O$, $Z(\OO_0)$, the endomorphism ring of the identity functor.
It can be shown that this is isomorphic to the coinvariant ring $\CC[x_1, \cdots, x_{n+1}] / \CC[x_1, \cdots, x_{n+1}]^{S^n}$.
Thus invariant theory is "hidden" in the category $\OO_0(\lieg)$.

> Proved originally, but used some decomposition theory. 
> Recent proof from Elias Williams? Using hodge structures.

**Question**:
What is the category $\mca$?


:::{.definition title="Bott-Samelson Bimodules"}
Take $R\dash\grdim$, the category of graded $R\dash$bimodules, which is finitely generated as both left/right $R\dash$modules.
This is additive, monoidal, and graded, but this category is too big.
So we carve out a smaller subcategory.

For $w\in S_n$, write the formal word $\bar w = s_{i_1} \cdots s_{i_r}$ a reduced expression for $w$.
Note that this depends on which reduced expression is used.
Now define
\[
BS(\bar w) 
&\definedas \bigotimes^{j\leq r}{}_{R^{s_{i_j}}} \,\,B_{s_{i_j}}  && BS(\emptyset) = R \\
&\cong R \tensor_{R^{s_{i_1}}} R \tensor \cdots \tensor_{R^{s_{i_r}}} R
\]
where the isomorphism is canonical.
This is the **Bott-Samelson bimodule**.

:::

:::{.definition title="?"}
\hfill
- A Soergel bimodule is a direct summand of a finite sum of grading shifts of Bott-Samelson bimodules.
- The category $\mathbf{SBim}$ of Soergel bimodules is the strictly full subcategory of $R\dash\grdim$ consisting of Soergel bimodules.
- Equivalently, the smallest full subcategory of $R\dash\grdim$ consisting of $R, B_{s_i}$ and closed under $\tensor_R, \oplus, (i)$ and taking direct summands.
:::

:::{.remark}
The category $\mathbf{SBim}$ is additive, monoidal, and graded, but **not** abelian.
:::

:::{.definition title="Indecomposable"}
Recall that a module $X$ is **indecomposable** $\iff$ $X \cong A\oplus B$ implies $A\cong 0$ or $B\cong 0$.
:::

:::{.definition title="Krull-Schmidt"}
A category $\mathcal{C}$ is **Krull-Schmidt** $\iff$ every object decomposes uniquely into a *finite* direct sum of indecomposable objects.
:::

:::{.theorem title="?"}
\hfill

1. $\mathbf{SBim}$ is *Krull-Schmidt*.

  > Note that such uniqueness here means that if $\bigoplus_{i=1}^r X_i \cong \bigoplus_{i=1}^s Y_i$ then $r=s$ and there is some permutation $\pi \in S_r$ such that $X_{\pi(i)} \cong Y_i$.

2. There is a bijection
\[
S_n &\tofrom \correspond{\text{Indecomposable Soergel bimodules} }/ \text{\tiny Isomorphism and shifts} \\
w &\mapsto B_w
.\]

  Moreover $\theset{ S[B_w] \suchthat w\in S_n }$ form a basis of $K_0^\oplus(\mathbf{SBim})$ as $\ZZ[v, v\inv]\dash$modules.

3. There is a $\ZZ[v, v\inv]\dash$algebra morphism
\[
c: \mch(S_n) &\mapsvia{\cong} K_0^\oplus(\mathbf{SBim}) \\
C_{s_i} &\mapsto [B_{s_i}]
.\]
:::

:::{.remark}
This implies both the KL positivity and multiplicity conjectures.
The KL basis corresponds to the basis given by the indecomposable Soergel bimodules.
:::
    



# Wednesday July 15th

Let $R$ be a unital (not necessarily commutative) ring, then we can consider two categories:

- $\rmod$: the category of left $R\dash$modules
- $\modr$: the category of right $R\dash$modules

Let $X\in \modr$ a consider the functor
\[
X\tensor_R \wait: \rmod &\to \ZZ\dash\text{mod} \\
Y &\mapsto X\tensor_R Y
.\]
Given a short exact sequence, we obtain a right-exact sequence, i.e. this functor is right-exact 

:::{.warning}
The induced map $X\tensor_R A \to X\tensor_R B$ need not be injective.
\begin{tikzcd}
0 \ar[r] \ar[d, "{\ZZ/(2) \tensor_\ZZ \wait }"] & \ZZ \ar[r, "\cdot 2"] & \ZZ \ar[r] & \ZZ/(2) \ar[r] & 0 \\
?? \ar[r] & \ZZ/(2) \ar[r, "{\cdot 2^*}"] & \ZZ/(2) \ar[r] & \ZZ/(2) \tensor_\ZZ \ZZ/(2) \ar[r] & 0
\end{tikzcd}

:::


Then $f_*$ is not injective, since $\qty{\id \tensor_\ZZ (\cdot 2)} (T\tensor 1)) = T\tensor 2 = 2T\tensor 1 = 0$.

Recall that this has derived functors $\tor_i^R(X, \wait)$ which vanish if either component is projective and yields a LES.

:::{.definition title="Flat Modules"}
An $R\dash$module $X$ is *flat* if $X\tensor_R \wait$ is exact.
:::


Recall that free $\implies$ projective $\implies$ flat.

Construction of $\tor_i^R(X, Y)$:

1. $\rmod$ has enough projectives, so take a projective resolution of $Y$:
\[ 
P_* \da \qty{ \cdots \to P_2 \to P_1 \to P_0 \to Y \to 0 }
\] 
  with each $P_j$ projective.
2. Apply $X\tensor_R \wait$ to $P_*$: 
\[
X\tensor_R \wait P_\wait: \cdots \to X \tensor_R P_2 \to X\tensor_R P_1 \to X\tensor_R P_0 \to 0
.\] 
  Note that this is a chain complex, but not exact in general.

3. Define 
\[
\tor_i^R(X, Y) \definedas H_i(X\tensor_R P_\wait)
,\]
i.e. take kernels mod images.

Note that choices were made, is this independent (up to natural isomorphism) of the chosen projective resolution $P_\wait$?

:::{.lemma title="?"}
Let $f: Y\to Y' \in \rmod$, and let $P_\wait, P_\wait'$ be respective projective resolutions.
Then there exists a map of chain complexes $\tilde f: P_\wait \to P_\wait'$ such that

\begin{tikzcd}
\cdots \ar[r]& P_2 \ar[r]\ar[d, "\tilde f_2"] & P_1 \ar[r]\ar[d, "\tilde f_1"] & P_0 \ar[r]\ar[d, "\tilde f_0"] & Y \ar[d, "f"] \\
\cdots \ar[r] & P_2 \ar[r] & P_1 \ar[r] & P_0 \ar[r] & Y' \\
\end{tikzcd}
where all of the squares commute, and $\tilde f$ is unique up to chain homotopy.

:::

So take $f = \id_Y: Y\to Y$, by the lemma there is a map of chain complexes $\tilde \id: P_\wait \to P_\wait'$, and applying $X\tensor_R \wait$ yields a map of chain complexes $X\tensor_R P_\wait \to X\tensor_R P_\wait'$.
Since homotopic maps yield the same map in homology, we get maps $H_i(X\tensor_R P_\wait) \to H_i(X\tensor_R P_\wait')$, and it can be checked that these maps are isomorphisms for every $i$ by using the lemma again but reversing all of the maps.

:::{.remark}
For $A\in \text{mod}\dash\ZZ$, $A$ is torsionfree $\iff \tor_1^\ZZ(A, B) = 0$ for every other $B\in \ZZ\dash\text{mod}$.
As a special case, for $k$ a field and $R$ a $k\dash$algebra, $R\tensor_k R\op$ is a $k\dash$algebra when equipped with the product $(a\tensor b)\cdot(a'\tensor b') = (aa') \tensor (bb')$.
This is called the **enveloping algebra** of $R$ 

> Note: has nothing to do with universal enveloping algebras in Lie theory.

There is an isomorphism of categories
\[
R\tensor_R R\op\dash\text{mod} &\mapsvia{\cong} R\dash\text{bimod} \\
(r_1\tensor r_2) \cdot m &\mapsfrom
r_1 \cdot m \cdot r_2 \in RMR 
.\]

The point of this is that we may not be able to make sense of projective resolutions on the RHS, but we can think of them as usual modules over the enveloping algebra instead.
:::

:::{.warning}
Some care must be taken with the monoidal structure.
The monoidal structur in the LHS is $\tensor_{R\tensor_R R\op}$, whereas it is $\tensor_R$ in the RHS.
:::

:::{.definition title="Hochschild Homology"}
Define the $i$th **Hochschild homology** of $R$ as the functor
\[
HH_i(R, \wait) \definedas \tor_i^{R\tensor_R R\op}(R, \wait) : R\dash\text{Bimod} &\to k\dash\text{mod}
.\]
:::


:::{.remark}
Note that this lands in $k\dash$modules instead of $\ZZ\dash$modules.
Moreover, everything works in the graded setting and yields a functor $R\dash\text{grBimod} \to k\dash\text{grMod}$.
:::


How does this relate to the HOMFLY-PT polynomial?
Recall that we had a trace 
\[ 
\mch(S_n) \mapsvia{\tr}  \ZZ[ v, v\inv]
,\] 
and we think of $HH$ as the categorification of the trace on the Hecke algebra.
It has trace-like behavior, namely
\[
HH_\wait(R, M\tensor_R N) \cong HH_\wait(R, N\tensor_R M) \quad \in k\dash\text{Mod}
,\]
which is similar to $\tr(ab) = \tr(ba)$.

:::{.example}
Consider $HH_\wait(\CC[t], \CC[t])$ with $\abs t = 2$.

1. Write a free resolution of $\CC[t]$ as a $\CC[t] \tensor_\CC \CC[t]\dash$module:
\begin{tikzcd}
0 \ar[r] & \CC[t] \tensor_\CC \CC[t] \ar[rr, "m_t \tensor 1 - 1\tensor m_t"] && \CC[t] \tensor_C \CC[t] \ar[r] & \CC[t] \ar[r]      & 0 \\
         & f\tensor g \ar[rr]                                                && tf\tensor g - f\tensor tg      &                    &   \\
         &                                                                   && f\tensor g \ar[r]              & f\cdot g           &
\end{tikzcd}


2. Apply $\CC[t] \tensor_{\CC[t] \tensor_\CC \CC[t]} \wait$.
\begin{tikzcd}
0 \ar[r] & \CC[t] \tensor_{\CC[t] \tensor_\CC \CC[t]} \qty{\CC[t] \tensor_\CC \CC[t] }(2) \ar[r] & \CC[t] \tensor_{\CC[t] \tensor_\CC \CC[t]} \qty{\CC[t] \tensor_\CC \CC[t] } \ar[r] & 0 \\
 & f\tensor g \tensor h \ar[r] & f\tensor tg \tensor h - f\tensor g\tensor th 
\end{tikzcd}

Note that the image is equal to
\[
f \tensor (tg\tensor h) \cdot (1\tensor 1) - f\tensor (g\tensor th)\cdot (1\tensor 1) = 
tgfh \tensor 1\tensor 1 - gfth \tensor 1 \tensor 1 = 0
,\]
so this is in fact the zero map.

We thus have
\begin{tikzcd}
0 \ar[r] & \CC[t](2) \ar[r, "0"] & \CC[t] \ar[r] & 0
\end{tikzcd}

3. Read off 
\[  
HH_0(\CC[t], \CC[t]) &\cong \CC[t] \\
HH_1(\CC[t], \CC[t]) &\cong \CC[t](2)
.\]

:::


