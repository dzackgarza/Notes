# Summary
I met with Prof. Roberts for about an hour and a half today. At our last meeting, we had a bit of a discussion about what the research topic might be.

He relayed some of his experiences, such as one instance of trying to compute the homotopy groups of spheres - something like $\pi_5(S^2)$, which is a finite group of order 12, but it's difficult to determine whether it is $\ZZ_3\cross \ZZ_2\cross\ZZ_2$ or $\ZZ_3 \cross \ZZ_4$. He mentioned that he later found out that this was actually a "good" place to be stuck, because there was something actually challenging there! *Note: I think this is the thing Serre missed in his thesis.*

He also spoke about his experiences as a grad student. His advisor seemed to have 2 problems in mind to work on. One of them was studying a certain coefficient of a polynomial - it seemed like it should be there for a reason, and that explaining it was tractable. He found that he had some ideas on how to start on this one. The other problem was something more abstract, where it wasn't even clear where to start, even after a week of thinking about it.

I tossed out the idea of studying spectral sequences, because it was somewhat related to what we were studying in our topology class, but wasn't something we'd have much time to cover in class. This seemed tractable, since these are actually computable in some sense - at the end of the day, you can actually get a number of some sort out of it. He relayed some of his experience computing with them previously, noting how they could be a bit like a puzzle, finding different pieces here and there that allow you to compute differentials, then moving on to compute something else which in turn helped fill in a gap in something you'd previously visited.

I mentioned that I thought this would be a good topic for me because 1) it seemed like a powerful tool, even outside of topology (e.g. in algebraic geometry), and 2) there are a lot of auxiliary ideas that come into play that would be good to learn, like filtrations, fibrations, etc. He agreed, said he thought that'd be pretty fun, and we agreed to meet on Wednesday to go over his intro lecture and some references.



On Wednesday, we started into covering the content. He provided two references up front:

- **Rational Homotopy Theory and Differential Forms** by Griffiths and Morgan
  - This provides some Algebraic Topology background, things like
    - Fibrations
    - Obstructions
    - Postnikov towers
  - This also covers a bit about the Serre spectral sequence
- **Differential Forms in Algebraic Topology** by Bott and Tu
  - Essentially need the middle section, which focuses on spectral sequences in general
  - The examples are mostly related to sheaf/Cech (co)homology, which aren't as helpful in algebraic topology
  - The end section is good - reviews homotopy theory, path and loop fibrations, and the Serre spectral sequence

A few items that came up in conversation:

- Syzygies: for general modules, we can look at relations. The relations themselves form a submodule, so we can repeat the process of looking at "relations among relations". Eventually one arrives at the zero module
- Cohomological Dimension
- Differential forms
  - A bit like a measure, gives areas and volumes without the analytical cruft
- Rational homology, i.e. doing homology over based fields like $\QQ$, or taking a $p$-adic viewpoint by taking it over $\FF_p$ for various $p$.
- Dual spaces in the category of modules
  - Interesting note: Let $M = \bigoplus \ZZ$, then $M^* = \prod \ZZ$ essentially because of the way one specifies a linear map - on each coordinate. But then does $M^{**} \cong M$?
- Abelian categories
  - Essentially work like the category of modules over a ring, can usually choose elements for homological proofs rather than relying on "arrow-theoretic" arguments
- Modules
  - In vector spaces, every exact sequence splits - you can just take orthogonal complements. This doesn't work for arbitrary modules

I asked a bit about fibrations - these seem to be a generalization of the way covering space theory works, and also generalize homotopy lifting.

The general situation looks like this:
$$
\begin{CD}
F @>>> 	E\\
@. 		@VV{\pi}V \\
 		@. B
\end{CD}
$$

Here we regard $F$ as a fiber, and $B$ as a base space. This can be thought of as a family of $F$'s, parameterized by $B$. As opposed to covering space theory, where the fiber above any point of the base space is a set of discrete points, the fiber in this situation is free to be bigger. We also only requires that the fibers be equivalent up to homotopy, as opposed to homeomorphic as if covering space theory.

There is also a local triviality condition.

The canonical example is the Hopf fibration,
$$
\begin{CD}
S^1 @>>> 	S^3\\
@. 		@VV{\pi}V \\
 		@. S^2
\end{CD}
$$
a family of circles parameterized by spheres.



# The Machinery of a Spectral Sequence

## Goal

We are given a chain complex $(C^*, d: C^n \into C^{n+1})$, usually requiring $* \geq 0$. The goal is to compute $H(C^*, d)$, the total homology of this complex.

## Method

We'll use a filtration on the complex, usually written

$F^*C^* \definedas C^* = F^0C^* \supseteq F^1C^* \supseteq F^2C^* \supseteq \cdots \supseteq 0$

It's common for the filtration to be finite length on each individual chain complexes, so we have something like

$F^0C^n \supseteq F^1C^n \supseteq F^2C^n \supseteq \cdots F^nC^n \supseteq 0 = F^{n+1}C^n$

For the initial data, we'll have $H^n(\frac{F^p C^*}{F^{p+1}C^*})$ where we'll reindex for convenience to obtain $H^{p+q}(\frac{F^p C^*}{F^{p+1}C^*})$ and define this to be $E_1^{p,q}$ - this yields the first "page" of the spectral sequence. We'll refer to $\frac{F^p C^*}{F^{p+1}C^*}$ as the *associated graded complex* $G^pC^*$.

One potential issue here is that a priori, there's no particular reason this should be related to or yield the homology of the original complex - but in nice enough cases, there is a connection.

The reindexing is done so that this becomes a *first quadrant spectral sequence*, i.e. everything in the other three quadrants becomes zero.

Here we list out a sample $E_1$ page:

![clip_image001](/clip_image001.png)

The blue diagonal here is $H^2(\text{stuff})$, corresponding to all of the $E_1^{i,j}$ where $i+j = 2$. The differentials here move you one column to the right, and are actually the $\delta$ from the long exact sequence in homology.

Look at the **filtration degree**.

We then move on to define $E_2^{p,q}$ as $\frac{\ker d_1: E_1^{p,1} \into~\cdot }{\im d_1: \cdot ~\into E_1^{p,q}}$. This leads to a "knights move" for the differentials on the second page, moving up one and down-right two. Note that on the first page, moving right was the same as moving up one and down-right one.

Introduced how long exact sequences are sort of degenerate cases of spectral sequences, with only a few columns (?)
