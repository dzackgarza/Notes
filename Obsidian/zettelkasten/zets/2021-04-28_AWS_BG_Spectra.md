---
date: 2021-04-28 17:04:24
tags: 
  - Unfiled
---

# Spectra

> We have another aim in constructing the category of spectra. In homology theory the suspension homomorphism $\Sigma_*: h_n(X)\to h_{n+1}(\Sigma X)$ is always an isomorphism

> There are some things that spaces hide to cohomology theories, and we would like to mod out by this "extra information" that we don't really need when we study spaces by means of cohomology theories. The information that spaces hide is the unstable phenomenon, in the following sense : if $X$ and $Y$ are stably equivalent, for example $\Sigma X \homotopic \Sigma Y$, then 
$$
E_*(X)\cong E_{*+1}(\Sigma X) \cong E_{*+1}(\Sigma Y)\cong E_*(Y)
$$ 
> for any generalized cohomology theory $E_*$. This says that there is no cohomology theory that is going to see a difference between $X$ and $Y$, so we might as well says that they are "the same"

> Another good consequence of spectra is the [Brown Representability](Brown%20Representability) theorem. It says that any [[generalized cohomology theory]] on spaces is representable by a spectra. 

> As an aside, a great reason to care about cohomology theories comes from Adams' two solutions to the [[Hopf invariant one]] problem. His first solution uses ordinary cohomology to do the work, but it is very long and makes extensive use of higher [[cohomology operations]]. His second proof (with Atiyah) is beautiful and short, but only because he uses an extraordinary cohomology theory, [[complex K-theory]], to do the job. [More on Hopf invariant](http://people.virginia.edu/~mah7cd/Foundations/Adams,%20Atiyah%20-%20K-theory%20and%20the%20Hopf%20Invariant.pdf)

> You may be familiar with a similar problem at the space level. One can construct the [[homotopy category]] of spaces by taking the objects to be CW complexes and the morphisms to be homotopy classes of continuous maps. This is a category, all right, but i**t does not contain pushouts or sequential colimits**. So you can work with spaces and maps-up-to-homotopy if you like, but you won't be able to do much. It's much better to work with spaces and maps on-the-nose, and to make constructions like the [[double mapping cylinder]] and the [[mapping telescope]] when you want to form [pushouts](Pushout) or [[sequential colimits]]. 

Slogan: Pass to homotopy as late as possible.

> [[Cobordism]]. Suppose you're studying manifolds. The first question you might ask is: can I find a list of all manifolds up to [[diffeomorphism]]? The answer is no. So you weaken to [[homeomorphism]], and the answer is still no. So you weaken to [[homotopy equivalence]] and the answer is still pretty much no (though you're getting better), so finally you demand a really weak notion: [[cobordism]].
> There is a sequence of spaces, $\MO(n)$, and maps $\Sigma \MO(n)\to \MO(n+1)$ such that the $k$th stable homotopy groups of this spectrum are isomorphic to the [[cobordism group]] of $k$-manifolds under disjoint union.  If you require your manifolds to be [stably framed](../../stable%20framing.md) you get the [[stable homotopy groups of spheres]].

> Hopf Invariant Hopf famously discovered an essential (i.e. non-nullhomotopic) map S3→S2, which you can think of as the being defined via S3→CP1 and then choosing an identification of CP1 with the sphere. The mapping cone of this map is a CW-complex and asking whether or not the map S3→S2 is non-nullhomotopic is equivalent to asking whether or not this mapping cone is homotopy equivalent to a wedge S4∨S2. We can see that it is not since the mapping cone is actually just CP2 and the cup square of the generator in H2 is the generator in H4. More generally, given a map S2n−1→Sn we can form the 2-cell complex given by gluing D2n along this map and ask if the cup square of the generator in degree Hn squares to the generator in degree 2n. If it does we say this map has Hopf invariant one, otherwise it has Hopf invariant 0. It's natural to ask how many maps of Hopf invariant one can we build, and the answer is: not many. They only exist when n=1,2,4, or 8. While nowadays we usually learn the proof of this fact using K-theory (which is very short)

> Surgery Theory/ Kervaire Invariant. In 1956, Milnor found a curious example of a manifold. He was studying sphere bundles over spheres, and found that there was a bundle of the form S3→X→S4, and that X is homeomorphic to S7, but it is not diffeomorphic to S7. In other words, there exist exotic smooth structures on manifolds
> When does there exist a manifold of Kervaire invariant one? (The Kervaire invariant is an invariant of a certain quadratic form defined on the middle homology of a framed manifold.) This is kind of vague, but the punchline is that this problem was eventually resolved (up to one case in dimension 126) and the two biggest steps (including the final step) used heavy, heavy stable homotopical machinery. For example, Browder reduced the problem to deciding whether certain elements in the Adams spectral sequence were permanent cycles (this looks familiar...), and this was the method of attack in the Hill-Hopkins-Ravenel approach to resolve all cases except dimension 126.

> The basic result is [Brown Representability](Brown%20Representability). If I have some graded homotopy invariant of spaces that takes [cofiber sequences](../../cofiber%20sequence.md) to long exact sequences and has a suspension isomorphism and takes wedges to products, then this is represented by a sequence of spaces $\ts{E_n}$ with weak equivalences $E_n \cong \Omega E_{n+1}$ coming from the existence of the suspension isomorphism and the Yoneda lemma. Conversely, given a sequence of spaces $\ts{E_n}$ with maps $\Sigma E_n\to E_{n+1}$, you can cook up a cohomology theory. This means that one can do some pretty formal manipulations inside the category of spectra and produce lots of different cohomology theories, even ones that have no geometric interpretation a priori.

> For example, there is a cohomology theory called [tmf](../../Topological%20modular%20forms.md) which has, as of now, no geometric interpretation, but can detect many nontrivial maps between spheres, and can even be used to prove results in [[number theory]]!

> We see that self maps $E\to E$ of a spectrum give natural transformations of the corresponding cohomology theory. Any map of spaces has to preserve this transformation (by definition of natural), and so we can cook up cohomology operations by cooking up maps of spectra. There's even a machine (you've met it in previous bullet points, it's called the [[Adams spectral sequence]]) which computes all maps between spectra

> [Infinite loop spaces](Infinite%20loop%20space): When a space has the structure of a group we get extra structure on its homology groups, namely a product structure (called the [[Pontryagin product]]). In fact, we only need a weak notion of group: an [H-space](H-space) will do, i.e. a group up to homotopy

> It turns out we get [homology operations](Cohomology%20operations) if our space is associative 'up to [[coherent homotopy]].' You might ask what this means, and it turns out that it's equivalent to being the [[loop space]] of some other space. Being associative and commutative 'up to [[coherent homotopy]]'' buys you something more: you're an [Infinite loop space](Infinite%20loop%20space).

> [[Spanier-Whitehead Duality]] 
- [[Blakers-Massey theorem]] and [[homotopy excision]]
