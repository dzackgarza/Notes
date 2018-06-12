# Spectral Sequence of a Filtration

Suppose we are given a chain complex $(C^\wait, d^\wait)$ and we want to compute its homology. We assume that $C^{<0} = 0$ (where we use homological indexing and $d^\wait$ is of degree $-1$) along with an ascending, bounded filtration $F^\wait C^\wait$ which can be written as

$$0 =F^0C^\wait \subseteq F^1C^\wait \subseteq \ldots \subseteq F^{p-1}C^\wait \subseteq F^pC^\wait = C^\wait$$

and satisfies $\bigcup_{i} F^i C^\wait = C^\wait$ and $\bigcap_{i} C^\wait = \theset{0}$.

Then take the associated graded complex, defined by

$$
G^i C^\wait = \frac{F^i C^\wait}{F^{i-1} C^\wait}
$$

This yields a collection of short exact sequences of the form
$$
0 \to F^{i-1} C^\wait \to F^i C^\wait \to G^i C^\wait \to 0
$$

We now verify three facts:

1. Each $F^i C^\wait$ is a chain complex (restrict the differential).
2. Each $G^i C^\wait$ is a chain complex (differential well-defined on quotient).
3. $F^\wait$ induces a filtration on $H_*(C^\wait)$, which we'll denote $F^\wait H_*(C^\wait)$.

Given the induced filtration on homology, we can take its associated graded complex:

$$
F^i H_j(C^\wait) = \frac{?}{?} = \theset{\alpha \in H_j(C^\wait) \mid \alpha = [x] \text{ for some } x \in F^iC^j}
$$

Which yields a collection of short exact sequences
$$ 0 \to F^{i-1}H_j(C^\wait) \to F^iH_j(C^\wait) \to G^iH_j(C^\wait) \to 0$$

And since $F^pC^\wait = C^\wait$, we have $F^pH_j(C^\wait) = H_j(C^\wait)$. Assuming all sequences split and all extensions are unique, we can rewrite the left hand side:

$$
\begin{align}
F^pH_j(C^\wait) &= F^{p-1}H_j(C^\wait) \oplus G^pH_j(C^\wait) \\
&= F^{p-2}H_j(C^\wait) \oplus G^{p-1}H_j(C^\wait) \oplus G^pH_j(C^\wait) \\
&\cdots \\
&= \bigoplus_{0\leq i \leq p}G^iH_j(C^\wait)
\end{align}
$$

So if we are able to compute each $G^iH_j(C^\wait)$, we can recover the desired homology.

We proceed by computing $H_j(G^i C^\wait)$ instead, which we hope will be related to $G^i H_j (C^\wait)$.


By an earlier argument, we know that there exists induced differentials on the associated graded complex

$$
d_{i,j}: G^i C^j \to G^{i} C^{j-1}
$$

We thus build the 0 page of our spectral sequence by defining

$$E^0_{p,q} = G^p C^{p+q}$$

with a defined differential

$$d^0_{i,j}: E^0_{i,j} \to E^0_{i-1, j}$$

and arranging these in columns, yielding the following situation

![Page 0 with differentials](../../Latex/SSFiltrationStack.png)

Now, since each $G^i C^\wait$ is a chain complex, we can take the homology with respect to these differentials, so we define

$$
E^1_{i,j} = \frac
{\ker\left( d^0_{i,j}: E^0_{i,j} \to E^0_{i-1, j} \right)}
{\im \left(d^0_{i+1,j}: E^0_{i+1,j} \to E^0_{i,j} \right)} \definedas H_{i+j}(G^i C^\wait)
$$

Which yields the following $E^1$ page:

![Page 0 with differentials](../../Latex/SSFiltrationStackP1.png)

Which by definition is

![Page 0 with differentials](../../Latex/SSFiltrationStackP1Homology.png)

We now claim that there is a differential

$$
d_1^{i,j}: H_n(G^i C^\wait) \to H_{n-1}(G^{i-1}C^\wait)
$$
