

## Exam GR1268

Missed: 2,3,6,7,11,16,17,18,20,21,22,26,27,29,30,31,32,33,34,35,36,37,38,41,43,44,45,46,48-66

_Notes_:

2: ?? Triangle + inscribed circle

3: ?? u-sub? Confident in answer, but not correct

6: ?? No idea how to approach

7: ?? Confident, but incorrect

9: Properties of second derivative - memorize correspondences bw inflections, etc

10: Need to memorize equations: Circle, ellipse, parabola, hyperbola. Might as well do 3D ones too.

11: GUESSED. Need to revisit!

12: GUESSED. Memorize groups of small order.

14: Worth redoing, not entirely trivial.

15: Review injective/surjective definitions for speed.

16: ??? Memorize distributive properties to simplify?

17: ??? Don't know how to approach. Memorize graphs of common functions?

18: ???? Counterintuitive to me!! Review differentiation of power series.

19: GUESSED. By non-continuity of $$\bar{Z}$$, but not a great heuristic. Review complex limits/continuity

20: ?? No idea. Attempted L'Hopitals, did not match any.

21: ???? Intimidating integral! Need to practice more like this

22: ?? Revisit vector calculus

24: Got it, but worth memorizing list of Linear Algebra equivalences. Practice row-reduction to build speed.

26: PAY ATTENTION! Asked for $$x+y$$, not one or the other.

27: ??? Confident, but got it wrong! Sloppy work.

28: Got it, but weird question overall.

29: NO CLUE. Pruefer codes maybe?

30: NO CLUE

31: Learn some tricks here! And review e.v. calculations

32: NO CLUE

33: Pain in the ass...

34: Review LA equivalences

35: Review vector calculations

36: ??? Thought I had this one. topology question.

37: ?? Don't know this material well

38: GUESSED. Not good, review...geometry..?

39: Practice for speed

41: Review vector calculations

42: Confident, but review topologies on Rn.

43: Review multivariable calculus

44: Review ODEs

45: NO CLUE

46: Review single variable calculus

47: Relatively confident, but review Rudin - Weirstrauss/Thomae/Popcorn functions

48: Review vector calculus

49: ??? Must need to know some nice properties about Sn?

50: Wait, so what's wrong with rings/ideals again if they're closed under these operations..?

51: Need some LA tricks

52: NO CLUE

53: Did not know this! Read up on properties of convolution?

54: GUESSED. Did not get correct answer - seems simple on the surface though

55: NO CLUE

56: Memorize big O

57: COMPLETELY WRONG! Review analysis problems

58: NO CLUE

59: Did not know most of these properties! Actively ruled out the right answer!

60: Pay attention! Inequality was reversed, still wouldn't know how to proceed though

61: Review ODEs

62: NO CLUE. Weird topology question!

63: Subsets may be in the negative reals! Review this one.

64: Review vector calculus

65: Review computing harmonic conjugate.

66: Not sure why evens don't work. Experiment!

## Review Notes

It looks like multivariable/vector calculus is an easy win for a lot of points. A few double and triple integrals popped up, but nothing that needed polar. Tons of volumes, fluxes, surface integrals. Need knowledge of how to work with plane equations

Review single variable calculus techniques - solids of revolution, integration techniques, related rates. Memorize concavity/convexity, relations w/ second derivatives. Memorize some common series, all the trig derivatives/antiderivatives, etc.

Next up in difficulty would be to review Linear Algebra. Need to know a lot about _properties_ of matrices involving singularity, how they can be row-reduced, dimensions of various spaces, what the eigenvalues look like, properties of determinant, trace, and matrix powers, and more.

Then review ODEs - only a few, but these should be total cake walks. This exam had (I think) a separable ODE. Review how to set up ODEs for specific physical situations, like concentration in a tank. Look up old LA/ODE book!

Review some basic properties about groups - nothing crazy, it looks like only $$C_n, S_n, Z/Z_n$$ make an appearance here. Mostly needed to know about orders of elements, generators, inverses, uniqueness of groups, stuff like that. Most of the number theory problems are mixed in with this as well.

Review real analysis - nothing specific, it just seems like it pops up everywhere. Convolution popped up, sup/inf, sequences/series (and Cauchy)

Review geometry - these should be easy, but I'm totally lost on how to even start with any of them. Also memorize the equations for conic sections.

Review combinatorics and probability - there are a few really tricky counting problems, one about isomorphic trees.

Review logic - very few problems, but these should just be easy. Maybe review the symbolic manipulations - distributing logical ops.

Review complex analysis - mostly first quarter stuff. Practice computations like raising to powers.

Review topology. Mostly on Rn, but a few are generic point-set. Some metric space concepts. Need lots of facts about continuous functions.

## Hints to Review

- Apply monotonic functions to inequalities
- If $f' > 0 \rightarrow f$ is increasing, $f'=0$ at local min/max. (Where are global min/max..?)
- FTC: $\frac{d}{dx} \int_c^x g(t) dt = g(x)$.
- Function : $f: X \rightarrow Y$ is a function if $\forall x\in X,\exists ! y\in Y \mid f(x) = y$. Every element in domain has a single, unique output. If the relation is one-to-many, it is not a function.
- Graph all of the things
- A system of equations is called _consistent_ if the RREF of its augmented matrix contains a row of the form $[0, 0, \cdots , 0\mid k]$. Every homogenous system $A\bar{x} = \bar{0}$ is consistent, since every $k$ will be zero.
- If a system has a column with no pivot, there are infinitely many solutions
- When does a system have a solution? No solutions? infinitely many solutions?
- Practice graphing functions, first, and second derivatives
- To calculate $a^{-1} \mod n$, take $(n+1)/a$.
- Inverse function theorem: $(f^{-1}))(f(a)) = 1/f'(a)$.
- Review definition of toplogy, go over metric space examples
- The sum of interior angles in an $n-$gon is 180(n-2); the sum of exterior angles is 360.
- Review proof that projection is diagonalizable.
- Continuity does not imply differentiability - take the absolute value function. Differentiability is a strictly stronger condition.
- Fun to know: $\frac{d}{dx} \int_{a(x)}^{b(x)} f(x,t) dt = f(x, b(x))\frac{d}{dx}b(x) - f(x, a(x))\frac{d}{dx}a(x) + \int_{a(x)}^{b(x)} \frac{\partial}{\partial x} f(x, t) dt$

  - If $a,b$ are constant, boundary terms vanish.
  - Need $f, f_x$ to be continuous in both variables. Also need $a,b \in C_1$.
  - Recover the fundamental theorem with $a(x) = a, b(x) = b, f(x,t) = f(t)$.

- Area of a trapezoid: Average of bases times height.

- Interpret probabilities as geometric ratios!

- $\text{Log}: (\mathbb{R}, \times) \rightarrow (\mathbb{R}, +)$

  - $f(ab) = f(a) + f(b)$

- $\text{exp}: (\mathbb{R}, +) \rightarrow (\mathbb{R}, \times)$

  - $f(a+b) = f(a)f(b)$

- Find a quicker way to do the integral in problem 55!
