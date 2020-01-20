# Chapter 1

Proposition 1.1:
Fix an ideal $\mfa \normal R$.
There is a correspondence

\begin{align*}
\correspond{\mfb \suchthat \mfa \subseteq \mfb \normal R} \iff
\correspond{\tilde \mvb \normal R/\mfa}
.\end{align*}

Proof:
?

Proposition 1.2:
TFAE

- $R$ is a field
- $R$ is simple, i.e. the only ideals of $R$ are $0, R$.
- Every homomorphism $\phi: R\to S$ for $S$ an arbitrary ring is injective.

Proof:
?

Proposition:
Maximal ideals are prime.

Proof:
?

Proposition:
If $\mfp \normal R$ is prime, $R/\mfp$ is a domain.
If $\mfm \normal R$ is maximal, $R/\mfr$ is a field.

Proof:
?

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
Show that $\mfa, \mfb \normal A$ are coprime iff there exist $a\in \mfa, b\in \mb$ such that $a+b = 1$.

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
Show that if $\mfb$ is prime then $A\cdot f\inv(\mfb)$ is prime, but if $\mfa$ is prime then $B\cdotf(\mfa)$ need not be prime.

Exercise:
Let $f: \ZZ \to \ZZ[i]$ be the inclusion, and show that

- $\generators(f(\generators{2})) = \generators{(1+i)^2}$, which is not prime in $\ZZ[i]$
- (Nontrivial) If $p = 1\mod 4$, then $\generators{f(\generators{p})}$ is the product of two distinct prime ideals
- If $p=3\mod 4$ then $\generators{f(\generators{p})}$ is prime.



