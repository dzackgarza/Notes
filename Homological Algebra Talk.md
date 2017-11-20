# Homological Algebra



## What is it?

Generally speaking, it arose out of the study of *homology*. What is homology? You might have heard the term in Biology, when one speaks of *homologous* structures. The root of the word, *hom*, usually denotes a "sameness" or similarity of some kind, and in genetics one might speak of something like homologous gene sequences, say, pointing to a common ancestry.

In many ways, most of Mathematics is a study of "sameness", and many fields have a large number of tools that give us different notions of sameness. In particular, in topology, one is often concerned with spaces that are the same, up to continuous deformations - in this framework, it turns out that the key feature that distinguishes two objects is the number of holes it has. 

We could equivalently ask the following question: what is the maximum number of "cuts" that can be made in a surface without disconnecting it? Here, by surface, we mean some 2-dimensional manifold, and a cut will be a closed path or loop on the surface. We'll refer to this number as $b$ for now.

First, let's look at a sphere - there's a lot of rotational symmetry, so it doesn't particularly matter how we draw it. Drawing any path on the sphere disconnects the sphere into a region "inside" the path and a region "outside". But any single cut does this, so $b=0$.

What we've described here is formally encoded and generalized in something called the *Betti numbers* for a space, $b_n$, and in particular we've looked at $b_1(T)$. For $n=1$, we were considering cutting the space by a "1-cycle", i.e. a closed path 