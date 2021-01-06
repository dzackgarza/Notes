# Lecture 2: Field Theory Preliminaries

## Base Extension

Given some object $A/k$ and $k\injects \ell$ is a field extension, we would like some extended object $A/\ell$.

:::{.example}
An *affine variety* $V/k$ is given by finitely many polynomials in $p_i \in k[t_1, \cdots, t_n]$, and base extension comes from the map $k[t_1, \cdots, t_n] \injects \ell[t_1, \cdots, t_n]$.
More algebraically, we have the affine coordinate ring over $k$ given by $k[V] = k[t_1,\cdots, t_n]/\gens{p_i}$, the ring of polynomial functions on the zero locus corresponding to this variety.
We can similarly replace $k$ be $\ell$ in this definition.
Here we can observe that $\ell[V] \cong k[V] \tensor_k \ell$.
:::

In general we have a map
\[  
\wait \tensor_k \ell & \\
\ts{k\dash\text{vector spaces}} &\to \ts{\ell\dash\text{vector spaces}} \\
\ts{k\dash\text{algebras}} &\to\ts{\ell\dash\text{algebras}}
.\]
This will be an exact functor on the category $k\dash\text{Vect}$, i.e. $\ell$ is a flat module.
Here everything is free, and free $\implies$ flat, so things work out nicely.

What about for function fields?
Since $k$ is a $k\dash$algebra, we can consider $k\tensor_k \ell$, however this need not be a field.
Note that tensor products of fields come up very often, but don't seem to be explicitly covered in classes!
We will broach this subject here.

:::{.exercise}
If $\ell/k$ is algebraic and $\ell\tensor_k \ell$ is a domain, the $\ell = k$.

:::

:::{.remark}
In other words, this is rarely a domain.
A hint: start with the monogenic case, and also reduce to the case where the extension is not just algebraic but finite.
:::

:::{.remark}
Tensor products of field extensions are still interesting: if $\ell/k$ is finite, it is galois $\iff$ $\ell \tensor_k \ell \cong \ell^{[\ell: k]}$.
So its dimension as an $\ell\dash$algebra is equal to the degree of $\ell/k$, so it splits as a product of copies of $\ell$.

We'd like the tensor product of a field to be a field, or at least a domain where we can take the fraction field and get a field.
This hints that we should not be tensoring algebraic extensions, but rather transcendental ones.
:::

:::{.exercise}
For $\ell/k$ a field extension,

a. Show $k(t) \tensor_k \ell$ is a domain with fraction field $\ell(t)$.

b. Show it is a field $\iff$ $\ell/k$ is algebraic.
:::

:::{.proposition title="FT 12.7, 12.8"}
Let $k_1, k_2 / k$ are field extensions, and suppose $k_1 \tensor_k k_2$ is a domain.
Then this is a field $\iff$ at least one of $k_1/k$ or $k_2/k$ is algebraic.[^reminder_def_field_exts]

[^reminder_def_field_exts]: 
Reminder: for $\ell/k$ and $\alpha\in \ell$ algebraic over $k$, then $k(\alpha) = k[\alpha]$.

:::

So we'll concentrate on when $K \tensor_k \ell$ is a domain.

## When Extensions Preserve Being a Domain

:::{.question}
What's the condition on a function field $K/k$ that guarantees this, i.e. when extending scalars from $k$ to $\ell$ still yields a domain?
:::

:::{.definition title="Base Change"}
If this remains a domain, we'll take the fraction field and call it the **base change**.
:::

:::{.exercise}
If $K/k$ is finitely generated (i.e. a function field) and $K\tensor_k \ell$ is a domain, then $ff(K\tensor_k \ell)/\ell$ is finitely generated.

:::

:::{.remark}
The point here is that if taking a function field and extending scalars still results in a domain, we'll call the result a function field as well.
Most of all, we want to base change to the algebraic closure.
We'll have issues if the constant field is not just $k$ itself:
:::

:::{.lemma}
If $K\tensor_k \bar k$ is a domain, then the constant field $\kappa(K) = k$.

:::

:::{.proof}
Use the fact that $\wait \tensor_k V$ is exact.
We then get an injection
\begin{tikzcd}
\kappa(K) \tensor_k \kappa(K) \ar[rr, hookrightarrow]\ar[rd, hookrightarrow] & &
K \tensor_k \bar k \\
& \kappa(K) \tensor_k \bar k\ar[ru, hookrightarrow] & 
\end{tikzcd} 
Here we use the injections $\kappa(K) \injects \bar k$ and $\kappa(K) \injects K$.

We now have an injection of $k\dash$algebras, and subrings of domains are domains. 
So apply the first exercise: the only way this can happen is if $\kappa(K) = k$.
:::


:::{.exercise title="the simplest possible case"}
Describe $\CC(t) \tensor_\RR \CC$, tensored as $\RR\dash$algebras.
:::

:::{.remark}
Won't be a domain by the lemma, and will instead be some $\CC(t)\dash$algebra of dimension 2.
:::

## Good Base Change For Function Fields

In order to have a good base change for our function fields, we want to constant extension to be trivial, i.e. $\kappa(K) = k$. 
This requires that the ground field be algebraically closed.

In this case, you might expect that extending scalars to the algebraic closure would yield a field again.
This is true in characteristic zero, but false in positive characteristic.

:::{.question title="a more precise one"}
If $\kappa(K) = k$, must $K\tensor_K \bar k$ be a field?
:::

If that's true and we're in positive characteristic, recalling the for an algebraic extension this being a field is equivalent to it being a domain. 
But if that's a domain, the tensor product of every algebraic extension must be a domain, which is why this is an important case.

If so, then $K\tensor_k k^{1\over p}$ is a field, where $k^{1\over p} \da k\qty{\ts{x^{1\over p} \st x\in k }}$ is obtained by adjoining all $p$th roots of all elements.
This is a purely inseparable extension.
The latter condition (this tensor product being a field) is one of several equivalent conditions for a field to be separable.[^inverting_frob]

[^inverting_frob]: 
Note that the frobenius maps $k^{1\over p} \surjects k$, so this is sort of like inverting this map.

:::{.remark}
Recall that $K/k$ is transcendental, and there is an extended notion of separability for non-algebraic extensions.
Another equivalent condition is that every finitely generated subextension is separably generated, i.e. it admits a transcendence basis $\ts{x_i}$ such that $k\injects k(\ts{x_i}) \injects F$ where $F/k(\ts{x_i})$ is algebraic and separable.
Such a transcendence basis is called a *separating transcendence basis*.
Since we're only looking at finitely generated extensions, we wont' have to worry much about the difference between separable and separably generated.
:::


:::{.question}
What's the point? 
There's an extra technical condition to ensure the base change is a field: the function field being separable over the ground field.
Is this necessarily the case if $\kappa(K) = k$? 
:::

:::{.answer}
No, for fairly technical reasons.
\lmargnote{\danger}
:::


:::{.example ref="technical_example"}
Set $k = \FF_p(a, b)$ a rational function field in two variables as the ground field.
Set 
\[  
A \da k[x, y]/ \gens{ax^p + b-y^b}
.\]
Then $A$ is a domain, so set $k = ff(A)$.

:::{.claim}
$\kappa(K) = k$, so $k$ is algebraically closed in this extension, but $K/k$ is *not* separable.
:::

How to show: extending scalars to $k^{1\over p}$ does not yield a domain.

Let $\alpha, \beta \in \bar k$ such that $\alpha^p = a, \beta^b = b$, so
\[  
ax^p + b-y^b = (\alpha x + \beta - y)^p
,\]
which implies $K \tensor_k  k^{1\over p}$ is not a domain: $k[x, y]$ is a UFD, so the quotient of a polynomial is a domain iff the polynomial is irreducible.
However, the $p$th power map is a homomorphism, and this exhibits the image of the defining polynomial as something non-irreducible.
:::

:::{.remark}
Note that $f(x, y) = ax^p + b - y^p$ is the curve in this situation.
The one variable function field is defined by quotienting out a function in two variables and taking the function field.
Every 1-variable function field can be obtained in this way.
Therefore this polynomial is irreducible, but becomes reducible over the algebraic closure.
So we'd like the polynomial to be irreducible over both.
:::

:::{.remark}
This is pretty technical, but we won't have to worry if $k = k^{1\over p}$. 
Equivalently, frobenius is surjective on $k$, i.e. $k$ is a perfect field.

If $k$ is not perfect, it can happen (famous paper of Tate) making an inseparable base extension can decrease the genus of the curve.
:::

Recall that the perfect fields are given by:

- Anything characteristic zero, every reducible polynomial is separable.
- Any algebraically closed field 
- Finite fields (frobenius is always injective)

Imperfect fields include:

- Function fields in characteristic $p$
- Complete discretely valued fields $k((t))$ in characteristic $p$ [^recall_ntii_definitions]

[^recall_ntii_definitions]: 
This is a good time to review valuations and uniformizing elements from NTII.

:::{.theorem title="FT 12.20: Regular Field Extensions"}
For field extensions $K/k$, TFAE

1. $\kappa(K) = k$ and $K/k$ is separable

2. $K\tensor_k \bar k$ is a domain, or equivalently a field

3. For all field extensions $\ell/k$, $K\tensor_k \ell$ is a domain.

:::

:::{.remark}
Note that this allows making not just an algebraic base change, but a totally arbitrary one.
:::

:::{.definition title="?"}
A field extension satisfying these conditions is called **regular**.
:::


:::{.remark}
Regular corresponds to "nonsingular" in this neck of the woods.
The implication $2\implies 3$ is the interesting one.
To prove it, reduces to showing that if $k= \bar k$ and $R_i$ are domains that are finitely generated as $k\dash$algebras, then $R_1 \tensor_k R_2$ is also a domain.
This doesn't always happen, e.g. $\QQ(\sqrt{2}) \tensor_\QQ \QQ(\sqrt{2})$ is not a domain.
Really need algebraically closed.

This is a result in affine algebraic geometry.
An algebra that is a domain and finitely generated over a field is an *affine algebraic variety*, more precisely it is integral.
The tensor product on the coordinate ring side corresponds to taking the product of varieties.
Thus the fact here is that a product of integral varieties remains integral, as long as you're over an algebraically closed field.
Proof uses Hilbert's Nullstellensatz.
:::


:::{.exercise}
\envlist
a. Show that $k(t) / k$ is regular. [^means_to_be_regular_1]

b. Show every purely transcendental extension is regular.

c. Show that for a field $k$, every extension is regular $\iff$ $k = \bar k$.

d. Show $K/k$ is regular $\iff$ every finitely generated subextension is regular.


[^means_to_be_regular_1]: 
I.e. $k(t)\tensor_k \bar k$ is a domain.

:::

## Example of a Non-Regular Family of Function Fields

Choose an elliptic curve $E/\QQ(t)$ with $j\dash$invariant $t$.
For $N\in \ZZ^{+}$, define $\tilde K_N \da \QQ(t)(E[N])$ the $N\dash$torsion field of $E$.
Then $\tilde K_N/\QQ(t)$ is a finite galois extension with galois group isomorphic to the image of the modular galois representation [^see_proof_flt]

\[  
\rho_N: g(\QQ(t)) \to \GL(2, \ZZ/N\ZZ) \mod N
.\]

[^see_proof_flt]: 
See Cornell-Silverman-Stevens covering the proof of FLT, modular curves from the function field perspective.

:::{.proposition title="Some Facts"}
$\rho_N$ is surjective, and 
\[  
\Aut(\tilde K_N / \QQ(t))  \cong \GL(2, \ZZ/N\ZZ)
.\]

$\det \rho_N = \chi_N \mod N$, the cyclotomic character, and therefore $\chi_N$ restricted to $g(\tilde K_N)$ is trivial, so $\tilde K_N \supset \QQ(\zeta_N)$.
For $N\geq 3$, $\QQ(\zeta_N) \supsetneq \QQ$, so $\tilde K_N / \QQ(t)$ is a non-regular function field.
:::

:::{.remark}
Actually $\tilde K_N$ depends on the choice of $E$: difference choices of nonisomorphic curves with the same $j\dash$invariant differ by a quadratic twist and the $\rho_N$ differ by a quadratic character on $g(\QQ(t))$.
Importantly, this changes the kernel, and thus the field.
:::

To fix this, we look at the *reduced galois representation*, the following composition:
\[  
\bar \rho_N: g(\QQ(t)) \to \GL(2, \ZZ/N\ZZ) \surjects \GL(2, \ZZ/N\ZZ)/\ts{\pm I}
.\]

We obtain a field theory diagram
\begin{center}
\begin{tikzcd}
\ar[dd, bend right, "{\GL(2, \ZZ/N\ZZ)}"'] \bar K_N \ar[d, bend left, "\ts{\pm I}"] &\\
K_N \ar[d, bend left, "{\GL(2, \ZZ/N\ZZ)/\ts{\pm I}}"] &\\
\QQ(t)&
\end{tikzcd}
\end{center}

So if you just take the field fixed by $\pm I$, you get $K_N$.
In this case, the reduced galois representation depends only on the $j\dash$invariant, and not on the model chosen.
So the function field $K_N/\QQ(t)$ is the "canonical" choice.

:::{.question}
Does this make $K_N/\QQ(t)$ regular?
:::

:::{.answer}
No, $\rho_N(g(K_N)) = \ts{\pm I}$ and $\det(\pm I) = 1$, so we still have $K_N \supset \QQ(\zeta_N)$.
:::


In this course, we'll identify algebraic curves over $k$ and one-variable function fields $K/k$.
The function field $K_N$ corresponds to an algebraic curve $X(N)/\QQ$ that is "nicer" over $\QQ(\zeta_N)$.
In fact, see Rohrlich: $\kappa(K_N) = \QQ(\zeta_N)$.
Our curves will have points (equal to valuations) which will have degrees. 
If the constant subfield is not just $k$, this prevents degree 1 points on the curve.
By Galois theory, for every subgroup $H \subseteq \GL(2, \ZZ/N\ZZ) / \ts{\pm I}$, we'll get a function field $\QQ(H) \da H_N^H$.gg
In this case, $\QQ(H)/\QQ$ is regular $\iff$ $\det(H) = (\ZZ/N\ZZ)\units$.

Later we'll understand the residues at points as the residue fields of some DVRs, then the residue field will always contain the field of constants.





