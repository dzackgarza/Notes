# Witt Vectors

General idea: given a commutative ring $R$, a Witt vector $w$ will be an infinite sequence of elements of $R$. Taking $W(R)$ to be a collection of such $w$, we will equip $W(R)$ with its own ring structure.

One useful fact will be that $W(\FF_p) = \ZZ_p$, the ring of $p\dash$adic integers.

> Quick review: the $p\dash$adic integers are metric space completions of $\ZZ$ that are not $\QQ$. Two numbers are "close" in the $p\dash$adic metric exactly when they differ by a large power of $p$.

The initial application of Witt vectors comes from the problem of finding "nice" expressions for the sums and products of $p\dash$adic integers. In general, if $x\in \ZZ_p$, one can write $x = \sum_{i=0}^\infty a_i p^i$ with $a_i \in \FF_p$, although this particular representation proves difficult to compute with. 

One can instead look at $U$, the $(p-1)$st roots of unity in $\ZZ_p$, i.e. the roots of $x^p - x$, and alternatively take $a_i \in U \union \theset{0}$. There is a map call the *Teichmüller character*, 

$$
\omega: \FF_p^\times \to \ZZ_p^\times,
$$

and so we can pull back $U$ along this map