A Brief Introduction to Category Theory

# Disclaimer

This is meant to be a relatively short and **non-rigorous** introduction to Category Theory. Although I will be defining and using a lot of the technical terminology that is commonly used, this talk is primarily aimed at introducing these concepts, why they exist, and where they're useful and commonly used.

In fact, most of the results used here will be stated with very minimal proof -- this is partly due to time constraints, and diving into them here would obfuscate the more high-level points I'd like to make. However, if you are interested in seeing and working through some of these types of proofs yourself, I've included some references that I'd recommend near the end.

# Introduction

Of course, if we're going to talk about Category Theory, I should probably start by telling you what it is! However, instead of diving into the definitions immediately, I think it helps to have some motivation for *why* such a thing should even exist in the first place.

Category Theory was conceived (or invented, or discovered; whichever you prefer) in 1945 by Samuel Eilenberg and Saunders Mac Lane while working on something called the Cech cohomology, which is central in the field of algebraic topology.

One of Eilenberg and Mac Lane's motivations was that it was (and still is!) common among mathematicians to refer to certain constructions as "natural" and "canonical" - broadly speaking, these terms are used to denote constructions that were somehow "choice-free". For example, one might want to study vector spaces without explicitly choosing a basis vectors. In this way, one can discover properties that don't actually *depend* on a particular frame of reference, and in some sense are more "universal" and intrinsic to the object being studied.

In particular, Eilinberg and Mac Lane wanted to formalize the notion of a **natural transformation** and things that were "naturally isomorphic."

### Interlude - What does "natural" mean?

----

A canonical example from mathematics is that, given a finite-dimensional vector space $V$ over a field $k$ (you can just take $k=\mathbb{R} $ here if you'd like), one can look at it's *dual space*, denoted $V^*$, which is the space of all functions $f : V \rightarrow k$ that take vectors in $V$ as input and output scalars in the base field $k$. It turns out that $V^*$ is also a vector space, with the same dimension as $V$, and one result you might remember from linear algebra is that $\text{dim} V = n \Rightarrow V \cong R^n$ - that is, all vector spaces of finite dimension $n$ are indistinguishable (as vector spaces) from $\mathbb{R}^n$.

In particular, we have $\text{dim}~V^* = n$, so $V^* \cong R^n \cong V$. So $V$ is isomorphic to its dual.

But $V^*$ is a vector space in its own right, so we can look at *it's* dual too! This is denoted $V^{**}$, and sometimes referred to as the "double dual" of $V$. In exactly the same way, we find that $\text{dim}V^{**} =n$ as well, and so $V^{**} \cong V^*$, and so we can conclude that $V \cong V^{**}$ - that is, $V$ is isomorphic to its double dual.

So $V$ is isomorphic to $V^*$, and it is also isomorphic to $V^{**}$.  However, when one goes through the process of actually finding and constructing these bijections, one finds that the map from $V \rightarrow V^{*}$ truly depends on choosing a basis for $V$; on the other hand, the map from $V$ to $V^{**}$ requires *no such choice*. In this way, we say that $V$ is isomorphic to its dual, but $V$ is *naturally* isomorphic to it's double dual.

-----

This idea of 'naturality" is part of what category theory sets out to make precise.

A secondary motivation was to to abstract away properties that are really only a result of some particular structure or construction, and don't actually have much to do with the specific kind of object you're working with. (If you've programmed much, the analog here would be "refactoring" commonly used pieces of code into a more general interface.)

A few such constructions would be things like products or quotients of objects, which are ubiquitous in mathematics. With products, for example, it is possible to construct a product of sets (which have very little structure), but we can also construct a product of vector spaces (which have a very rich structure). It's then natural to ask, what commonalities do these constructions share? Which properties of a product of vector spaces are due to them being vector spaces, and which are just a result of its construction as a product? This is another area where category theory shines; notions such as products and quotients can be described in terms of *universal properties*, which pay no heed to what the underlying objects really are at all.

As a result, Category Theory provides a way of describing things in ways that are general enough be applied very broadly. It is useful as both an organizational tool, and also as a general language and logical framework which has found use not only in various branches mathematics, but also in logic, computer science, physics, philosophy, linguistics, and a host of other fields.

On one hand, it serves as "simplification through abstraction" -- we move from studying individual trees to studying the forest as a whole. On the other hand, it also allows us to reason about entire collections of forests, and how to transport our findings from one forest to another.

In a nutshell, categories were invented as a framework to support **functors**, which were in turn invented to describe **natural transformations** between objects, which are in turn used to define **adjoints**. Of course, many other useful categorical tools have been developed, adjunction is really one of**the** key notions that category theory is meant to describe support.

### Interlude - What is an adjoint?

---

Adjunction is a slightly complicated concept, but informally speaking, **functors** map categories into other categories, and adjoints allow you to "approximate" one category by another. And in some cases, there is also an "inverse" to this approximation which takes you back to the original category.

For example, consider groups and sets; there are categories $\mathbf{Grp}$ and $\mathbf{Set}$ in which these objects live. A group is really just a set that is decorated with some additional structure - in this case, a binary operation that essentially behaves like modular addition. Usually groups are given to you with an *a priori* notion of what this operation is, but what if this weren't the case? If you were just given a set, is there any way to "upgrade" it to a group?

The answer is yes; if $X$ is any set, there is a construction called the *free group on* $X$, denoted $F(X)$, which goes something like this: given a set like $A = \{a, b\}$, one thinks of $A$ as a formal alphabet of symbols, and makes another set of "formal inverses" of $A$, say $B = \{a^{-1}, b^{-1}\}$. Then, take the set $G = A \coprod B = \{a,b,a^{-1},b^{-1}\}$ , add an element $\varepsilon$ to denote an empty symbol, and define a group operation $\bigstar$ that is simply the concatenation of symbols together (subject to no rules or relations other than $x \bigstar \varepsilon = x$). We then stipulate that whenever something like $aa^{-1}$ occurs in a string (again, strictly as formal symbols over the alphabet $G$), there is a reduction operation that replaces this with $\varepsilon$. After quotienting out by an equivalence under these reductions, we produce something that is a well-defined group, and is somehow the minimal group that could have been made from the original set and no other information.

Then, there is something called a "forgetful functor" $\mathcal{F}$ from $\mathbf{Grp}$ into $\mathbf{Set}$ that takes a group and gives you only the underlying set, "forgetting" everything about its structure as a group. For example, if one took that group $(\mathbb{Z}_2 = \{0,1\}$ with the group operation $0+1 =1+0 = 1, 0+0=1+1=0$ (i.e., the $XOR$ operation), then applying $\mathcal{F}$ to $(\mathbb{Z}_2, XOR)$ just gives you a two element set $\{a_0. a_1\}$.

Then $\mathcal{F}$ has an adjoint $\mathcal{G}$, which creates the free group on that set, $F(\{a_0, a_1\})$. So if you apply $\mathcal{G} \circ \mathcal{F}$ to $\mathbb{Z_2}$, you end up back in $\mathbf{Grp}$, but you don't get back the same group you started with - indeed, the free group consists of infinitely many strings over the alphabet $a_o, a_1, a_0^{-1}, a_1^{-1}$, while $\mathbb{Z}_2$ had only two elements. So this adjunction, the free group, provided a way to reconstruct a minimal group out of the information we lost by applying $\mathcal{F}$. For this reason, you'll often hear of adjunction as the "the most efficient" solution to a given problem, or as a form of "optimization".

(In this case, however, there was only one group with an underlying set of two elements, so if we knew the adjunction was applied, we could deduce what the original group was!)

---

# Definition of a Category

- Informally, a category is a collection of **objects** and **arrows** between them.
  - Each arrow has a unique source and a target, both of which are objects, and arrows can be **composed** (definition later)
  - For example, there is a category **Set** where the objects are just normal sets, and the arrows are functions between sets. Composition of arrows is just the usual composition of functions.
- Simply put, categories are **Simple Directed Graphs** (diagrams) with certain constraints on the edges
  - Nodes are **objects** in the category, edges are **morphisms** between objects, subject to:
    - Every node has an edge to itself
    - For any sequence of paths between two nodes, there is a direct path between them.
  - Show free category construction


- The objects are black boxes - not allowed to "look into" them!
- Formally, a category $C$ is two pieces of data:
    - $Ob(C)$, the class of *objects* of $C$,
    - $Hom(C)$, the **set** of *morphisms* between objects in $Ob(C)$
      - Members of $Hom(C)$ are denoted $Hom_C(X,Y)$, where $X,Y \in Ob(C)$.
    - Along with a binary operation $\circ$ which composes morphisms:
      - $\forall X,Y,Z \in Ob(C)$ where $f: X \rightarrow Y$ and $g: Y \rightarrow Z$, there exists the **composition** $h$ of $f$ and $g$, denoted $h = g \circ f$, where $h: X \rightarrow Z$.
      - Using types: $$\circ: Hom_C(X,Y) \times Hom_C(Y,Z) \rightarrow Hom_C(X,Z)$$ $$(f \times g) \mapsto g \circ f$$
    - And two rules:
      - Associativity of $\circ$, given by $f\circ(g\circ h) = (f\circ g)\circ h$
      - Existence of unique two-sided identities: $\forall X \in Ob(C), \exists id_X \in Hom(C)​$ where $id_x: X \rightarrow X​$. These satisfy
        - $\forall f: A\rightarrow X \in Hom(A,X), f\circ id_X = f$ and
        - $\forall g: X \rightarrow B \in Hom(X, B), id_X \circ g = g$.



## Foundational Issues

- Certain collections of objects are "too big" to be sets
  - Example: $(\exists R = \{ x : x \not \in x \}) \Rightarrow (R\in R \iff R\not\in R)$ (Contradiction)
  - So one can't have a "set of all sets", but we'd like to study such things
    - e.g. we'd like a category **Set** that contains all sets
  - So we use **classes** (sets with restricted operations)
    - Classes that are sets: **small classes**
    - Classes that are *not* sets: **proper classes**
    - The collection of **objects** in a category form a proper class.
    - The morphisms (sometimes called *homsets*) are usually small classes, can be either.
- In a sense, Category theory *subsumes* and generalizes set theory
  - There are mathematical camps that see it as a possible alternative to set theory for the foundations of math (see **homotopy type theory**)
  - In certain types of categories, *all* of mathematics can be formulated (see **topos**)

# Examples

Since a category can be quite abstract objects in and of itself, it's useful to have a few concrete categories in mind to check new definitions and theorems against. Here are a number of toy examples you can use.

----------

Here, I'll just cover what I think are the three most important parts of recognizing that some structure you've used is a category - the objects, the morphisms, and what kind of morphisms are called isomorphisms in that category. Checking the categorical axioms is pretty routine and perhaps not as enlightening, so we'll skip that for now.

That being said, here's how the examples are formatted:

- $\mathbf{Name}$: A somewhat informal name I've given to the category as a whole.  Some names are more "official", but these vary a lot across the literature. Some categories aren't named at all, so I've supplied arbitrary names in some cases. Note that some categories are named after their object classes ($\mathbf{Set}$),  while others are actually named after their morphism classes ($\mathbf{Mat}$). Category names are usually typeset in *mathbf*.
  - *Objects*: Describes the entire class $Ob(C)$, and gives an example of what the full data of what two distinct members $X, Y$ in $Ob(C)$ might look like. I've tried to match the notation to the domain-specific notation one might use when working in each individual category.
  - *Morphisms*: Denotes what the entire class $Hom(C)$ looks like, as well as what a morphism $f: X \rightarrow Y \in Hom_C(X,Y) \in Hom(C)$ looks like.
  - *Isomorphisms*: Denotes what conditions one puts on a morphism $f: X\rightarrow Y$  , and perhaps a corresponding morphism $g : Y \rightarrow X$, in order to recognize $X, Y$ as isomorphic objects in this category. (Often denoted $X \cong Y$)

*Notes*: Some of these categories are constructed, and easier to demonstrate their construction blackboard. I've included notes to explain how this is done for a few examples.

### Constructions

Here, I'll explicitly describe the full set of objects, and the full set of morphisms.

* $\mathbf{2}$ (The minimal category on two objects)
  * Objects: $\{a,b\}$ (A category made out of two arbitrary objects)
  * Morphisms: $\{Id_a: a \mapsto a, Id_b: b \mapsto b\}$
  * Isomorphisms: None (There is no morphism from $b$ to $a$.)

- $\mathbf{2'}$
  - Objects: $\{a,b\}$
  - Morphisms: $\{a \mapsto a, Id_b: b \mapsto b\} \cup \{ \bigstar: a \mapsto b, Id_a:  \}$
  - Isomorphisms: None (There is no morphism from $b$ to $a$.)

*Notes:* Here I just took $\mathbf{2}$ and added in a single extra morphism. The star symbol is used here just to denote the fact that this mapping is completely made up, and that arrows in categories don't have to be "functions"  in the traditional sense at all. Each arrow is just *some* way to associate a source object with a target object.

* $\mathbf{n}$ (The minimal category on $n$ objects)
  * Objects: $\{a_1, a_2, \cdots, a_n\}$ (A category made out of $n$ arbitrary objects)
  * Morphisms: $\{Id_{a_1}: a_1 \mapsto a_2, Id_{a_2}: a_2 \mapsto a_2, \cdots , Id_{a_n} a_n \mapsto a_n\}$
  * Isomorphisms: None (There are no morphism from $a_i$ to $a_j$ for any $i,j \leq n$)

*Notes*: This just shows that you can make a category out of any set of objects by only supplying identity morphisms - such a category is called *discrete*. Also note that since every object *must* have an identity morphism anyway, the objects themselves don't really matter at all. If we wanted, we could just identify every object with its identity morphism and define categories entirely in terms of morphisms. Practically speaking, though, keeping the notion of objects around makes categories a little easier to work with.

Also, note that it didn't matter that $n$ was finite here - this construction works for any set $X$, yielding $\mathbf{Dis(X)}$ (the discrete category on $X$)

- $\mathbf{3'}$
  - Objects: $\{a, b\} \cup \{c\}$ (A "minimally interesting" extension of $\mathbf{2}$)
  - Morphisms: $\{\bigstar: a \mapsto b,  Id_a: a \mapsto a, Id_b: b \mapsto b\} $
    $\cup~\{ Id_c: c\mapsto c\} $
    $\cup~\{\clubsuit: b \mapsto c\} $
    $\cup~\{   \sharp: a\mapsto c \text{ where } \sharp(a) = (\clubsuit \circ \bigstar)(a) \}$
  - Isomorphisms: None (There is no map from $b$ to $a$, $c$ to $a$, or $b$ to $c$.)

*Notes*: The wacky symbols are again used to denote that these mappings are absolutely arbitrary.

A quick explanation of what I mean by "minimally interesting", though: Given $\mathbb{2}$, note that there are really only a few things we can do with it at this point. We could add another morphism, $b \mapsto a$, and we would get a category where $b\cong a$.

The other thing we can do is add in a single object $c$. We are forced to add an identity morphism for this to be a category, which is what the first union in the morphisms section supplies.

At this point, we just have $\mathbf{3}$, so we look to modify the morphisms a bit to get something slightly different. There are a few choices here, but we'll go with one of the more interesting ones: a morphism $\clubsuit$ from an existing object $b$ to the new object $c$.

However, this won't be a category unless it satisfies the axiom of composition, so we're forced to add in a morphism that looks like $\sharp$.

Denote
​	$\bigstar$ by $f$
​	$\clubsuit$ by $g$
​	$\sharp$ by $g \circ f$,

and you get something that perhaps looks a little more familiar:

![The Category 3](https://i.imgur.com/016ixGX.png)

If you haven't seen this before, don't worry - you will! This particular kind of diagram shows up in many algebraic constructions (quotients and products, to name a few), and understanding it is the first step in getting a handle on things like universal properties.

### More Standard Examples

Here are some common examples of categories that arise in various contexts, roughly in increasing order of complexity.

- $\mathbf{Set}$
  - Objects: Sets $A, B$
  - Morphisms: Set functions $$f: A \rightarrow B$$
  - Isomorphisms: Bijective set functions $f: A\rightarrow B$
    - $f$ is bijective iff $f$ is both
      - injective:  $\forall a_1, a_2 \in A, f(a_1) = f(a_2) \Rightarrow a_1 = a_2​$
        - This lets you construct a *left inverse*
      - surjective:  $\forall b \in B, \exists a\in A : b = f(a)$
        - This lets you construct a *right inverse*

  *Notes*: These conditions allow you to construct a $$g: B\rightarrow A$$ such that

  - $$\forall b\in B, (f\circ g)(b) = b$$
    - (i.e.$$f\circ g = id_B$$ as a function)
  - $$\forall a \in A, g\circ f(a) = a $$
    - (i.e. $$g\circ f = id_A$$ as a function)

  So we refer to $g$ as **the** two-sided inverse and call it$f^{-1}$, which is unique when it exists. In many common cases, the objects in a category are "built" out of sets. These categories are called concrete, and the isomorphisms in these categories end up just being isomorphisms of the underlying sets, along with some other structure-preserving conditions. Thus understanding how morphisms and isomorphisms in $\mathbf{Set}$ are constructed is a key first step.

- $\mathbf{Poset}$
  - Objects: Partially-ordered sets $(P \leq)$, $(Q, \prec)$
    - Recall that partial orders are reflexive, transitive, antisymmetric binary operations.
  - Morphisms: Set functions $f: P \rightarrow Q$
  - Isomorphisms: Bijective functions $f: P \rightarrow Q$ such that
    if $x,y\in P$ and $x\leq y$, then $f(x) \prec f(y)$

- $\mathbf{Rel}$
  - Objects: Binary Relations $(X, \sim), (Y, \propto)$
    - Here $X$ is  just a set and $\sim \subseteq X\times X$ is a binary relation.
  - Morphisms: Relation-preserving set functions $f: X \rightarrow Y$ such that $\forall a,b\in X, a\sim  b \Rightarrow f(a)\propto f(b)$
  - Isomorphims: Bijective set functions (as in $\mathbf{Set}$) with an inverse $g: Y \rightarrow X$ such that $\forall c,d \in Y, c \propto d \Rightarrow g(c) \sim g(d)$.

  *Notes*: This works for any binary relation - for example, take $\mathbb{Z}$ with $a \sim b$ iff $a$ divides $b$.

  Also notice that to get an isomorphism, all we really did was take an isomorphism on the underlying set, and required that the inverse also satisfied the conditions of the morphisms in this category. So really, it required $f$ to be bijective in $\mathbf{Set}$, then $g=f^{-1}$ just needed to *also be morphism in* $\mathbf{Rel}$. We'll see this pattern in almost every concrete category!


- $\mathbf{Grp}$
  - Objects: Groups $(G, \star), (H, \diamond)$
  - Morphisms: Group homomorphisms $\varphi: (G, \star) \rightarrow (H, \diamond)$ where $$\forall x,y \in G$$, $$\phi(x\star y) = \phi(x) \diamond \phi(y)$$
  - Isomorphisms: Bijective group homomorphisms.
    - These are found by finding a $\varphi$ that is bijective as a set function (as described in $\mathbf{Set}$) that is almost a homomorphism (as described above).
    - Then $\phi^{-1}$ can be constructed as a set function, and a result from group theory shows that $\phi^{-1}$ is also a homomorphism.

  *Notes*: This is the first case in a very common pattern - the isomorphisms in this category were just set bijections, *but they preserve the structure of the objects*. In this case, homomorphisms end up being the kind of morphisms you need to preserve the fundamental pieces of a group's structure. They preserve the binary operation (by definition) and associativity (from function composition), but they also end up preserving inverses, identities, and information about the elements themselves like order.

  This can be summed up with a wave of the hand by saying that the isomorphisms in a category are just *invertible structure-preserving morphisms*.

- $\mathbf{Ring}$
  - Objects: Rings $(R, +, \times)$
  - Morphisms: Ring homomorphisms $\varphi: (R, +, \times) \rightarrow (S, \star, \diamond)$ where $$\varphi(a\times(b+c)) = \varphi(a)\star(\varphi(b) \diamond \varphi(c))$$
  - Isomorphisms: Bijective ring homomorphisms

- $ \mathbf{Ab} = \mathbf{Mod_\mathbb{Z}} $
  - Objects: Abelian groups (Left $R$-modules of $\mathbb{Z}$)
  - Homomorphisms of abelian groups $\varphi: G \rightarrow H$
  - Isomorphisms: Bijective group homomorphisms

*Notes*

- $\mathbf{Vect_k}$
  - Objects: Vector spaces over a field $k$, say $V, W$
  - Morphisms: $k$-linear maps $T: V \rightarrow W$
    - These are maps $T$ such that $\forall v_1, v_2 \in V, \forall k\in K$, we have $T(v_1 + kv_2) = T(v_1) + kT(v_2)$.
  - Isomorphisms: Invertible linear maps
    - These are maps between sets of *vectors* of $V$ and $W$ which are bijective functions on these sets (again, just as in $\mathbf{Set}$) with the restriction that they obey the linearity condition from above.

  *Notes*: The prescence of $k$ is just a generalization - if you haven't seen a lot of algebra, you can just take $k=\mathbb{R}$ and think of the category of all vector spaces over $\mathbb{R}$. Then an object in this category is just $\mathbb{R^n}$ for some $n$, and the maps are just the usual linear maps you'd see in an undergraduate course on linear algebra.

  Notice how the pattern seen in $\mathbf{Grp}$ continues here - to get an isomorphism, you just look at all of the functions between the underlying sets (this is a large set!), take only the bijections, then filter it even further by taking the bijections which preserve the structure you care about.

  Here, the structure-preserving maps in vector spaces end up being *linear maps*. You might notice that condition of linearity looks very similar to the condition for homomorphisms - only now, the operations in both the source and target are the same.

  Informally, this is because you essentially get vector spaces by taking a group, tacking on a field $k$, then adding a few more axioms - so the linearity condition is really just a souped-up homomorphism on the underlying group (here, vectors under addition) that takes into account the remaining axioms (namely, scalar multiplication).

  The point of this example is to show that (generally speaking) as more structure is put on the objects, more restrictions will need to be put on the morphisms to retain that structure.

- $\mathbf{Logic_0}$ (Propositional / "0-order" Logic)
  - Objects: Propositions $P, Q$
  - Morphisms: Deductions defined by $P \Rightarrow Q$ or "P implies Q"
    - Also known as deductions
  - Isomorphisms: Tautologies -- equivalent propositions $P, Q$ such that $P \iff Q$

  *Notes*: This can be thought of as "the category of proofs", and such a category can be derived from any deductive system. The isomorphisms here are "if and only if" statements, and they are often exploited in Mathematics to create *definitions*.
  (In other words, every Mathematical definition is an iff statement, and any proposition isomorphic to a definition in this category can be taken as an equivalent definition.)

- $\mathbf{Aut}$ (Finite state automata)

  - Objects: Finite state automata $(Q, \Sigma, \delta, q_0, F), (Q', \Sigma, \delta', q'_0, F')$

    - $Q$ is the set of states
    - $\Sigma$ is the input alphabet
    - $\delta : \Sigma \times Q \rightarrow Q$ is a transition map
    - $q_0\in Q$ is the initial state
    - $F \subseteq Q$ is the set of final/accepting states
  - Morphisms: Simulations $f: Q \rightarrow Q'$ such that

    - $\forall \sigma\in\Sigma, \forall q\in Q, ~ f(\delta(\sigma, q)) = \delta'(\sigma, f(q))$
      - (Transitions are preserved)
    - $f(q_0) = {q'}_0$
      - (Initial states are mapped to each other)
    - $f(F) \subseteq F'$
      - (Accepting states are preserved)
  - Isomorphisms: Bijective simulations that are also bijective on the underlying sets. Note that this forces $g=f^{-1}: Q' \rightarrow Q$ to exist, and
    - $\forall \sigma\in\Sigma,~\forall q\in Q, (g\circ f)(\delta(\sigma, q)) = \delta(\sigma, q)$, so $g\circ f = id_Q$. Similarly, $f\circ g = Id_{Q'}$
    - $q_0 = q'_0$
    - $F = F'$

- $\mathbf{Graph}$
  - Objects: Graphs $G = (V_1, E_2),  H =(V_2, E_2)$ where $E_i \subseteq V_i\times V_i$
  - Morphisms: maps $$f: V_1  \rightarrow V_2$$ where  $$(v,w) \in E_1 \Rightarrow (f(v), f(w)) \in E_2$$
    - i.e. maps between vertex sets that preserve incidence relations.
  - Isomorphisms: Bijective graph morphisms

- $\mathbf{Mat(\mathbb{F})}$
  - Objects: Natural numbers $m, n$
  - Morphisms:  $A:m \rightarrow n$ is $m\times n$ matrix with entries in the underlying field $\mathbb{F}$
  - Isomorphisms: Natural numbers $m, n$ for which there exists a $B: n\rightarrow m$  , i.e an $n\times m$ matrix, such that $AB = BA =I$
    - Note that this can only possibly happen when $n=m$, so $A,B$ are square. But then we can *always* just take the identity matrix $I_n = I_n^{-1}$ So isomorphisms are just equalities of natural numbers.

  *Notes*: This category is a little different - the objects don't matter much, since they're really just keeping tracks of matrix dimensions. Instead, the morphisms themselves are the data this category encodes.

  While this seems like an odd category to consider, the kicker is it's possible to prove that there is a "full, faithful, surjective functor from $\mathbf{Mat}(\mathbb{F})$ to $\mathbf{Vec}(\mathbb{F})$" - in other words, one can move between these categories without losing any vital information. In this case, this tells us that when working with (finite dimensional) vector spaces, it doesn't matter whether you study abstract linear maps or the matrices that represent them!

- $\mathbf{Hask}$ (pseudo-category)
  - Objects: Haskell types $A, B$
  - Morphisms: Functions $f: A \rightarrow B$
  - Isomorphisms: Type $A,B$ for which there exist functions $f: A\rightarrow B, g: B \rightarrow A$ such that $f.g b = id ~b$ and $g.f a = id ~a$
    - Note: From the compiler's point of view, *function* equivalence is perhaps the more interesting/important thing to look at!

- $\mathbf{\lambda-Calc}$
  - Objects: Typed lambda calculi
  - Morphisms: Translations that map types to types, terms to terms, and preserve equations ($\alpha$ conversions, $\beta$ reductions, etc)

- $\mathbf{Diff}$
  - Objects: Smooth manifolds $(\mathcal{M}, \mathcal{A})​$ ,where $\mathcal{M}​$ is a topological manifold (locally homeomorphic to $\mathbb{R}^n​$), and $\mathcal{A}​$ is a maximal smooth atlas on $\mathcal{M}​$.
  - Morphisms: Smooth maps $F: (\mathcal{M_1}, \mathcal{A_1}) \rightarrow (\mathcal{M_2}, \mathcal{A_2})$ (where  $F = (f_1, f_2, \cdots)$) such that $\frac{\partial f_i}{\partial x_j}$ is continuous for all $i,j$, and if $\phi \in \mathcal{A_1}$ is a chart on $\mathcal{M_1}$, then $F(\phi)\in\mathcal{A_2}$ and is a chart on $\mathcal{M_2}$
  - Isomorphisms: Diffeomorphisms - morphisms $F$ with a smooth inverse $G$.

  *Notes*: This is where differential geometry and a fair amount of topology takes places, as well as certain branches of analysis, partial differential equations, and physics.

- $\mathbf{Meas}$
  - Objects: Measurable spaces $(X, \mathcal{\Sigma}_X), (Y, \mathcal{\Sigma}_Y)$
    - (Where the $\Sigma \subset 2^X$ are $\sigma$-algebras over their respective sets, and the members of $\Sigma$ are denoted the measurable sets)
    - Note that these are measur**able** spaces, not measure spaces - this is a space for which a measure $\mu$ can be assigned. The triple $$(X, \Sigma, \mu_X)$$ would be a **measure** space.

  - Morphisms: Measurable functions $f: (X, \Sigma_X) \rightarrow (Y, \Sigma_Y)$ such that
    $E \in \Sigma_Y \Rightarrow f^{-1}(E) \in \Sigma_X$

    (Where $f^{-1}$denotes the preimage or pullback of $f$)

  - Isomorphisms: Measurable functions $$f$$ with measurable inverses $g: (Y, \Sigma_Y) \rightarrow (X, \Sigma_X)$ where $F \in \Sigma_X \Rightarrow g^{-1}(F) \in \Sigma_Y$

  *Notes*: This is where probability theory happens.

  Also, it turns out to actually be very tricky to formulate measure theory in a categorical way! If we try to look at the category of **measure** spaces, it turns out that adding the actual measure $\mu$ to a measurable space is in some sense "too strong" of a condition, and the resulting category lacks many useful properties.

  (In particular, it occludes the possibility of having a structure that is denoted the "categorical product". Attempts formalize measure/probability in categorical terms is a topic of relatively current research.)

- $\mathbf{Top}$
  - Objects: Topological Spaces $(X, \mathcal{T}_X)$
  - Morphisms: Continuous functions $$f: (X, \mathcal{T}_X) \rightarrow (Y, \mathcal{T}_Y)$$ such that if $U$ is open in $Y$, then $f^{-1}(U)$ is open in $X$.
    - Note that this is equivalent to $U \in \mathcal{T}_Y \Rightarrow f^{-1}(U) \in \mathcal{T}_X$
  - Isomorphisms: Homeomorphisms where $f$ has an inverse $g$  (as in $\mathbf{Set}$) where $g$ is also a continuous function.

- $\mathbf{Unif}$
  - Objects: Uniform Spaces $(X, \varepsilon)$
  - Morphisms: Uniformly continuous maps
  - Isomorphisms: Uniformic maps, i.e. uniformly continuous maps admitting a uniformly continuous inverse.
    - These can be thought of as homemorphisms, along with an added condition of uniformity on the maps and their inverses.

  *Notes*: A uniform space is a topological space, equipped with some notion of "$\varepsilon$-closeness". Things like metric spaces and topological groups fit this description,  so most analysis technically happens in this category.

- $\mathbf{Met}$
  - Objects: Metric spaces $(M_1, d_1), (M_2, d_2)$
    - $d_1 : M_1 \times M_1 \rightarrow \mathbb{R}$ is denoted the *metric* on $M_1$.
  - Morphisms: Contractions $f: (M_1, d_1) \rightarrow (M_2, d_2)$ such that $\forall x,y \in M_1$, we have $d_2(f(x), f(y)) \leq d_1(x,y)$.
  - Isomorphisms: Isometries
    - These are just the bijective contractions $f$, so that $d_2(f(x), f(y)) = d_1(x,y)$

  *Notes*: The distance function $d$ has to satisfy a few more axioms than $\varepsilon$ in $\mathbf{Unif}$

  Starting here, there are actually many choices we could make for the morphisms - for example, we could have chosen uniformly continuous functions, Lipschitz functions, or a few others. Here I've just chosen one of the weaker conditions - Lipschitz functions with constant 1.

  Since every metric space is a topological space, the morphisms here need to extend the morphisms on $\mathbb{Top}$. This is in fact the case in $\mathbf{Met}$, since contractions on metric spaces end up being continuous.

- $\mathbf{Norm}$
  - Objects: Normed spaces
  - Morphisms: Continuous and linear maps
    - i.e., $Hom(\mathbf{Met}) \cap Hom(\mathbf{Vec})$
  - Isomorphisms: Continuous linear bijective maps with continuous linear inverses

- $\mathbf{Ban}$ (Complete normed spaces)
  - Objects: Banach spaces $B, C$
  - Morphisms: Bounded linear maps $f: B \rightarrow C$ such that $\Vert f\Vert_{\text{sup}}$ is finite.
    - If $B=C$, these are usually referred to as *bounded linear operators*
  - Isomorphisms: Bijective bounded linear maps with bounded linear inverses.

    *Notes*: A Banach space is a vector space that is also a complete metric space, so the morphisms simply reflect that these two structures "play nicely" together. This is the case, since the following three are equivalent in Banach spaces:

    - Bounded linear maps
    - Continuous linear maps
    - Uniformly continuous linear maps

    This is where much of functional analysis happens.

- $\mathbf{Hilb}$ (Complete inner product spaces)
  - Objects: Hilbert Spaces $\mathcal{H}, \mathcal{K}$
  - Morphisms:  Bounded linear maps $T: \mathcal{H} \rightarrow \mathcal{K}$ such that $\Vert T \Vert_{sup}$ is finite.
  - Isomorphisms: Bounded linear maps with bounded linear inverses.

  *Notes*: It might seem a bit simplistic at first to characterize something like a Hilbert space as essentially an "enriched vector space", but this turns out to be reflected in its categorical structure - the forgetful functor from $\mathbf{Hilb}$ to $\mathbf{Vec}$ given by forgetting the inner product is **faithful** (the categorical analog of "surjective" for normal functions)

  Similarly, one can think of Hilbert spaces like Banach spaces where the norm is induced by the inner product.

- $\mathbf{Cat}$
  - Objects: Small categories $C = (Ob(C), Hom(C)), ~D = (Ob(D), Hom(D))$
  - Morphisms: **Functors** $F: (Ob(C), Hom(C)) \rightarrow (Ob(D), Hom(D))$
    - Functors map:
      - objects $c, c' \in Ob(C)$ to objects $F(c) = d, F(c') = d' \in Ob(D)$,
      - morphisms $f:c \rightarrow c' \in Hom_C(c, c')$ to morphisms $F(f) : F(c) \rightarrow F(c') \in Hom_D(F(c), F(c'))$,
        - Or to clean up notation a bit, morphisms that look like $g: d \rightarrow d' \in Hom(d, d')$.
    - In words, this just sends the objects and arrows of one category to another, preserving the way arrows connect objects
  - Isomorphisms: **Natural isomorphisms**, i.e. functors $F: C \rightarrow D$ with a dual functor $G: D \rightarrow C$ such that $$F \circ G \cong Id_D \text{ and } G \circ F \cong Id_C$$

## Building More Examples

We can also make simple modifications to existing categories to obtain new ones:

- Denote a "distinguished" point : yields pointed categories (e.g. manifolds with base points)
- Add strucutal restrictions to get "smaller" categories
  - Force commutativity
    - $\mathbf{Grp} \rightarrow \mathbf{Ab}$
    - $\mathbf{Ring} \rightarrow \mathbf{CRing}$
  - Forget some structure
    - $\mathbf{Ring}\rightarrow \mathbf{Grp}$
      - (Just forget about multiplication)
  - Equip the objects with more structure and/or supply more stringent morphisms
    - $\mathbf{Top} \rightarrow \mathbf{Diff}$
      - Require that the continuous maps be differentiable
    - $\mathbf{Set} \rightarrow \mathbf{FinSet}$
      - Require the cardinality of the sets to be finite (This is where combinatorics is done)
  - $\mathbf{Mod_R} \rightarrow \mathbf{Mod_\mathbb{Z}}$
- "Parameterized" categories
  - $\mathbf{Vect_k}$ where $k \in \{ \mathbb{R}, \mathbb{C}, \mathbb{GF(p^n)}, \cdots\}$
  - $\mathbf{C_A}$: the category whose objects are morphisms in a fixed category $C$ with source $A$
    - You can think of this as a category of commutative diagrams involving $A$
- The category of all morphisms in a fixed category $C$
  - Yields n-categories
- Duality: Take $C$ and reverse arrows to obtain $C^{OP}$
- Take cartesian products: Ordered pairs, everything defined point-wise

## Big Ideas

- Duality
- Isomorphims
- Universal Properties
  - Build new objects out of old ones, or "factor" objects into smaller ones
  - Define things "up to a unique isomorphism"
  - Yoneda's Lemma: We only need to look at maps!
- Functors
- Limits / Colimits
  - Limits: Build new objects by "imposing equations" on existing ones.
    - Ex: Construction of the p-adic integers as the limit of the sequence of quotient homomorphisms: $$ \cdots \rightarrow \mathbb{Z}/p^n \rightarrow \cdots \rightarrow \mathbb{Z}/p^2 \rightarrow \mathbb{Z}/p$$
  - Colimits: Build new objects by "gluing together" existing ones:
  - Canonical Example: **sup/inf** from real analysis
    - The *supremum* $a$ of a poset $(A, \leq)$ (**sup**$\{a_i : a_i \in A\}_{i\in J}$) is a colimit in the category $(A, \leq)$, i.e. it satisfies $\forall i \in J, a_i \leq a$.
    - Dual construction for **inf**.
  - Examples:
    - Products
    - Quotients
    - Kernels
    - Completions
    - Free products
    - "Gluing" constructions
- Adjunction
  - Duality between functors
  - "Partial equivalence" of categories
- Kan Extensions

# Duality

- Reverse arrows and redefine composition in $C$ to obtain $C^{op}$
- Then every "thing" in $C$ has a corresponding "thing" in $C^{op}$, which we call a co-"thing".
  - Products and Coproducts
  - Kernels and Cokernels
  - Limits and Colimits
- Can often obtain two conclusions for the price of one!
- Duality is an involution
  - i.e., a co-co-$X$ is just an $X$
- Canonical Example: Vector spaces $V$ and their duals $V^*$ over a field $k$
  - $V^* = \{\phi: V \rightarrow k\}$ where $\phi$ is linear
  - $V \not\cong V*$, but $V \cong V^{**}$
- Very powerful! Example: Poincare Duality
  - The $k$th homology group of an $n$-dimensional manifold  is isomorphic $(n-k)$th cohomology group
  - $H^k(M) \cong H_{n-k}(M)$.
# Universal Properties
For another time!
