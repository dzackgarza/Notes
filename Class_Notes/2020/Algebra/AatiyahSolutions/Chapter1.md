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
