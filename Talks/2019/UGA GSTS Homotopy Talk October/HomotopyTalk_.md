#  History {#history }
  
Poincare, *Analysis Situs* papers in 1895. Coined "homeomorphism", defined homology, gave rigorous definition of homotopy, established "method of invariants" and essentially kicked off algebraic topology.
  
#  Motivation {#motivation }
  
Generalized Topological Poincare Conjecture: When is a homotopy sphere also a topological sphere? i.e. when does <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_*%20X%20&#x5C;cong_{Grp}%20&#x5C;pi_*%20S^n%20&#x5C;implies%20X%20&#x5C;cong_{Top}%20S^n"/>?
  
- <img src="https://latex.codecogs.com/gif.latex?n=1"/>: True. Trivial
- <img src="https://latex.codecogs.com/gif.latex?n=2"/>: True. Proved by Poincare, classical
- <img src="https://latex.codecogs.com/gif.latex?n=3"/>: True. Perelman (2006) using Ricci flow + surgery
- <img src="https://latex.codecogs.com/gif.latex?n=4"/>: True. Freedman (1982), Fields medal!
- <img src="https://latex.codecogs.com/gif.latex?n=5"/>: True. Zeeman (1961)
- <img src="https://latex.codecogs.com/gif.latex?n=6"/>: True. Stalling (1962)
- <img src="https://latex.codecogs.com/gif.latex?n&#x5C;geq%207"/>: True. Smale (1961) using h-cobordism theorem, uses handle decomposition + Morse functions
  
Smooth Poincare Conjecture: When is a homotopy sphere a *smooth* sphere?
  
  
- <img src="https://latex.codecogs.com/gif.latex?n=1"/>: True. Trivial
- <img src="https://latex.codecogs.com/gif.latex?n=2"/>: True. Proved by Poincare, classical
- <img src="https://latex.codecogs.com/gif.latex?n=3"/>: True.  (Top = PL = Smooth)
- <img src="https://latex.codecogs.com/gif.latex?n=4"/>: **Open**
- <img src="https://latex.codecogs.com/gif.latex?n=5"/>: Zeeman (1961)
- <img src="https://latex.codecogs.com/gif.latex?n=6"/>: Stalling (1962)
- <img src="https://latex.codecogs.com/gif.latex?n&#x5C;geq%207"/>: False in general (Milnor and Kervaire, 1963), Exotic <img src="https://latex.codecogs.com/gif.latex?S^n"/>, 28 smooth structures on <img src="https://latex.codecogs.com/gif.latex?S^7"/>
  
  
> It is unknown whether or not <img src="https://latex.codecogs.com/gif.latex?B^4"/> admits an exotic smooth structure. If not, the smooth <img src="https://latex.codecogs.com/gif.latex?4"/>-dimensional Poincare conjecture would have an affirmative answer. 
  
> Current line of attack: Gluck twists on on <img src="https://latex.codecogs.com/gif.latex?S^4"/>. Yield homeomorphic spheres, *suspected* not to be diffeomorphic, but no known invariants can distinguish smooth structures on <img src="https://latex.codecogs.com/gif.latex?S^4"/>.
  
Relation to homotopy: Define a monoid <img src="https://latex.codecogs.com/gif.latex?G_n"/> with 
  
- Objects: smooth structures on the <img src="https://latex.codecogs.com/gif.latex?n"/> sphere (identified as oriented smooth <img src="https://latex.codecogs.com/gif.latex?n&#x5C;dash"/>manifolds which are homeomorphic to <img src="https://latex.codecogs.com/gif.latex?S^n"/>)
- Binary operation: Connect sum
  
For <img src="https://latex.codecogs.com/gif.latex?n&#x5C;neq%204"/>, this is a group. Turns out to be isomorphic to <img src="https://latex.codecogs.com/gif.latex?&#x5C;Theta_n"/>, the group of <img src="https://latex.codecogs.com/gif.latex?h&#x5C;dash"/>cobordism classes of "homotopy <img src="https://latex.codecogs.com/gif.latex?S^n"/>s"
  
Recently (almost) resolved question: what is <img src="https://latex.codecogs.com/gif.latex?&#x5C;Theta_n"/> for all <img src="https://latex.codecogs.com/gif.latex?n"/>? 
  
> Application: what spheres admit unique smooth structures?
  
- Define <img src="https://latex.codecogs.com/gif.latex?bP_{n+1}%20&#x5C;leq%20&#x5C;Theta_n"/> the subgroup of spheres that bound *parallelizable* manifolds (define in a moment). 
- The Kervaire invariant is an invariant of a framed manifold that measures whether the manifold could be surgically converted into a sphere. 0 if true, 1 otherwise.
- Hill/Hopkins/Ravenel (2016): = 0 for <img src="https://latex.codecogs.com/gif.latex?n%20&#x5C;geq%20254"/>.
- Kervaire invariant = 1 only in 2, 6, 14, 30, 62. Open case: 126. 
- Punchline: there is a map <img src="https://latex.codecogs.com/gif.latex?&#x5C;Theta_n&#x2F;bP_{n+1}%20&#x5C;to%20&#x5C;pi_n^S&#x2F;%20J"/>, (to be defined) and the Kervaire invariant influences the size of <img src="https://latex.codecogs.com/gif.latex?bP_{n+1}"/>. This reduces the differential topology problem of classifying smooth structures to (essentially) computing homotopy groups of spheres.
- Open question: is there a manifold of dimension 126 with Kervaire invariant 1?
  
> Parallelizable/framed: Trivial tangent bundle, i.e. the principal frame bundle has a smooth global section. Parallelizable spheres <img src="https://latex.codecogs.com/gif.latex?S^0,%20S^1,%20S^3,%20S^7"/> corresponding to <img src="https://latex.codecogs.com/gif.latex?&#x5C;RR,%20&#x5C;CC,%20&#x5C;mathbb{H},%20&#x5C;mathbb{O}"/>.
  
- Framed Bordism Classes of manifolds -- <img src="https://latex.codecogs.com/gif.latex?&#x5C;Omega^{fr}_n%20&#x5C;cong%20&#x5C;pi_n^S"/>
> Note: bordism is one of the coarsest equivalence relations we can put on manifolds. Hope to understand completely!
  
#  Background {#background }
  
**Definition (Homotopy)**
Given two paths <img src="https://latex.codecogs.com/gif.latex?P_1,%20P_2:%20I%20&#x5C;to%20X"/> (where we identify the paths with their images under these maps), then a *homotopy* from <img src="https://latex.codecogs.com/gif.latex?P_1"/> to <img src="https://latex.codecogs.com/gif.latex?P_2"/> is a function
<p align="center"><img src="https://latex.codecogs.com/gif.latex?H:%20I%20&#x5C;to%20(I%20&#x5C;to%20X)%20&#x5C;&#x5C;H(0,%20&#x5C;wait)%20=%20x_0%20&#x5C;&#x5C;H(1,%20&#x5C;wait)%20=%20x_1%20&#x5C;&#x5C;%20&#x5C;&#x5C;H(&#x5C;wait,%200)%20=%20P_1(&#x5C;wait)&#x5C;&#x5C;H(&#x5C;wait,%201)%20=%20P_2(&#x5C;wait)&#x5C;&#x5C;"/></p>  
  
  
such that the associated "partially applied" function <img src="https://latex.codecogs.com/gif.latex?H_t:%20I%20&#x5C;to%20X"/> is continuous.
  
**Definition (Homotopic Maps)**
Given two maps <img src="https://latex.codecogs.com/gif.latex?f,%20g:%20X%20&#x5C;to%20Y"/>, we say <img src="https://latex.codecogs.com/gif.latex?f"/> is *homotopic* to <img src="https://latex.codecogs.com/gif.latex?g"/> and write <img src="https://latex.codecogs.com/gif.latex?f%20&#x5C;sim%20g"/> if there is a homotopy
<p align="center"><img src="https://latex.codecogs.com/gif.latex?H:%20I%20&#x5C;to%20(X%20&#x5C;to%20Y)%20&#x5C;&#x5C;H(0,%20&#x5C;wait)%20=%20f(&#x5C;wait)&#x5C;&#x5C;H(1,%20&#x5C;wait)%20=%20g(&#x5C;wait)&#x5C;&#x5C;"/></p>  
  
  
such that <img src="https://latex.codecogs.com/gif.latex?H_t:%20X%20&#x5C;to%20Y"/> is continuous.
  
> Can think of this as a map from the cylinder on <img src="https://latex.codecogs.com/gif.latex?X"/> into <img src="https://latex.codecogs.com/gif.latex?Y"/>, or deformations through continuous functions.
  
> Note: This is an equivalence relation. If <img src="https://latex.codecogs.com/gif.latex?f:%20X%20&#x5C;to%20Y"/> is a map, we write <img src="https://latex.codecogs.com/gif.latex?[X,%20Y]"/> to denote the homotopy classes of maps <img src="https://latex.codecogs.com/gif.latex?X"/> to <img src="https://latex.codecogs.com/gif.latex?Y"/>. 
  
**Definition (Fundamental Group)**
<p align="center"><img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_1(X)%20&#x5C;definedas%20[S^1,%20X]."/></p>  
  
  
> Note that this actually measures homotopy classes of *loops* in <img src="https://latex.codecogs.com/gif.latex?X"/>.
  
Example: <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_1%20T^2%20=%20&#x5C;ZZ^{&#x5C;ast%202}"/>, a *free* abelian group of rank 2.
  
**Definition (Higher Homotopy Groups)**
<p align="center"><img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_n(X)%20&#x5C;definedas%20[S^n,%20X]."/></p>  
  
  
Introduced by Cech in 1932, Alexandrov reportedly told him to withdraw because it couldn't possibly be the right generalization due to the following theorem:
  
**Theorem**:
<p align="center"><img src="https://latex.codecogs.com/gif.latex?n&#x5C;geq%202%20&#x5C;implies%20[S^n,%20X]%20&#x5C;in%20&#x5C;mathrm{Ab}."/></p>  
  
In words, higher homotopy groups are abelian. We have a complete classification of abelian groups, so we know <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_n(X)%20=%20F%20&#x5C;oplus%20T"/> for some free and torsion parts.
  
**Theorem (Hopf, 1931):**
<p align="center"><img src="https://latex.codecogs.com/gif.latex?[S^3,%20S^2]%20=%20&#x5C;ZZ%20&#x5C;neq%200"/></p>  
  
  
> Recall that homology vanishes above the dimension of a given manifold!
  
This group is generated by the *Hopf fibration*, and provides infinitely many ways of "wrapping" a 3-sphere around a 2-sphere nontrivially! This was surprising and unexpected
  
  
**Definition (CW Complex)**
A CW complex is any space built from the following inductive process:
  
> Denote <img src="https://latex.codecogs.com/gif.latex?X_n"/> the <img src="https://latex.codecogs.com/gif.latex?n&#x5C;dash"/>skeleton.
  
- Let <img src="https://latex.codecogs.com/gif.latex?X_0"/> by a discrete set of points. 
- Let <img src="https://latex.codecogs.com/gif.latex?X_{n+1}"/> be obtained from <img src="https://latex.codecogs.com/gif.latex?X_n"/> by taking a collection of <img src="https://latex.codecogs.com/gif.latex?n&#x5C;dash"/> balls and glue them to <img src="https://latex.codecogs.com/gif.latex?X_n"/> by maps <p align="center"><img src="https://latex.codecogs.com/gif.latex?&#x5C;phi:%20&#x5C;del%20B^n%20&#x5C;to%20X_n"/></p>  
.
- If infinitely many stages, let <img src="https://latex.codecogs.com/gif.latex?X%20=%20&#x5C;union%20X_n"/> with the weak topology 
  
  (i.e. a set <img src="https://latex.codecogs.com/gif.latex?A%20&#x5C;subset%20X"/> is open iff <img src="https://latex.codecogs.com/gif.latex?A%20&#x5C;intersect%20X_n"/> is open for all <img src="https://latex.codecogs.com/gif.latex?n"/>)
  
Example: Every graph is a 1-dimensional CW complex
  
Example: Identification polyhedra for surfaces
  
Example: <img src="https://latex.codecogs.com/gif.latex?S_n%20=%20e_0%20+%20e_n"/> by gluing <img src="https://latex.codecogs.com/gif.latex?B^{n+1}"/> to a point by a map <img src="https://latex.codecogs.com/gif.latex?&#x5C;phi:%20&#x5C;del%20B^{n+1}%20&#x5C;to%20&#x5C;pt"/>, i.e. <img src="https://latex.codecogs.com/gif.latex?B^{n+1}%20&#x2F;%20B^n%20&#x5C;cong%20S^n"/>. Can also attach two hemispheres at each <img src="https://latex.codecogs.com/gif.latex?i&#x5C;leq%20n"/> to get <img src="https://latex.codecogs.com/gif.latex?S^n%20=%20e_0%20+%20e_1%20+%202e_2%20+%20&#x5C;cdots%20+%202e_n"/>.
  
> Note: Cellular homology is very easy to compute!
  
> Note: Replacing <img src="https://latex.codecogs.com/gif.latex?&#x5C;phi"/> with a homotopic map yields an equivalent CW complex. So understanding CW complexes boils down to understanding <img src="https://latex.codecogs.com/gif.latex?[S^n,%20S^m]"/> for <img src="https://latex.codecogs.com/gif.latex?m%20&lt;%20n"/>, i.e. higher homotopy groups of spheres.
  
**Definition (Cellular Map)**
A map between <img src="https://latex.codecogs.com/gif.latex?f:X%20&#x5C;to%20Y"/> between CW complex is *cellular* if <img src="https://latex.codecogs.com/gif.latex?f(X_{(k)})%20&#x5C;subseteq%20Y_{(k)}"/> for every <img src="https://latex.codecogs.com/gif.latex?k"/>.
  
**Theorem (Cellular Approximation):**
Any map <img src="https://latex.codecogs.com/gif.latex?f:%20X%20&#x5C;to%20Y"/> is homotopic to a cellular map.
  
> Application: <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_k%20S^n%20=%200"/> if <img src="https://latex.codecogs.com/gif.latex?k%20&lt;%20n"/>. Use <img src="https://latex.codecogs.com/gif.latex?f&#x5C;in%20&#x5C;pi_kS^n%20&#x5C;iff%20f&#x5C;in%20[S_k,%20S_n]"/>, deform <img src="https://latex.codecogs.com/gif.latex?f"/> to be cellular, then <img src="https://latex.codecogs.com/gif.latex?f(S^k_{(k)})%20&#x5C;injects%20S^n_{(k)}%20=%20&#x5C;pt"/>, so <img src="https://latex.codecogs.com/gif.latex?f%20&#x5C;homotopic%20c_0"/>, a constant map.
  
**Definition (Homotopy Equivalence)**
Two spaces <img src="https://latex.codecogs.com/gif.latex?X,%20Y"/> are said to be *homotopy equivalent* if there exists a maps <img src="https://latex.codecogs.com/gif.latex?f:%20X%20&#x5C;to%20Y"/> and <img src="https://latex.codecogs.com/gif.latex?f&#x5C;inv:%20Y%20&#x5C;to%20X"/> such that
<p align="center"><img src="https://latex.codecogs.com/gif.latex?f&#x5C;circ%20f&#x5C;inv%20&#x5C;homotopic%20&#x5C;id_Y%20&#x5C;&#x5C;f&#x5C;inv%20&#x5C;circ%20f%20&#x5C;homotopic%20&#x5C;id_X"/></p>  
  
  
**Definition (Weak Equivalence)**
A continuous map
<p align="center"><img src="https://latex.codecogs.com/gif.latex?f:%20X%20&#x5C;to%20Y"/></p>  
  
is called a *weak homotopy equivalence* if the induced map
<p align="center"><img src="https://latex.codecogs.com/gif.latex?f_*:%20&#x5C;pi_*(X)%20&#x5C;to%20&#x5C;pi_*(Y)"/></p>  
  
is a graded isomorphism.
  
> Note that this is a strictly weaker notion than homotopy equivalence -- we don't require an explicit inverse.
  
> Note that a weak homotopy equivalence also induces isomorphisms on all homology and cohomology.
  
**Theorem (Whitehead):**
If <img src="https://latex.codecogs.com/gif.latex?f:%20X&#x5C;to%20Y"/> is a weak equivalence between CW complexes, then it is a homotopy equivalence.
  
> Corollary (Relative Whitehead): If <img src="https://latex.codecogs.com/gif.latex?f:X&#x5C;to%20Y"/> between CW complexes induces an isomorphism <img src="https://latex.codecogs.com/gif.latex?H_*%20X%20&#x5C;cong%20H_*%20Y"/>, then <img src="https://latex.codecogs.com/gif.latex?f"/> is a weak equivalence.
  
**Theorem (CW Approximation)**:
For every topological space <img src="https://latex.codecogs.com/gif.latex?X"/>, there exists a CW complex <img src="https://latex.codecogs.com/gif.latex?&#x5C;tilde%20X"/> and a weak homotopy equivalence <img src="https://latex.codecogs.com/gif.latex?f:%20X%20&#x5C;to%20&#x5C;tilde%20X"/>.
  
> Note: Weak equivalences = equivalences for CW complexes, which means we can essentially throw out the distinction!
  
> Note: This says that if we understand CW complexes, we essentially understand the category hoTop completely. Moreover, we only have to understand spaces up to *weak* equivalence, i.e. we just need to check induced maps on <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_*"/> instead of checking for inverse maps.
  
**Definition (Connectedness):**
A space is said to be <img src="https://latex.codecogs.com/gif.latex?n&#x5C;dash"/>connected if <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_{&#x5C;leq%20n}%20X%20=%200"/>.
  
> Recall that a space is *simply connected* iff <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_1%20X%20=%200"/>.
  
**Theorem (Hurewicz):**
Given a fixed space <img src="https://latex.codecogs.com/gif.latex?X"/>, any map <img src="https://latex.codecogs.com/gif.latex?f%20&#x5C;in%20&#x5C;pi_kX%20=%20[S^k,%20X]"/> has the type <img src="https://latex.codecogs.com/gif.latex?f:%20S^k%20&#x5C;to%20X"/>. This induces a map <img src="https://latex.codecogs.com/gif.latex?f_*:%20H_*%20S^k%20&#x5C;to%20H_*%20X"/>. Since <img src="https://latex.codecogs.com/gif.latex?H_k%20S^k%20&#x5C;cong%20&#x5C;ZZ%20&#x5C;cong%20&#x5C;generators{&#x5C;mu}"/>, define a family of maps
<p align="center"><img src="https://latex.codecogs.com/gif.latex?h_k:%20&#x5C;pi_k%20X%20&#x5C;to%20H_k%20X%20&#x5C;&#x5C;[f]%20&#x5C;mapsto%20f_*(&#x5C;mu)"/></p>  
  
  
If <img src="https://latex.codecogs.com/gif.latex?n&#x5C;geq%202"/> and <img src="https://latex.codecogs.com/gif.latex?X"/> is <img src="https://latex.codecogs.com/gif.latex?n-1"/> connected, then <img src="https://latex.codecogs.com/gif.latex?h_k"/> is an isomorphism for all <img src="https://latex.codecogs.com/gif.latex?k&#x5C;leq%20n"/>.
  
> Note: If <img src="https://latex.codecogs.com/gif.latex?k=1"/>, then <img src="https://latex.codecogs.com/gif.latex?h_1"/> is the abelianization of <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_1"/>.
  
  
##  Application {#application }
If <img src="https://latex.codecogs.com/gif.latex?X"/> a simply connected, closed 3-manifold is a homology sphere, then it is a homotopy sphere. 
  
- <img src="https://latex.codecogs.com/gif.latex?H_0%20X%20=%20&#x5C;ZZ"/> since <img src="https://latex.codecogs.com/gif.latex?X"/> is path-connected
- <img src="https://latex.codecogs.com/gif.latex?H_1%20X%20=%200"/> since <img src="https://latex.codecogs.com/gif.latex?X"/> is simply-connected
- <img src="https://latex.codecogs.com/gif.latex?H_3%20X%20=%20&#x5C;ZZ"/> since <img src="https://latex.codecogs.com/gif.latex?X"/> is orientable
- <img src="https://latex.codecogs.com/gif.latex?H_2%20X%20=%20H^1%20X"/> by **Poincare duality**. What group is this?
  - <img src="https://latex.codecogs.com/gif.latex?0%20&#x5C;rightarrow%20&#x5C;operatorname{Ext}_{&#x5C;ZZ}^{1}&#x5C;left(H_{0}(X%20;%20&#x5C;mathbb{Z}),%20&#x5C;mathbb{Z}&#x5C;right)%20&#x5C;rightarrow%20H^{1}(X%20;%20&#x5C;mathbb{Z})%20&#x5C;rightarrow%20&#x5C;operatorname{Hom}_{&#x5C;mathbb{Z}}&#x5C;left(H_{1}(X%20;%20&#x5C;mathbb{Z}),%20&#x5C;mathbb{Z}&#x5C;right)%20&#x5C;rightarrow%200"/> yields
  - <img src="https://latex.codecogs.com/gif.latex?0%20&#x5C;rightarrow%20&#x5C;operatorname{Ext}_{&#x5C;ZZ}^{1}&#x5C;left(&#x5C;ZZ,%20&#x5C;mathbb{Z}&#x5C;right)%20&#x5C;rightarrow%20H^{1}(X%20;%20&#x5C;mathbb{Z})%20&#x5C;rightarrow%20&#x5C;operatorname{Hom}_{&#x5C;mathbb{Z}}&#x5C;left(0,%20&#x5C;mathbb{Z}&#x5C;right)%20&#x5C;rightarrow%200"/>
  - Then <img src="https://latex.codecogs.com/gif.latex?&#x5C;operatorname{Ext}_{&#x5C;ZZ}^{1}&#x5C;left(&#x5C;ZZ,%20&#x5C;mathbb{Z}&#x5C;right)%20=%200"/> because <img src="https://latex.codecogs.com/gif.latex?&#x5C;ZZ"/> is a projective <img src="https://latex.codecogs.com/gif.latex?&#x5C;ZZ&#x5C;dash"/>module, so <img src="https://latex.codecogs.com/gif.latex?H^1%20X%20=%200"/>.
- So <img src="https://latex.codecogs.com/gif.latex?H_*(X)%20=%20[&#x5C;ZZ,%200,%200,%20&#x5C;ZZ,%200,%20&#x5C;cdots%20]"/>
- So <img src="https://latex.codecogs.com/gif.latex?h_3:%20&#x5C;pi_3%20X%20&#x5C;to%20H_3%20X"/> is an isomorphism by **Hurewicz**. Pick some <img src="https://latex.codecogs.com/gif.latex?f&#x5C;in%20&#x5C;pi_3%20X%20&#x5C;cong%20&#x5C;ZZ"/>. By partial application, this induces an isomorphism <img src="https://latex.codecogs.com/gif.latex?H_*%20S^3%20&#x5C;to%20H_*%20X"/>.
- Taking **CW approximations** for <img src="https://latex.codecogs.com/gif.latex?S^3,%20X"/>, we find that <img src="https://latex.codecogs.com/gif.latex?f"/> is a homotopy equivalence.
  
#  Other Topics {#other-topics }
  
**Theorem (Freudenthal Suspension):**
If <img src="https://latex.codecogs.com/gif.latex?X"/> is an <img src="https://latex.codecogs.com/gif.latex?n&#x5C;dash"/>connected CW complex, then there is a map
<p align="center"><img src="https://latex.codecogs.com/gif.latex?&#x5C;Sigma:%20&#x5C;pi_i%20X%20&#x5C;to%20&#x5C;pi_{i+1}&#x5C;Sigma%20X"/></p>  
  
  
which is an isomorphism for <img src="https://latex.codecogs.com/gif.latex?i%20&#x5C;leq%202n"/> and a surjection for <img src="https://latex.codecogs.com/gif.latex?i=2n+1"/>.
  
> Note: <img src="https://latex.codecogs.com/gif.latex?[S^k,%20X]%20&#x5C;mapsto%20[&#x5C;Sigma%20S^k,%20&#x5C;Sigma%20X]%20=%20[S^{k+1},%20&#x5C;Sigma%20X]"/>
  
> Application: <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_2%20S^2%20=%20&#x5C;pi_3%20S^3%20=%20&#x5C;cdots"/> since <img src="https://latex.codecogs.com/gif.latex?2"/> is already in the stable range.
  
A consequence: <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_1%20X%20&#x5C;to%20&#x5C;pi_2%20&#x5C;Sigma%20X%20&#x5C;to%20&#x5C;pi_3%20&#x5C;Sigma^2%20X%20&#x5C;to%20&#x5C;cdots"/> is eventually constant, we say the homotopy groups *stabilize*. So define the *stable homotopy groups
<p align="center"><img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_i^S%20&#x5C;definedas%20&#x5C;lim_{k&#x5C;to&#x5C;infty}%20&#x5C;pi_{i+k}%20X"/></p>  
  
  
<img src="https://latex.codecogs.com/gif.latex?X%20=%20S^n"/> yields *stable homotopy groups of spheres*, ties back to initial motivation.
  
Noting that <img src="https://latex.codecogs.com/gif.latex?&#x5C;Sigma%20S^n%20=%20S^{n+1}"/>, we could alternatively define <img src="https://latex.codecogs.com/gif.latex?&#x5C;mathbb{S}%20&#x5C;definedas%20&#x5C;lim_k%20&#x5C;Sigma^k%20S^0"/>, then it turns out that <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_n%20&#x5C;mathbb{S}%20=%20&#x5C;pi_n^S"/>. 
  
This object is a *spectrum*, which vaguely resembles a chain complex with a differential:
<p align="center"><img src="https://latex.codecogs.com/gif.latex?X_0%20&#x5C;mapsvia{&#x5C;Sigma}%20X_2%20&#x5C;mapsvia{&#x5C;Sigma}%20X_3%20&#x5C;mapsvia{&#x5C;Sigma}%20&#x5C;cdots"/></p>  
  
  
Spectra *represent* invariant theories (like cohomology) in a precise way. For example, 
<p align="center"><img src="https://latex.codecogs.com/gif.latex?HG%20&#x5C;definedas%20&#x5C;left(K(G,%201)%20&#x5C;mapsvia{&#x5C;Sigma}%20K(G,%202)%20&#x5C;mapsvia{&#x5C;Sigma}%20&#x5C;cdots%20&#x5C;right)"/></p>  
  
  
then <img src="https://latex.codecogs.com/gif.latex?H^n(X;%20G)%20&#x5C;cong%20[X,%20K(G,%201)]"/>, and we can similarly extract <img src="https://latex.codecogs.com/gif.latex?H^*(X;%20G)"/> from (roughly) <img src="https://latex.codecogs.com/gif.latex?&#x5C;pi_*%20HG%20&#x5C;definedas%20[&#x5C;mathbb{S},%20HG%20&#x5C;bigwedge%20X]"/>.
  
> Note: this glosses over some important details! Also, smash product basically just looks like the tensor product in the category of spectra.
  
A modern direction is cooking up spectra that represent *extraordinary* cohomology theories. There are Eilenberg–Steenrod axioms that uniquely characterize homology on spaces; if we drop <img src="https://latex.codecogs.com/gif.latex?H^*%20&#x5C;pt%20=%200"/>, we get generalized alternatives.
  
#  Other Topics {#other-topics-1 }
- The homotopy hypothesis
- Generalized Cohomology theories
- Stable Homotopy Theory
- Infinity Categories
- Higher Homotopy Groups of Spheres
- Eilenberg Mclane and Moore Spaces
  
![Image](figures/2019-11-06-11:51.png )
  
- Below jagged line: Zero by cellular approximation, or stable by Freudenthal suspension.
- Above line: Unstable range. Need to throw everything in the book at these guys to compute!
  