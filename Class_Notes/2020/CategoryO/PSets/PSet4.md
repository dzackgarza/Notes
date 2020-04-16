---
title: Category $\OO$, Problem Set 4
---

# Humphreys 3.1
Let $\lieg = \liesl(2, \CC)$ and identify $\lambda \in \lieh\dual$ with a scalar.
Let $N$ be a 2-dimensional $U(\lieb)\dash$module defined by letting $x$ act as $0$ and $h$ act as $\left(\begin{array}{ll}{\lambda} & {1} \\ {0} & {\lambda}\end{array}\right)$.

Show that the induced $U(\lieg)\dash$module structure $M \definedas U(\lieg) \tensor_{U(\lieb)} N$ fits into an exact sequence which fails to split:
$$
0 \to M(\lambda) \to M \to M(\lambda) \to 0
$$

## Solution

[Reference 1](https://math.stackexchange.com/questions/2272891/extension-of-dual-verma-module/2273008#2273008)
[Reference 2](https://aip.scitation.org/doi/full/10.1063/1.5121236)

> Hence $M\not\in \OO$.

# Humphreys 3.2

Show that for $M\in \OO$ and $\dim L < \infty$,
$$
(M\tensor L)\dual \cong M\dual \tensor L\dual
$$

> [Reference for Dual of Sum](https://mathoverflow.net/questions/56255/duals-and-tensor-products)

## Solution

By theorem 3.2d, we have
$$
M, N \in \OO \implies (M\oplus N)\dual \cong M\dual \oplus N\dual
$$

and by definition, $M\dual \definedas \bigoplus_{\lambda \in \lieh\dual} M_\lambda\dual$ is the direct sum of the duals of various weight spaces.


# Humphreys 3.4

Show that $\Phi_{[\lambda]} \intersect \Phi^+$ is a positive system in the root system $\Phi_{[\lambda]}$, but the corresponding simple system $\Delta_{[\lambda]}$ may be unrelated to $\Delta$.

> For a concrete example, take $\Phi$ of type $B_2$ with a short simple root $\alpha$ and a long simple root $\beta$.
> If $\lambda \definedas \alpha/2$, check that $\Phi_{[\lambda]}$ contains just the four short roots in $\Phi$.

## Solution

We would like to show the following two propositions:

1. $\Phi_{[\lambda]}^+ \definedas \Phi_{[\lambda]} \intersect \Phi^+$ is a positive system in $\Phi_{[\lambda]}$,
2. The simple system $\Delta_{[\lambda]}$ corresponding to $\Phi_{[\lambda]}^+$ is *not* generally given by $\Delta_{[\lambda]} = \Phi_{[\lambda]} \intersect \Delta$, where $\Delta$ is the simple system corresponding to $\Phi$.

We proceed by first showing (2) using the hinted counterexample when $\Phi$ is of type $B_2$ with $\Delta = \theset{\alpha, \beta}$ with $\alpha$ a short root and $\beta$ a long root.

Concretely, we can realize $\Phi$ as a subset of $\RR^2$ in the following way:
\begin{align*}
\Phi = P_1 \disjoint P_2 \definedas \theset{[1,0], [0, 1], [-1, 0], [0, -1]} \disjoint \theset{[1,1], [-1, 1], [1, -1], [-1, -1]}
,\end{align*}
where we note that $P_1$ consists of short roots (of norm 1) and $P_2$ of long roots (of norm $\sqrt{2}$).

We can choose the simple system $\Delta = \theset{\alpha \definedas [1, 0], \beta \definedas [-1, 1]}$ of one short root and one long root, and then let
\begin{align*}
\Phi_{[\lambda]} &\definedas \theset{\gamma \in \Phi \suchthat \inner{\lambda}{\gamma\dual} \in \ZZ} \quad \quad \gamma\dual \definedas {2 \over \norm{\gamma}^2} ~\gamma \\
\Delta_{[\lambda]} &\definedas \theset{\gamma \in \Delta \suchthat \inner{\lambda}{\gamma\dual} \in \ZZ} 
.\end{align*}

Now choosing $\lambda \definedas {\alpha \over 2} = \thevector{\frac 1 2, 0}$, a short calculation shows that for an arbitrary $\gamma \in \Phi$,
\begin{align*}
\inner{\lambda}{\gamma\dual}
&\definedas \inner{\thevector{\frac 1 2, 0} }{{2 \over \norm{\gamma}^2}\gamma }
.\end{align*}

Thus
\begin{align*}
\gamma_1 \in P_1 &\implies  \inner{\thevector{\frac 1 2, 0}}{ 2 \gamma_1} = 2\qty{\frac 1 2} \inner{[1, 0]}{\gamma_1} = \qty{\gamma_1}_1 \in \theset{0, \pm 1} \in \ZZ \\
\gamma_2 \in P_2 &\implies \inner{\lambda}{\gamma_2\dual} = \inner{\thevector{\frac 1 2, 0}}{\frac 2 {\qty{\sqrt 2}^2}\thevector{\pm 1, \pm 1}} = \pm \frac 1 2 \not\in \ZZ 
\end{align*}


where $(\gamma_1)_1$ denotes the first component of $\gamma_1$.

We thus find that $\Phi_{[\lambda]} = P_1$, the short root.
Choosing the following green hyperplane not containing any root, we can define 
\begin{align*}
\Phi^+ = \theset{[1, 0], [0, 1], [1,1], [-1, -1]}
\end{align*}

where we can note that $\Phi^+ \intersect \Delta = \Delta$, since we've placed both simple roots on the positive side of this hyperplane by construction.

But since
\begin{align*}
\Phi^+_{[\lambda]} &= \theset{[1,0], [0, 1], [-1, 0], [0, -1]} = \theset{\alpha, [0, 1], -\alpha, [0, -1]}  \\
\Phi^+_{[\lambda]} \intersect \Delta = \theset{\alpha}  \\
\Delta_{[\lambda]} &= \theset{[1,0]} = \theset{\alpha} \\
.\end{align*}


# Humphreys 3.7

## a

If a module $M$ has a standard filtration and there exists an epimorphism $\phi: M\to M(\lambda)$, prove that $\ker \phi$ admits a standard filtration.

## b

Show by example that when $\lieg = \liesl(2, \CC)$ that the existence of a monomorphism $\phi: M(\lambda) \to M$ where $M$ has a standard filtration fails to imply that $\coker \phi$ has a standard filtration.

