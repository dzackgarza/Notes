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
U \definedas \theset{x \in \ZZ_p \suchthat x^p-x=0},
$$ 
the "$(p-1)\dash$th roots of unity in $\ZZ_p$. We then let $a_i \in U \union \theset{0}$; we can pull $U$ back along $\omega$ to map the latter choices of $a_i$ to the former, so this yields an alternative representation of $x$. Now, instead of looking at infinite sequences of elements of $\FF_p$, we can look at infinite sequences elements in $\omega(\FF_p) \subseteq \ZZ_{p}$, and Witt vectors allow us to explicitly compute with such things.