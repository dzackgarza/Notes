# Spring 2018

## 1

### a
We have

\begin{align*}
\abs{G} = \abs{Z(G)} + \sum [G: Z(x_i)]
,\end{align*}

and since $e \in Z(G)$, $\abs{Z(G)} \geq 1$.
Since $p\divides \abs{G}$, we must have $p\divides \abs{Z(G)} \neq 0$ and so $\abs{Z(G)} \geq p$.

### b

> **Lemma:** 
> $G/Z(G)$ cyclic $\iff G$ is abelian.
>
> *Proof:*
\begin{align*}
G/Z(G) = \generators{x + Z} 
&\iff g\in G \implies g + Z = x^m + Z \\
&\iff g(x^m)\inv = z \iff g = x^m z \\
&\implies gh = x^mz_1 x^n z_2 = x^n z_2 x^m z_1 = hg
.\end{align*}

Since $G$ is a $p\dash$group, $G$ has a nontrivial center, so consider $G/Z(G)$. 

This could have three possible orders:

- $p^2$: Not possible, since $\abs {Z(G)} > 1$
- $p$: Then $G/Z(G)$ is cyclic, and (theorem) thus $G$ is abelian
- $1$: Then $G = Z(G)$ and $G$ is abelian.

### c

By Sylow, we have $n_5 = 1$ and $n_7=1$, so both $P_5, P_7 \normal G$, and by recognition of direct products we have $G \cong P_5 \cross P_7$.

Since the sizes of both of these groups are $p^2$ for a prime, by (b) they are abelian, and the direct product of abelian groups is again abelian.

### d

By the classification of finite abelian groups and the Chinese Remainder theorem,

- $\ZZ/(5)^2 \cross \ZZ/(7)^2$

- $\ZZ/(5^2) \cross \ZZ/(7)^2$

- $\ZZ/(5)^2 \cross \ZZ/(7^2)$

- $\ZZ/(5^2) \cross \ZZ/(7^2)$

$\qed$

## 2

Note that $g(x) = x^2 - 4x + 2$ has roots $\beta = 2 \pm \sqrt{2}$, and so $f$ has roots 
\begin{align*}
\alpha_1 &= \sqrt{2 + \sqrt 2} \\
\alpha_2 &= \sqrt{2 - \sqrt 2} \\
\alpha_3 &= -\alpha_1 \\
\alpha_4 &= -\alpha_2
.\end{align*}

and splitting field $K = \QQ(\theset{\alpha_i})$.

Since $f$ is irreducible by Eisenstein with $p=2$, $K$ is the splitting field of a separable irreducible polynomial and thus Galois over $\QQ$.
Moreover, the Galois group is a transitive subgroup of $S^4$, so the possibilities are:

- $S_4$
- $A_4$
- $D_4$
- $\ZZ/(2) \cross \ZZ/(2)$
- $\ZZ/(4)$

We can note that $g$ splits over $L \definedas \QQ(\sqrt 2)$, an extension of degree 2.

We can now note that $\min(\alpha, L)$ is given by $p(x) = x^2 - (2 + \sqrt 2)$, and so $[K: L] = 2$.

We then have
\begin{align*}
[K: \QQ] = [K: L] [L : \QQ] = (2)(2) = 4
.\end{align*}

This $\abs{\Gal(K/\QQ)} = 4$, which leaves only two possibilities:

- $\ZZ/(2) \cross \ZZ/(2)$
- $\ZZ/(4)$

We can next check orders of elements.
Take
\begin{align*}
\sigma &\in \Gal(K/\QQ) \\
\alpha_1 &\mapsto \alpha_2
.\end{align*}


A computation shows that $\alpha_1^2 \alpha_2^2 = 2$, so $\alpha_1 \alpha_2 = \sqrt 2$, and thus
\begin{align*}
\sigma^2(\alpha_1) &= \sigma(\alpha_2) \\
&= \sigma\left(\frac{\sqrt 2}{\alpha_1}\right) \\
&=  \frac{\sqrt 2}{\sigma(\alpha_1)} \\
&= \sqrt 2 ~\alpha_2\inv \\
.\end{align*}

