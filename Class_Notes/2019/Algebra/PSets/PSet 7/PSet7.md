---
title: Problem Set 7
---


# Problem 1

Note that if either $p=1$ or $q=1$, $G$ is a $p\dash$group, which is a nontrivial center that is always normal. So assume $p\neq 1$ and $q\neq 1$.

We want to show that $G$ has a non-trivial normal subgroup.
Noting that $\# G = p^2 q$, we will proceed by showing that either $n_p$ or $n_q$ must be 1.

We immediately note that
\[
\begin{align*}
n_p \equiv 1 \mod p &\quad& n_q \equiv 1 \mod q \\
n_p \divides q &\quad& n_q \divides p^2
,\end{align*}
\]

which forces 
$$
n_p \in \theset{1, q}, \quad n_1 \in \theset{1, p, p^2}.
$$

If either $n_p =1$ or $n_q = 1$, we are done, so suppose $n_p \neq 1$ and $n_1 \neq 1$. This forces $n_p = q$, and we proceed by cases:

## Case 1: $p = q$.

Then $\# G = p^3$ and $G$ is a $p\dash$group. 
But every $p\dash$group has a non-trivial center $Z(G) \leq G$, and the center is always a normal subgroup.

## Case 2: $p > q$.

Here, since $n_p \divides q$, we must have $n_p < q$. But if $n_p < q < p$ and $n_p = 1 \mod p$, then $n_p = 1$.

## Case 3: $q > p$.

Since $n_p \neq 1$ by assumption, we must have $n_p = q$. Now consider sub-cases for $n_q$:

- $n_q = p$: 
  If $n_q = p = 1 \mod q$ and $p < q$, this forces $p=1$.

- $n_q = p^2$:
  We will reach a contradiction by showing that this forces 
  $$
  \abs{P \coloneqq \union_{S_p \in \mathrm{Syl}(p, G)} S_p\setminus\theset{e}} + \abs{ Q \coloneqq \union_{S_q \in \mathrm{Syl}(q, G)} S_q\setminus\theset{e}} + \abs{\theset{e}} > \abs{G}.
  $$
  We have
  \[
  \begin{align*}
  \abs{P} + \abs{Q} + \abs{\theset{e}} &= n_p(q-1) + n_q(p^2 - 1) + 1 \\
  &= p^2(q-1) + q(p^2 - 1) + 1 \\
  &= p^2(q-1) + 1(p^2 - 1) + (q-1)(p^2-1) + 1 \quad\quad \text{(since $q > 1$) } \\
  &= (p^2q - p^2) + (p^2 - 1)  + (q-1)(p^2-1) + 1\\
  &= p^2q + (q-1)(p^2-1) \\
  &\geq p^2 q + (2-1)(2^2-1) \quad\quad\text{(since $p, q \geq 2$)} \\
  &= p^2 q + 3  \\
  &> p^2q = \abs{G}
  ,\end{align*}
  \]
  which is a contradiction. $\qed$

# Problem 2

We'll use the fact that $H \normal N(H)$ for any subgroup $H$ (following directly from the closure axioms for a subgroup), and thus 
$$
P \normal N(P) \quad \text{and}\quad N(P) \normal N^2(P).
$$
Since it is then clear that $N(P) \subseteq N^2(P)$, it remains to show that $N^2(P) \subseteq N(P)$.

So if we let $x \in N^2(P)$, so $x$ normalizes $N(P)$, we need to show that $x$ normalizes $P$ as well, i.e. $xPx\inv = P$.

However, supposing that $\abs G = p^k m$ where $(p, m) = 1$, we have 
$$
P \leq N(P) \leq G ~\implies ~p^k \divides \abs{N(P)} \divides p^km
,$$

so in fact $P \in \mathrm{Syl}(p, N(P))$ since it is a maximal $p\dash$subgroup. 

Then $P' \coloneqq xPx\inv \in \mathrm{Syl}(p, N(P))$ as well, since all conjugates of Sylow $p\dash$subgroups are also Sylow $p\dash$subgroups.

But since $P \normal N(P)$, there is only *one* Sylow $p\dash$ subgroup of $N(P)$, namely $P$.
This forces $P = P'$, i.e. $P = xPx\inv$, which says that $x \in N(P)$ as desired. $\qed$

# Problem 3

By definition, $G$ is simple iff it has no non-trivial subgroups, so we will show that if $\abs G = 148$ then it must contain a normal subgroup.

Noting that $248 = p^2 q$ where $p=2, q = 37$, we find that (for example) $n_2 \divides 37$ but $n \equiv 1 \mod 2$; but the only odd divisor of 7 is 1, forcing $n_2 = 1$. 
So $G$ has a normal Sylow $2\dash$subgroup and we are done.

#  Problem 4

Let $\tau \coloneqq (t_1, t_2)$ denote the transposition and $\sigma = (s_1, s_2 \cdots, s_p)$ denote the $p\dash$cycle, and let $S = \generators{\sigma, \tau}$.
We would like to show that $S = S_p$, and since $S \subseteq S_p$ is clear, we just need to show that $S_p \subseteq S$.

We first note that because $p$ is prime, $\sigma^k$ is a $p\dash$cycle for every $1\leq k \leq p$, and $\generators{\sigma} = \generators{\sigma^k}$ for any such $k$.

Then note that $t_1=s_i$ for some $i$ and $t_2=s_j$ for some $j$, so we can take $k=j-i$ to get a cycle $\sigma^k$ that sends $t_1$ to $t_2$. 
So without loss of generality, we can replace $\sigma$ with
$$
\sigma = (t_1, t_2, \cdots )
$$

But now, we can relabel all of the elements of $S_p$ simultaneously (i.e. replace $\generators{\sigma, \tau}$ with another subgroup in the same conjugacy class) in such a way that $t_1$ becomes 1 and $t_2$ becomes 2.
We can then assume wlog that
$$
\tau = (1,2),\quad \sigma=(1,2,\cdots,p)
$$

We can then get all adjacent transpositions: noting that 
\[
\begin{align*}
\sigma\inv \tau \sigma &= (2, 3) \\
\sigma^{-2} \tau \sigma^2 &= (3, 4) \\
&\cdots \\
\sigma^{-k} \tau \sigma^k &= (k+1 \mod p,~~k+2\mod p) \quad \forall 1\leq k \leq p
,\end{align*}
\]

where we use the fact that for any $\gamma\in S_p$, we have $\gamma\tau\gamma = (\gamma(1),~\gamma(2))$.

But this also gives us all transpositions of the form $(1, j)$ for each $2\leq j \leq p$:
\[
\begin{align*}
(2, 3)\inv(1, 2)(2, 3) &= (1, 3) \\
(3, 4)\inv (1, 3) (3, 4) &= (1, 4) \\
&\cdots \\
(j-1, j)\inv (1, j-1) (j-1, j) &= (1,j) \quad \forall 1\leq j \leq p
.\end{align*}
\]

Thus we have $J \coloneqq \generators{\{(1, j) \mid 2\leq j \leq p\}} \subseteq S$.

But now if $\gamma = (g_1, g_2, \cdots, g_k) \in S_p$ is an arbitrary cycle, we can write
$$
\gamma = (g_1, g_2, \cdots, g_k) = (1, g_1)( 1, g_2), \cdots (1, g_k),
$$

so $\gamma \in J$. 
Then writing any arbitrary permutation as a product of disjoint cycles, we find that 
$S_p \subseteq J \subseteq S$, and so $S_p \subseteq S$ as desired. $\qed$


# Problem 5

Since $G$ is a $p\dash$group, it has a nontrivial center. 
Since $p$ is prime and $Z(G)$ is a subgroup, this forces $\# Z(G) \in \theset{p, p^2}$, where $p^3$ is ruled out because this would make $G$ abelian.

Supposing that $\# Z(G) = p^2$,we would have $[G: Z(G)] = p$, and since $Z(G) \normal G$, we can take the quotient and $\#\left(G/Z(G)\right) = p$.
But this means $G/Z(G)$ is cyclic, which implies that $G$ is abelian, a contradiction.

So we must have $\#Z(G) = p$, and $\#\left(G/Z(G)\right) = p^2$.

But any group of $p^2$ is abelian, and we can characterize $G' \coloneqq [G, G]$ in the following way:

> $G' \leq G$ is the unique subgroup of $G$ such that if $N \normal G$ and $G/N$ is abelian, then $N \leq G'$.





## Case 2: $\# Z(G) = p$:


# Problem 6

# Problem 7}

# Problem 8
?

# Problem 9

# Problem 10
