# Homological Algebra



## What is it?

"Homology" as a word just denotes some kind of study of "sameness", which depends on what context you're in.

It arose out of topology, where we are interested in studying when two manifolds are the "same" up to certain kinds of maps. Most generally, we look at continuous maps between spaces, but one could also look at smooth maps (differential geometry), or holomorphic maps (complex analysis).

This sameness can be useful, because you may end up working with some complicated, unknown sort of object, but maybe you're only interested in the maps into or out of that object (for example, maybe smooth solutions to a differential equation on a manifold). If you know that there is another space that is the "same" up to smooth maps and much easier to deal with, you may be able to pull back results on the easier, well-known object into your complicated object and learn more about what you have!

When you just restrict to continuous maps, though, the discerning feature of spaces is their number of "holes". We say that two spaces are *homeomorphic* if they are equivalent up to continuous maps, which you can alternatively think of as saying that one space can be continuously deformed into the other one. The classic example is that the torus (i.e. the surface of a donut) is equivalent to a coffee cup, due to the fact that both are missing a "hole". 

We have this intuitive notion, but since we are mathematicians, we need to make that precise! And of course, generalize. There are many different ways of defining what exactly an "$n$-dimensional hole" should mean, and homology started off as one of them that wound up being useful and quite successful.



## How is homology formulated?

I'll take for granted that you know what a manifold is - if you don't, you can just picture the surface of some kind of blob sitting inside of $\RR^3$. What's important for us is that if you zoom in far enough on a manifold, looking at it under a powerful enough microscope, it looks like $\RR^n$ for some $n$. 

For example, the sphere $S^1$ is a 2-dimensional manifold - just imagine sitting on the earth. Since you're small enough (compared to the size of the Earth), a slab of pavement looks flat, like $\RR^2$ even! 

In fact, if you wanted to, you could draw a little cartesian coordinate system on the sidewalk, and then extend it and start denoting places by their coordinates relative to what you drew. Of course, this doesn't quite work everywhere - what are the coordinates on the exact other side of the Earth? Unfortunately, they're not unique, and moreover someone else could have chosen a coordinate system in front of *their* house, and you wouldn't be able to agree on what the actual, exact coordinates of the local grocery store should be.

In general, we can define $n$-dimensional manifolds for any $n$. Since they can be embedded in $\RR^m$ for a big enough $m$, we can talk about closed manifolds (and also manifolds with boundary).

But most importantly for us, we can define $n$-dimensional *cycles* on manifolds. Formally, these are closed submanifolds, but for example a 1-cycle on $S^2$ is just a path on the surface.

We can also define *boundaries* of cycles, by just taking those cycles that are also the boundary of any submanifold.