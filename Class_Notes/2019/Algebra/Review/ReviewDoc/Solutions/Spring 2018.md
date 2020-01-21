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

> Not the nicest proof! Would be better to replace the ad-hoc computations at the end..

### a

Note that $g(x) = x^2 - 4x + 2$ has roots $\beta = 2 \pm \sqrt{2}$, and so $f$ has roots 
\begin{align*}
\alpha_1 &= \sqrt{2 + \sqrt 2} \\
\alpha_2 &= \sqrt{2 - \sqrt 2} \\
\alpha_3 &= -\alpha_1 \\
\alpha_4 &= -\alpha_2
.\end{align*}

and splitting field $K = \QQ(\theset{\alpha_i})$.

### b

$K$ is the splitting field of a separable polynomial and thus Galois over $\QQ$.
Moreover, Since $f$ is irreducible by Eisenstein with $p=2$, the Galois group is a transitive subgroup of $S^4$, so the possibilities are:

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


Computations show that 

- $\alpha_1^2 \alpha_2^2 = 2$, so $\alpha_1 \alpha_2 = \sqrt 2$
- $\alpha_1^2 = 2 + \sqrt 2 \implies \sqrt 2 = \alpha_1^2 - 2$

and thus
\begin{align*}
\sigma^2(\alpha_1) &= \sigma(\alpha_2) \\
&= \sigma\left(\frac{\sqrt 2}{\alpha_1}\right) \\
&= \frac{\sigma(\sqrt 2)}{\sigma(\alpha_1)} \\
&= \frac{\sigma(\alpha_1^2 - 2)}{\alpha_2} \\
&= \frac{\alpha_2^2 - 2}{\alpha_2} \\
&= \alpha_2 -2\alpha_2\inv \\
&= \alpha_2 - \frac{2\alpha_1}{\sqrt 2} \\
&= \alpha_2 -\alpha_1 \sqrt 2 \\
&\neq \alpha_1
,\end{align*}

and so the order of $\sigma$ is strictly greater than 2, and thus 4, and thus $\Gal(K/\QQ) = \theset{\sigma^k \suchthat 1\leq k \leq 4} \cong \ZZ/(4)$.

### c


?? The subgroup of index 2 $\generators{\sigma^2}$ corresponds to the field extension $Q(\sqrt 2) / \QQ$.

## 3

> Moral: $H_1 \intersect H_2 \iff E_1 E_2$, $H_1 H_2 \iff E_1 \intersect E_2$.

### a

By the Galois correspondence, it suffices to show that the fixed field of $H_1 \intersect H_2$ is $E_1 E_2$.

Let $\sigma \in H_1 \intersect H_2$; then $\sigma \in \Aut(K)$ fixes both $E_1$ and $E_2$.

> Not sure if this works -- compositum is not literally product..?

Writing $x \in E_1E_2$ as $x=e_1 e_2$, we have 
$$
\sigma(x) = \sigma(e_1 e_2) = \sigma(e_1) \sigma(e_2) = e_1 e_2  =x,
$$

so $\sigma$ fixes $E_1 E_2$.

### b

That $H_1 H_2 \subseteq G$ is clear, since if $\sigma = \tau_1 \tau_2 \in H_1 H_2$, then each $\tau_i$ is an automorphism of $K$ that fixes $E_i \supseteq \QQ$, so each $\tau_i$ fixes $\QQ$ and thus $\sigma$ fixes $\QQ$.

That it is a subgroup follows from the fact that elements commute. (?)
 
To see this, let $\sigma = \sigma_1 \sigma_2 \in H_1 H_2$.

Note that $\sigma_1(e) = e$ for all $e\in E_1$ by definition, since $H_1$ fixes $E_1$, and $\sigma_2(e) \in E_1$ (?).

Then 
$$
\sigma_1(e) = e \quad \forall e \in E_1 \implies \sigma_1(\sigma_2(e)) = \sigma_2(e) 
$$  

and substituting $e = \sigma_1(e)$ on the RHS yields

\begin{align*}
\sigma_1 \sigma_2(e) = \sigma_2 \sigma_1(e)
,\end{align*}

where a similar proof holds for $e\in E_2$ and thus for arbitrary $x\in E_1 E_2$.


### c

By the Galois correspondence, the subgroup $H_1H_2 \leq G$ will correspond to an intermediate field $E$ such that $K/E/\QQ$ and $E$ is the fixed field of $H_1 H_2$.

But if $\sigma \in H_1 H_2$, then $\sigma = \tau_1 \tau_2$ where $\tau_i$ is an automorphism of $K$ that fixes $E_i$, and so $\sigma(x) = x \iff \tau_1\tau_2(x) = x \iff \tau_2(x) = x ~\&~ \tau_1(x) = x \iff x \in E_1 \intersect E_2$.
