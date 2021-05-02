[Advice](Advice)
[Undergraduate](Undergraduate)
[Real Analysis](../Subjects/Real%20Analysis.md)

# Homework 3 

## Notes

- Syntax: make sure you're doing well-defined things with mathematical objects. 
  E.g. it doesn't *a priori* make sense to add a set and a number, or a set and a polynomial, or take the union of a polynomial and a set.


- To show a set $X$ is countable, you need a countable set $S$ (e.g. $S = \NN$) an either an injection $X\injects S$ or a surjection $S \surjects X$.
  - Note that any old map won't suffice: the existence of the inclusion map $\QQ \injects \RR$ doesn't show that $\RR$ is countable.
  - To avoid mistakes, it's good to try to explicitly write out the sets and say what the map does to elements. 

- If you say something is an injection/surjection/bijection, it usually warrants a proof (sometimes short).
  Common mistake: describing a map and saying it's a one-to-one correspondence without much or any justification.

- Note that a *countable* union of countable sets is again countable, but not an *arbitrary* union.
  Counterexample: For each $\alpha\in \RR$ define $B_5(\alpha) = \ts{x\in \RR \st \abs{x-\alpha} < 5} \intersect \ZZ$.
  Then $\abs{B_5(\alpha)} \leq 11$ for any $\alpha$, so it's in fact *finite*, but $\union_{\alpha\in \RR} B_5(\alpha) = \RR$ is uncountable.

- If saying something is e.g. a countable union of countable sets, try to write out the union, e.g. $A = \bigcup_{n\in \NN} A_n$.


