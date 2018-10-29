
- $a\mid b \iff b = 0 \mod a$
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
	$$ x^n - x = 0 \mod n \\
	x^{p-1} - 1 = 0 \mod p $$
- The Euclidean Algorithm
- The Jacobi symbol

Solving $ax + by = c$
- Has solutions $\iff$
