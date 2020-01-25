---
title: Problem Sets
---

# 1.1

## a

If $M\in \OO$ and $[\lambda] = \lambda + \Lambda_r$ is any coset of $\lieh\dual/\Lambda_r$, let $M^{[\lambda]}$ be the sum of weight spaces $M_\mu$ for which $\mu \in [\lambda]$.
Prove that $M^{[\lambda]}$ is a $U(\lieg)\dash$submodule of $M$ and that $M$ is the direct sum of finitely many such submodules.

## b

Deduce that the weights of an indecomposable module $M\in\OO$ lie in a single coset of $\lieh\dual/\Lambda_r$.


# 1.3*

Show that $M(\lambda)$ has the following property: 
for any $M \in \OO$, 


\begin{align*}
\operatorname{Hom}_{U(\lieg)}(M(\lambda), M)
= \operatorname{Hom}_{U(\lieg)}\left(\operatorname{Ind}_{\lieb}^{\lieg} \CC_{\lambda}, M\right) 
\cong \operatorname{Hom}_{U(\lieb)}\left({\CC}_{\lambda}, \operatorname{Res}_{\lieb}^{{\lieg}} M\right)
,\end{align*}

where $\Res_\lieb^\lieg$ is the restriction functor.

> Hint: use the universal mapping property of tensor products.

# Relevant information (?):

## 1 

$M \in \OO \implies$

- $M$ is finitely generated as a $U(\lieg)\dash$module.
- $M$ is a weight module, so $M = \bigoplus_{\lambda \in \lieh\dual} M_\lambda$
- For every $v\in M$, $U(\lien) \cdot v$ is finite-dimensional

- $\lieh \leq \lieg$ is the Cartan subalgebra.
- $\Phi \subset \lieh\dual$ is the root system of $\lieg$ relative to $\lieh$.
  - Each $\alpha \in \Phi$ is a root
  - Each root $\alpha$ has a corresponding root space $\lieg_\alpha \definedas \theset{x\in \lieg \suchthat [hx] = \alpha(h) x ~\forall h\in\lieh}$.
- $\Lambda_r \definedas \spanof_\ZZ\theset{\alpha \in \Phi} \subset \CC^n$ is the root lattice.
- $M_\mu \definedas \theset{v\in  M \suchthat h\cdot v = \mu(h) v ~\forall h\in\lieh}$ is the weight space for $\mu$.


## 2
$M(\lambda) = U(\lieg) \tensor_{U (\lieb)} \CC_\lambda$ where $\lieb \leq \lieg$ is a fixed Borel subalgebra corresponding to a choice of positive roots, and $C_\lambda$ is the 1-dimensional $\lieb\dash$module defined for any $\lambda \in \lieh\dual$ by the fact that $\lieb/\lien \cong \lieh$ and thus $\lien \actson \lieh$ can be taken to be a trivial action.
The induction functor is given by $\ind_\lieb^\lieg(\wait) = U(\lieg) \tensor_{U(\lieb)} (\wait)$.

The restriction functor is given by $\res_\lieb^\lieg(\wait) = ?$


Frobenius Reciprocity for groups looks like

\begin{align*}
\hom_{k[G]}(k[G] \tensor_{k[H]} V, W  ) &\to \hom_{k[H]}(V, W) \\
\lambda &\mapsto 1\tensor(\wait) = (v \mapsto \lambda(1\tensor v))\\
(g\tensor v \mapsto g\cdot f(v)) &\mapsfrom f
.\end{align*}

