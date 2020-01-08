---
title: Analysis Review Notes
---



**Definition:**
A set $S$ is **nowhere dense** iff the closure of $S$ has empty interior.

**Definition:**
A set is **meager** if it is a *countable* union of nowhere dense sets.

> Note that a *finite* union of nowhere dense is still nowhere dense.

**Lemma:**
The Cantor set is closed with empty interior.

> Proof: Its complement is a union of open intervals, and can't contain an interval since intervals have positive measure and $m(C_n)$ tends to zero.

> **Corollary:**
> The Cantor set is nowhere dense.

**Definition:**
An $F_\sigma$ set is a union of closed sets, and a $G_\delta$ set is an intersection of opens.

> Mnemonic: "F" stands for *ferme*, which is "closed" in French, and $\sigma$ corresponds to a "sum", i.e. a union.

**Lemma:**
Singleton sets in $\RR$ are closed, and thus $\QQ$ is an $F_\sigma$ set.

**Lemma:**
$\RR$ is a Baire space, i.e. countable intersections of open, dense sets are still dense.

**Lemma:**
There is a function discontinuous precisely on $\QQ$.

> *Proof:* $f(x) = \frac 1 n$ if $x = r_n \in \QQ$ is an enumeration of the rationals, and zero otherwise.
The limit at every point is 0.

**Lemma:**
There *do not* exist functions that are discontinuous precisely on $\RR\setminus \QQ$.

> *Proof:* $D_f$ is always an $F_\sigma$ set, which follows by considering the oscillation $\omega_f$. 
> $\omega_f(x) = 0 \iff f$ is continuous at $x$, and $D_f = \union_n A_{\frac 1 n}$ where $A_\varepsilon = \theset{\omega_f \geq \varepsilon}$ is closed.

**Lemma:**
Any nonempty set which is bounded from above (resp. below) has a well-defined supremum (resp. infimum).

**Lemma:**
A uniform limit of continuous functions is continuous.

**Theorem (Important Example):**
The space $X = C([0, 1])$, continuous functions $f: [0, 1] \to \RR$, equipped with the norm $\norm{f} = \sup_{x\in [0, 1]} \abs{f(x)}$, is a **complete** metric space.

> *Proof:*
>
> *Step 0:* Let $\theset{f_k}$ be Cauchy in $X$. 
> 
> *Step 1*: Define a candidate limit using pointwise convergence.
> Fix an $x$; since 
$$\abs{f_k(x) - f_j(x)}  \leq \norm{f_k - f_k} \to 0
,$$ $\theset{f_k(x)}$ is Cauchy in $\RR$.
> So define $f(x) \definedas \lim_k f_k(x)$.
> 
> *Step 2:*