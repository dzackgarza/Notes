---
title: Problem Set 8
---

# Problem 1

## Part a

Define a map

$$
\phi_\mathrm{ev}: \hom_R(\ZZ_m, A) \to A \\
(f: \ZZ_m \to A) \mapsto f(1)
$$

Then noting that $\phi_\mathrm{ev}$ is a homomorphism, forcing $f(\overline 0) = 0_A$ (where $\overline 0: \ZZ_m \to A$ is the zero map), we must have
$$
0 = f(0) = f(m) = m f(1),
$$

we must have $mf(1) = 0$ in $A$. So $\im \phi_\mathrm{ev} = \theset{a\in A \mid ma = 0}$.

It is also the case that
\begin{align*}
\ker \phi_{\mathrm{ev}} &= \theset{f \in \hom(\ZZ_m, A) \mid f(1) = 0},
\end{align*}

but if $f(
