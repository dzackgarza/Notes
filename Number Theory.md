# 10/20/2017

**Theorem**: If you have a Dedekind ring, on the level of ideals there is unique factorization. $R$ dedekind, $I \neq 0$ then $I$ factors uniquely into prime ideals.

Main Lemma: Take $p$ maximal, then $p^{-1}I \neq I$. $I^{-1} = \{ x\in K \mid xI \in R\}$ a fractional ideal.

Corollary: $p$ prime implies $p^{-1}p=R$
Proof: $p \subsetneq p^{-1}p \subseteq R$. But $P$ is maximal.

## Proof

### Uniqueness

Suppose $I = p_1 \cdots p_r = q_1 \cdots q_s$. Then $I \subseteq p_1$. So some $q_i \in p_1$. Reorder such that $p_1 = q_1$, multiply by $p_1^{-1}$ Using the corollary above, repeat inductively.

### Existence

Let $\Sigma = \{I \text{ without prime factorization}\} \neq 0$. Since $R$ is noetherian, choose $J\in \Sigma$ a maximal element. $J \neq R$, and $J \subseteq p$ a maximal ideal. Then $Jp^{-1} \subseteq pp^{-1} = R$. By the lemma, $J \subsetneq Jp^{-1}$. Using corollary, show  $Jp^{-1} \not\in \Sigma, Jp^{-1} = p_2 \cdots p_r$. so $J = pp_2\cdots p_r \not\in \Sigma$. $\square$



## Corollary

$I^{-1}I = R$. (Really is the group-theoretic inverse, so $(IJ)^{-1} = J^{-1}I^{-1}$ etc)

Proof: $I = p_1 \cdots p_r$, check that $I^{-1}I = p_1^{-1}\cdots p_r^{-1}$.



$\text{div}(R) = \{  \text{fractional nonzero ideals}\}$ is a free abelian group on the maximal ideals, so $\cong \oplus_p \mathbb{Z}$.

"To contain is to divide", i.e. $I, J \in R$ and $I \subset J \Rightarrow J \mid I$ so $J = II'$. 
Exercise: $IJ = I \cap J$.



## Corollary

1. $0 \neq I \subset J$ then $J = I + (x)$ for some $x\in R$.
2. $I$ an ideal,$\forall 0\neq a \in I, I = (a,b)$ for some $b\in I$.
3. $I \neq 0$, then there exists $0\neq I^{*}$ such that $II^{*}$ is principal. Can take $I^{*}$ coprime to $I$.

### Proof

1. Let $I = \Pi p_i^{a_i}$ and $J = \Pi p_i^{b_i}$. Since $J \mid I, b_i \leq a_i$ for all $i$.
   For each $i$, pick $x_i \in p_i^{b_i} - p_i^{b_{i+1}}$. By CRT, $\exists x\in R \mid x = x_i \mod p_i^{a_i}$ since $p_i^{a_i} + p_j^{a_j} = R$ when $i\neq j$.
   Then $I +(x) \subset J$. But $I+(x) = \Pi p_i ^{c_i}, b_i \leq c_i \leq a_i$, forcing $c_i = b_i$.
2.  ?
3. Pick any $a\in I$, then $(a) = \Pi p_i ^{d_i}$ and $I = \Pi p_i ^{a_i}$ where $d_i \geq a_i$. Then take the integral ideal $I^{*} = \Pi p_i^{d_i - a_i} \subset R$, and modify it to make it coprime to $I$. How? We're given $J$, and $IJ \subset I$ and by (1), $I = IJ + (x)$. So $(x) \subset I$ and $(x) = II^*$.
   Claim: $I^*$ is coprime to $J$. 
   Proof: $IJ + II^* = I$, multiply by $I^{-1}$ to obtain $J+I = R$.



# Theorem

$\text{div}(R) = \oplus_p \mathbb{Z}$ is a free abelian group, $P(R) = \{ xR: x\in K^\times\}$ is a subgroup, so ideal class group $\text{Cl}(R) := \text{Div}(R) / P(R)$: every abelian group is the idea class group for some dedekind ring $R$.

Example: Let $R = \mathbb{C}[x,y] / (y^2-x^3-ax-b)$. Then $\text{Cl}(R)$ is uncountable (see Jacobian?). But for number fields, the class group is finite.

# Theorem

$K$ a number field, $\text{Cl}_K = \text{Cl}(\mathcal{O}_K)$ is a *finite* group. The order of the group is called the class number, measures the failure of unique factorization ($h_K$). $h_K = 1 \iff \mathcal{O}_K ~\text{PID} \iff \mathcal{O} ~\text{UFD}$.

# Theorem

$\exists M > 0$ such that every nonzero $I \subset \mathcal{O}_K$ contains some $\alpha \neq 0$ such that $| N(\alpha) | \leq M .N(I)$

## Corollary

Every ideal class in $\mathcal{O}_K$ contains a nonzero  ideal $I$ with $N(I) \leq M$, so $h_K < \infty$. Why? Only finitely many ideals satisfying this condition! $N(I) = m, m\mathcal{O}_K \subset I, \mathcal{O}_K / m\mathcal{O}_K$.

Proof: For $c \ in \text{Cl}_K$, say $c^{-1} = [I]$ with $I \in \mathcal{O}_K$. Pick $\alpha \neq 0$ in $I$ such that $| N(\alpha) | \leq M . N(I)$. $(\alpha) \subset I, (\alpha) = IJ$ for some $J$, so $[J] = [I]^{-1} = c$, so $N(J) = N((\alpha))N(I)^{-1}$ since the norm is multiplicative. So $N(J) = N(\alpha)N(I)^{-1} \leq M$ (not obvious that norm of ideal is norm of generator).

Will be able to compute $M$ explicitly (the Minkowski bound).