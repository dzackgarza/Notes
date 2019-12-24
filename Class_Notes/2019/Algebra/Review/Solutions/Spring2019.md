# Spring 2019

## 1

> $A$ is diagonalizable iff $\min_A(x)$ is separable.\
> See [further discussion here](https://math.stackexchange.com/questions/3027664/if-a-is-invertible-and-an-is-diagonalizable-then-a-is-diagonalizable).

Since $A^n$ is diagonalizable (and $\CC$ is algebraically closed), we can write $\min_{A^n}(x)$ as a product of **distinct** linear factors:

$$
\min_{A^n}(x) = \prod_{i=1}^k (x-\lambda_i), \quad \min_{A^n}(A^n) = 0
$$

where $\lambda_i$ are the **distinct** eigenvalues of $A^n$.

Moreover $A\in \GL(n,\CC) \implies A^n \in \GL(n,\CC)$, so $\lambda_i \neq 0$ for any $i$. 

This implies that there are no roots with multiplicity, since $x^k$ is not a factor of $\mu_{A^n}(x)$, meaning that the $k$ terms in the product correspond to exactly $k$ **distinct** factors.

We can now construct a polynomial that annihilates $A$, namely
$$
q_A(x) \definedas \min_{A^n}(x^n) = \prod_{i=1}^k (x^n-\lambda_i),
$$

where we can note that $q_A(A) = \min_{A^n}(A^n) = 0$, and so $\min_A(x) \divides q_A(x)$ by minimality.

But then $\min_A(x)$ must have distinct linear factors, so $A$ is diagonalizable.

$\qed$

## 2

### (a)

> Go to a field extension.
> Orders of multiplicative groups for finite fields are known.

Since $\pi(x)$ is irreducible, we can consider the quotient $K = \displaystyle{\frac{\FF_p[x]}{\generators{\pi(x)}}}$, which is an extension of $\FF_p$ of degree $d$ and thus a field of size $p^d$ with a natural quotient map $\rho: \FF_p[x] \to K$.

Since $K\units$ is a group of size $p^d-1$, we know that for any $y \in K\units$, we have by Lagrange's theorem that the order of $y$ divides $p^d-1$ and so $y^{p^d} = y$.

So every element in $K$ satisfies $q(x) = x^{p^d}-x$.

Now letting $x\in \FF^p$ be arbitray, since $f$ is a group homomorphism, we have

\begin{align*}
\rho(q(x)) = q(\rho(x)) = \rho(x)^{p^d} - \rho(x) 
&= 0 \in K \\
&\implies q(x) \in \ker \rho \\
&\implies q(x) \in \generators{\pi(x)} \\
&\implies \pi(x) \divides q(x) = x^{p^d}-x
.\end{align*}

$\qed$

### (b)

> Some potentially useful facts:
> 
> - $\GF(p^n)$ is the splitting field of $x^{p^n} - x$
> - $x^{p^d} - x \divides x^{p^n} - x \iff d \divides n$
> - $\GF(p^d) \leq \GF(p^n) \iff d\divides n$
> - $x^{p^n} - x = \prod f_i(x)$ over all irreducible monic $f_i$ of degree $d$ dividing $n$.

Let $\phi_n(x) = x^{p^n} - x$ and $\phi_d(x) = x^{p^d} - x$. 

Let $\gamma$ be an irreducible degree $n$ polynomial over $\FF_p$, then $L\definedas \FF[x]/\generators \gamma \cong \GF(p^n)$.

Note that by (a), $\pi(x) \divides \phi_d(x)$ and $\gamma(x) \divides \phi_n(x)$.

Then **(claim)** $\phi_n(x)$ splits in $L$.
Since $\pi(x) \divides \phi_n(x)$, $\pi(x)$ also splits in $L$.

Let $\alpha \in L$ be a root of $\pi(x)$. 
Since $\pi(x)$ is irreducible, $\deg\min(\alpha, \FF_p) = d$.

Then $\FF_p \leq \FF_p(\alpha) \leq L$, and so
\begin{align*}
n &= [L: \FF_p] \\
&= [L: \FF_p(\alpha)]~[\FF_p(\alpha): \FF_p] \\
&= \ell d
,\end{align*}

so $d$ divides $n$.

$\qed$


> Proof of converse:
> Suppose $d\divides n$, then $n = \ell d$ so 

## 3

1. Sylow theorems

2. Define a sample space $\Omega = G^2$ from which we will pick random pairs of elements of $G$. For each pair $(g, h)$, we will consider $G\actson G$ by $g \actson h = ghg\inv$. Then $g$ and $h$ commute precisely when $ghg = g$, so when $g\actson h = h$ and $h$ is a fixed point under the action of $g$.

  We have Burnside's formula,
$$
| X / G | = \frac { 1 } { | G | } \sum _ { g \in G } \left| X ^ { g } \right|,
$$

  where $X^g = \theset{x\in X \suchthat g\actson x = x}$ are the fixed points of $g$ and $X/G$ is the number of orbits under this action. In this case, $X = G$, and so $X^g = \theset{x\in G \suchthat gxg\inv = x}$. It is also the case that the orbit of an action given by conjugation is precisely a conjugacy class, i.e. if we define the orbit of $x$ as $\mathcal O_x = \theset{g\actson x \suchthat g\in G}$, then
$$
\abs{X/G} = \sum_{\substack{\text{one $x$ in each} \\ \text{conjugacy class}}{}} \abs{O_x} = ~\#~\text{Conjugacy Classes}
$$

  Letting $n$ be the number of conjugacy classes, what we want to show is that
$$
P(g,h \text{ commute} ) = \frac n {\abs G}
$$

  We can rearrange Burnside's formula to obtain
$$
n \abs{G} = \abs{X/G} \abs{G} = \sum _ { g \in G } \left| X ^ { g } \right|
$$


  But we can express when two elements commute precisely in terms of fixed points of this action, and thus
$$
\abs{\theset{(g,h) \suchthat [g,h] = e}}
\\ = \sum_{g\in G} \abs{\theset{h\in G \suchthat g \actson h = h}}
\\ = \sum_{g\in G} \abs{X^g}
$$

  And so
$$
P(g,h \text{ commute} )
= \frac{\abs{\theset{(g,h) \suchthat [g,h] = e}}}{\abs{G}^2}
= \frac{\sum _ { g \in G } \left| X ^ { g } \right|}{\abs{G}^2}
= \frac{\abs{X/G}\abs{G}}{\abs{G}^2}
= \frac{n \abs{G}}{\abs{G}^2} = \frac n {\abs G}. \qed
$$


- State the class equation: see notes.
- As shown in part 1, $\mathcal{O}_x = \theset{g\actson x \suchthat g\in G} = \theset{h\in G \suchthat ghg\inv = h} = C_G(g)$, and by the class equation\
$$
\abs{G} = \abs{Z(G)} + \sum_{\substack{\text{One $x_i$ from} \\ \text{each conjugacy class}}} [G: C_G(x_i)]
$$

We can now use the fact that every element in $Z(G)$ is in its own conjugacy class, contributing $\abs{Z(G)}$ to $n$, while on the other hand every other class has at least two elements, which contributes at least $\frac 1 2 \abs{G - Z(G)}$ to $n$. Thus
$$
n \leq \abs{Z(G)} + \frac 1 2\abs{G - Z(G)} = \abs{Z(G)} + \frac 1 2\abs{G} - \frac 1 2 \abs{Z(G)} = \frac 1 2 \abs{G} + \frac 1 2 \abs{Z(G)}
\\ \implies \frac n {\abs G} \leq \frac 1 2 \frac{\abs{G}}{\abs{G}}  + \frac 1 2 \frac{\abs{Z(G)}}{\abs{G}}
\\= \frac 1 2 + \frac 1 2 \frac 1 {[G: Z(G)]}
$$

5. Parts
  1. Recall that a set is linearly dependent in an $R\dash$module iff $\sum s_i \vector r_i = \vector 0 \implies s_i = 0 ~\forall i$ where $\vector r_i \in R$ and $s_i$ are scalars from the underlying abelian group. However, if $\vector r$ is torsion, then by definition there exists an $s\neq 0$ that annihilates $\vector r$, i.e. $s \vector r = \vector 0$. Since $s\neq 0$, the set $\theset{\vector r}$ can not be linearly independent. But this holds for arbitrary $\vector r \in \tor(M)$, so the largest linearly independent set is $\emptyset$ and thus the rank is zero.

  2. Let $n = \rank M$, and let $B = \theset{\vector r_i}_{i=1}^n \subseteq R$ be a generating set. The claim is that $B$ descends to a generating set for the quotient module $M' \definedas M/\tor M$, i.e. its image is $R\dash$linearly independent in $M'$ as well. Denote the image $B' = \theset{\vector r_i + \tor M}_{i=1}^n$ as a set of cosets, and suppose toward a contradiction that $B$ is linearly independent in $M$ but $B'$ linearly **dependent** in $M/\tor M$.

    Then one can exhibit a collection $s_i$ satisfying $\sum s_i (\vector r_i + \tor M) = \vector 0$ where not every $s_i$ is zero.

    But $x = 0 \in M/\tor M \iff x \in \tor M$, and so if we have
    $$\sum s_i (\vector r_i + \tor M) = \sum (s_i\vector r_i + \tor M) = \vector 0 \in M/\tor M,
    $$
    this means that $\sum s_i \vector r_i \in \tor R.$ But this means that we can produce an element $\alpha_i\neq 0 \in M$ such that $\alpha_i \sum s_i \vector r_i = \vector 0 \in R$. However, then letting $s_i' = \alpha_i s_i$, we would have $\sum s_i' \vector r_i = \vector 0 \in R$. Since $R$ is an integral domain and we had $\alpha_i\neq 0$ and not all $s_i=0$, there is at least one nonzero $s_i'$ -- but this says that $B$ is linearly *dependent* in $M$, a contradiction. So $B'$ is linearly independent in $M'$, and $\rank M' \leq n$.

    Conversely, to see that $\rank M' \geq n$, towards a contradiction suppose that $B'' = \theset{\vector x_i + \tor M}_{i=1}^{n+1}$ is linearly independent in $M'$. Then the lift of this to $M$ given by $\theset{\vector x_i}_{i=1}^{n+1}$ is a set of $n+1 > \rank M$ elements, and thus has a linear dependence. But any linear dependence in $M$ descends to a linear dependence in $M'$: with this dependence, we can produce $s_i$ such that $\sum s_i \vector x_i = \vector 0 \in M$ where not all $s_i=0$. But $\vector 0 \in \tor M$, so $\sum s_i \vector x_i \in \tor M$, which exactly means $\sum s_i \vector x_i = 0$ in the quotient $M/\tor M$.

    1. Claim: $M \normal R$ is a free $R\dash$module iff $M$ is principal. From this, we will be able to conclude that if $M$ is non-principal then $M$ is not free as an $R\dash$module.
      1. $\Longrightarrow$: Suppose $M$ is free as an $R\dash$module, and let $B = \theset{\vector m_i}_{i\in I}$ be a basis so we can write $M = \generators{B}$.
      Suppose that $\abs{B} \geq 2$, so we can pick at least 2 basis elements $\vector m_1\neq \vector m_2$, and consider
      $$
      \vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1,
      $$

          which is also an element of $M$ .

          Since $R$ is an integral domain, $R$ is commutative, and so
      $$
      \vector c = \vector m_1 \vector m_2 - \vector m_2 \vector m_1 = \vector m_1 \vector m_2 - \vector m_1 \vector m_2 = \vector 0_M
      $$

          However, this exhibits a linear dependence between $\vector m_1$ and $\vector m_2$, namely that there exist $\alpha_1, \alpha_2 \neq 0_R$ such that $\alpha_1 \vector m_1 + \alpha_2 \vector m_2 = \vector 0_M$; this follows because $M \subset R$ means that we can take $\alpha_1 = -m_2, \alpha_2 = m_1$. This contradicts the assumption that $B$ was a basis, so we must have $\abs{B} = 1$ and so $B = \theset{\vector m}$ for some $\vector m \in I$. But then $M = \generators{B} = \generators{\vector m}$ is generated by a single element, so $M$ is principal.

        1. $\Longleftarrow$: Suppose $M\normal R$ is principal, so $M = \generators{\vector m}$ for some $\vector m \neq \vector{0}_M \in M \subset R$. Then $x\in M \implies x = \alpha\vector m$ for some element $\alpha\in R$ and we just need to show that $\alpha\vector m = \vector 0_M \implies \alpha = 0_R$ in order for $\theset{\vector m}$ to be a basis for $M$, making $M$ a free $R\dash$module.

          But since $M \subset R$, we have $\alpha, m \in R$ and $\vector 0_M = 0_R$, and since $R$ is an integral domain, we have $\alpha m = 0_R \implies \alpha = 0_R $ or $m = 0_R$. Since $m \neq 0_R$, this forces $\alpha = 0_R$, which allows $\theset{m}$ to be a linearly independent set and thus a basis for $M$ as an $R\dash$module.

      1. Now letting $M \normal R$ be non-principal, we can conclude that $M$ is not a free $R\dash$module. Repeating the argument in (1), since $M$ is not a principal ideal, there are at least 2 generating elements -- however, these are linearly dependent because $R$ is commutative, so the rank is at most 1. The rank is at least 1, because $R$ is an integral domain and letting $m\neq 0$ be one of the generating elements of $M$, we have $\alpha m = 0 \implies \alpha = 0$ and so $\theset{m}$ is linearly independent. So the rank is exactly 1. Finally, $M$ is torsion-free: let $x\in M$, then if $x \in \tor M$, there exists some $r\neq 0\in R$ such that $rx = 0$. Since $R$ is an integral domain, this forces $x=0$, so 0 is the only torsion element and thus $M$ is torsion-free. $\qed$

1. Parts
  1. Let $0 < I < R$ be a proper ideal, and consider the set $S = \theset{J \suchthat I   \subseteq J < R}$. The claim is that $S$ contains a maximal element $M$. Note $I\in S$, so $S$ is nonempty. Moreover, since $I \neq R$ is proper and all $J\in S$ are proper, any maximal element will also be proper, and thus a maximal ideal of $R$ containing $I$.  We can now use the fact $S$ is a poset, ordered by set inclusion, so if we can show that every chain has an upper bound, we can apply Zorn's lemma to produce $M$.
To this end, let $C \subseteq S$ be a chain in $S$, so $C = \theset{C_1 \subseteq C_2 \subseteq \cdots}$. Let $\hat C = \union_i C_i$, the claim is that $\hat C \in S$ and $\hat C$ is an upper bound for $C$. To see that $\hat C$ is an upper bound for $C$, it suffices to show $C_i \in C \implies C_i \leq \hat C$ in the partial ordering. This amounts to $C_i \in C \implies C_i \subset \hat C$, which is always true because $C_i$ occurs as one of terms in the union defining $\hat C$. To see that $\hat C \in S$, note that $I \subseteq C_i < R$ for every $C_i$, and in particular, since no $C_i$ contains a unit (since it would otherwise be all of $R$), $\hat C$ doesn't contain a unit, and is thus proper. It is an ideal because given any $r\in R$ and any $x\in \hat C$, we have $x\in C_i$ for some $i$ and thus $rx \in C_i \subset \hat C$. Since $C$ was an arbitrary chain, we've shown that every chain has an upper bound.

  2. Parts
    1. $\Longrightarrow$: We will show that $x\in J(R) \implies 1+x \in R\units$, from which the result follows by letting $x=rx$. Suppose $x\in J(R)$ and suppose towards a contradiction that $1+x$ is not a unit. Then consider the ideal $M = \generators{1+x}$. Since $1+x$ is not a unit, we can't write $s(1+x) = 1$ for any $s\in R$, and so $1 \not\in M$. This means $M < R$ is a proper ideal, and it is thus contained in some (proper) maximal ideal $M' < R$ by part (1), and so we have $1+x \in M'$. However, since $x\in J(R)$, we must have $x\in M'$. This means that $(1+x) - x = 1 \in M'$, since ideals are closed under sums, but this forces $M' = R$ which contradicts $M' < R$.

    > Gist: $\Longrightarrow$: WLOG look at $1-rx$ instead. If $1-rx \not\in R\units$, then $1-rx \in M$, some maximal ideal. Then $x\in R\intersect M$, so $rx \in M$, so $(1-rx) + rx = 1 \in M \implies M = R$, a contradiction.

    1. $\Longleftarrow$: Fix $x\in R$, and suppose $1+rx$ is a unit for all $r\in R$. Suppose towards a contradiction that there is a maximal ideal $M$ such that $x\not \in M$ (and thus $x\not\in J(R)$). Then consider $Rx + M = \theset{rx + m \suchthat r\in R, m\in M}$. Since $M$ was maximal, $M \subsetneq Rx + M \implies Rx + M = R$. So every element in $R$ can be written as $rx + m$ for some $r\in R, m\in M$. But $1\in R$, so we have $1 = rx + m$. Since $R$ is a ring and closed under additive inverses, we can let $s = -r$ and write $1 = sx - m$, and so $m = 1 + sx$. Since $s\in R$, by assumption, $1+sx$ is a unit and so $m$ is a unit -- but this forces $M=R$, contradicting the fact that $M$ is proper. So we must have $x\in M$. Since $M$ was arbitrary, $x$ is in every $M$, and so $x\in J(R)$ by definition.

    > Gist: $\not\Longrightarrow: x \not\in J(R) \implies \exists M \suchthat x\not\in M \implies R = \generators{M, x} \implies \exists r \suchthat 1 = m + rx \implies m = 1-rx$ and so $1-rx\not\in R\units$, since otherwise $m$ would be a unit and force $M=R$. Note: not sure why this holds for all $r$..

  3. Letting $N(R)$ denote the nilradical of $R$ (the ideal of nilpotent elements), we generally have $N(R)\intersect Z(R) \subseteq J(R)$ (and since here $R$ is commutative, $Z(R) = R$). This can be shown by demonstrating that if $x^n=0$, then $1+rx^n$ is a unit.

    To see that $J(R) \subseteq N(R)$ when $R$ is finite, we will first claim that for every $x\in R$, there is some power $n$ such that $x^n$ is idempotent and thus $x^{2n} = x^n$. Then fixing $x \in J(R)$, from part (2), we will have $u = 1+rx$ a unit for any $r\in R$. So we'll pick $r=-x^{n-1}$, so $u = 1-x^n$ will remain a unit. In particular, we'll have
    $$
    (1-x^n)^2 = 1 -2x^n + x^{2n} = 1 - 2x^n + x^n = 1 -x^n
    $$
    where since $x^n$ is idempotent, $u$ is idempotent as well.

    We then claim that $y\in R$ is idempotent and $y\neq 0$ $\implies 1-y \not\in R\units$, so that $y$ idempotent and $1-y$ a unit forces $y=0$.

    Applying this to $y=x^n$ an idempotent and $u=1-x^n$ a unit, we conclude that $x^n = 0$. But then by definition, $x\in N(R)$. So $J(R) \subseteq N(R)$.

    We now have two claims to prove:
    - $R$ finite $\implies \forall x\in R,~ \exists n \suchthat (x^n)^2 = x^{2n} = x^n$
      - Fix $x$, and consider $x^n$ where $n$ varies. Since $R$ is finite, $\theset{x^n : x\in \NN} \subseteq R$ must also be finite, so there must exist two indices (WLOG) $1 < n_1 < n_2 \in \NN$ such that $x^{n_1} = x^{n_2}$. We can write $n_2 = n_1 + \ell$ for some $\ell$, where we can note that
      $$
      x^{n_1} = x^{n_1 + \ell} \implies x^{n_1 + t} = x^{n_1 + \ell + t} ~~ \forall t > 0 \tag{1}
      $$

        We can than take $t = \ell$ to obtain
      $$
      x^{n_1} = x^{n_1 + \ell} = x^{n_1 + t} = x^{n_1 + \ell + t} = x^{n_1 + 2\ell}
      \implies x^{n_1} = x^{n_1 + k\ell}~~\forall k>0
      \tag{2}
      $$
        which follows inductively.

        So pick $k>0$ such that $k\ell > n_1$, say $k\ell  = n_1 + t$. Then by (1) we have
      $$
      x^{n_1+t} = x^{n_1+\ell + t} \implies x^{k\ell} = x^{k\ell + \ell}
      $$

        But now by (2) we can replace $\ell$ by $k \ell$, which is just a multiple of $\ell$, yielding
      $$
      x^{k\ell} = x^{k\ell + k\ell} = x^{2(k\ell)} = (x^{k\ell})^2
      $$
        and thus $x^{k\ell}$ is idempotent. $\qed$
    - $x\neq 0 \in R$ idempotent $\implies 1-x$ is not a unit.
      - Suppose $x \neq 0$ is idempotent. Note that
      $$
      x^2 = x \implies (1-x)^2 = 1 - 2x + x^2 = 1 - 2x + x = 1-x,
      $$
        so $1-x$ is idempotent as well. Suppose towards a contradiction that $1-x$ is a unit, then there is some $r\in R$ such that $r(1-x) = 1$. But then
      $$
      (r(1-x))^2 = 1^2 \implies r^2(1-x)^2 = 1 \implies r^2(1-x) = 1
      $$
        and thus
      $$
      r r(1-x) = 1 \implies r = 1 \implies (1-x)r = 1-x \implies 1 = 1- x \implies x = 0,
      $$
        contradicting $x\neq 0$. So $1-x$ can not be a unit. $\qed$

1. Parts
  1. Let $A$ be the $p\times p$ matrix in question. We first compute the JCF; then
$$\begin{align*}
&\left[ \begin{array} { c c c c c }
{ 0 } & { 1 } & { 1 } & { \dots } & { 1 } \\
{ 1 } & { 0 } & { 1 } & { \dots } & { 1 } \\
{ 1 } & { 1 } & { 0 } & { \dots } & { 1 } \\
{ \cdots } & { \cdots } & { \cdots } & { \cdots } & { \ldots } \\
{ 1 } & { 1 } & { 1 } & { \dots } & { 0 }
\end{array} \right] \\ \\
%
\xrightarrow[\displaystyle{R_i \mapsto R_{p-i}~ 1\leq i\leq p}]{}
&\left[ \begin{array} { c c c c c c }
1 & { 1 } & { \dots } &  { 1 } & { 1 } & { 0 } \\
1 & { 1 } & { \dots } &  { 1 } & { 0 } & { 1 } \\
1 & { 1 } & { \dots } &  { 0 } & { 1 } & { 1 } \\
\vdots & \vdots &  { ⋰ } & { \vdots } & { \vdots } & { \vdots } \\
{ 1 } & 0 &  { 1 } & { \dots } & { 1 } & { 1 } \\
{ 0 } & 1 &  { 1 } & { \dots } & { 1 } & { 1 }
\end{array} \right]  \\ \\
\end{align*}$$