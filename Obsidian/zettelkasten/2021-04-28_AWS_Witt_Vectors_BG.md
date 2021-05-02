---
date: 2021-04-28 17:04:58
tags: 
  - Unfiled
---

# Witt Vectors

General idea: given a commutative ring $R$, a Witt vector $w$ will be an infinite sequence of elements of $R$. Taking $W(R)$ to be a collection of such $w$, we will equip $W(R)$ with its own ring structure.

One useful fact will be that $W(\FF_p) = \ZZ_p$, the ring of $p\dash$adic integers. The construction essentially mirrors a way of obtaining $\ZZ_p$ from the finite field $\FF_p$.

> Quick review: the $p\dash$adic integers are metric space completions of $\ZZ$ that are not $\QQ$. Two numbers are "close" in the $p\dash$adic metric exactly when they differ by a large power of $p$.

The initial application of Witt vectors comes from the problem of finding "nice" expressions for the sums and products of $p\dash$adic integers. In general, if $x\in \ZZ_p$, one can write $x = \sum_{i=0}^\infty a_i p^i$ with $a_i \in \FF_p$, which is a convergent power series in the $p\dash$adic metric. 

One can thus represent $x$ an element of $\prod_{i=1}^\infty \FF_p$, where we just need to find the appropriate ring structure. However, this particular representation proves difficult to compute with. As it turns out, an alternative choice that works well is taking coefficients from a particular subset of $\ZZ_p$.

There is a map called the *Teichmüller character*, 

$$
\omega: \FF_p^\times \to \ZZ_p^\times,
$$

and so another choice of $a_i$ can be obtained by looking at 
$$
U \definedas \theset{x \in \ZZ_p \suchthat x^{p}-x=0},
$$ 
the $(p-1)\dash$th roots of unity in $\ZZ_p$. This arises from the fact that $\FF_p^\times \cong \ZZ/(p-1)\ZZ$, and so every nonzero element of $\FF_p$ is a root of $x^{p-1}-1$. Using Hensel's lemma, these lift to representatives in $\ZZ_p$ satisfying the same equation.

If we then let $a_i \in U \union \theset{0}$; we can pull $U$ back along $\omega$ to map the latter choices of $a_i$ to the former, so this yields an alternative representation of $x$. These characters can be computed explicitly in the forward direction: to find $x =[x_1, x_2, \cdots ]$ on the Teichmüller side, one simply computes $x_i$ recursively via the conditions $$x_0 = x \\ x_i = x_{i-1} \mod p^i,\\ x_i^{p-1}-1=0 \mod p^{i+1}.$$

Now instead of looking at infinite sequences of elements of $\FF_p$, we can look at infinite sequences of elements in $\omega(\FF_p) \subseteq \ZZ_{p}$, and Witt vectors allow us to explicitly compute with such things.

One can find explicit expression for the sums and products of such things, and it turns out these are "functorial enough" to be generalized to arbitrary rings. In general, one can produce $W(R)$, the big Witt ring with coefficients in $R$, by first defining a *divisor-stable set* $P$, which satisfy $n\in P \implies $ all proper divisors of $n$ are in $P$. Examples includes $P=\theset{1,2,\cdots n}$ and $P = \theset{1,p,p^2, \cdots}$.

One then defines 
$$
W_P(R) = R^P \definedas \prod_{i\in P} R ,
$$ 

and $W(R) = W_\NN(R)$.

A final important part of the definition are the *Witt polynomials*
$$
w_n: W_P(R) \to R \\
w _ { n } = \sum _ { d | n } d x _ { d } ^ { n / d } \in \ZZ \left[ \left\{ x_ { d } \suchthat d \divides n \right\} \right],
$$

which, if we write $x = [x_i]_{i\in P}$ (the *Witt components of $x$*), yields a map
$$
w_\wait :W_P(R) \to R^P \\
x \mapsto [w_i(x)]_{i\in P}
$$

where the $w_i(x)$ are referred to as the *ghost components* of $x$.

Given all of this, for any such $P$, we obtain a covariant endofunctor on $\ZZ\dash$algebras. $\qed$
