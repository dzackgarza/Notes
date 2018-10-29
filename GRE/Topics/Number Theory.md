
- $a\mid b \iff b = 0 \mod a$
- Notation: $(a,b) = \gcd(a,b)$
- Totient Function
	$$
	\phi(p) = p-1 \\
	\phi(p^k) = p^{k-1}(p-1) \\
	n = pq, (p,q) = 1 \implies \phi(n) = \phi(p)\phi(q)
	$$
	- With these properties, the following formulas can be derived:
	$$\begin{align}
	\phi(n) = \phi(\prod_i p_i^{k_i}) &= \prod_i p_i^{k_i-1}(p_i-1) \\ &= n \left(\frac{\prod_i (p_i-1)}{\prod_i p_i}\right) \\ &= n\prod_i(1 - \frac{1}{p_i})
	\end{align}$$

- Fermat's Little Theorem
$$
x^{p} - x = 0 \mod p \\
x^{p-1} - 1 = 0 \mod p \quad \text{ if } p \not\mid a
$$
- The Euclidean Algorithm
	- todo
- The Jacobi symbol

Solving $ax + by = c$
- Has solutions $\iff c = 0 \mod (a,b) \iff \gcd(a,b) \text{ divides } c$.
