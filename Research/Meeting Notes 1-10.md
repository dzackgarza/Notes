I met with Prof. Roberts for about an hour and a half today. At our last meeting, we had a bit of a discussion about what the research topic might be. 

He relayed some of his experiences, such as one instance of trying to compute the homotopy groups of spheres - something like $\pi_5(S^2)$, which is a finite group of order 12, but it's difficult to determine whether it is $\ZZ_3\cross \ZZ_2\cross\ZZ_2$ or $\ZZ_3 \cross \ZZ_4$. He mentioned that he later found out that this was actually a "good" place to be stuck, because there was something actually challenging there!

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
- Rational homology, i.e. doing homology over based fields like $\QQ$, or taking a $p$-adic viewpoint by taking it over $\FF_p$ for various $p$.
- Dual spaces in the category of modules
  - Interesting note: Let $M = \bigoplus \ZZ$, then $M^* = \prod \ZZ$ essentially because of the way one specifies a linear map - on each coordinate. But then does $M^{**} \cong M$?

I asked a bit about fibrations - these seem to be a generalization of the way covering space theory works, and also generalize homotopy lifting. The general situation is like

$$
\begin{CD} 
F @>>> 	E\\
@. 		@VV{\pi}V \\
 		@. B
\end{CD}
$$

