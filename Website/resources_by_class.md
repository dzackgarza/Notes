## General Notes on Resources

 Anything lower-division: [Khan Academy](https://www.khanacademy.org/).

- On Youtube videos: more and more lectures and talks are being posted online. These vary in quality, but this if offset by the fact that you can watch them at 2x speed.

- On video lectures in general: they are a crutch! Use them to supplement and enrich your understanding, but they do not work well as primary resources. The best resources are always materials from your own instructors and courses. Passively watching videos is also not very helpful - take notes, write down timestamps and video titles for important topics, and don't hesitate to rewatch several times.

- [MIT OCW](https://ocw.mit.edu/index.htm): when video lectures are available, generally high quality. Covers a good number of areas, and a good source of practice problems and exams.

- Look for book recommendations for your topic/class in places like Math StackExchange (MSE) or MathOverflow (MO), and don't be afraid to consult multiple books on the same topic. I've had very good luck following the  [reference-request tags](https://math.stackexchange.com/questions/tagged/reference-request) on these sites.

- If you find an author/lecturer/general source that you particularly like, look up other things from that source! If they cover other topics, be open to learning those -- Math is quite interrelated, and later topics will be easier to learn when you have a collection of concepts you can "hang your hat on".

- For lower division or introductory courses, try to obtain a textbook paired with a solutions manual. This is a great way to drill problems, check your answers, and identify your weaknesses. Beware typos!

- Don't bother with sites like Chegg.

- For computational courses: Schaum's Outlines can be useful, but the quality is _very_ subject-dependent.

- Learn how to use a Computer Algebra System (CAS). Don't use it as a crutch - just learn enough syntax so that you can quickly run "sanity checks" on your computations. [Wolfram Alpha](http://www.wolframalpha.com/) is a good for quick things.

	- If you have the time, learn something like [SageMath](http://www.sagemath.org/index.html), which can do symbolic computations and can even be used for things like group theory and algebra.

 Below are resources for specific courses/subjects; I've tried to roughly organize these by increasing complexity with respect to a typical undergraduate Math degree.

 **Legend**
- :fa-book: -- Textbooks
- :fa-tv: -- Videos or online lectures
- :fa-external-link: -- Websites or other online collections of resources
- :fa-star: -- Particularly excellent resources that I highly recommend
- _Details_ -- Expand these sections for notes on the mathematical content or subject-specific advice.

---

## Single Variable Calculus

- :fa-book: _Stewart_, [Calculus: Early Transcendentals](https://www.amazon.com/gp/product/0538497904/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0538497904&linkId=edb74b5594ddb68399ffe86972c7eb84)
	- What can I say? It's a Calculus book, and it covers the standard curriculum. This one's a good choice because there are a few solution manuals floating around for older editions.

- :fa-book: _Spivak_, [Calculus](https://www.amazon.com/gp/product/0914098918/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0914098918&linkId=6e5af9b5340ff7f74c580ed8869d31f9)
	- Exposition is a little more advanced, and closer to introductory real analysis. Good for an honors-level course, or if you want to see a more "rigorous" exposition of the topics from Stewart.

- :fa-book: _Apostol_, Calculus, Vol. 1: One-Variable Calculus, with an Introduction to Linear Algebra
	- A good alternative to Spivak.

- :fa-tv: [patrickJMT](https://www.youtube.com/user/patrickJMT/videos)
	- Videos of how to solve many specific calculus and engineering problems

<details markdown="1">
**Content**
- Todo
**Notes**
- Todo
</details>



## Multiviarable / Vector Calculus

- :fa-book: :fa-star: _Schey_, [Div, Grad, Curl, and All That: An Informal Text on Vector Calculus](https://www.amazon.com/gp/product/0393925161/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0393925161&linkId=7d9d356912d7c9296c20c4cda5dd5837)
	- Most textbooks introduce these operators in a very formal way; this text expands and motivates these definitions greatly.

- :fa-tv: :fa-star: [MIT OCW Denis Auroux](https://ocw.mit.edu/courses/mathematics/18-02sc-multivariable-calculus-fall-2010/)
	- A very geometric approach, with lots of great imagery!

<details markdown="1">
**Content**
- Todo

**Notes**
- Many Calculus books cover both single and multivariable, so most of the resources from the single variable section will be applicable here as well. However, the resources in this section focus almost entirely on multivariable cases.
</details>



## Linear Algebra

- :fa-book: :fa-star: _Axler_, [Linear Algebra Done Right](https://www.amazon.com/gp/product/3319110799/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=3319110799&linkId=eb9410dc5d589a51d13160ce65c9dff8)
	- This subject is usually taught as a bag of computational tricks and algorithms, which obscures the absolute beauty of the subject -- this text motivates the theory nicely and shows how powerful it can be.

- :fa-book: :fa-star: _Goode and Annin_, [Differential Equations and Linear Algebra](https://www.amazon.com/gp/product/0130457949/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0130457949&linkId=b72706b7edf00e16d825b413e1905040)
	- Good balance of rigor vs. brevity and computation vs. theory. Very concise, gives you what you need to start calculating, but also takes time to list vector space axioms, mentions fields, a nice way of viewing the determinant formula, and (best of all) lists of many conditions that are equivalent to a matrix being singular or non-singular.

- :fa-book: _Anton_, [Elementary Linear Algebra](https://www.amazon.com/gp/product/1118473507/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=1118473507&linkId=67a5c553b282419109a3bbfdbba97406)
	- Has an entire chapter on many cool applications of Linear Algebra -- things like graph theory, computer graphics, and Google's Pagerank algorithm. Also has a lot of "historical note" blurbs that are pretty interesting.

- :fa-book: _Strang_, [Introduction to Linear Algebra](https://www.amazon.com/gp/product/0980232775/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0980232775&linkId=c4ee2ff3cdae059275e5a9370d59594d)
	- Strang is a giant in the world of linear algebra, so it's worth seeing how he approaches the subject.

- :fa-tv: [MIT OCW: Linear Algebra with Gilbert Strang](https://ocw.mit.edu/courses/mathematics/18-06-linear-algebra-spring-2010/)
	- Again, it's Strang, so worth checking out!

<details markdown="1">
**Content**
- Todo
**Notes**
- Todo
</details>



## Ordinary Differential Equations

- :fa-book: :fa-star: _Goode and Annin_, [Differential Equations and Linear Algebra](https://www.amazon.com/gp/product/0130457949/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0130457949&linkId=b72706b7edf00e16d825b413e1905040)
	- Good precisely because it sets up the language of linear algebra first, making many concepts in ODEs much easier to explain and understand (e.g. solutions as eigenfunctions of derivative operators).

- :fa-tv: [MIT OCW: Differential Equations](https://ocw.mit.edu/courses/mathematics/18-03-differential-equations-spring-2010/index.htm)
	- Very Physics-motivated approach, for better or worse.

<details markdown="1">
**Content**
- Todo
**Notes**
- Todo
</details>



## Discrete Mathematics

- :fa-book: _Rosen_, [Discrete Mathematics and Its Applications](https://www.amazon.com/gp/product/0077431448/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0077431448&linkId=978fcb38a872b8e609e524a396ecf471)
	- Huge variety of topics, good prep for many Math-related computer science courses, also just a good survey of many topics at an introductory level.

- :fa-book: :fa-star: _Grimaldi_, [Discrete and Combinatorial Mathematics: An Applied Introduction](https://www.amazon.com/gp/product/0201726343/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0201726343&linkId=d7c4341e556bbc0297cd3ee66b043f1c)
	- Absolutely excellent presentation of recurrence relations, mirroring how solutions of differential equations are found. Also has a good presentation of how to commute quantifiers.

- :fa-book: _Eccles_, [An Introduction to Mathematical Reasoning: Numbers, Sets and Functions](https://www.amazon.com/gp/product/0521597188/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0521597188&linkId=4edc26d769ec8c1c49edbc9b2f9c7ef5)
	- Good for a solid introduction to proofs.

- :fa-external-link: :fa-star: [UC Berkeley's EECS 70 Course](http://www.eecs70.org/)
	- A wonderful lower-division course for which excellent notes have been posted for a number of years.



<details markdown="1">
**Content**
- Basic logic (truth tables, quantifiers, implications, contrapositive and converse, induction)
- Basic set theory (set-builder notation, venn diagrams, cartesian products)
- Functions (injectivity/surjectivity, inverse images)
- Relations (partial orders, equivalence relations)
- Basic combinatorics (permutations and combinations, inclusion/exclusion, pigeonhole principle)
- Recurrence relations
- Graphs (Konigsberg problem, Hamiltonian/Eulerian cycles)
- Number theory (divisibility, modular arithmetic, the Euclidean algorithm)
- Generating functions
- Probability (odds for dice rolls and cards, distributions, Stirling's approximation)

**Notes**
- Highlight equation aspect of proofs, ties between recurrence relations and ODEs TODO
</details>

---

## Number Theory

- :fa-book: _LeVeque_, [Fundamentals of Number Theory](https://www.amazon.com/gp/product/0486689069/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0486689069&linkId=5fa8c23ca453797a3d1f39d0741b7530)
	- Short but good!

<details markdown="1">


**Content**
- The prime counting function
- Modular arithmetic, solving equations in rings, multiplicative functions (like the totient)
- The Chinese remainder theorem, Euler's theorem, Fermat's Little Theorem
- Quadratic reciprocity, the Legendre and Jacobi symbol

**Notes**
- This is a subject that pairs very well with introductory abstract algebra (groups and rings).
</details>


## Abstract Algebra

- :fa-book: :fa-star: _Dummit and Foote_, [Abstract Algebra](https://www.amazon.com/gp/product/B017MY9TI0/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=B017MY9TI0&linkId=ae6a57d293f98f92724e3287b46c6f06)
	- Essentially the de-facto standard, plus it also serves as an encylopedaic reference.

- :fa-book: _Beachy and Blair_, [Abstract Algebra](https://www.amazon.com/gp/product/1577664434/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=1577664434&linkId=54b29f3498d4bc910a3df2ec72cfa85f)
	- A good undergraduate-level reference.

- :fa-tv: :fa-star: _Matthew Salomone_ [Abstract Algebra Series](https://www.youtube.com/playlist?list=PLL0ATV5XYF8DTGAPKRPtYa4E8rOLcw88y)
	- Fantastically well-motivated series, covers the equivalent of an entire year of material that naturally leads into Galois theory.

- :fa-tv: :fa-star: _Benedict Gross_, [Lectures at Harvard](https://www.youtube.com/watch?v=VdLhQs_y_E8&list=PLelIK3uylPMGzHBuR3hLMHrYfMqWWsmx5)
	- Very clear with lots of examples.

- :fa-tv: _Math Dr. Bob_, [Abstract Algebra](?)
	- I didn't find these particularly useful, but I know people that have.

<details markdown="1">
**Content**
- Covers groups, rings, fields, and Galois theory.

**Notes**
- Todo
</details>


### Galois Theory

- :fa-tv: :fa-star: _Matthew Salomone_, [Algebra Lectures](https://www.youtube.com/playlist?list=PLL0ATV5XYF8DTGAPKRPtYa4E8rOLcw88y)
	- A portion of his Algebra series, the exposition is fantastic because the series follows a cohesive narrative that introduces some of the major results and benefits of Galois theory early on. Highly recommended.

<details markdown="1">
**Content**
- Todo

**Notes**
- Todo
</details>


## Real Analysis

- :fa-book: :fa-star:  _Rudin_, [Principles of Mathematical Analysis](https://www.amazon.com/gp/product/007054235X/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=007054235X&linkId=6999e53c498f9f1f4b2f7d6e64ac0d8a)
	- Essentially a standard in undergraduate real analysis, written in a very terse style but covers a great deal of material. Often referred to as "Baby Rudin".

- :fa-tv: :fa-star: _Francis Su_, [Lectures from Harvey Mudd College](https://www.youtube.com/playlist?list=PL0E754696F72137EC)
	- Recorded lectures, extremely clear and well-motivated!

- :fa-tv: _Math Dr. Bob_, [Real Analysis](https://www.youtube.com/watch?v=gJ1pYz1k0qM&list=PL7B37EFE678A682CE)
	- I didn't find these helpful, but perhaps others will.

<details markdown="1">
**Content**
- The reals as an ordered field, construction
- Metric spaces, basic topology
- The Riemann-Stieltjes Integral
- Sequences and series, Cauchy sequences and completeness
- Limits and continuity, pointwise and uniform convergence
- The Mean Value Theorem
- Measure theory and the Lebesgue integral

**Notes**
- Todo
</details>


## Complex Analysis

- :fa-book: :fa-star: _Brown and Churchill_, [Complex Variables and Applications](https://www.amazon.com/gp/product/0073383171/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0073383171&linkId=a29ea129f68e5b2a12841dc26c1138c3)
	- Good overview of computational techniques at an undergrad level.

- :fa-book: :fa-star: _Needham_, [Visual Complex Analysis](https://www.amazon.com/gp/product/0198534469/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0198534469&linkId=50937c6af6cc681f12f628911fd434f3)
	- Absolutely phenomenal book! The exposition and imagery is truly excellent, although this is perhaps not the best book for learning computations.

- :fa-book: _Ahlfors_, [Complex Analysis](https://www.amazon.com/gp/product/0070006571/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0070006571&linkId=69362995cc0e8390c114c3135a28eccf)
	- A standard grad-level reference.

<details markdown="1">
**Content**
- The complex integral
- Residue theorems
- Analytic vs. Holomorphic vs. Complex Differentiable functions

**Notes**
- Todo
</details>


## Partial Differential Equations

- :fa-book: _Evans_, [Partial Differential Equations](https://www.amazon.com/gp/product/0821849743/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0821849743&linkId=0641908b274e8a91630e51a90749f4db)
	- A graduate-level approach.

<details markdown="1">
**Content**
- Heat/wave/Laplace equations.
**Notes**
- Todo
</details>


## Numerical Analysis

- :fa-book: _Burden_, [Numerical Analysis](https://www.amazon.com/gp/product/1305253663/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=1305253663&linkId=e35588d12b30d36fd8dcd24b4ace94cf)

<details markdown="1">
**Content**
- Fixed points and root-finding, Newton's method, least squares.

**Notes**
- Todo
</details>


## Combinatorics

- :fa-book: :fa-star: _Wilf_, [Generatingfunctionology](https://www.math.upenn.edu/~wilf/DownldGF.html)
	- Freely provided by Wilf on his site, exposition is excellent and it provides a comprehensive overview of how to work with generating functions.

- :fa-book: _Bona_, [A Walk Through Combinatorics](https://www.amazon.com/gp/product/9813148845/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=9813148845&linkId=7c7b9364a6276848ebd103bcac8ef566)

<details markdown="1">
**Content**
**Notes**
</details>


## Probability

- :fa-book: _Ross_, [A First Course in Probability](https://www.amazon.com/gp/product/032179477X/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=032179477X&linkCode=as2&tag=dzackgarza-20&linkId=08dfadf9f72e1cff15e5a01d89cee645)

<details markdown="1">
**Content**
- Todo

**Notes**
- It is useful to take (either beforehand or concurrently) introductory classes in both statistics and combinatorics.
</details>


## Point-Set Topology

- :fa-book: :fa-star: _Munkres_, [Topology](https://www.amazon.com/gp/product/0134689518/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0134689518&linkId=d158c2143135041b06ceeb214bbbeda3)
	- A standard - the good stuff starts about 10 chapters in, everything before that is aimed at providing a solid grounding in set theory and proofs.

- :fa-book: :fa-star: _Lee_, [Introduction to Smooth Manifolds](https://www.amazon.com/gp/product/1441999817/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=1441999817&linkId=000aa52031ba5c130f390efbe5d5b5e4)
	- The appendix has a great uber-compressed review of point-set.

<details markdown="1">
**Content**
**Notes**
- Todo: Specify which chapters are useful. TODO
- Common question: where is Topology useful?
	- See Brouwer fixed point theorem, Lie groups in physics, links to functional analysis.
</details>

---

## Graduate Real Analysis

- :fa-book: _Rudin_, [Principles of Mathematical Analysis](https://www.amazon.com/gp/product/007054235X/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=007054235X&linkId=6999e53c498f9f1f4b2f7d6e64ac0d8a)
	- A contentious standard for real analysis. Chapter 11 has a light overview of measure theory, and the Lebesgue integral.

- :fa-book: _Rudin_, [Real and Complex Analysis](https://www.amazon.com/gp/product/0070619875/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0070619875&linkId=a627b7f18abfa94fa42b17f3b417fc2b)
	- Also referred to as "Papa Rudin".

- :fa-book: _Schilling_, [Measures, Integrals, and Martingales](https://www.amazon.com/gp/product/1316620247/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=1316620247&linkId=88eeebe5438a1517f9cb700d2760c876)
	- This book is not as detailed, as it is geared towards rigorous probability theory, but covers material faster and provides a bit more intuition than Rudin. The first few chapters are a good supplement to a full course.

- :fa-book: _Folland_, [Real Analysis: Modern Techniques and Their Applications](https://www.amazon.com/gp/product/0471317160/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=0471317160&linkId=bf877a0601670f24fa0dc4a753fc7035)
	- Particularly good for measure theory.

- :fa-book: _Royden_, [Real Analysis](https://www.amazon.com/gp/product/0134689496/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=0134689496&linkId=ed6f27a7c9495b0b5f4dce59f62cf3f6)
	- Also good for measure theory.

<details markdown="1">
**Content**
- Measure theory, sigma algebras
- Monotone and dominated convergence theorems
- $L^p$ spaces, Holder's inequality

**Notes**
- Todo
</details>


## Algebra

- :fa-book: _Dummit and Foote_, [Abstract Algebra](https://www.amazon.com/gp/product/8126532289/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=8126532289&linkId=973f430e6e8fd4d8bf5037120e259075)
	- Pretty much the all-around standard, this thing is absolutely encylopedaic!

- :fa-book: _Atiyah and MacDonald_, [Introduction to Commutative Algebra](https://www.amazon.com/gp/product/0201407515/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=0201407515&linkId=ac45310232f375be221ae2015096f690)

- :fa-book: _Weibel_, [An Introduction to Homological Algebra](https://www.amazon.com/gp/product/0521559871/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=0521559871&linkId=d39dca5803316bded06612bf92b6a5a0)


## Functional Analysis

- :fa-book: _Conway_, [A Course in Functional Analysis](https://www.amazon.com/gp/product/0387972455/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0387972455&linkId=551eb9b7936eeb0957070b270d18f69f)
	- Assumes a background around the level of Papa Rudin.

<details markdown="1">
**Content**
- Measure theory, sigma algebra
- Montone and dominated convergence theorems
- $L^p$ spaces, Holder's inequality

**Notes**
 - Todo!
</details>


## Category Theory

- :fa-book: :fa-star: _Aluffi_ [Algebra Chapter Zero](https://www.amazon.com/gp/product/0821847813/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0821847813&linkId=550ef17ef618706c358e239378644290)
	- Covers Algebra in a more categorical manner, so this book works best as a second pass of Algebra.

- :fa-book: _Mac Lane_ [Categories for the Working Mathematician](https://www.amazon.com/gp/product/0387984038/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0387984038&linkId=edb75c39191f4f3e3c6c1315f0bd529a)
	- Seems to be a pretty standard reference; Mac Lane is regarded as one of the founders of the subject.

- :fa-tv: [Talk on Category Theory by Tom LaGatta](https://www.youtube.com/watch?v=o6L6XeNdd_k)

<details markdown="1">

**Content**
- Todo!

**Notes** Expected in some classes, but often assumed. Used in Algebraic Topology and Algebraic Geometry heavily. You can also find many full lectures online by people like Steve Awodey, Bartosz Milewski, and Eugenia Cheng.
</details>


## Algebraic Topology

- :fa-book: :fa-star: _Munkres_, [Topology](https://www.amazon.com/gp/product/9332549532/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=9332549532&linkId=fa37f71d9cc78940fabc80d884040129)
	- Mostly point-set, but introduces things like the fundamental group in the later chapters.

- :fa-book: :fa-star: _Hatcher_, [Algebraic Topology](https://www.amazon.com/gp/product/0521795400/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0521795400&linkId=7741db5a10f939a73e5c9c3e2a44eb49)
	- Love it or hate it, this seems to be the standard reference!

- :fa-book: :fa-star: _Bott and Tu_, [Differential Forms in Algebraic Topology](https://www.amazon.com/gp/product/0387906134/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0387906134&linkId=086065b5049039c079f28f75e797578e)
	- A beautiful, wonderful book! Tons of geometric intuition, and has a very deep selection of topics.

- :fa-book: :fa-star: _Griffiths and Morgan_, [Rational Homotopy Theory and Differential Forms](https://www.amazon.com/gp/product/B00FKP3962/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=B00FKP3962&linkId=e04a0c47457c748acb505b2a028aaec7)
	- Mostly homotopy theory.

- :fa-tv: _NJ Wildberger_, [Introduction to Algebraic Topology](https://www.youtube.com/watch?v=Ap2c1dPyIVo&list=PL6763F57A61FE6FE8)
	- A good undergraduate-level series, just be aware that he expresses some extremely non-mainstream views in his other videos!

<details markdown="1">
**Content**
- Todo!
**Notes**
- Todo!
</details>


## Algebraic Geometry

- :fa-book: _Reid_, [Undergraduate Algebraic Geometry](https://www.amazon.com/gp/product/B01CEKKASA/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=B01CEKKASA&linkId=1378399d553b5bd7b5489ee340df9fb2)
	- Great introduction to the field, weaves in a lot of history and classical results.

- :fa-book: _Hartshone_,  [Algebraic Geometry](https://www.amazon.com/gp/product/0387902449/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0387902449&linkId=eff72560055aac9a8b2a525ab7b45b47)
	- Seems to be regarded as a pretty standard reference.

<details markdown="1">


**Content**
**Notes**
</details>


## Differential Geometry / Manifolds

- :fa-book: _Spivak_, [Calculus on Manifolds](https://www.amazon.com/gp/product/0805390219/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=0805390219&linkId=d7cce2895c47afe764b0ce79d888a506)
	- A good follow-up to Spivak's Calculus book, the exposition is at an undergraduate level. Worth checking out if you like his style.

- :fa-book: :fa-star: _Lee_, [Introduction to Smooth Manifolds](https://www.amazon.com/gp/product/1441999817/ref=as_li_qf_asin_il_tl?ie=UTF8&tag=dzackgarza-20&creative=9325&linkCode=as2&creativeASIN=1441999817&linkId=afdfc509ff8cb5a157d81a422cdf59b1)
	- The gold standard.

- :fa-tv: :fa-star: _Frederic Schuller_, [International Winter School on Gravity and Light 2015](https://www.youtube.com/watch?v=7G4SqIboeig)
	- This guy is just phenomenal!

- :fa-book: _Manfredo do Carmo_, [Riemannian Geometry](https://www.amazon.com/gp/product/B017WQJ42Y/ref=as_li_tl?ie=UTF8&tag=dzackgarza-20&camp=1789&creative=9325&linkCode=as2&creativeASIN=B017WQJ42Y&linkId=72a9cad165ace8e2a5844e18fe45211e)

<details markdown="1">
**Content**
- Todo

**Notes**
- Todo
</details>

---

I'm continually expanding this list -- if you have any recommendations, please feel free to let me know in the comments so I can possibly add them!
