# Lecture 6: Affine Domains and Places $\Sigma(K/k)$

The aim of this lecture is to explain the difference (including some technicalities) between $\Sigma(K/k)$ and affine Dedekind domains $R$ such that $K = \ff(R)$.


Recall that

- An **affine domain** over a field $k$ is a domain that is finitely generated as a $k\dash$algebra,[^rich_but_easy]


- An **affine Dedekind domain** is an affine domain that is also a Dedekind domain, so it is integrally closed and of Krull dimension 1,

- An **affine $k\dash$order** is a one-dimensional affine domain. [^order_is_noetherian]

[^order_is_noetherian]: These will be Noetherian by the Hilbert basis theorem, but may not be integrally closed.

[^rich_but_easy]: These are very rich but easier to understand: take a polynomial ring in finitely many variables and mod out by a prime ideal.

:::{.example title="?"}
If $f \in k[x, y]$ is irreducible, then $k[x, y]/\gens{f}$ is an affine $k\dash$order. 
It is an affine Dedekind domain if $f$ is *nonsingular* over $k$, i.e. for all $a, b\in \bar k$ such that $f(a, b) = 0$, the usual partial derivatives in the sense of Calculus $\dd{f}{x}$ and $\dd{f}{y}$ do not simultaneously vanish at $(a, b)$.
This is a sufficient condition, although it's not far from being necessary as well.
:::

:::{.remark}
Let $A/k$ be an affine Dedekind domain such that $\ff(A) = K$.
Then $\mspec(A) = \Sigma(K/A) \injects \Sigma(K/k)$.
This follows because $\Sigma(K/A)$ are the valuations that are not just regular on $k$, but also on $A$, (i.e. $A\dash$regular valuations) so the valuation ring contains the entirety of $A$.
It's thus natural to ask what its complement is, i.e. those valuations which are not regular on $A$ and give its elements negative valuation.
So define
\[  
\Sigma(A, \infty) \da \Sigma(K/k) \sm \Sigma(K/A)
,\]
the set of places at infinity with respect to $A$.

:::

:::{.example title="?"}
$\Sigma(k[t], \infty) = \ts{v_ \infty}$, which is the infinite place, so the terminology at least matches up!
:::

:::{.proposition title="Key"}
For any affine Dedekind domain $A$, $\Sigma(A, \infty)$ is finite and nonempty.
:::

:::{.remark}
This is striking!
This says that one affine Dedekind domain is giving almost all of this infinite set of places, but never all of it.
By Noether Normalization [^noether_note]

there exists a $t\in A$ that that $A$ is a finitely generated (and thus integral) $k[t]\dash$module, and $A$ is the integral closure of $k[t]$ in $K$.
Why must this be the integral closure?
Any ring finitely generated over a subring will be an integral extension, and $A$ is a Dedekind domain and thus integrally closed.
So let
\[  
r: \Sigma(K/k) \to \Sigma(k(t)/k)
\]
denote the restriction map; then by the regularity property we established in [@lemma:regularity], we have
\[  
\Sigma(K/A) = r^{-1}\qty{\Sigma(k(t)/k[t])}
.\]
Why?
This allows us to take a valuation upstairs in the NT1 square

[^noether_note]: This says that if you have an affine domain $R$ of a certain Krull dimension, then it is finitely generated as a module over a subring which is a polynomial ring in $\trdeg(R)$ variables.
This is like a stronger integral version of taking a finitely generated field extension and writing it as a finite degree field extension of a purely transcendental extension.

:::

