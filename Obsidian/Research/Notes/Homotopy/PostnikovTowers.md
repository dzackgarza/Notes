# Classifying the Homotopy Category of Spaces

The point of this note is to reword and fill in some details in [Akhil Mathew's post](https://amathew.wordpress.com/2010/12/06/eilenberg-maclane-spaces/amp/)

## Types

To fix some terminology, if we have fixed category $\mathcal{C}$, given an object $X\in \Ob(\mathcal{C})$, we define its **$\mathcal{C}\dash$type** $[X]$ to be the set of all objects $X' \in \Ob(\mathcal{C})$ that admit an isomorphism $f\in \hom_{\mathcal{C}}(X, X')$.
For example, in the category $\mathcal{C} = \Top$ of topological spaces and homeomorphisms, we'll say that $X$ has a unique corresponding *homeomorphism* type, where we identify $X$ with any space it is homeomorphic to.
Similarly, in the homotopy category of topological spaces $\hoTop$, we identify$X$ with all spaces homotopy-equivalent to $X$, and denote the class of all such spaces $[X]$.
We often abuse notation, however, and simply write $X$ in places of $[X]$.

We start off with a basic question:

:::{.question}
Given a category $\mathcal{C}$, how much data about an object $X$ is needed to uniquely specify its $\mathcal{C}\dash$type $[X]$? 
:::
This data, if it exists, will be referred to as a *complete set of invariants* for $\mathcal{C}$.

One example that doesn't admit an easy answer is $\mathcal{C} = \Top$, where I'm not sure if there are any clear results along these lines. 
In fact, I'd expect that this is the case for most categories of interest!
A slightly more tractable example is $\mathcal{C} = \hoTop$, where it will turn out there is relatively small set of data that determines the homotopy type of a space completely, i.e. there does indeed exist a known complete set of invariants in this category.
One critical ingredient is the computation of $\pi_*(X)$.

## Homotopy Groups

First recall that a homeomorphism induces a homotopy equivalence, and conversely if two spaces are *not* homotopy equivalent then they can not be homeomorphic.
So let's reduce to this one piece of the problem: suppose we are given a pointed topological space $(X, x_0)$ (where $x_0$ is some choice of a basepoint) and we wish to compute the graded group structure of the homotopy groups
\[
\pi_*(X) \da \bigoplus_{j=1}^\infty \pi(X; x_0)
\]

Why do this?
The easy answer is because this is the clearest obstruction to two spaces being homotopy equivalent -- if $\pi_*(X) \neq \pi_*(X')$, then we can possibly have $X\simeq X'$, and thus $[X], [X']$ are two distinct homotopy types.

Since $\pi_*$ is functorial, any homeomorphism $f \in \hom_{\Top}(X, X')$ will induce a homotopy equivalence $f_*^h \in \hom_{\hoTop}(X, X')$ and an isomorphism $f_* \in \hom_{\gr\Grp}( \pi_*(X), \pi_*(X'))$ of graded groups, so this provides some invariant of homeomorphism types of spaces.
However, we should be careful to note that $\pi_*$ is not a *complete* invariant of the topological type of $X$ -- that is, we can generally construct spaces $X'$ that are homotopy-equivalent to $X$ but not *homeomorphic* to $X$.
They will however provide partial information that will allow us to find obstructions to homotopy equivalences and thus homeomorphisms.

Moreover, in this process we will determine what extra information is needed to in fact obtain a *complete* set of homotopy invariants for $X$.
In other words, we hope to answer the question of how much data it takes to uniquely specify $[X]$, the homotopy type of $X$.

We'll restrict our attention first to the subcategory of CW complexes.
Why is this a good move at this point? 
We have the following theorem:

:::{.theorem title="CW Approximation"}
Todo
:::

From this, nice enough spaces $X$ will admit a weak equivalence to some CW complex $X'$, and so $\pi_*(X) \cong \pi_*(X')$.
So if we're just interested in computing homotopy groups, this is a harmless step.
But there is in fact a strict advantage:
we have many nice tools and theorems that specifically work for CW complexes.
So we implicitly work in this subcategory from here onward.
The very first thing we'll do is replace $X$ with a CW complex $\tilde X$ that is homotopy-equivalent to $X$, and we'll immediately abuse notation by just writing $X$ for $\tilde X$ everywhere.

## Eilenberg-MacLane Spaces: The Atoms of Homotopy Theory

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

## Assembling the Atoms

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
we could assemble a space $X'$ that has the exact same homotopy groups $X$ by taking
\[
X' = \bigvee_{i=1}^\infty K(\pi_i(X), i).
\]

What does this buy us? It's not quite the case that $X' \homotopic X$, since having isomorphic
homotopy groups alone is insufficient to guarantee homotopy equivalence. A standard counterexample
here are the spaces $S^2\cross \RP^3$ and $S^3 \cross \RP^2$; one in fact needs a single map *inducing*
all of the isomorphisms on homotopy groups simultaneously for this kind of result to hold.

So the naive hope of writing $X$ as a product of simple spaces won't work. As it turns out, what we
*can* get is a way to write $X$ in a way that's often referred to as a "twisted" product, which is formalized in
the notion of a (Serre) fibration.

## Twisted Products

It's perhaps worth spelling out exactly what "twisted product" means here, since it's often glossed over.
Suppose we have a fibration $F \injects E \mapsvia{p} B$ which is in fact a fiber bundle -- note that this is
a strictly stronger condition, requiring the fibration to have *local trivialization*. This amounts to
asking that for every open neighborhood $U \in B$, we have $p^{-1}(B) = F \cross B$ up to homeomorphism. This
is of course strictly weaker than requiring $E\cong F\cross B$ globally, which would be denoted a trivial
bundle; there may in fact be monodromy in the total space $E$ that topologically distinguishes it from
this product. A primary example of this phenomenon is the Mobius bundle,

\begin{tikzcd}
I \ar[r, hook] & \RR \ar[d, ->>] \\
 &  S^1 \\
\end{tikzcd}

which is a line bundle over the circle. 
Note that locally we do have $M \cong S^1 \cross I$, but since $M$ is not homeomorphic to a cylinder, this produces a nontrivial bundle. There is instead a global "twist",
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

## Postnikov Towers

First I want to define exactly what a Postnikov tower is and how we can explicitly build them using
CW complexes, since this is something that is treated differently among different sources.


:::{.definition title="Postnikov Tower"}
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

\begin{tikzcd}
\vdots                                           &  & \vdots \arrow[d, "p_{n+2}"', two heads] \arrow[rrdddd, dotted] &  &   \\
{K(\pi_{n+2}X, n+3)} \arrow[rr, "k_{n+3}", hook] &  & X_{n+1} \arrow[d, "p_{n+1}"', two heads] \arrow[rrddd]         &  &   \\
{K(\pi_{n+1}X, n+2)} \arrow[rr, "k_{n+2}", hook] &  & X_n \arrow[rrdd]                                               &  &   \\
\vdots                                           &  & \vdots \arrow[d, "p_1"', two heads]                            &  &   \\
{K(\pi_2X, 3)} \arrow[rr, "k_3", hook]           &  & X_1 \arrow[rr]                                                 &  & X
\end{tikzcd}
The maps $k_i$ are known as the **$k\dash$invariants** of $X$.
:::

:::{.remark}
Note that we have fibrations
\begin{tikzcd}
K(\pi_{i+1}(X), i+2) \ar[r] & X_i\ar[d] \\
 &  X_{i-1}\\
\end{tikzcd}
for all $i > 1$, and so using our earlier notation we can suggestively write
$X_i \cong K(\pi_{i+1}(X) \semidirect X_{i-1}$. It also turns out there is a weak
equivalence $X \to \lim_i X_i$, and so carrying this out inductively allows us to write
$$
X \homotopic K(\pi_{1}(X),2) \semidirect   K(\pi_{2}(X),3) \semidirect   K(\pi_{3}(X),4) \semidirect  \cdots
$$

yielding our "twisted product".

:::



This spaces can be constructed by a relatively easy process. 
If $X$ already has the homotopy type of a $CW$ complex, first let $X_i = X^{(i)}$, the $i\dash$skeleton of $X$. 
Since every finitely-generated group has a presentation, we can write $\pi_{i+1}(X) = \generators{a, b, c, \cdots} / \generators{R_1, R_2, \cdots}$ where $a,b,c,\cdots$ are generators and $R_i$ are relations.


