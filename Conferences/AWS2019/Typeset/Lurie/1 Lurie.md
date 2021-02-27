Jacob Lurie, Arizona Winter School 
Day 1, Lecture 1

# Motivation 

Consider classifying quadratic forms. We'd like to know when two are equal -- i.e., when one can be obtained from the other by a linear change of variables. 

Definition: Let $R$ be a ring and $q,q'$ be quadratic forms over $R$. We characterize their **equivalence** in the following way:
$$
q \equiv q' \iff \forall R,~ \exists A\in \GL(n, R) \suchthat q = q' \circ A
$$

Note that $q,q'$ are positive definite, then they are automatically equivalent in $R=\RR$.

Examples:
1. $x^2+y^2$
2. $x^2-y^2$
3. $-x^2-y^2$

Note that these are all equivalent over $\CC$, under the map $x \mapsto ix$ which sends $x^2\to-x^2$. But these are not equivalent over $\RR$, since (1) is positive-definite, (2) is indefinite, and (3) is negative definite.

We can similarly have forms equivalent over $\RR$ but not over $\ZZ$, e.g. by considering $x^2 + 3y^2$. This is equivalent to (1) over $\RR$, since we have $\sqrt 3$, but not over $\ZZ$ -- this can be seen by reducing mod 3.

So we have two methods
- Look over $\RR$, diagonalize, take signature
- Reduce mod $p$ for various $p$.

Are these all you need?

# Genus

Definition: The **genus** of a quadratic form is characterized by
$$
q, q' \text{ are in the same genus} \iff \forall n\in\NN,\quad q\equiv q' \mod n
$$

Remark: there are only finitely many forms in each genus, and there is a formula to count them: the Smith-Minkowski-Segal formula. 

Definition: For a commutative ring $R$, we define the **orthogonal group** over $R$ to be 
$$
O_q(R) = \theset{A \in \GL(n, R) \suchthat q\circ A = q},
$$ 
i.e. the square matrices that preserve the quadratic form $q$.

Note that $O_q(\RR)$ is the usual orthogonal group, which is a compact Lie group.

Definition: Suppose $q$ has genus $g$, then we define the **mass** of $q$ as 
$$
\mathrm{Mass}(q) = \sum_{q' \suchthat \mathrm{genus} (q') = g} \frac{1}{O_{q'}(\ZZ)}
$$

which counts the number of forms of the same genus as $q$.

Definition: $q$ is **unimodular** if $q$ is nondegenerate mod $n$ for all $n$.

For two forms in the same genus, $q,q'$, then $q$ is unimodular iff $q'$ is, but the converse is actually true as well -- for a fixed number of variables, any two unimodular forms are in the same genus.

Supposing $q$ is unimodular, we can write the mass formula
$$
\mathrm{Mass}(q) = \sum_{q' \text{unimodular}} \frac{1}{O_{q'}(\ZZ)}
= \zeta(\frac n 2)\frac{\zeta(2)\zeta(4)\cdots\zeta(n-2)}{\mathrm{vol}~S^1 \mathrm{vol} ~S^2 \cdots \mathrm{vol}~S^{n-1}}
$$

where the denominators are the volumes of spheres, and the numerator contains certain values of the Riemann-zeta function.

If, for example $n=8$, we obtain
$$
\frac 1 {2^{14}3^55^2 7}
$$

This is actually the order of the Weil group of the exceptional Lie group $E_8$, i.e. $\abs{W(E_8)}$. This appears as the symmetries of a certain quadratic over $\ZZ$ -- namely the form associated to the root lattice of $E_8$. So we have one form that gives exactly the RHS of the mass formula, which tells us that there can only be one term on the LHS, and thus there is a unique unimodular form in 8 variables.

You can get other information from this formula -- for example, if the RHS is large, note that the LHS contains summands all of which are less than 1, so there have to be many (many!) terms.

# Counting Within a Genus

Let $q,q'$ be in the same genus, so for each $n$ there exists an $A_n$ such that $q = q' \circ A_n$ for some $A_n\in\GL(n,\ZZ/n\ZZ)$. By a compactness argument, we can make a choice that works for all $n$, so we consider the system $A\definedas \theset{A_n}$ which lives in $\GL(n, \hat \ZZ)$.

> Recall that $\hat \ZZ = \varprojlim \ZZ/n\ZZ$ is the ring of profinite integers, which can also be described as $\prod_{p\in\PP}\ZZ_{(p)}$, the product of the $p\dash$adic integers over all primes.

We then get $q \equiv q'$ over $\hat \ZZ$, which means they are also equivalent over the $p\dash$adic integers $\ZZ_{(p)}$ for each $p$ -- but this means they are also equivalent over $\QQ_{(p)} = \ZZ_{(p)}[\frac 1 p]$, i.e. the field of $p\dash$adic rational numbers obtained by adjoining an inverse of $p$.

Now invoke the Hasse-Minkowski theorem: 
$$
q\equiv q' \text{ over } \QQ \iff q \equiv q' \text{ over every completion of } \QQ.
$$
Note that this includes $\RR$ (the archimedean completion), as well as the $p\dash$adic completions $\QQ_{(p)}$.

This lets us write $q = q' \circ B$ with $B\in \GL(n, \QQ)$, which lets us produce a new quadratic form that preserves $q$ given by
$$
q = q' \circ A = (q \circ B^{-1}) \circ A \definedas q \circ M
$$

and so $M \in O_q(R)$ for some ring $R$. To make sense of multiplying $A$ and $B$, since they are in different rings, we embed them both into the bigger ring
$$
R = A^\text{fin} \definedas \hat \ZZ \tensor \QQ \subseteq \prod_{p\in \PP}^\text{restricted} \QQ_{(p)}
$$

where the restricted product only allows finitely many primes in denominators.

Note that since $A \in \GL(n, \hat \ZZ)$, the matrix $M$ is only well-defined up to right-multiplication by elements in $O_q(\hat \ZZ)$, and similarly it is only well-defined up to left-multiplication by elements in $O_q(\QQ_{p})$. If we take the double quotient out by these groups (forming a double coset), we get something unique.

If you land in the identity coset here, you have $B^{-1}A = I$, and so each entry of $M$ would need to lie in $\QQ \intersect \hat \ZZ = \ZZ$. Moreover, this collection of cosets bijects with equivalence classes of quadratic forms in the genus of $q$.

This gives you a way to take a $q'$ and produce a quotient, the size of which counts the isomorphism classes within a genus -- going the other way is slightly easier.

Let $A = A^\text{fin} \cross \RR$; this is a locally compact ring containing $\QQ$ as a discrete subring. We can then replace $O_q(A^\text{fin})$ with $O_q(A)$, which adds in a factor of $O_q(\RR)$, but this can be offset by replacing $O_q(\hat \ZZ)$ with $O_q(\hat \ZZ \cross \RR)$.

This makes each $O_q$ in the equation a locally compact group, so we can take a Haar measure $\mu$ which is invariant under left-translation. This descends to a measure on $O_q(A) / O_q(\QQ)$, so we'd like to understand the orbits under the action of $O_q(\hat \ZZ \cross \RR)$.

If this was a free action, we would have
$$
\abs{\text{orbits}} = \frac {\mu(O_q(A) / O_q(\QQ))} {\mu(O_q(\hat \ZZ \cross \RR))},
$$

but since this is not a free action, orbits are counted with multiplicity. 

For each orbit $o$, letting $G_o < O_q(\hat \ZZ \cross \RR)$ being the subgroup that fixes some point in that orbit, i.e. the stabilizer subgroup. Then each multiplicity is equal to $\frac 1 {\abs{\mathrm{G_o}}}$. Since each orbit $o$ corresponds to a quadratic form $q'$ in the genus of $q$ and each stabilizer subgroup $G_o$ corresponds to the symmetry group of $q'$, the LHS is exactly $\mathrm{Mass}(q)$, and so we get
$$
\mathrm{Mass}(q) = \frac {\mu(O_q(A) / O_q(\QQ))} {\mu(O_q(\hat \ZZ \cross \RR))}.
$$

Note that even though the Haar measure is only unique up to scalar multiplication, since a measure appears in the numerator and the denominator it will cancel. However, we can still apply a certain normalization that allows us to evaluate each independently.

# Getting a Canonical Measure (The Tamagawa Measure)

Definition: **the special orthogonal group** of $R$ is defined as 
$$
SO_q(R) = \theset{A \in O_q(R) \suchthat \det A = 1}.
$$

This also has a Haar measure $\mu_S$, and it turns out that for some $k\in\NN$,
$$
2^k \mathrm{Mass}(q) = \frac {\mu_S(SO_q(A) / SO_q(\QQ)} {\mu_S(SO_q(\hat \ZZ \cross \RR))}.
$$

## The real part

We can now use the fact that $SO_q(A)$ has a canonical measure called the Tamagawa measure.

We can factor 
$$
SO_q(A) = SO_q(\RR) \times \prod_{p\in \PP}^\text{restricted}SO_q(\QQ_{(p)}).
$$

We know that $SO_q(\RR) = SO(\RR)$ is a compact Lie group, and in particular a smooth manifold of some dimension $n$, and so we can find a canonical measure by taking a differential form of degree $n$. In this case, just take any form of top degree, which will also be translation invariant.

We can define $V_\RR$, the vector space of such forms, which is an $\RR\dash$vector space of dimension 1. It unfortunately doesn't have a canonical measure, so we'd have to again make a real number choice here -- however, we can use the fact that this is a linear algebraic group, due to it being a subgroup of $\GL$, which satisfies polynomial conditions. Moreover, the conditions only require $\QQ$ coefficients, so we can find a $V_\QQ \subseteq V_\RR$ which is the space of algebraic top forms and a $\QQ\dash$ vector space.

> Somehow this solves the scalar indeterminacy problem...?

## The $p\dash$adic part

It's not the case that $SO_q(\QQ_{(p)}$ are Lie groups, but there is a replacement notion of **$p\dash$adic analytic Lie groups**, which has an analog of differential forms, particularly in top degree and left-invariant, where any choice determines a Haar measure. We again look at the collection of such forms $V_{\QQ_{(p)}}$, which is a 1-dimensional $\QQ_{(p)}\dash$vector space. In a similar fashion, $O_q(\QQ_{(p)}$ is an algebraic group, and we find that $V_{\QQ} \subseteq V_{\QQ_{(p)}}$.

So a choice of $\omega \in V_\QQ$ determines measures on both factors, say $\mu_{\omega, \RR}$ and $\mu_{\omega, \QQ_{(p)}}$. So we can arrive at the Tamagawa measure:
$$
\mu_{\text{tam}} \definedas \prod_{p\in \PP} \mu_{\omega, \QQ_{(p)}} \times \mu_{\omega, \RR}.
$$

Note that we need this product to converge -- if we stick with the usual orthogonal group, it will not, but by choosing the special orthogonal group instead it will.

It also depended on a choice of $\omega \in V_\QQ$, but we can show that this measure is independent of choice. If we let $\omega' = \lambda \omega$ for some scalar $\lambda$, we first note that multiplying a differential form by $\lambda$ introduces a factor of $\abs \lambda$, and so 
$$
\mu_{\omega', \RR} = \abs \lambda \mu_{\omega, \RR}.
$$

For the $p\dash$adic components, a similar story occurs but with the $p\dash$adic absolute value instead, which is zero for all but the $p=\lambda$ term in the product. For this remaining term, we have 
$$
\mu_{\omega', \QQ_{(p)}} = \abs{\lambda}_\lambda \mu_{\omega, \QQ_{(p)}} = \frac 1 \lambda \mu_{\omega, \QQ_{(p)}},
$$

which exactly cancels the term coming from $\mu_{\omega, \RR}$.

Since our mass formula didn't care about which Haar measure was chosen, we can use this one to write
$$
\mathrm{Mass}(q) = 2^{-k} \frac {\mu_\text{Tam}(SO_q(A) / SO_q(\QQ)} {\mu_\text{Tam}(SO_q(\hat \ZZ \cross \RR))},
$$

where we can now evaluate the numerator and denominator independently.

The latter can be evaluated explicitly, since there is a decomposition
$$
SO_q(\hat Z \cross \RR) = SO_q(\RR) \cross \prod_{p\in\PP}SO_q(\ZZ_{(p)})
$$

and by the definition of the Tamagawa measure, we can write

$$
\mu_\text{Tam}(SO_q(\hat Z \cross \RR)) = \mu_{\omega, \RR}(SO_q(\RR))\times \prod_{p\in\PP} \mu_{\omega, \QQ_{(p)}}(SO_q(\ZZ_{(p)}))
$$

for any compatible choice of form $\omega$.

For the first term, the orthogonal group is some "twisted product of spheres", so terms involving their volumes will appear. The other terms amount to solving counting problems at each prime $p$ at taking their product, so you might expect something with an Euler product expansion (such as $\zeta$) to appear here.

The numerator is just equal to 2! This holds not just in the unimodular case, but for any quadratic forms over $\ZZ$, as well as forms that aren't positive definite.

This 2 comes from the double cover 
$$
\mathrm{Spin}_q \surjects SO_q
$$

and the fact that 
$$
\mu_\text{Tam} \left( \frac {\mathrm{Spin}_q(A)} {\mathrm{Spin}_q(\QQ)} \right) = 1
$$

# Weil's Conjecture

Let $G$ be a simply connected semisimple algebraic group over $\QQ$. You can then take the adelic points of $G$, given by $G(A)$, and the conjecture states that
$$
\mu_\text{Tam} \left(  \frac{G(A)} {G(\QQ)} \right) = 1
$$

where $G(\QQ)$ is referred to as the Tamagawa number of $G$, $\tau_G$, and so this conjecture also states that $\tau_G = 1$.

> This was proved by Langlands, Loi, Kottwitz.

We will now try to determine an analog in the case of function fields, i.e. finite extensions of $\FF_p[t]$.
$\qed$

