---
title: "Problem Set 10"
---

# Problem 1 

Let $\phi$ be an $n\dash$form. If suffices to show these statements for $n=2$.

$\implies$:
Suppose $\phi$ is alternating, then $\phi(b, b) = 0$ for all $b\in B$.

Letting $a,b \in B$ be arbitrary, we then have

\begin{align*}
0 &= \phi(a + b, a+b) \\
&= \phi(a, a+b) + \phi(b, a+b) \\
&= \phi(a, a) + \phi(a, b) + \phi(b, a) + \phi(b, b) \\
&= \phi(a, b) + \phi(b, a) \\
&\implies \phi(a,b) = -\phi(b, a)
,\end{align*}

which shows that $\phi$ is skew-symmetric.

$\impliedby$
Suppose $\phi$ is skew-symmetric, so $\phi(a,b) = -\phi(b, a)$ for all $a, b\in B$.
Then $\phi(b, b) = - \phi(b, b)$ by transposing the terms, which says that $\phi(b, b) = 0$ for all $b\in B$ and thus $\phi$ is alternating.

# Problem 2

Let $f(x) = \det(P + xQ) \in R[x]$, then $f$ is a polynomial in $x$ which is not identically zero. 

To see that $f \not \equiv 0$, we can use that fact that $P$ is invertible to evaluate $f(0) = \det(P) \neq 0$.

We can now note that $f$ has finite degree, and thus finitely many zeroes in $R$.


# Problem 3

Letting $k[x] \actson_\phi E$ to yield a $k[x]\dash$module structure on $E$ and take an invariant factor decomposition,
$$
E = E_1 \oplus E_2 \oplus \cdots \oplus E_t, \quad E_i = \frac{k[x]}{(q_i)}, \quad q_1 \divides q_2 \divides \cdots \divides q_t
$$

where $E_i = k[x] / (q_i)$. 
Then $q_t = q$, the minimal polynomial of $E$.

In particular, $E_t$ is a $\phi\dash$invariant subspace of $E$, and if $\deg q_t = m$, then $E_t$ is in fact an $m\dash$dimensional cyclic module with basis $\theset{\vector{v}, \phi(\vector{v}), \phi^2(\vector{v}), \cdots, \phi^{m-1}(\vector{v})}$ for some $\vector{v} \in E_t$.

But since $E_t \leq E$ is a subspace, we have 
$$
m = \deg q(x) = \deg q_t(x) = \dim E_t \leq \dim E.
$$

# Problem 4

$\implies$:
Suppose $A \sim D$ where $D$ is diagonal.
Then $JCF(A) = JCF(D) = D$, which means that every Jordan block of $A$ has size exactly 1.

Since the elementary divisors of $A$ are precisely the minimal polynomials of the Jordan blocks of $A$, and the minimal polynomial of any $1\times 1$ matrix $[a_{ij}]$ is given by the linear polynomial $x - a_{ij}$, every elementary divisor of $A$ must be linear.

$\impliedby$:
Suppose all of the elementary divisors of $A$ are linear. 
Every elementary divisor is the minimal polynomial of a Jordan block of $A$, and so if we write $JCF(A) = \bigoplus M_i$, then the minimal polynomial of each $M_i$ is linear.

Supposing that $M_i$ has minimal polynomial $p_i(x) = x - c$ for some scalar $c$, we have
$$
p_i(M_i) = 0 \implies M_i - c I_n = 0 \implies M_i = cI_n,
$$

which shows that $M_i$ is a diagonal matrix with only $c$ on its diagonal.

But if every Jordan block of $A$ is diagonal, then $JCF(A) = D$ is diagonal and $A \sim D$.

# Problem 5

## Part 1

We'll use the fact that the minimal polynomial $q$ is the invariant factor of highest degree, and so every other invariant factor must divide $q$.

Moreover, $RCF(A) = C_1 \oplus C_2 \oplus \cdots \oplus C_k$ where each $C_i$ is the companion matrix of the $i$th invariant factor if we write $V \cong \bigoplus_{i=1}^k k[x]/(a_i)$. 
So it suffices to determine all of the possible distinct combinations of invariant factors.

We can restrict this list by noting that the characteristic polynomial satisfies $\chi_A(x) = \prod a_i$, and in particular, $\deg \chi_A(x) = 6$. Noting that $\deg q(x) = 3$, the degrees of the remaining invariant factors must sum to 3.

So the possibilities are:

\begin{align*}
R_1: a_1 = (x-2), && a_2 = (x-2)^2,    && a_3 = q(x), \\
R_2: a_1 = (x-2), && a_2 = (x-2)(x+3), && a_3 = q(x), \\
R_3: a_1 = (x+3), && a_2 = (x-2)(x+3), && a_3 = q(x), \\
R_4: a_1 = (x-2), && a_2 = (x-2),      && a_3 = (x-2) && a_4 = q(x), \\
R_5: a_1 = (x+3), && a_2 = (x+3),      && a_3 = (x+3) && a_4 = q(x).
\end{align*}

> This exhausts all possibilities, because the degrees of $a_i$ must be a weakly increasing integer partitions of 3, namely $(1,2)$ or $(1, 1, 1)$. 
A $(1,2)$ partition can only yield a quadratic factor for $a_2$, and since $a_2 \divides a_3$ there are only two choices. 
If a repeated factor is chosen like $(x-2)^2$, then $a_1 \divides a_2$ forces $a_1 = x-2$ ,yielding $R_1$.
Otherwise, we can pick either distinct factor of $a_2$ as a choice for $a_1$, yielding $R_2, R_3$.
Any $(1,1,1)$ partition can only be a repeated linear factor, since we must have $a_1 \divides a_2 \divides a_3$, and there are only two choices. 
This yields $R_4, R_5$.

Noting that 

\begin{align*}
(x-2)^2 &= x^2-4x+4 \\
(x-2)(x+3) &= x^2+x-6 \\
q(x) &= x^3-x^2-8x+12
,\end{align*}


these choices correspond to the matrices

\begin{align*}
&R_1 = \left[\begin{array}{c|cc|ccc} 
2 & 0 & 0 & 0 & 0 & 0 \\ \hline 
0 & 0 & -4 & 0 & 0 & 0 \\ 
0 & 1 & 4 & 0 & 0 & 0 \\ \hline 
0 & 0 & 0 & 0 & 0 & -12 \\ 
0 & 0 & 0 & 1 & 0 & 8 \\ 
0 & 0 & 0 & 0 & 1 & 1 \\ 
\end{array}\right] ,
&R_2 = \left[\begin{array}{c|cc|ccc} 
2 & 0 & 0 & 0 & 0 & 0 \\ \hline 
0 & 0 & 6 & 0 & 0 & 0 \\ 
0 & 1 & -1 & 0 & 0 & 0 \\ \hline 
0 & 0 & 0 & 0 & 0 & -12 \\ 
0 & 0 & 0 & 1 & 0 & 8 \\ 
0 & 0 & 0 & 0 & 1 & 1 \\ 
\end{array}\right],
&R_3 = \left[\begin{array}{c|cc|ccc} 
3 & 0 & 0 & 0 & 0 & 0 \\ \hline 
0 & 0 & 6 & 0 & 0 & 0 \\ 
0 & 1 & -1 & 0 & 0 & 0 \\ \hline 
0 & 0 & 0 & 0 & 0 & -12 \\ 
0 & 0 & 0 & 1 & 0 & 8 \\ 
0 & 0 & 0 & 0 & 1 & 1 \\ 
\end{array}\right] \\ \\
&R_4 = 
\left[\begin{array}{c|c|c|ccc}
2 & 0 & 0 & 0 & 0 & 0 \\ \hline
0 & 2 & 0 & 0 & 0 & 0 \\ \hline
0 & 0 & 2 & 0 & 0 & 0 \\ \hline
0 & 0 & 0 & 0 & 0 & -12 \\ 
0 & 0 & 0 & 1 & 0 & 8 \\ 
0 & 0 & 0 & 0 & 1 & 1 \\ 
\end{array}\right]
&R_5 = 
\left[\begin{array}{c|c|c|ccc}
-3 & 0 & 0 & 0 & 0 & 0 \\ \hline
0 & -3 & 0 & 0 & 0 & 0 \\ \hline
0 & 0 & -3 & 0 & 0 & 0 \\ \hline
0 & 0 & 0 & 0 & 0 & -12 \\ 
0 & 0 & 0 & 1 & 0 & 8 \\ 
0 & 0 & 0 & 0 & 1 & 1 \\ 
\end{array}\right]
&
.\end{align*}

> Note: these are perhaps transposed from Hungerford's notation.

Since none of the associated polynomials were irreducible over $\QQ$, $RCF(A)$ takes these forms over $\CC$ as well.

To obtain the possible Jordan Canonical forms, we'll instead need to consider elementary divisors.
These can be obtained from the invariant factors above, yielding the possibilities:

\begin{align*}
R_1: &(x-2), ~~(x-2), ~(x-2)^2 ~~(x+3)  \\
R_2: &(x-2), ~~(x-2), ~~(x-2)^2, ~~(x+3), ~~ (x+3) \\
R_3: &(x-2), ~~(x-2)^2, ~~(x+3), ~~(x+3), ~~ (x+3) \\
R_4: &(x-2), ~~(x-2), ~~(x-2), ~~(x-2)^2, ~~ (x+3) \\
R_5: &(x+3), ~~(x+3), ~~(x+3), ~~(x+3), ~~ (x-2)^2 \\
\end{align*}

For the sake of notation, write $J_\lambda^k$ for a $k\times k$ Jordan block with $\lambda$ on the diagonal and $0_k$ for the $k\times k$ zero matrix.
We then have

\begin{align*}
R_1: &0_2 \oplus J_2^1 \oplus J_2^1 \oplus J_2^2 \oplus J_3^1 \\ \\
R_2: &J_2^1 \oplus J_2^1 \oplus J_2^2 \oplus J_3^1 \oplus J_3^1 \\ \\
R_3: &J_2^1 \oplus J_2^2 \oplus J_3^1 \oplus J_3^1 \oplus J_3^1 \\ \\ 
R_4: &J_2^1 \oplus J_2^1 \oplus J_2^1 \oplus J_2^2 \oplus J_3 \\ \\
R_5: &J_2^2 \oplus J_3^1 \oplus J_3^1 \oplus J_3^1 \oplus J_3^1 \\
.\end{align*}




## Part 2

We'll first exhibit the possibilities over $\CC$, then show what subset can be obtained over $\QQ$.

Over $\CC$, we have $x^2 + 1 = (x-i)(x+i)$.
By the same argument used in Part 1, we know that $q(x)$ is the largest invariant factor, and since $\deg q = 3$, the degrees of the remaining factors must sum to 4 (since the degree $\chi_A$ will be 7, and it's the product of these factors).


We also know that the degrees must forma weakly decreasing partition of $4$, which are

- $(1,1,1,1)$
  - This can only be $a_1=a_2=a_3=a_4$, a repeated linear factor, so there are 3 possibilities
- $(1,1,2)$
  -  This must satisfy $a_1 = a_2$, so there are 3 possibilities for $a_1=a_2$ and 2 for $a_3$, for 6 total.
- $(2, 2)$
  - This also must satisfy $a_1 = a_2$, so there are ${3 \choose 2}/2 = 3$ possibilities

The possibilities are thus


\begin{align*}
R_1: a_1 = (x-i) && a_2 = (x-i) && a_3 = (x-i) && a_4 = (x-i) && a_5 = q(x) \\
R_2: a_1 = (x+i) && a_2 = (x+i) && a_3 = (x+i) && a_4 = (x+i) && a_5 = q(x) \\
R_3: a_1 = (x-7) && a_2 = (x-7) && a_3 = (x-7) && a_4 = (x-7) && a_5 = q(x) \\
\\
R_4: a_1 = (x+i) && a_2 = (x+i) && a_3 = (x+i)(x-i) && a_4 = q(x) \\
R_5: a_1  = (x+i) && a_2 = (x+i) && a_3 = (x+i)(x-7) && a_4 = q(x) \\
R_6: a_1  = (x-i) && a_2 = (x-i) && a_3 = (x-i)(x+i) && a_4 = q(x) \\
R_7: a_1  = (x-i) && a_2 = (x-i) && a_3 = (x-i)(x-7) && a_4 = q(x) \\
R_8: a_1  = (x-7) && a_2 = (x-7) && a_3 = (x-7)(x+i) && a_4 = q(x) \\
R_9: a_1  = (x-7) && a_2 = (x-7) && a_3 = (x-7)(x-i) && a_4 = q(x) \\
\\
R_{10}: a_1 = (x+i)(x-i) && a_2 = (x+i)(x-i) && a_3 = q(x) && \\
R_{11}: a_1 = (x+i)(x-7) && a_2 = (x+i)(x-7) && a_3 = q(x) && \\
R_{12}: a_1 = (x-i)(x-7) && a_2 = (x-i)(x-7) && a_3 = q(x) && \\
.\end{align*}

The corresponding Rational Canonical Forms for each $R_j$ can be obtained by writing the companion matrix for the blocks $a_i$ and taking their direct sum.

It is then easy to see that if $A$ is taken over $\QQ$ instead, only form $R_3$ is possible (since $x^2+1$ does not split over $\QQ$).

Let $n J_\lambda^k$ denote $J_\lambda^k \oplus J_\lambda^k \oplus \cdots \oplus J_\lambda^k$, where $n$ copies appear in the direct sum corresponding to $n$ Jordan blocks.
We can immediately obtain the corresponding Jordan forms:


\begin{align*}
R_1: 5 J_i^1 \oplus J_{-i}^1 \oplus J_7^1 \\
R_2: 5 J_{-i}^1 \oplus J_{i}^1 \oplus J_7^1\\
R_3: 5J_7^1 \oplus J_i^1 \oplus J_{-i}^1 \\ \\
R_4: 4J_{-i}^1 \oplus 2J_i^1 \oplus J_7^1 \\
R_5:  4J_{-i}^1 \oplus J_{i}^1 \oplus 2J_7^1 \\
R_6: 4J_i^1 \oplus 2J_{-i}^1 \oplus J_7^1 \\
R_7:  4J_i^1 \oplus J_{-i}^1 \oplus 2J_7^1\\
R_8:  2J_{-i}^1 \oplus J_i^1 \oplus 2J_7^1 \\
R_9: 2J_i^1 \oplus J_{-i}^1 \oplus 4J_7^1 \\ \\
R_{10}:  3J_i^1 \oplus 3J_{-i}^1 \oplus J_7^1 \\
R_{11}:  J_i^1 \oplus 3J_{-i}^1 \oplus 3J_7^1 \\
R_{12}:  3J_i^1 \oplus J_{-i}^1 \oplus 3J_7^1
.\end{align*}


# Problem 6

Let $\phi \in \endo(V)$, then following a different proof than what is suggested in Hungerford, define an action

\begin{align*}
k[x] &\actson V \\
p(x)\actson \vector v &= p(\phi)(\vector v)
,\end{align*}

which induces an invariant factor decomposition
$$
V \cong \bigoplus_{i=1}^n \frac{k[x]}{(f_i)},\quad f_i \in k[x],\quad f_1 \divides f_2 \divides \cdots \divides f_n.
$$

Then $f_n(x)$ is the minimal polynomial of $\phi$, and the characteristic polynomial is given by $p_\phi(x) = \prod_{i=1}^n f_i(x)$.
In particular, $f_n(x) \divides p_\phi(x)$ and $f_n(\phi) = 0$ by definition, so $p_\phi(\phi) = 0$ as well. 
$\qed$

# Problem 7

## Part 1
Suppose $\phi \psi = \psi \phi$ and both $\phi, \psi$ have bases of eigenvectors.

Letting $\lambda_i$ denote the eigenvalues of $\phi$, write 
$$
V = \bigoplus_i V_{\lambda_i}.
$$


Now let $\vector v$ be an eigenvector corresponding to $\lambda_i$. 
We have $\phi(\vector v) = \lambda_i \vector v$, and
$$
\phi \psi(\vector v) = \psi \phi(\vector v) = \psi(\lambda_i \vector v) = \lambda_i \psi(\vector v),
$$

which demonstrates that $\psi(\vector v)$ is also an eigenvector for $\phi$, and moreover $\psi(V_{\lambda_i}) \subseteq V_{\lambda_i}$, so it only sends $\lambda_i$ eigenvectors to other $\lambda_i$ eigenvectors.

Now consider $\restrictionof{\psi}{V_{\lambda_i}}$, the restriction of $\psi$ this eigenspace.
Since $\psi$ had an eigenbasis on $V$, this restricts to an eigenbasis $\mathcal{B}_i = \theset{\vector w_i}$ of $V_{\lambda_i}$.
But then every element of $\vector w_i$ is an eigenvector of $\psi$ by definition, and we also have $\vector w_i \in V_{\lambda_i}$, so the $\vector w_i$ are **also** eigenvectors for $\phi$.

Doing this for every $i$, we obtain $\mathcal{B} = \disjoint_i \mathcal{B}_i$ where $\spanof(\mathcal B) = E$, which yields a simultaneous eigenbasis of $E$ for both $\psi$ and $\phi$.

## Part 2
Writing $\mathcal{B} = \theset{\vector v_i \mid 1\leq i \leq n}$, this means we can form an invertible matrix $P = [\vector v_1^t, \cdots, \vector v_n^t]$.
Then if $A$ is the matrix of $\phi$ in the standard basis and $B$ is the matrix of $\psi$, we have
$$
PAP\inv = D_1 \quad \text{and} \quad PBP\inv = D_2
$$

where $D_1, D_2$ are diagonal. 
In other words, $P$ simultaneously diagonalizes both $A$ and $B$.
