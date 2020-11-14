# Lecture 13

Recall that we previously looked at the regular function fields: we took a function field in one variable and considered the class of function fields for which we could take any extension of the constant field that we wanted.
As long as the ground field is perfect, being regular is equivalent to the constant subfield being $k$ itself.
However, we haven't done anything with them yet!

If you take an algebraic closure of the finite ground field $\FF_q$, there is a unique subextension of degree $r$ for every $r$, so we call that $\FF_q^r$.
The extension $\FF_q^r/\FF_q$ is cyclic galois, with a geometric Frobenius $x\to x^q$.
Note that $\FF_q^r$ is the fixed field of $F^r$, the $r$th power of the Frobenius map.
We set $K_r \da K \FF_q^r$, which is a regular function field over $\FF_q^r$. 
Note that we could view this as a function field just over $\FF_q$, but it would not be regular.
Then $K_r/K$ is a degree $r$ arithmetic extension of function fields.

Question:
What happens to places when making this scalar extension?
I.e., how to places in $K$ decompose in $K_r$?

:::{.remark}
This is related to an Algebraic Number Theory I problem: for $v\in \Sigma(\kfq)$ above an affine Dedekind domain $R$ such that $v\in \Sigma(K/R)$, let $S$ be the integral closure of $K$ in $K_r$.
Then we want to factor $p_v S$?
\todo[inline]{Not quite sure.}
:::

:::{.lemma title="?"}
Suppose $d\da \deg(v)$.
Then $K_r/K$ is galois, so we have $efg=r$.
In fact, $c=1$, so $f = {r\over \gcd(d, r)}$ and $g = \gcd(d, r)$ and each place $w\in \Sigma(K_r / \FF_q^r)$ has degree ${d\over \gcd(d, r)}$.
:::

:::{.example title="T"}

:::

