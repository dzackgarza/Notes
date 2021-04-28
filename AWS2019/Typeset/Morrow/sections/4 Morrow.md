# Lecture 4

## Last Time

We saw some general tools that are required to perform constructions like Hochschild homology in greater generality when one can't write down explicit complexes. We had a cyclic object, which leads to $S^1$ acting on something like a complex, and how you can pass from this action to homology, cohomology, and a Tate construction. When we fed Hochschild homology into this, the output was what we saw in earlier lectures: cyclic homology, negative cyclic homology, and periodic cyclic homology.

Why do we want to perform this construction in greater generality, and what information can we expect to extract from it?

## Motivation

Let $A$ be a $k\dash$algebra, and $D(k)$ be a complex of $k\dash$modules. So far we've been looking at these and tensoring things together over $k$, and in this world we built Hochschild homology: $\HH(A_{/k}) \in (D(k), \tensor_k)$. 

We also have $(D(k), \tensor_k) "\subseteq" (D(\ZZ), \tensor_\ZZ)$ , where this "inclusion" appears because any complex of $k\dash$modules is also a complex of abelian groups. 
It is also the case that the $k\dash$algebra $A$ is also a $\ZZ\dash$algebra, i.e. a ring, by forgetting the $k\dash$linear structure. 
So in this world, we can take $\HH(A_{/\ZZ})$, which is in some sense richer in the sense that it can recover $\HH(A_{/k})$. 
In particular, we have
$$
\HH(A_{/k}) = \HH(A_{/\ZZ}) \underset{\HH(k_{/\ZZ} )}\tensor k,
$$ 

where we can form this tensor product because $k$ itself is a $\ZZ\dash$algebra.

In order to make sense of the object on the RHS, it is perhaps easiest to view everything as a simplicial ring, which can be tensored together by tensoring what happens term-wise. This will be an on-the-nose equality when some extra flatness conditions are applied; otherwise it will be some equivalence.

To check this equality, the objects on each side have the following forms
$$
A^{n\tensor_k} \leftrightarrow A^{n\tensor_\ZZ} \underset{m^{\tensor_\ZZ}}{\tensor} k
$$

where tensoring with $k$ is just by the multiplication map. The claim is that these two are the same.

The $\from$ map is given by just replacing $\tensor_\ZZ$ with $\tensor_k$ everywhere. For the $\to$ map, if we map some symbol $A_0 \times \cdots \times A_n$ to the RHS, the fact that $\wait \underset{m^{\tensor_\ZZ}}{\tensor} k$ is modding out by the kernel of the multiplication map exactly imposes $k\dash$bilinearity between the tensor symbols. This yields a $k\dash$bilinear map, which produces an actual map on the tensor product over $k$.

## How far can we go?
The question then becomes: how far can we carry out this process? Is there an even richer setting in which we can carry out these constructions, something of the form $(\wait, \tensor)?$ The structures we would need are:

- The structure must be symmetric monoidal 
  - This essentially says that there is some operation that behaves like tensoring and satisfies the properties we know and love. 
- Limits and colimits should exist
  - So we can form cyclic/periodic-cyclic homology and so on, which as we saw earlier involved taking limits over diagrams involving $BS^1$.
- $\cdots$, some other technical assumptions
- A differential-graded category
  - Need some homotopically rich framework, since in the original derived categories we produced complexes, and we were interested in quasi-isomorphisms and equivalences between these complexes, so not just any category will do.

Can such a thing exist? The answer is no! In some sense, $D(\ZZ)$ is the best we can do -- in the world of d.g. categories, $D(\ZZ)$ is characterized as an initial object. If any other such category $C$ is produced, then tensoring a map $C \to D(\ZZ)$ yields a restriction/inclusion in the other direction.

So we need to relax some of the conditions, i.e. by replacing d.g. categories with a simplicial or $\infty\dash$category, which have less strong linearity conditions on the hom-sets. Then there is something better, and the best we can do is the category of spectra $D(\Sp)$, which we're supposed to think of as some kind of derived category over the sphere spectrum. This has a similar initial property as $D(\ZZ)$.

This was an idea of Goodwillie and Voudhousen(?) in the 80s/90s that one should try to transport the construction of $\HH$ beyond the algebraic case and into the world of spectra and ring spectra, where we expect that repeating the construction would yield better information. 


What is better information? Here are a few pathologies.

Consider $\FF_p$, then 
$$
\HP_0(\FF_p) = \FF_p  \underset{\FF_p}\tensor \cdots \underset{\FF_p }\tensor \FF_p = \FF_p \\
\HP_0({\FF_p}_{/\ZZ}) = \Zp \oplus \text{ junk}
$$
where in the second line, tensoring copies of $\FF_p$ together naively over $\ZZ$ would again collapse, but instead taking **derived tensor product** yields something more interesting. The "junk" appearing is in fact quite bad -- period cyclic homology was built out of piling up copies of cyclic homology shifted by different degrees. You get $(\ZpZ)^n$ at different stages, which build up to $\Zp$, but at each finite stage there is already some junk, and an inverse limit of junk is also junk. In fact, the limiting junk is bad -- at each stage, you may differ from $(\ZpZ)^n$ by something controllable, but the limiting junk is not killed by a power of $p$ -- and thus come in the form of junky $\Zp\dash$modules.

However, when we repeat our constructions in the world of spectra, this junk term goes away.

## $\THH = \HH(\wait, \Sp)$ of $\FF_p\dash$algebras

Although the objects we're dealing with are unfamiliar, the following theorem lets you manipulate these objects using algebraic techniques.

:::{.theorem title="Bokstedt"}
\[
\THH_\text{odd}(\FF_p) &= 0\\
\THH_\text{even}(\FF_p) &= \FF_p[u] && \text{where } u\in \THH_2(FF_p)
.\]
:::

The first part comes from computing the homotopy groups of the spectrum (and the result is something we also saw for $\HH$), while the second part is due to the fact that $\THH_2$ is a one-dimensional $\FF_p\dash$vector space, so we can just pick a generator and then multiplication is given in a polynomial fashion.

:::{.corollary title="?"}
For any $\FF_p\dash$ algebra $A$, we get a fiber sequence (or distinguished triangle)
$$
\THH(A)[2] \mapsvia{x\mapsto xu} \THH(A) \to \HH(\afp)
$$
:::

:::{.remark}
The first term is $\THH(A)$ shifted by a bit, while what's left on the RHS is the usual $\HH$ we saw in earlier lectures. If we're convinced that the same sort of algebraic manipulations as earlier continues to work in the world of spectra, we get
$$
\HH(\afp) = \THH(A) \underset{\THH(\FF_p)} \tensor \FF_p
$$

which witnesses the fact that $\THH(A)$ is strictly richer than $\HH(\afp)$; we can recover the former from the latter.
But reading off the previous theorem, in order to kill all of $\THH(\FF_p)$, apart from the initial $\FF_p$ in degree zero, we just have to kill $u$, and so by abuse of notation,
$$
\THH(A) \underset{\THH(\FF_p)} \tensor \FF_p = { \THH(A) \over  \generators{u}}
,$$
where this abuse is (to some extent) allowed in this game.
This allows us to study $\HH(\afp)$, which we addressed in earlier lectures, in terms of $\THH(A)$ and this class $u$.
If go take homotopy groups, we get a long exact sequence, so we can see what this buys us in the world of abelian groups:
$$
\THH_0(A) &\cong \HH_0(\afp) = A \\
\THH_1(A) &\cong \HH_1(\afp) = \Omega_{\afp}^1 \\
$$
we explicitly get the long exact sequence
$$
\cdots \THH_1(A) \to \THH_3(A) \to \HH_3(\afp)
\to \THH_0(A) \to \THH_2(A) \to \HH_2(\afp) \to 0
$$

where we can identify $\THH_0, \THH_1$ as before and in some sense, the $\THH$ are built up out of multiple copies of $\HH$. For example, $\THH_2$ gets a contribution from $\HH_2$ and $\THH_0 = \HH_0$. Similarly, $\THH_3$ has a contribution from $\HH_3$ and $\THH_1 = \HH_1$. So continuing upwards, each $\THH$ encodes some data about all of the lower $\HH$ and building them together.

:::

The case in which one can most clearly see the way this builds up is when $A$ is a smooth $k\dash$algebra, where we computed how $\HH$ of these looked in the first talk. We have an analogous result:

:::{.theorem title="Hesselholt's Hochschild-Kostent-Rosenburg"}
If $A$ is a smooth $\FF_p\dash$algebra then 
$$
\THH_*(A) \cong \Omega^*_{\afp} \underset{\FF_p[u]}\tensor \FF_p[u]
$$

where the LHS is a graded algebra of $\THH$ groups and the RHS contains the differential forms seen in previous HKR theorems, along with a contribution arising from functoriality and the fact that $\FF_p \to A$ yielding a map $\THH(\FF_p)\to  \THH(A)$, and looks like a polynomial algebra.
More precisely, we have 
$$
\THH_n(A) = \bigoplus_{i=1}^{\left \lfloor{n\over 2}\right \rfloor } \Omega_{\afp}^{n-2i}.
$$
:::

:::{.proof title="?"}
Using the long exact sequence we have
$$
\cdots \to \THH_{n-2}(A) \to \THH_n(A) \to \HH_n(\afp) \to \cdots
$$
We also have the classical HKR isomorphism 
\[
\HH_n(\afp) \cong \Omega^n_{\afp}
.\] 
But since $\Omega$ is appearing in $\THH_1$, the multiplicative structure produces for us a map 
\[
\Omega^n_{\afp} \to \THH_n(A)
\]
by multiplying together $n$ times the map $\Omega^1 \to \THH_1$.
But then $\THH_n \surjects \HH_n$, which means that the LES breaks into SESs by using the surjectivity at the $n$ and $n+1$ levels and adding zeros at the sides of level $n$. The result will then follow by induction, since we already have the result in degrees 0 and 1. As we run up the sequence, we'll find that as long as $\THH_{n-2}$ is described by the sum above, then in order to pass to $\THH_n$, we just need to add a copy of $\Omega_n$.
:::

:::{.remark}
This may initially look bizarre -- it was very attractive in $\HH$ that each group was just given by a bunch of differential forms in the expected degree, while here we have them shifted in different degrees. This actually works out perfectly. We'll look at topological periodic cyclic homology in a moment, which is built by taking the limit of multiple copies of cyclic homology piled on top of one another, and what will happen is that all of these different differential forms will exactly align to sit on top of one another and produce (in the limit) crystalline cohomology. If you view this as represented by the deRham-Witt complex, then you have a canonical $p\dash$adic filtration on this complex and all of the pieces look like copies of the deRham complex of your original algebra. So we need all of these copies of the deRham complex at the starting point in order for things to build up correctly and yield something interesting.
:::

## The Periodic Theory $\TP(\FF_p)$

Recall that this was obtained as $\TP(\FF_p) = \THH(\FF_p)^{tS^1}$, where we can think of this as equal to $\HP({\FF_p}_{/\Sp} )$ where $tS^1$ denotes taking the Tate construction. In the algebraic setup, we defined $\HP$ in terms of an explicit double complex which produces a spectral sequence. This sequence converges from the homology of the columns ($\HH$) to $\HP$. There is similarly a spectral sequence associated to this Tate construction, which can be reindexed to look exactly the same (to the horror of many topologists):

\begin{tikzcd}
	\ddots && \ddots & \vdots & {} && \udots \\
	{} & \textcolor{rgb,255:red,92;green,92;blue,214}{\Fp[u]^2} & \bullet & {\Fp[u]} & \bullet & \Fp \\
	\ddots & \bullet & \textcolor{rgb,255:red,92;green,92;blue,214}{\Fp[u]} & \bullet & \Fp & \bullet \\
	\cdots & {\Fp[u]} & \bullet & \textcolor{rgb,255:red,92;green,92;blue,214}{\Fp} & \bullet & \bullet & \cdots \\
	{} & \bullet & \Fp & \bullet & \bullet & \bullet \\
	& \Fp & \bullet & \bullet & \bullet & \bullet \\
	\udots &&& \vdots &&& \ddots
	\arrow[from=2-2, to=3-2]
	\arrow[from=3-2, to=4-2]
	\arrow[from=4-2, to=5-2]
	\arrow[from=5-2, to=6-2]
	\arrow[from=5-3, to=5-2]
	\arrow[from=4-4, to=4-3]
	\arrow[from=3-5, to=3-4]
	\arrow[from=3-3, to=3-2]
	\arrow[from=2-4, to=2-3]
	\arrow[from=2-5, to=2-4]
	\arrow[from=3-4, to=3-3]
	\arrow[from=2-3, to=2-2]
	\arrow[from=4-3, to=4-2]
	\arrow[from=2-6, to=2-5]
	\arrow[from=2-3, to=3-3]
	\arrow[from=3-3, to=4-3]
	\arrow[from=4-3, to=5-3]
	\arrow[from=2-4, to=3-4]
	\arrow[from=3-4, to=4-4]
	\arrow[from=2-5, to=3-5]
\end{tikzcd}

> [Link to Diagram](https://q.uiver.app/?q=WzAsMzgsWzEsMSwiXFxGcFt1XV4yIixbMjQwLDYwLDYwLDFdXSxbMiwyLCJcXEZwW3VdIixbMjQwLDYwLDYwLDFdXSxbMywzLCJcXEZwIixbMjQwLDYwLDYwLDFdXSxbNCw0LCJcXGJ1bGxldCJdLFszLDQsIlxcYnVsbGV0Il0sWzQsMywiXFxidWxsZXQiXSxbNCwyLCJcXEZwIl0sWzMsMiwiXFxidWxsZXQiXSxbMywxLCJcXEZwW3VdIl0sWzEsMywiXFxGcFt1XSJdLFsxLDIsIlxcYnVsbGV0Il0sWzIsMSwiXFxidWxsZXQiXSxbMiwzLCJcXGJ1bGxldCJdLFsyLDQsIlxcRnAiXSxbMSw0LCJcXGJ1bGxldCJdLFs0LDEsIlxcYnVsbGV0Il0sWzEsNSwiXFxGcCJdLFs1LDEsIlxcRnAiXSxbNSwyLCJcXGJ1bGxldCJdLFs1LDMsIlxcYnVsbGV0Il0sWzUsNCwiXFxidWxsZXQiXSxbNSw1LCJcXGJ1bGxldCJdLFs0LDUsIlxcYnVsbGV0Il0sWzMsNSwiXFxidWxsZXQiXSxbMiw1LCJcXGJ1bGxldCJdLFszLDAsIlxcdmRvdHMiXSxbMyw2LCJcXHZkb3RzIl0sWzYsMywiXFxjZG90cyJdLFswLDMsIlxcY2RvdHMiXSxbMCw2LCJcXHVkb3RzIl0sWzQsMF0sWzYsMCwiXFx1ZG90cyJdLFswLDAsIlxcZGRvdHMiXSxbMCwxXSxbNiw2LCJcXGRkb3RzIl0sWzAsMiwiXFxkZG90cyJdLFsyLDAsIlxcZGRvdHMiXSxbMCw0XSxbMCwxMF0sWzEwLDldLFs5LDE0XSxbMTQsMTZdLFsxMywxNF0sWzIsMTJdLFs2LDddLFsxLDEwXSxbOCwxMV0sWzE1LDhdLFs3LDFdLFsxMSwwXSxbMTIsOV0sWzE3LDE1XSxbMTEsMV0sWzEsMTJdLFsxMiwxM10sWzgsN10sWzcsMl0sWzE1LDZdXQ==)


Here we just put $\THH(\FF_p)$ in each of the columns, where we use the Bokstedt theorem that shows that these vanish in odd degree. We also know that there's a copy of $\FF_p[u]$ in each even degree, and we just use the powers to keep track of the multiplicative structure.
This converges to $\TP(\FF_p)$, where we repeat the classical theory and "sum" along the diagonals, although we need to solve some extension problems. In particular, the blue terms yield $\TP_0(\FF_p)$. This is because there are no nontrivial differentials -- since it's only supported in even bidegree, every differential either comes from something zero or targets a zero.

So $\TP_0$ again contains most of the information, which is a completed filtered ring with associated graded pieces given by $\FF_p[u]$. So the question is how we can add up copies of $\FF_p$ in various degrees and end up with a ring. There are two possibilities:

- We failed, and we just get $\FF_p[[u]]$, or
- We get $\Zp$.

Fortunately, life is good, and the latter case happens! We thus get a theorem, 
\[
\TP_0(\FF_p) = \Zp
.\] 
Checking this isn't terribly difficult.

In particular, we have a class $u\in \FF_p[u]$, which is going to give us some element in the first step of the filtration of $\TP_0$. Either it is getting sent to an element of $\TP_0$ which is killed by $p$, according to the first case, or it's getting sent to some multiple of $p$ (note that $\TP_0$ is in fact a ring, so it could get sent to $p$). So we only need to look at where $u$ goes in this very low degree part of the spectral sequence.
As it turns out, $\THH$ is surprisingly close to classical $\HH$ in very low degrees, and so in the degrees that control this extension problem, you can work with and resolve this at the level of classical $\HH$. This gives you exactly the amount of information needed to determine which way $u$ acts.

But in fact, the spectral sequence is period, and so what happens along this diagonal happens along every diagonal, and we thus obtain the theorem $\TP_*(\FF_p) = \Zp[\sigma^{\pm 1}]$ where $\sigma$ is any generator of the free $\Zp\dash$module $\TP_2(\FF_p)$. So it's a nice, 2-periodic cohomology theory.

Now similarly, as from Bokstedt's theorem we got a consequence for arbitrary $\FF_p\dash$algebras, we will similarly find some consequence for $\TP(A)$ for $A$ and arbitrary $\FF_p\dash$algebra just by knowing what happens in $\TP(\FF_p)$. We now look at the consequences for such an $A$.


:::{.theorem title="?"}
$$
\TP(A)\mod p \cong \HP(\afp)
.$$ 
:::


:::{.remark}
This is perhaps the big payoff the justifies that we haven't messed up too badly. In particular, if $A$ is a smooth algebra, $\HP$ is related to the deRham cohomology. This says that $\TP(A)$ is a mixed characteristic lift of $\HP(\afp)$. We know that $\TP(A)$ lives over $\TP(\FF_p)$, which has $\pi_0 = \Zp$, and so $\TP(A)$ lives of $\Zp$, so this produces some sort of functorial lift which will turn out to be crystalline cohomology.
:::


> Major! This holds for an arbitrary $\FF_p\dash$algebra, so you could plug in some singular ring to get a canonical mixed-characteristic lift of $\TP$ in the case. Or as per the original view of $\TP$, even for noncommutative rings, it is some replacement of deRham cohomology. Even if you take some noncommutative $\FF_p\dash$algebra, even that has some nice functorial mixed-characteristic lift to $\Zp$.

> Note: as far as Morrow is aware, this point of view of the existence of noncommutative crystalline cohomology has not been explored.


:::{.proof title="?"}
From Bokstedt's theorem, we had an exact sequence
$$
\THH(A)[-2] \mapsvia{u} \THH(A) \to \HH(\afp)
$$

and if we carefully choose how we multiply by $u$, this will be compatible with the $S^1$ action manifesting in the cyclic structures everywhere. We can this apply $tS^1$ everywhere, which is an exact functor, yielding
$$
\TP(A)[-2] \mapsvia{u} \TP(A) \to \HP(\afp).
$$

We should emphasize at this point that it is not automatic that $\TP$ is in fact periodic, as this will not hold for an arbitrary ring. In this case, however, since we have $\FF_p\dash$algebras, we read 2-periodicity off of the spectral sequence for $\FF_p$, which lifts to a result for $\FF_p$ algebras $A$.
We in fact have $\TP(A)[-2] \mapsvia \cong \TP(A)$, and the map $u$ becomes 
\[
\TP(A) \mapsvia{\times p} \TP(A)
.\]
This was more or less the extension problem we needed to solve earlier, where we have to check that $u\mapsto p \in \TP_0$. Thus if you mod out $p$ from $\TP(A)$, then you collapse an $\HP$, yielding the original statement.

For example, if $A$ is smooth over $\FF_p$, then $\TP(A)$ will look like crystalline cohomology 
$$
R\Gamma_\text{crys}(A_{/\Zp} ) \definedas \Omega^\wait_{\widetilde{A}_{/\FF_p} }
$$ 
where $\widetilde A$ is any smooth algebra over $\Zp$ lifting $A$. 
A priori, this may depend on choice of lift, so we can't necessarily take this as a definition of crystalline cohomology. It turns out not to depend on choice, and one way to see that is by comparing to what happens in $\TP$, although this is perhaps overkill.

:::

Next time, we'll explain more closely the comparison between $\TP$ and crystalline cohomology, and we'll see some analogous statements that arise when we plug in $\Zp\dash$algebras instead of $\FF_p\dash$algebras.

:::{.question}
Does there always exist a smooth lift of $A$?
:::

:::{.answer}
When you plug in a ring, it's not clear, but it does always exist. This is only an affine statement, and so it will certainly not hold for the case of a projective variety over $\FF_p$. But this is precisely the point of crystalline cohomology -- it tells you that in the affine case, you can lift your algebra to some smooth $\Zp\dash$algebra, and define this cohomology theory in terms of the lift. But how can you possible glue this construction when your variety is non-liftable? Crystalline cohomology says that in fact, it can be done.
:::

:::{.question}
If $A$ is a perfect algebra over $\FF_p$, what are $\TP$ and $TH$?
:::

:::{.answer}
Replacing $\FF_p$ by any perfect $\FF_p\dash$algebra $A$ still yields true statement if you replace $\Zp$ by $W(A)$, the ring of Witt vectors over $A$.
:::

:::{.question}
Does forming $\TP(A)$ commute with base change, like modding out by $p$? Is $\TP$ of a lift equal to a lift of $\TP$?
:::

:::{.answer}
No, no. More interesting things happen!
:::

:::{.question}
Are you making any claims about whether $\TP(A)$ has any $p\dash$torsion, like the homotopy groups, when you say it's a mixed-characteristic lift?
:::

:::{.answer}
It doesn't seem like such a claim was made, so what do we mean by "a mixed-characteristic lift"? This means that when you take it derived mod $p$, you recover the RHS, but a priori there's no reason there couldn't also be some $p\dash$torsion in $\TP$. In fact, even in the theory of crystalline cohomology, given a smooth projective variety over $\FF_p$, you can see some torsion phenomena happening in $R\Gamma_\text{crys}$ over $\Zp$. You'll see that $\TP$ is in fact built out of copies of $R\Gamma_\text{crys}$, which could contain torsion -- in some sense, this is not well-understood.
:::

:::{.question}
Do $\TP$ and $\THH$ always have etale descent?
:::

:::{.answer}
Yes, even flat descent.
:::

:::{.question}
When looking at $\HP(\afp)$, does this use the derived tensor product or the usual one?
:::

:::{.answer}
Every algebra over a field is flat, so they coincide. When taking $\HP({\FF_p}_{/\ZZ} )$, then they have to be derived -- in general, everything should involve derived tensor products. If you replace $\FF_p$ with some perfect ring, for example, then you need derived tensor products.
:::


