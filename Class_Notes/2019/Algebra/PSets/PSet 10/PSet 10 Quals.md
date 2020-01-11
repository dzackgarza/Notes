---
title: "Qual Problems #10"
---

# Problem 1


## Part 1
Since 0 is an eigenvalue, there exists an eigenvector $\vector v$ such that $L\vector v = 0 \vector v = 0$.
But then $\vector v \in \ker(L)$, so $\dim\ker(L) \geq 1$.
Since $\ker(L) \neq 0$, $L$ can not be injective.

By the rank-nullity theorem, we must also have $5 = \dim\ker(L) + \dim \im (L)$.
But then $\dim \im (L) \leq 5 = \dim \RR^5$, so $L$ can not be surjective either.

## Part 2
Since all eigenvalues are roots of the minimal polynomial and complex roots occur in conjugate pairs, we must have 
$$
\spec(L) = \theset{0, 1 \pm i, 1\pm 2i}.
$$

Moreover, since this is a $5\times 5$ matrix and we have 5 eigenvalues, this is all of them, and we have the characteristic polynomial
$$
\chi_L(x) = x(x^2-2x+2)(x^2 - 2x + 5) \in \RR[x]
$$

Since the minimal polynomial $p_L(x)$ must divide the characteristic polynomial and have every eigenvalue as a root, this forces
$$
p_L(x) = \chi_L(x).
$$

## Part 3

If $L\vector x = \vector x$, then $\vector x$ is an eigenvector with eigenvalue $\lambda = 1$.
Since $1 \not\in \spec(L)$, such an $\vector x$ can not exist, so $L$ has only one fixed point: namely $\vector x = \vector 0$.


# Problem 2
Let $M$ be an $n \times n$ matrix such that $M_{ij} = 1$ for all $i, j$, and consider the possible eigenvectors of $M$.

We have 
$$
M [1,1, \cdots, 1]^t = [n, n, \cdots, n]^t = n[1,1,\cdots, 1]^t,
$$

which exhibits $\vector x = [1,1,\cdots, 1]$ as an eigenvector with eigenvalue $\lambda = n$.

Now consider 
$$
\vector x_j \definedas \vector e_1 - \vector e_j = [1, 0,0, \cdots, 0,-1,0,\cdots, 0]
$$ 
which has a $1$ in the $1$st coordinate and a $-1$ in the $j$th coordinate.

Then

\begin{align*}
M \vector x_j = 
\left[\begin{array}{c} 
1 + 0 + \cdots + 0 + (-1) + 0 + \cdots + 0 \\ 
1 + 0 + \cdots + 0 + (-1) + 0 + \cdots + 0 \\ 
\vdots 
\end{array}\right]
= [0,0,\cdots, 0]^t
,\end{align*}


which exhibits each $\vector x_j$ as an eigenvector with eigenvalue $\lambda = 0$.

But the set $\theset{ \vector x_j \mid 2 \leq j \leq n}$ with eigenvalue $0$ contains $n-1$ distinct eigenvectors, and we have an additional 1 eigenvector with eigenvalue $1$, which yields $n$ distinct eigenvectors. 

So $M$ is fact diagonalizable and given by
$$
JCF(M) = (n-1)J_0^{1} \oplus J_n^1 =
\left[\begin{array}{ccccc}
0 & 0 & 0 & \cdots & 0 \\
0 & 0 & 0 & \cdots & 0 \\
0 & 0 & 0 & \cdots & 0 \\
\vdots & \vdots & \vdots & \ddots & \vdots \\
0 & 0 & 0 & \cdots & n \\
\end{array}\right]
$$


# Problem 3

## Part 1
Note that we can't have $T^j = 0$ for any $j\leq 4$, since then $T^5 = T^{5-k}T^k = T^{5-k} 0 = 0$, contradicting $T^5 \neq 0$.

So in fact $p_T(x) = x^6$ is the minimal polynomial of $T$, and since $V$ is 6 dimensional, the degree of the characteristic polynomial $\chi_T(x)$ is 6. 
Since $p_T \divides \chi_T$, and both are monic polynomials of degree 6, we in fact have 
$$
p_T(x) = \chi_T(x) = x^6.
$$

But this means $T$ has eigenvalue $\lambda = 0$ with multiplicity 6. 
This means

- The size of the largest Jordan block associated to $\lambda = 0$ is size 6, since $0$ has multiplicity 6 in $p_T$, and
- The sum of the sizes of all Jordan blocks associated to $\lambda = 0$ is 6, since $0$ has multiplicity 6 in $\chi_T$

which forces $JCF(T)$ to have a single Jordan block of size 6, i.e.
$$
JCF(T) = J_0^6 = 
\left[\begin{array}{cccccc}
0 & 1 & 0 & 0 & 0 & 0\\
0 & 0 & 1 & 0 & 0 & 0\\
0 & 0 & 0 & 1 & 0 & 0\\
0 & 0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 0 & 0 & 0\\
\end{array}\right]
$$
## Part 2

By part (1), we know that these conditions uniquely specify their Jordan forms, so we have $M\definedas JCF(T) = JCF(S)$.

Moreover, since $M = JCF(T)$, we know there is a matrix $P$ such that $T = PMP\inv$.

Similarly, we know there is a matrix $Q$ such that $S = QMQ\inv$.

But then $P\inv TP = M$, and so 
$$
S = QMQ\inv = Q(P\inv T P) Q\inv = (QP\inv) T (QP\inv)\inv \definedas ATA\inv
$$

where $A = QP\inv$ is a product of invertible matrices and thus invertible.
