Sylow Theorems
%

\[n_p = 1 \mod p\]
\[n_p \mid m\]
\[ n_p = [G: N_G(S_p)] \]

%

group theory

---

Prove or disprove: \[\# G = p^k \implies Z(G) \neq \{e\}\]

%

By the class equation. (TODO)

%

group theory

---


Class Equation

%

\[ \# G = \# Z(G) + \sum_{\text{one $x_i$ from each conjugacy class}} C_G(x_i) \]

%

group theory

---

Definition: A *simple* group.
%
\[H \trianglelefteq G \implies H = 1, G\]
%

group theory

---

Definition: *Upper Central Series*.
%
"Higher Centers":
\[
Z_1 = Z(G) \\
Z_2 \coloneqq Z_2 \leq G \suchthat Z_2/Z_1 = Z(G/Z(G)) \\
Z_{i+1} \coloneqq Z_{i+1} \leq G \suchthat Z_{i+1}/Z_i = Z(G/Z_i) \\
1 \leq Z_1 \leq Z_2 \leq \cdots
\]
%

group theory

---

Definition: *Lower Central Series*.
%
"Iterated Commutators"
\[
G_1 \coloneqq [G, G] \\
G_2 \coloneqq [G_1, G]\\
G_{i+1} \coloneqq [G_i, G] \\
G \geq G_1 \geq G_2 \geq \cdots
\]
%

group theory

---

Eisenstein Criterion
%
If $P(x) = \sum a_i x^i$ in $\mathbb{Q}[x]$, and there is some $p$ such that

- $p$ divides all $a_i$ but not $a_n$, and
- $p^2$ does not divide $a_0$,

Then $P(x)$ is irreducible over $\mathbb{Q}$.

(Note: you can replace $x$ with $x+a$ for any $a$ to apply this.)

%

group theory

---

Alternating Group

%
Subgroup of *even* permutations.

Example: $A_3 = \theset{e, (123), (213)}$

%

group theory

---

Even/odd permutations:

%
Parity of number of transpositions.

Alternatively, as product of disjoint cycles:

- Odd iff odd number of even length cycles
- Even iff even number of even length cycles, or any number of odd length cycles.

%

group theory

