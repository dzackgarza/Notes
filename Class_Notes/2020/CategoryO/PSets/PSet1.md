---
title: Problem Set One
---

# Humphreys 1.1

## a

If $M\in \OO$ and $[\lambda] = \lambda + \Lambda_r$ is any coset of $\lieh\dual/\Lambda_r$, let $M^{[\lambda]}$ be the sum of weight spaces $M_\mu$ for which $\mu \in [\lambda]$.

**Proposition:**
$M^{[\lambda]}$ is a $U(\lieg)\dash$submodule of $M$ 

*Proof:*
It suffices to check that $\lieg\actson M^{[\lambda]} \subseteq M^[\lambda]$, i.e. this module is closed under the action of $U(\lieg)$.
Let $g\in U(\lieg)$ and $m\in M^{[\lambda]}$ be arbitrary.
Choose a ordered basis $\theset{e_i}$ for $\lieg$, then this can be extended to a PBW basis for $U(\lieg)$ given by $\theset{\prod_i e_i^{t_i} \suchthat t_i \in \ZZ}$.
Then take a triangular decomposition $U(\lieg) = U(\lien^-) U(\lieh) U(\lien)$.
We can then write $u = \prod_i a_i^{t_i} \prod_j h_j^{t_j} \prod_k b_k ^{t_k}$ and consider how each component acts.

First considering how the $b_k$ act, we compute their weights; we want to show that if $\mu \in M_\mu$ for some $\mu \in [\lambda]$, then $b_k \actson \mu \in M_{u'}$ for some $m'\in [\lambda]$.

We know $h\actson m = \mu(h) m$ for each $m\in M_\mu$.
Noting that $b_k \in g_\alpha$ for some positive root $\alpha$, we have $[h g] = \alpha(h) g$, and so

\begin{align*}
h \actson (b_k \actson m) 
&= b_k \actson (h\actson m) + [h b_k] \actson m\\
&= b_k \actson (\mu(h) m) + [h b_k] \actson m \\
&= b_k (\mu(h) m) +  \alpha(h) b_k m \\
&= (\mu(h) + \alpha(h)) b_k m \\
&\in M_{\mu + \alpha}
.\end{align*}


But then $\mu + \alpha - \mu = \alpha \in \ZZ \Phi = \Lambda_r$, so $\mu$ and $\mu + \alpha$ are in the same coset $[\lambda]$.
The same argument shows that $h \actson (b_k^{t} \actson m))$ is in the weight space $M_{\mu + t\alpha}$, which still only differs by an integral number of roots.

But this shows that $U(\lien)$ and $U(\lien^-)$ leave this space invariant, and $U(\lieh)$ acts by scaling, which preserves subspaces.
So $M^{[\lambda]}$ is closed under the action of $\lieg$.

$\qed$


Proposition:
$M$ is the direct sum of finitely many submodules of the form $M^{[\lambda]}$.

*Proof:*

By axiom 1 for Category $\OO$, $M$ is finitely generated, say by $\theset{m_j}$, 
This category is closed under subobjects, so if we write $M = \oplus_{[\lambda]} M^{[\lambda]}$ as a union over all cosets, each $M^{[\lambda]}$ is finitely generated as well.
Since $m_1$ is in this direct sum, it is in *finitely* many summands by definition of the direct sum, so for each $j$, $m_j \in \bigoplus_{k=1}^{R_{j}} M^[\lambda_{jk}]$ for some finite constant $R_{j}$ and some coset depending on $j$ and $k$.
But then $M = \bigoplus_j \bigoplus_k M^{[\lambda_{jk}]}$ is still a finite direct sum, which is what we wanted to show.

**Proposition:**
If $M$ is indecomposable, then all weights of $M$ lie in a single coset.


Proof:
By (a), we can write $M = \bigoplus_{[\lambda_i]} M^[\lambda_i]$ for some finite set of $\lambda_i$s.
If $M$ is indecomposable, then there can only be one summand, and so $M = M^[\lambda]$ for exactly 1 $\lambda$.
We can then write $M = \sum_{\mu \in [\lambda]} M_\mu$, which decomposes $M$ as a sum of weight spaces.
But then if any $\sigma \in \Pi(M)$ is a weight, it must be one of the $\mu$ occurring above.
So every weight of $M$ is in the coset $[\lambda]$, and in particular they are all in the same coset.

$\qed$


# Humphreys 1.3*

**Proposition:**
For any $M \in \OO$, $M(\lambda)$ satisfies the following property: 

\begin{align*}
\operatorname{Hom}_{U(\lieg)}(M(\lambda), M)
= \operatorname{Hom}_{U(\lieg)}\left(\operatorname{Ind}_{\lieb}^{\lieg} \CC_{\lambda}, M\right) 
\cong \operatorname{Hom}_{U(\lieb)}\left({\CC}_{\lambda}, \operatorname{Res}_{\lieb}^{{\lieg}} M\right)
.\end{align*}


*Proof:*

Noting that 

- $\Ind_\lieb^\lieg \CC_\lambda = U(\lieg) \tensor_{U(\lieb)} \CC_\lambda$,
- $\Res_\lieb^\lieg M$ is an identification of the $\lieg\dash$module $M$ has a $\lieb\dash$ module by restricting the action of $\lieg$,

consider the following two maps:

\begin{align*}
F: \hom_{U(\lieg)} (U(\lieg) \tensor_{U(\lieb)} \CC_\lambda, M ) &\to \hom_{U(\lieb)} (\CC_\lambda, M) \\
\phi &\mapsto (F\phi: z \mapsto \phi(1 \tensor z))
,\end{align*}

and using the action of $\lieg$ on $M$, 

\begin{align*}
G: \hom_{U(\lieb)} (\CC_\lambda, M) &\to \hom_{U(\lieg)} (U(\lieg) \tensor_{U(\lieb)} \CC_\lambda, M ) \\
\psi &\mapsto (G\psi: g\tensor v \mapsto g \actson \psi(v))
.\end{align*}

Note that the maps $G\psi$ are defined on ordered pairs, but are clearly bilinear and thus uniquely extend to maps on the tensor product.

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


To see that $G$ is well-defined, let $\psi: C_\lambda \to M$ be fixed; we will show that the set map $G\psi: U(\lieg)\tensor C_\lambda \to M$ is $U(\lieg)\dash$linear.
Let $u\in U(\lieg)$, then

\begin{align*}
u\actson G\psi(g\tensor v)
&\definedas u \actson (g\tensor v \mapsto g\actson \psi(v))(g\tensor v) \\
&\definedas u \actson (g\actson \psi(v)) \\
&= (ug) \actson \psi(v) \quad\text{since $M$ is a $\lieg\dash$module with a well-defined action.} \\
&\definedas (g\tensor v \mapsto g\actson \psi(v))(ug \tensor v) \\
&\definedas G\psi(ug \tensor v)
.\end{align*}

To see that $FG$ is the identity, let $\phi$ be defined as above and fix $g_0 \tensor v_0 \in U(\lieg) \tensor \CC_\lambda$.
Then

\begin{align*}
GF\phi(g_0\tensor v_0)
&= G(v \mapsto \phi(1\tensor v)) (g_0 \tensor v_0) \\
&\definedas G(f) \quad\text{for notational convenience} \\
&\definedas G(g\tensor v \mapsto g\actson f(v)) (g_0 \tensor v_0) \\
&= g_0 \actson f(v_0) \\
&= g_0 \actson \phi(1\tensor v_0)\\ 
&= \phi(g\actson (1\tensor v_0)) \quad\text{since $g_0 \in \lieg$ and $\phi$ thus commutes with the $\lieg\dash$action by definition} \\ 
&= \phi(g_0 \actson 1\tensor v_0) \quad\text{by definition of the action on $U(\lieg)\tensor C_\lambda$ as a $U(\lieg)$ module} \\
&\definedas \phi(g_0 \tensor v_0)\\ 
.\end{align*}


To see that $GF \definedas G\circ F$ is the identity, let $\psi$ be defined as above and fix $z_0 \in \CC_\lambda$.
Then

\begin{align*}
FG\psi(z_0)
&= F(g\tensor v \to g\actson \psi(v) )(z_0) \\
&\definedas F(\lambda)(z_0) \quad\text{for notational convenience} \\
&= (v \mapsto \lambda(1\tensor v))(z_0) \\
&= \lambda(1\tensor z_0) \\
&\definedas 1 \actson \psi(z_0) \\
&= \psi(z_0)
.\end{align*}

$\qed$
