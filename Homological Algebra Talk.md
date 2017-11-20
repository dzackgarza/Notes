# Homological Algebra



## What is it?

"Homology" as a word just denotes some kind of study of "sameness", which depends on what context you're in.

It arose out of topology, where we are interested in studying when two manifolds are the "same" up to certain kinds of maps. Most generally, we look at continuous maps between spaces, but one could also look at smooth maps (differential geometry), or holomorphic maps (complex analysis).

This sameness can be useful, because you may end up working with some complicated, unknown sort of object, but maybe you're only interested in the maps into or out of that object (for example, maybe smooth solutions to a differential equation on a manifold). If you know that there is another space that is the "same" up to smooth maps and much easier to deal with, you may be able to pull back results on the easier, well-known object into your complicated object and learn more about what you have!

When you just restrict to continuous maps, though, the discerning feature of spaces is their number of "holes". We say that two spaces are *homeomorphic* if they are equivalent up to continuous maps, which you can alternatively think of as saying that one space can be continuously deformed into the other one. The classic example is that the torus (i.e. the surface of a donut) is equivalent to a coffee cup, due to the fact that both are missing a "hole". 

We have this intuitive notion, but since we are mathematicians, we need to make that precise! And of course, generalize. There are many different ways of defining what exactly an "$n$-dimensional hole" should mean, and homology started off as one of them that wound up being useful and quite successful.



## How is homology formulated?

There are many different ways to formulate the original homology, but they all roughly follow the same motto: "cycles mod boundaries". 

This originates from the world of manifolds, which are distinguished as topological spaces by their number of holes. One way to measure $n$-dimensional holes is to consider *k-cycles* on the manifold for $1\leq k \leq n$, which are a bit like cutting instructions. A 1-cycle is a set of points to remove, puncturing the manifold. A 2-cycle is a loop you could take scissors to, and in general a $d$-cycle is a $d$-dimensional submanifold. 

Manifolds may or may not have boundaries (**picture: manifold with boundary**), which means that cycles may have boundaries. So to measure the holes, we "mod out" by  those cycles that are actually just the boundary of higher-dimensional cycles. (**picture: quotienting as collapsing to a point**)

## The Big Picture



