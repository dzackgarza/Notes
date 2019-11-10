---
title: Problem Set 1
---

# Problem 6

## Part 1

Let $M = S^2$ as a smooth manifold, and consider a vector field on $M$,
$$
X: M \to TM
$$
We want to show that there is a point $p\in M$ such that $X(p) = 0$.

Every vector field on a compact manifold without boundary is complete, and since $S^2$ is compact with $\del S^2 = \emptyset$, $X$ is necessarily a complete vector field.

Thus every integral curve of $X$ exists for all time, yielding a well-defined flow 
$$
\phi: M \cross \RR \to M
$$

given by solving the initial value problems
$$
\dd{}{s} \phi_s(p) \Bigm|_{s = t} = X(\phi_t(p)),\\
\phi_0(p) = p
$$
at every point $p\in M$.

This yields a one-parameter family 
$$
\phi_t: M \to M \in \mathrm{Diff}(M, M).
$$ 

In particular, $\phi_0 = \id_M$, and $\phi_1 \in \mathrm{Diff}(M, M)$. Moreover $\phi_0$ is homotopic to $\phi_1$ via the homotopy

\begin{align*}
H: M \cross I &\to M \\
(p, t) &\mapsto \phi_t(p).
\end{align*}

We can now apply the Lefschetz fixed-point theorem to $\phi_0$ and $\phi_1$. For an arbitrary map $f: M \to M$, we have
$$
\Lambda(f) = \sum_k \Tr\left( f_* \Bigm|_{H_k(X; \QQ)} \right).
$$

where $f_*: H_*(X; \QQ) \to H_*(X; \QQ)$ is the induced map on homology, and 

$$
\Lambda(f) \neq 0 \iff f\text{ has at least one fixed point.}
$$

In particular, we have
\begin{align*}
\Lambda(\id_M) &= \sum_k \Tr(\id_{H_k(X; \QQ)}) \\
&= \sum_k \dim H_k(X; \QQ) \\
&= \chi(M),
\end{align*}
the Euler characteristic of $M$.

Since homotopic maps induce equal maps on homology, we also have $\Lambda(\phi_1) = \chi(M)$.

Since 
$$
H_k(S^2) = \begin{cases}
\ZZ & k = 0, 2 \\
0 & \text{otherwise}
\end{cases}
$$

we have $\chi(S^2) = 2 \neq 0$, and thus $\phi_1$ has a fixed point $p_0$, thus

$\dd{}{t} \phi_t(p_0)\Bigm|_{t=1}$
so 
\begin{align*}
\phi_t(p) =& p  &\\
\implies \dd{}{t} \phi_t(p) =& \dd{}{t} p = 0 &\text{by differentiating wrt $t$}\\
\implies \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 \Bigm|_{t=0} = 0 &\text{by evaluating at $t=0$}\\
\implies X(\phi_1(p_0)) \definedas \dd{}{t} \phi_t(p) \Bigm|_{t = 1} &= 0 &\text{by definition of $\phi_1$} 
\end{align*}

so $X(\phi_1(p_0)) = 0$, which shows that $p_0$ is a zero of $X$. So $X$ has at least one zero, as desired. $\qed$

## Part 2

The trivial bundle

```{=latex}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & S^2 \cross \RR^2 \arrow[dd]                         \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
```

has a nowhere vanishing section, namely 
$$
s: S^2 \to S^2 \cross \RR^2 \\
\vector x \to (\vector x, [1, 1])
$$

which is the identity on the $S^2$ component and assigns the constant vector $[1, 1]$ to every point. 

However, as part 1 shows, the bundle
```{=latex}
\begin{tikzcd}
\RR^2 \arrow[rr] &  & TS^2 \arrow[dd]                                     \\
                 &  &                                                     \\
                 &  & S^2 \arrow[uu, "s" description, dotted, bend right]
\end{tikzcd}
```

can not have a nowhere vanishing section. $\qed$