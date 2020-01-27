---
title: Problem Set One
---

# Humphreys 1.1

## a

If $M\in \OO$ and $[\lambda] = \lambda + \Lambda_r$ is any coset of $\lieh\dual/\Lambda_r$, let $M^{[\lambda]}$ be the sum of weight spaces $M_\mu$ for which $\mu \in [\lambda]$.

**Proposition:**
$M^{[\lambda]}$ is a $U(\lieg)\dash$submodule of $M$ 

*Proof:*


Proposition:
$M$ is the direct sum of finitely many submodules of the form $M^{[\lambda]}$.

*Proof:*


## b

**Proposition:**
The weights of an indecomposable module $M\in\OO$ lie in a single coset of $\lieh\dual/\Lambda_r$.


# Humphreys 1.3*

**Proposition:**
For any $M \in \OO$, $M(\lambda)$ satisfies the following property: 

\begin{align*}
\operatorname{Hom}_{U(\lieg)}(M(\lambda), M)
= \operatorname{Hom}_{U(\lieg)}\left(\operatorname{Ind}_{\lieb}^{\lieg} \CC_{\lambda}, M\right) 
\cong \operatorname{Hom}_{U(\lieb)}\left({\CC}_{\lambda}, \operatorname{Res}_{\lieb}^{{\lieg}} M\right)
.\end{align*}


Proof:

Noting that 

- $\Ind_\lieb^\lieg \CC_\lambda = U(\lieg) \tensor_{U(\lieb)} \CC_\lambda$,
- $\Res_\lieb^\lieg M$ is an identification of the $\lieg\dash$module $M$ has a $\lieb\dash$ module by restricting the action of $\lieg$,

consider the following two maps:

\begin{align*}
F: \hom_{U(\lieg)} (U(\lieg) \tensor_{U(\lieb)} \CC_\lambda, M ) &\to \hom_{U(\lieb)} (\CC_\lambda, M) \\
\phi &\mapsto (F\phi: z \mapsto \phi(1 \tensor z))
,\end{align*}

and

\begin{align*}
G: \hom_{U(\lieb)} (\CC_\lambda, M) &\to \hom_{U(\lieg)} (U(\lieg) \tensor_{U(\lieb)} \CC_\lambda, M ) \\
\psi &\mapsto (G\psi: g\tensor v \mapsto g \cdot \psi(v))
.\end{align*}

It suffices to show that these maps are well-defined and mutually inverse.

To see that $F$ is well-defined, let $\phi: U(\lieg)\tensor C_\lambda \to M$ be fixed; we will show that the set map $F\phi: \CC_\lambda \to M$ is $U(\lieb)\dash$linear.
Let $b\in U(\lieb)$, then 

\begin{align*}
b\actson F\phi(v) 
&\definedas b\actson (z \mapsto \phi(1\tensor z))(v) \\
&\definedas b\actson \phi(1\tensor v) \\
&= \phi(b\actson (1\tensor v)) \quad\text{since $\phi$ is $U(\lieg)\dash$linear and $b\in U(\lieg)$} \\
&= \phi((b\actson 1)\tensor v ) \quad\text{by the definition/construction of $M(\lambda)$ as a $U(\lieg)\dash$module.} \\
&= \phi(1 \tensor (b\actson v)) \quad\text{since $\CC_\lambda$ is a $\lieb\dash$module and the tensor is over $U(\lieb)$}\\
&\definedas (z \mapsto \phi(1\tensor z))(b\actson v) \\
&\definedas F\phi(b\actson v)
.\end{align*}



