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
2. In general, the associated simple system $\Delta_{[\lambda]} \neq \Phi^+_{[\lambda]} \intersect \Delta$.

### Proof of Proposition 1


We'll use the definition that for an abstract root system $\Phi$, a positive system $\Phi^+$ is defined by picking a hyperplane $H$ not containing any roots and taking all roots on one side of this hyperplane.

However, if every element of $\Phi^+$ is on one side of $H$, then any subset satisfies this property as well, thus $\Phi_{[\lambda]} \intersect \Phi^+$ consists only of positive roots and thus forms a positive system.

### Proof of Proposition 2

Concretely, we can realize $\Phi$ and $\Delta$ as subsets of $\RR^2$ in the following way:
\begin{align*}
\Phi &= P_1 \disjoint P_2 \definedas \theset{[1,0], [0, 1], [-1, 0], [0, -1]} \disjoint \theset{[1,1], [-1, 1], [1, -1], [-1, -1]} \\
\Delta &\definedas \theset{\alpha, \beta} \definedas \theset{[1, 0], [-1, 1]}
,\end{align*}
where we note that $P_1$ consists of short roots (of norm 1) and $P_2$ of long roots (of norm $\sqrt{2}$) and we've chosen a simple system consisting of one short root and one long root.

Now by definition,
\begin{align*}
\Phi_{[\lambda]} &\definedas \theset{\gamma \in \Phi \suchthat \inner{\lambda}{\gamma\dual} \in \ZZ}, \quad \quad \gamma\dual \definedas {2 \over \norm{\gamma}^2} ~\gamma, \\
\Delta_{[\lambda]} &\definedas \theset{\gamma \in \Delta \suchthat \inner{\lambda}{\gamma\dual} \in \ZZ} 
.\end{align*}

Now choosing $\lambda \definedas {\alpha \over 2} = \thevector{\frac 1 2, 0}$, we now consider the inner products $\inner{\lambda}{\gamma\dual}$ for $\gamma \in \Phi$: 

Thus
\begin{align*}
\gamma_1 \in P_1 &\implies  \inner{\thevector{\frac 1 2, 0}}{ 2 \gamma_1} = 2\qty{\frac 1 2} \inner{[1, 0]}{\gamma_1} = \qty{\gamma_1}_1 \in \theset{0, \pm 1} \in \ZZ \\
\gamma_2 \in P_2 &\implies \inner{\lambda}{\gamma_2\dual} = \inner{\thevector{\frac 1 2, 0}}{\frac 2 {\qty{\sqrt 2}^2}\thevector{\pm 1, \pm 1}} = \pm \frac 1 2 \not\in \ZZ 
\end{align*}


where $(\gamma_1)_1$ denotes the first component of $\gamma_1$.

We thus find that 
\begin{align*}
\Phi_{[\lambda]} &= P_1 && \text{the short roots} \\
\Delta_{[\lambda]} \Phi_{[\lambda]} \intersect \Delta &= \theset{\alpha} && \text{the single short simple root}
.\end{align*}

Choosing the following hyperplane $H$ not containing any root, we can choose a positive system:

![](figures/image_2020-04-26-16-35-07.png)\\

\begin{align*}
\Phi^+ = \theset{\beta, \beta+ \alpha, \beta + 2\alpha, \alpha}
\end{align*}

where we can note that $\Phi^+ \intersect \Delta = \Delta$, since we've placed both simple roots on the positive side of this hyperplane by construction.

But by taking roots on the positive side of this plane, we have
\begin{align*}
\Phi_{[\lambda]} = \theset{\alpha, -\alpha, \alpha+\beta, -\alpha-\beta}    \implies \Phi^+_{[\lambda]} &= \theset{\alpha, \alpha+\beta}
\end{align*}

where we can now note that a simple system in *this* root system must still have rank 2, so we can take $\Delta_{[\lambda]} = \theset{\alpha, \alpha + \beta}$. 
But now we can note
\begin{align*}
\Delta_{[\lambda]} = \theset{\alpha, \alpha+ \beta} {\color{red}\neq }
\theset{\alpha} = \theset{\alpha, \alpha+\beta} \intersect \theset{\alpha, \beta} 
=\Phi^+_{[\lambda]} \intersect \Delta
,\end{align*}
which is what we wanted to show.


# Humphreys 3.7

## a

If a module $M$ has a standard filtration and there exists an epimorphism $\phi: M\to M(\lambda)$, prove that $\ker \phi$ admits a standard filtration.

## b

Show by example that when $\lieg = \liesl(2, \CC)$ that the existence of a monomorphism $\phi: M(\lambda) \to M$ where $M$ has a standard filtration fails to imply that $\coker \phi$ has a standard filtration.

