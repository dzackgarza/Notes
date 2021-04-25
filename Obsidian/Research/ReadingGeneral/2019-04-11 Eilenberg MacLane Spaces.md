The point of this note is to reword and fill in some details in [Akhil Mathew's post](https://amathew.wordpress.com/2010/12/06/eilenberg-maclane-spaces/amp/)
# The Setup

We start with a very general problem: suppose we are given a topological space $X$ and wish to compute
$\pi_*(X)$. Although the homotopy groups themselves are not a complete invariant of $X$ -- that is, we can
generally construct spaces that are homotopy-equivalent to $X$ but not homeomorphic --
this will get us partially there. Moreover, in this process we will determine what extra information
is needed to in fact obtain a *complete* set of invariants for $X$.

The very first thing we'll do is replace $X$ with a CW complex that is homotopy-equivalent to $X$. By
the CW approximation theorem, we can do this for any space $X$, and since many theorems are much nicer
for CW complexes than arbitrary spaces, we implicitly work in this subcategory from here on.

For any group $G$, suppose for a moment that there existed a space $K(G,n)$ (where $n$ is a natural numbers) satisfying
$$
\pi_i(K(G,n)) = \begin{cases}
G, & i = n \\
0, & \text{else}
\end{cases}
$$
where $0$ denotes the trivial group. If such a space existed, this would perhaps be the simplest type
of object to work with within homotopy theory -- it has exactly one homotopy group concentrated in one
dimension. We will show later that not only does such a space exist, and can be constructed in a
relatively straightforward manner, but also that it is unique up to homotopy-equivalence, and are
thus referred to as *Eilenberg-MacLane spaces*.

# The Atoms of Homotopy Theory
For the moment, let's focus on one particular degree on homotopy groups, say $G = \pi_i(X)$.
Note that for our original space, if we make the assumption that
$G$ is finitely generated, we can appeal to the classification of (finitely generated) abelian groups and write
$G \cong \ZZ^n \bigoplus_{j=1}^m \ZZ_{k_j}$ for some $n$ and some $m$. That is, it decomposes as a
free group of rank $n$, along with a sum of finite cyclic groups with orders given
by the invariant factors $k_j$. As an aside, it is perhaps worth mentioning that $\pi_i(X)$ is abelian for $n\geq 2$, so the
categorical product and coproduct (here the direct sum) will coincide. This leaves the $i=1$ case; however,
the fundamental group can generally be computed using more elementary methods such as covering space theory
and Van Kampen's theorem.

So we've come up with the "atoms" that we might hope to build spaces out of, and we've realized that we can break
any given homotopy group of $X$ into free and cyclic groups. The strategy now is to see if we can work out what kind of spaces $K(\ZZ^n, i)$ and $K(\ZZ_k, i)$ are, and hope we can prove a theorem that says something like $K(G_1, i) \oplus K(G_2, i) =K(G_1 \oplus G_2, i)$. If we can do this, we now have a method of constructing a space that has the same homotopy groups as $X$ in degree $i$. If we can then show something like
$$
\pi_i(K(G_1, j) \oplus K(G_2, k)) = \begin{cases}
G_1, & i = j \\
G_2, & i = k \\
0, & \text{else}
\end{cases}
$$
then we will be in business. Explicitly, splitting the homotopy groups of $X$ up by degree and writing
$$\pi_*(X) = \bigoplus_{i=1}^\infty \pi_i(X),$$
we could construct a space $X'$ that has the exact same homotopy groups $X$ by taking
$$X' = \bigoplus_{i=1}^\infty K(\pi_i(X), i).$$

What does this buy us? It's not quite the case that $X' \homotopic X$, since having isomorphic
homotopy groups alone is insufficient to guarantee homotopy equivalence. A standard counterexample
here are the spaces $S^2\cross \RP^3$ and $S^3 \cross \RP^2$; one in fact needs a single map *inducing*
all of the isomorphisms on homotopy groups simultaneously for this kind of result to hold.

So the naive hope of writing $X$ as a product of simple spaces won't work. As it turns out, what we
*can* get is a way to write $X$ in a way that's often referred to as a "twisted" product, which is formalized in
the notion of a (Serre) fibration.

# Twisted Products
It's perhaps worth spelling out exactly what "twisted product" means here, since it's often glossed over.
Suppose we have a fibration $F \injects E \mapsvia{p} B$ which is in fact a fiber bundle -- note that this is
a strictly stronger condition, requiring the fibration to have *local trivialization*. This amounts to
asking that for every open neighborhood $U \in B$, we have $p^{-1}(B) = F \cross B$ up to homeomorphism. This
is of course strictly weaker than requiring $E\cong F\cross B$ globally, which would be denoted a trivial
bundle; there may in fact be monodromy in the total space $E$ that topologically distinguishes it from
this product. A primary example of this phenomenon is the Mobius bundle,
$$
I \injects M \surjects S^1
$$

which is a line bundle over the circle. Note that locally we do have $M \cong S^1 \cross I$, but since $M$
is not homeomorphic to a cylinder, this produces a nontrivial bundle. There is instead a global "twist",
arising from the fact $M$ is nonorientable and parallel-transporting a small arc in $M$ once around the core
circle is not the identity map.
By a somewhat non-precise abuse of notation, one might instead write something like
$M \cong S^1 \semidirect_\varphi I$, indicating that this is a nontrivial bundle. One could further
ask, given a base $B$ and a fiber $F$, how many distinct nontrivial bundles $F \to E \to B$ exist,
which is a bit far afield for us now but leads to the rich and fruitful theory classifying spaces.

The moral of the story here is that we can generalize a product of spaces $A \times B \times C \times \cdots$
as a "twisted product" $A \semidirect_{\varphi_1} B  \semidirect_{\varphi_1} C  \semidirect_{\varphi_1} \cdots$
by constructing an interlocking series of fibrations. Luckily for us, our next step towards
solving our original problem will involve the construction of Postnikov towers, which explicitly
encode how this interlocking works.

# Postnikov Towers

First I want to define exactly what a Postnikov tower is and how we can explicitly build them using
CW complexes, since this is something that is treated differently among different sources.

The data is a Postnikov tower is a sequence of spaces $\theset{X_i}$ equipped with maps $p_n: X_n \to X_{n-1}$,
where each $p_n$ is a fibration, and
$$
\pi_i(X_n) =
\begin{cases}
\pi_i(X), & i \leq n \\
0, & i > n.
\end{cases}
$$
such that the following diagram commutes:

$$
\begin{tikzcd}
\vdots                                           &  & \vdots \arrow[d, "p_{n+2}"', two heads] \arrow[rrdddd, dotted] &  &   \\
{K(\pi_{n+2}X, n+3)} \arrow[rr, "k_{n+3}", hook] &  & X_{n+1} \arrow[d, "p_{n+1}"', two heads] \arrow[rrddd]         &  &   \\
{K(\pi_{n+1}X, n+2)} \arrow[rr, "k_{n+2}", hook] &  & X_n \arrow[rrdd]                                               &  &   \\
\vdots                                           &  & \vdots \arrow[d, "p_1"', two heads]                            &  &   \\
{K(\pi_2X, 3)} \arrow[rr, "k_3", hook]           &  & X_1 \arrow[rr]                                                 &  & X
\end{tikzcd}
$$
Note that we have fibrations 
$$K(\pi_{i+1}(X), i+2) \to X_i \to X_{i-1}$$ 
for all $i > 1$, and so using our earlier notation we can suggestively write 
$X_i \cong K(\pi_{i+1}(X) \semidirect X_{i-1}$. It also turns out there is a weak
equivalence $X \to \lim_i X_i$, and so carrying this out inductively allows us to write
$$
X \homotopic K(\pi_{1}(X),2) \semidirect   K(\pi_{2}(X),3) \semidirect   K(\pi_{3}(X),4) \semidirect  \cdots
$$

yielding our "twisted product".

This spaces can be constructed by a relatively easy process. If $X$ already has the homotopy type of a $CW$ complex, first let $X_i = X^{(i)}$, the $i\dash$skeleton of $X$. Since every group has a presentation, we can write $\pi_{i+1}(X) = \generators{a, b, c, \cdots} / \generators{R_1, R_2, \cdots}$ where $a,b,c,\cdots$ are generators and $R_i$ are relations.
