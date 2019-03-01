# 1

Let $X$ be the subspace of the unit cube $I^3$ consisting of the union of the 6 faces and the 4 internal diagonals. Compute $\pi_1(X)$.

**Solution**:

# 2

Let $X$ be an arbitrary topological space, and compute $\pi_1(\Sigma X)$.

**Solution**:

Write $\Sigma X = U \union V$ where $U = \Sigma X - (X\cross[0,1/2])$ and $U = \Sigma X - X\cross[1/2, 1])$. Then $U\intersect V = X \cross \{1/2\} \cong X$, so $\pi_1(U\intersect V) =\pi_1(X)$.

But both $U$ and $V$ can be identified by the cone on $X$, given by 
$CX = \frac{X \cross I}{X \cross 1}$, by just rescaling the interval with the maps:

$i_U: U \into CX$ where $(x,s) \mapsto (x, 2s-1)$
(The second component just maps $[1/2, 1] \into [0,1]$. )

$i_V: V \into CX$ where $(x, s) \mapsto (x, 2s)$.
(The second component just maps $[0,1/2] \to [0, 1]$)

But $CX$ is contractible by the homotopy $H:CX \cross I \into CX$ where $H((c,s), t) = (c, s(1-t))$.

So $\pi_1(U) = \pi_1(V) = 0​$. 

By Van Kampen, we have $\pi_1(X) = 0 \ast_{\pi_1(X)} 0 = 0.$

# 3

Let $X = S^1 \cross S^1$ and $A\subset X$ be a subspace with $A \cong S^1 \vee S^1$. Show that there is no retraction from $X$ to $A$.

**Solution**: 

We have $\pi_1(S^1 \cross S^1) = \pi_1(S^1) \cross \pi_1(S^1)$ since $S^1$ is path-connected (by a lemma from the problem sets), and this equals $\ZZ \cross \ZZ$.

We also have $\pi_1(S^1 \vee S^1) = \pi_1(S^1) \ast_{\theset{pt}} \pi_1(S^1)$, which by Van-Kampen is $\ZZ\ast \ZZ$.

Suppose $X$ retracts onto $A$, we can then look at the inclusion $\iota: A \injects X$. The induced homomorphism $\iota_*: \pi_1(A) \injects \pi_1(X)$ is then also injective, so we've produced an injection from $f: \ZZ \ast \ZZ \injects \ZZ \cross \ZZ$.

This is a contradiction, because no such injection can exists. In particular, the commutator $[a,b]$ is nontrivial in the source. But $f(aba^{-1}b^{-1}) = f(a)f(b)f(a)^{-1}f(b)^{-1}$ since $f$ is a homomorphism, but since the target is a commutative group, this has to equal $f(a)f(a)^{-1} f(b)f(b)^{-1} = e$. So there is a non-trivial element in the kernel of $f$, and $f$ can not be injective - a contradiction.

# 4

Show that for every map $f: S^2 \to S^1$, there is a point $x\in S^2$ such that $f(x) = f(-x)$.

**Solution**:

Suppose towards a contradiction that $f$ does not possess this property, so there is no $x\in S^2$ such that $f(x) = f(-x)$. 

Then define $g: S^2 \into S^1$ by $g(x) = {f(x) - f(-x)}$; by assumption, this is a nontrivial map, i.e. $g(x) \neq 0$ for *any* $x\in S^2$.

In particular, $-g(-x) = -{(f(-x) - f(x))} = {f(x) - f(-x)} = g(x)$, so $-g(x) = g(-x)$ and thus $g$ commutes with the antipodal map $\alpha: S^2 \to S^2$. 

This means $g$ is constant on the fibers of the quotient map $p: S^2 \into \RP 2$, and thus descends to a well defined map $\tilde g: \RP 2 \into S^1$, and since $S^1 \cong \RP 1$, we can identify this with a map $\tilde g: \RP 2 \into \RP 1$ which thus induces a homomorphism $\tilde g_*: \pi_1(\RP 2) \to \pi_1(\RP 1)$.

Since $g$ was nontrivial, $\tilde g$ is nontrivial, and by functoriality of $\pi_1$, $\tilde g_*$ is nontrivial.

But $\pi_1(\RP 2) = \ZZ_2$ and $\pi_1(\RP 1) = \ZZ$, and $\tilde g_*: \ZZ^2 \into \ZZ$ can only be the trivial homomorphism - a contradiction.



**Alternate Solution**

Use covering space $\RR \surjects S^1$?

# 5

How many path-connected 2-fold covering spaces does $S^1 \vee \RP 2$ have? What are the total spaces?

**Solution**:

First note that $\pi_1(X) = \pi_1(S^1) \ast_{\pt} \pi_1(\RP 2)$ by Van-Kampen, and this is equal to $\ZZ \ast \ZZ_2$.

# 6

Let $G = <a, b>$ and $H \leq G$ where $H = <aba^{-1}b^{-1},~ a^2ba^{-2}b^{-1},~ a^{-1}bab^{-1},~ aba^{-2}b^{-1}a>$. To what well-known group is $H$ isomorphic?

**Solution**: