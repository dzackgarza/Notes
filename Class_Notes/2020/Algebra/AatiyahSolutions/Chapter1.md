# Chapter 1

## Within Chapter

**Proposition 1.1:**
Fix an ideal $\mfa \normal R$.
There is a correspondence

\begin{align*}
\theset{\mfb \suchthat \mfa \subseteq \mfb \normal R} \iff
\theset{\tilde \mfb \normal R/\mfa}
.\end{align*}

*Proof:*
Adapted from proof for groups here: [https://math.stackexchange.com/a/955413/147053](https://math.stackexchange.com/a/955413/147053).

Let $f: R \to T$ be any ring homomorphism and let $S(R), S(T)$ denote the lattices of subrings of $R, T$ respectively.
Then $f$ induces two maps:

\begin{align*}
F: S(R) &\to S(T) \\
H  &\mapsto f(H) \\
\\
\\
F\inv: S(T) &\to S(R) \\
K &\mapsto f\inv(K)
.\end{align*}

It follows that

- $H \leq R \implies F(H) \leq \im f$, by the subring test 
  - Subring test: contains 1, closed under multiplication/subtraction.
  - Properties of ring homomorphisms: $f(sa + b) = sf(a) + f(b)$ and $f(1) = 1$.
  - Thus if $f$ is not surjective, $F$ is not surjective either.
- $K \leq T \implies \ker f\subseteq F\inv (K)$.
  - Follows because subrings contain 0, and $H\in \ker F\implies f(H) = 0_T \in K$.
  - Thus if there is any subring $H$ that *doesn't* contain $\ker f$, $F\inv$ is not surjective.

The claim is that if you restrict to 

- $S'(R) \definedas\theset{H \leq R \suchthat \ker f \subseteq H}$ and
- $S'(T) \definedas\theset{K\leq T \suchthat K \subseteq \im f}$, 

this is a bijection.

This follows from the fact that

- $(F\circ F\inv)(K) = K \intersect \im f \leq T$
  - No clear motivation for why it's *this* specific thing, but the inclusions are easy to check.
- $(F\inv \circ F)(H) = \generators{H, \ker f} \leq S$.
  - Inclusions easy to check, need to take subring generated since $F(H)$ is a pushforward/direct image, which don't preserve sub-structures in general.

So we take the projection $f = \pi: R \to R/\mfa$, then 

- $K \subseteq \im \pi \implies K \intersect \im \pi = K \implies (F\circ F\inv)(K) = K$,
- $\ker \pi \subseteq H \implies \generators{H, \ker \pi} = H \implies (F\inv \circ F)(H) = H$,

so both directions are surjections.
Restricting to just those subrings that are ideals preserves this bijection.
Moreover, $\ker \pi = \mfa$ so $S'(R)$ is the set of ideals containing $\mfa$, and $\im \pi = R/\mfa$, so $S'(T)$ is the set of ideals of the quotient.

$\qed$

**Proposition 1.2:**
TFAE

1. $R$ is a field
2. $R$ is simple, i.e. the only ideals of $R$ are $0, R$.
3. Every nonzero homomorphism $\phi: R\to S$ for $S$ an arbitrary ring is injective.

*Proof:*

**Lemma:** 
$I \normal R$ and $1\in I \implies I = R$. 
This is because $RI \subseteq I$, and $r\in R \implies r\cdot 1 \in I \implies r\in I \implies R \subseteq I$.

$1 \implies 2$:

Let $0\neq I \normal R$ for $R$ a field, then pick any $x\in I$, since $x\inv \in R$, we have $x\inv x = 1 \in I \implies I = R$.

$\not 1 \implies \not 2$:

If $R$ is not a field, pick a non-unit element $r$; then $(r) \normal R$ is a proper ideal.

$2\implies 3$:

$\ker \phi \normal R$ is an ideal, so $\ker \phi = 0$.

$3 \implies 2$:

Take $\mfa \normalneq R$ a proper ideal and let $S = R/\mfa$ with $\phi: R\to S$ the projection.
$\phi$ is a bijection, since it's always a surjection and assumed injective.
So $R \cong S = R/\mfa$, forcing $\mfa = (0)$.

$\qed$

**Proposition:**
$\mfp \normal R$ is prime iff $R/\mfp$ is a domain.

*Proof:*

Ideals of $R/\mfm$ correspond to ideals $\mfa \normal R$ such that $\mfm \subseteq \mfa$.
By maximality, the only such ideal is $R$ itself, corresponding to the ideal $R/\mfm \normal R/\mfm$.
Moreover, $(0)$ is an ideal of any ring.

Proposition
If $\mfm \normal R$ is maximal iff $R/\mfm$ is a field.

**Proposition:**
Maximal ideals are prime.

*Proof:*
Let $\mfm \normal A$ be maximal, then $R/\mfm$ is simple and thus a field, so $\mfm$ is prime.

Theorem 1.3:
Every ring $R$ has a nontrivial maximal ideal $I \neq 0$, and every ideal is contained in a maximal ideal.

Proof:
?

Corollary 1.5:
Every non-unit of $R$ is contained in a maximal ideal.

Proof:
?

Proposition 1.6:
If $A\setminus \mfm \subset R\units$, then $A$ is a local ring with $\mfm$ its maximal ideal.
If $\mfm$ is maximal and $1+m \in R\units$ for all $m\in \mfm$, then $A$ is a local ring.

Proof:
?

Proposition:
If $f\in k[x_1, \cdots x_n]$ is irreducible over $k$, then $(f)$ is prime.


Proposition:
$\ZZ$ is a PID, and $(p)$ is prime iff $p$ is zero or a prime number, and every such ideal is maximal.

Proposition:
$k[\theset{x_i}]$ has maximal ideals that are not principal iff $n>1$.

Exercise:
Characterize the maximal and prime ideals of $k[x_1, \cdots, x_n]$? 
Is this a field, domain, PID, UFD, a local ring, ...?

Proposition:
Every nonzero prime ideal in a PID is maximal.

Proof:
?

Definition:
The set $\nil(A)$ of all nilpotent elements in a ring $A$ is the nilradical of $A$.
The set $J(A) = \intersect_{\mm \in \spec_{\text{max}}(A)} \mm$ is the Jacobson radical., 

Proposition 1.7:
$\nil(A) \normal R$ is an ideal and $A/\mathfrak{R}$ has no nonzero nilpotent elements.

Proof:
?

Proposition 1.8:
$\nil(A) = \intersect{\pr \in \spec(A)} \pr$ is the intersection of all prime ideals of $A$.

Proof:
?

Proposition 1.9:
$x\in J(A)$ iff $1-xa \in A\units$ for all $a\in A$.

Proposition:
If $(m), (n) \normal \ZZ$ then $(m)\intersect (n) = (\gcd(m, n))$ and $(m)(n) = (mn)$.

Exercise:
If $\mfa \normal k[x_1, \cdots, x_m]$, characterize $\mfa^n$.

Exercise:
Show that $\mfa, \mfb \normal A$ are coprime iff there exist $a\in \mfa, b\in \mfb$ such that $a+b = 1$.

Proposition 1.10:
Let $\theset{mfa_i} \normal A$ be a family of ideals and define $\phi: A \to \prod A/\mfa_i$. 

1. If $\theset{\mfa_i}$ are pairwise coprime, then $\prod \mfa_i = \intersect \mfa_i$
2. $\phi$ is surjective iff $\theset{\mfa_i}$ are pairwise coprime.
3. $\phi$ is injective iff $\intersect \mfa_i = (0)$.

Exercise:
Show that the union of ideals is not necessarily an ideal.

Proposition 1.11:

a. Let $\theset{\pr_i}$ be a set of prime ideals and let $\mfa \in \union \pr$.
  Then $\mfa \subseteq \pr_i$ for some $i$.

b. Let $\theset{\mfa_i}$ be ideals and $\pr \supseteq \intersect \mfa_i$ be prime.
  $\pr \supseteq \mfa_i$ for some $i$, and if $\pr = \intersect \mfa_i$, then $\pr = \mfa_i$ for some $i$.

Exercise:
Let $A = \ZZ$, and characterize the ideal quotient $(m : n)$.

Exercise 1.12:

1. $\mfa \subseteq (\mfa: \mfb)$
2. $(\mfa: \mfb)\mfb \subseteq \mfa$
3. $((\mfa:\mfb): \mfc) = (\mfa: \mfb\mfc) = ((\mfa:\mfc): \mfb)$
4. $(\intersect \mfa_i: \mfb) = \intersect (\mfa_i: \mfb)$
5. $(\mfa: \sum \mfb_i) = \intersect(\mfa: \mfb_i)$

Proposition:
For $\mfa \normal A$, $\sqrt{\mfa}$ is an ideal.

Exercise 1.13:

1. $\sqrt\mfa \supseteq \mfa$
2. $\sqrt{\sqrt \mfa} = \sqrt \mfa$
3. $\sqrt{\mfa\mfb} = \sqrt{\mfa\intersect\mfb} = \sqrt\mfa \intersect \sqrt\mfb$
4. $\sqrt\mfa = (1) \iff \mfa = (1)$
5. $\sqrt{\mfa + \mfb} = \sqrt{\sqrt\mfa + \sqrt \mfb}$.
6. For $\mfp$ prime, $\sqrt{\mfp^n} = \mfp$ for all $n\geq 1$.

Proposition 1.14:
$\sqrt{\mfa} = \intersect_{\mfa \subseteq \pr \in \spec(A)} \pr$

Proposition 1.15:
Let $D$ be the set of zero-divisors in $A$. 
Then $D = \union_{x\neq 0}\sqrt{\ann(x)}$.

Exercise:
Let $(m) \normal \ZZ$ where $m = \prod p_i^{k_i}$, and show that $\sqrt{(m)} = (p_1 p_2 \cdots) = \intersect (p_i)$.

Proposition 1.16:
If $\sqrt\mfa, \sqrt \mfb$ are coprime then $\mfa, \mfb$ are coprime.

Exercise:
Show that if $f: A\to B$ and $\mfa \normal A$, it is not necessarily the case that $f(\mfa) \normal B$.

Exercise:
Show that if $\mfb$ is prime then $A\cdot f\inv(\mfb)$ is prime, but if $\mfa$ is prime then $B\cdot f(\mfa)$ need not be prime.

Exercise:
Write $\mfa^e \definedas \generators{f(\mfa)}$ and $\mfb^c = \generators{f\inv(\mfb)}$. 
Let $f: \ZZ \to \ZZ[i]$ be the inclusion, and show that

- $(2)^e = \generators{(1+i)^2}$, which is not prime in $\ZZ[i]$
- (Nontrivial) If $p = 1\mod 4$, then $\pr^e$ is the product of two distinct prime ideals
- If $p=3\mod 4$ then $\pr^e$ is prime.


Proposition:
Let $C = \theset{\mfb^c \suchthat \mfb \normal B}$ and $E = \theset{\mfa^e \suchthat \mfa \normal A}$.
Then

1. $\mfa \subseteq \mfa^{ec}$ and $\mfb \supset \mfb^{ce}$,
2. $\mfb^c = \mfb^{cec}$ and $\mfa^e = \mfa^{ece}$
3. $C = \theset{\mfa\normal A \suchthat \mfa^{ec} = \mfa}$ and $E = \theset{\mfb \normal B \suchthat \mfb^{ce} = \mfb}$.
4. The map $\phi: C\to E$ given by $\phi(\mfa) = \mfa^{ec}$ is a bijection with inverse $\mfb \mapsto \mfb^c$.
5. If $\mfa \in C$ then $\mfa = \mfb^c = \mfb^{cec} = \mfa^{ec}$, and if $\mfa = \mfa^{ec}$ then $\mfa$ is the contraction of $\mfa^e$.


Exercise 1.18:

\begin{align*}
\begin{array}{ll}{\left(\mathfrak{a}_{1}+\mathfrak{a}_{2}\right)^{\mathfrak{e}}=\mathfrak{a}_{1}^{\mathfrak{e}}+\mathfrak{a}_{2}^{\mathfrak{e}},} & {\left(\mathfrak{b}_{1}+\mathfrak{b}_{2}\right)^{c} \geq \mathfrak{b}_{1}^{\mathfrak{c}}+\mathfrak{b}_{2}^{\mathfrak{c}}} \\ {\left(\mathfrak{a}_{1} \cap \mathfrak{a}_{2}\right)^{e} \subseteq \mathfrak{a}_{1}^{\mathfrak{e}} \cap \mathfrak{a}_{2}^{e},} & {\left(\mathfrak{b}_{1} \cap \mathfrak{b}_{2}\right)^{\mathfrak{c}}=\mathfrak{b}_{1}^{\mathfrak{c}} \cap \mathfrak{b}_{\mathfrak{z}}^{\mathfrak{c}}} \\ {\left(\mathfrak{a}_{1} \mathfrak{a}_{2}\right)^{\mathfrak{e}}=\mathfrak{a}_{1}^{\mathfrak{e}} \mathfrak{a}_{2}^{\mathfrak{e}},} & {\left(\mathfrak{b}_{1} \mathfrak{b}_{2}\right)^{\mathfrak{c}} \supseteq \mathfrak{b}_{1}^{\mathfrak{c}} \mathfrak{b}_{2}^{\mathfrak{c}}} \\ {\left(\mathfrak{a}_{1}: \mathfrak{a}_{2}\right)^{\mathfrak{e}} \subseteq\left(\mathfrak{a}_{1}^{\mathfrak{e}}: \mathfrak{a}_{2}^{\mathfrak{e}}\right),} & {\left(\mathfrak{b}_{1}: \mathfrak{b}_{2}\right)^{\mathfrak{c}} \subseteq\left(\mathfrak{b}_{1}^{\mathfrak{c}}: \mathfrak{b}_{2}^{\mathfrak{c}}\right)} \\ {r(\mathfrak{a})^{e} \subseteq r\left(\mathfrak{a}^{e}\right),} & {r(\mathfrak{b})^{c}=r\left(\mathfrak{b}^{c}\right)}\end{array}
.\end{align*}


## End of Chapter Exercises

