---
title: "Real Analysis Qual Prep Week 1: Preliminaries"
---

# Week 1: Preliminaries

## Topics

- Convergence
	- The Cauchy criterion
	-   Uniform convergence, 
		-   $M$-Test
-   $F\_\sigma$ and $G\_\delta$ sets, 
-   Pathological functions and continuity
-   Nowhere density, Baire category, Heine Borel
-   Normed spaces
-   Series and sequences, convergence, small tails, limsup and liminf, Cauchy criteria for sums and integrals
-   Basic inequalites (triangle, Cauchy-Schwarz)
-   Tools from Calculus: MVT, Taylor's theorem & remainder
-   Weierstrass approximation

## Warmup

- Define what it means for a function to be **uniformly continuous**.
- Define what it means for a sequence of functions to converge **pointwise** and to converge **uniformly**.
- Give two different definitions for compactness in a metric space.
- Find an example of a metric space with a closed and bounded subspace that is not compact.
	- How can this be modified to obtain a necessary and sufficient condition?
- Show that if $\sum_{n\in \NN} a_n < \infty$ converges, then $$a_n \ctz{n}$$ and the the tail is small in the following sense: $$\sum_{n > N} a_n \ctz{N}$$
- Is it possible for a function $f:\RR\to \RR$ to be discontinuous precisely on the rationals $\QQ$? If so, produce such a function, if not, why?
	- Can the set of discontinuities be precisely the irrationals $\RR\sm\QQ$?
- Find a sequence of continuous functions that does *not* converge uniformly, but still has a pointwise limit that is continuous.


## Exercises

- Prove the uniform limit theorem: a uniform limit of continuous function is continuous.
- Show that the uniform limit of bounded functions is uniformly bounded.
- Construct sequences of functions $\ts{f_n}_{n\in \NN}$ and $\ts{g_n}_{n\in \NN}$ which converge uniformly on some set $E$, and yet their product sequence $\ts{h_n}_{n\in \NN}$ with $h_n \da f_n g_n$ does *not* converge uniformly.
	- Show that if $f_n, g_n$ are additionally bounded, then $h_n$ does converge uniformly.
- Show that if $f_n: [a, b]\to \RR$ are continuously differentiable with derivatives $f_n'$, the sequence of derivatives $f_n'$ converges uniformly to some function $g$, and there exists *at least one* point $x_0$ such that $\lim_n f_n(x_0)$ exists, then $f_n \to f$ uniformly to some differentiable $f$, and $f' = g$.
	- Find a sequence of functions such that 
	$$\frac{d}{d x} \lim _{n \rightarrow \infty} f_{n}(x) \neq \lim _{n \rightarrow \infty} \frac{d}{d x} f_{n}(x)$$
	- Find a uniform limit of differentiable functions that is not differentiable.

- ![](../../attachments/Pasted%20image%2020210517004900.png)
- ![](../../attachments/Pasted%20image%2020210517004915.png)
- ![](../../attachments/Pasted%20image%2020210517004809.png)

## Qual Questions

![](../../attachments/Pasted%20image%2020210517005021.png)

![](../../attachments/Pasted%20image%2020210517005042.png)
![](../../attachments/Pasted%20image%2020210517005050.png)

![](../../attachments/Pasted%20image%2020210517005131.png)

