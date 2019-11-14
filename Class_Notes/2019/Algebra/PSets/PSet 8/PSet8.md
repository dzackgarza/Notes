---
title: Problem Set 8
---

# Problem 1

## Part a

Define a map

$$
\phi_\mathrm{ev}: \hom_\ZZ(\ZZ_m, A) \to A \\
(f: \ZZ_m \to A) \mapsto f(1)
$$

Then noting that $\phi_\mathrm{ev}$ is a homomorphism, forcing $f(\overline 0) = 0_A$ (where $\overline 0: \ZZ_m \to A$ is the zero map), we must have
$$
0 = f(0) = f(m) = m f(1),
$$

we must have $mf(1) = 0$ in $A$. So 
$$
\im \phi_\mathrm{ev} = \theset{a\in A \mid ma = 0} \definedas A[m].
$$

It is also the case that
\begin{align*}
\ker \phi_{\mathrm{ev}} &= \theset{f \in \hom_\ZZ(\ZZ_m, A) \mid f(1) = 0} = \theset{\overline 0},
\end{align*}

which follows from the fact that $\ZZ_m = \generators{1 \mod m}$ and $A = \generators{1_A}$ as $\ZZ\dash$modules, so if $f(1 \mod m) = 0_A$ then 
$$
f(n \mod m) = nf( 1 \mod m) = 0
$$ 

and so $f$ is necessarily the zero map. So $ker \phi = \overline 0$. 

We can then apply the first isomorphism theorem,
$$
\frac{\hom_\ZZ(\ZZ_m, A)}{\ker \phi_{\mathrm{ev}}} \cong \im \phi_{\mathrm{ev}} \implies \hom_\ZZ(\ZZ_m, A) \cong A[m].
$$

## Part 2

The claim is that $\ZZ_n[m] \cong \ZZ_{(m, n)}$, from which the result immediately follows by part 1.

Expanding definitions, we have
\[
\begin{align*}
\ZZ_n[m] &= \theset{x \in \ZZ_n \suchthat mx = 0} \\
&= \theset{x \in \ZZ_n \suchthat o(x) \divides m ~\text{ and }~ o(x) \divides n} \\
&= \theset{x \in \ZZ_n \suchthat o(x) \divides \gcd(m, n)} \\
&\cong \ZZ_{\gcd(m, n)}
,\end{align*}
\]

where the latter identification can be made by constructing
$$
\phi: \ZZ \to \ZZ_n[m] \\ 
x \mapsto x\mod n
$$

Then $\ker \phi = \theset{x\in \ZZ \suchthat x \equiv 0 \mod n ~\text{ and }~ mx = 0}$
