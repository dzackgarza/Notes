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


