# Number Theory

## Theorem

$k$ a number field, $n = [k: Q]$, Then $\exists M >0$ such that every nonzero ideal $I \in O_k$ contains and $\alpha\neq 0$ such that $|N(\alpha)| \leq M N(I)$.

### Proof

Pick a $Z$ basis $\{\alpha_i\}^n$ for $O_k$. Let $m \geq 1$ be an integer such that $m^n \leq N(I) \leq (m+1)^n$. 
Define $\Sigma = \{ \sum m_j\alpha_j \mid 0 \leq m_j \leq m\} \subseteq O_k$.
Then $\# \Sigma = (m+1)^n > N(I)$ by pigeonhole principle.
So there exist $x,y \in \Sigma, x\neq y, x-y \in I$. Claim: Take $\alpha := x-y$, this works.

Why? $\alpha  = \sum_{j=1}^n m_j \alpha_j$, where $|m_j| \leq m$. Then $N(\alpha) = \prod_{i=1}^n |\sigma_i(\alpha)| \leq \prod_{i=1}^n \sum_{j=1}^n |m_j| |\sigma_i(\alpha_j)| \leq m^n \prod \sum |\sigma_i(\alpha_j)| \leq M N(I)$ ,
where last sum/product term equals $M$, depending on choice of basis.

## Corollary

Every ideal class in $\text{Cl}_k$ contains an ideal $I\in O_k$ with $N(I) \leq M$.

### Proof

$c = [J]^{-1}$ some $J \in O_k$, apply theorem to $J$. So $\exists \alpha \neq 0 \in J$ where $|N(\alpha)| \leq MN(J)$.
So $(\alpha) = JI$ for some $I \in O_k $, works since $(I \in c)$, and $[1] = [J][I]$.

## Corollary

$h_k < \infty$, take $c_i \in \text{Cl}_k, c_i \in I_i$ with $N(I_i) \leq M$. There are only finitely many $I \in O_k$ with $N(I) = m$. Why? $mO_k \in I, O_k/mO_k$ is finite.

## Example

$k = Q(\sqrt{d})$, $d$ squarefree. If $d\neq 1 \mod 4$ then $O(k) = Z[\sqrt{d}], d_k = 4d$. 
Then $M_1 = (1+|\sqrt{d}|)(1-|\sqrt{d}|) = (1+\sqrt{|d|})^2$.
$M_2 = \frac{2}{4} (\frac{4}{\pi})^2\sqrt{4|d|}$, so $\sqrt{d}$ if $d > 0$, else $(4/\pi) \sqrt{|d|}$.

## Theorem

Take $k\in Q(\alpha), \alpha \in O_k$ an algebraic integer. Suppose $p \not\mid [O_k : Z[\alpha]]$. Then factor the minimal polynomial $\bar{f_\alpha}$ into irreducibles:

$\bar{f_\alpha}(x) = \bar{h_1}(x)^{e_1} \cdots \bar{h_t}(x)^{e_t}$. Choose lifts $h_i \in Z[x]$, then 

$(p) = pO_k = p_1^{e_1} \cdots p_t^{e_t}$ where $p_i = (p, h_i(\alpha))$ and $f_i = \text{deg}(h_i)$. 

(That is, factor minimal polynomial mod $p$ and read off.)

## Example

Claim: $k=Q(\sqrt{2})$ has class number $h_k = 1$. Note $O_k = Z[\sqrt{2}]$ is a UFD. 
$M_1 = (1+\sqrt{2})^2 \approx 5.82 < 6$, $M_2 = \sqrt{2} < 2$, so $h_k = 1$.
Can check that $x^2-2$ is irreducible mod $p=3,5$. But $p=2$ yields $(2) = (\sqrt{2})^2$. Theorem tells you $p=3,5$ are inert. Norms are 9, 25. 

Since $N(I) \leq M_1$, we must have $I = (1), (\sqrt{2}), (2)$ of norms $1,2,4$, but these are all principal, so every ideal class is trivial.

## Example

$k = Q(\sqrt{-5})$ has $h_k = 2$. $O_k = Z[\sqrt{-5}]$ and $d_k = 4(-5) = -20$. 
$M_1 = (1+\sqrt{5})^2 < 11$
$M_2 = (4/\pi)\sqrt{5} < 3$ (Minkowski bound)

So just need to worry about $p=2$. Look at $f(x) = x^2  + 5 \mod 2 = (x+1)^2 \mod 2 Z[x]$, then $(2) = p^2, p = (2, 1 + \sqrt{-5})$. But $p$ is not principal - why?

Suppose it is, then $p = (\alpha)$ and $2 = N(p) = |N(\alpha)| = a^2 + 5b^2$ which has no solutions.

So generally, using Minkowski bound gives $N(I) \leq M_2 \iff I = (1) ~\text{or}~ (p)$.

## Theorem

$y^2=x^3-5$ has no solutions over $Z$.

### Proof

Observation: $x$ must be odd, else $y^2 = -1 \mod 4$.
Observation: $x,y$ coprime. If $d|x$ and $d|y$ then $d=5$, but read equation mod 25.

Factor in $Z[\sqrt{-5}]$, equals $x^3 = y^2 + 5 = (y+\sqrt{-5})(y-\sqrt{-5})$, coprime. Why?

Suppose there is a prime ideal $p$ dividing both. Then $p$ divides the sum, so $2y \in p$. But $p$ divides $(x)$, so $x \in p$, thus GCD$(2y, x) = 1$ which is a contradiction.

So $(y+\sqrt{-5}) = a^3, (y-\sqrt{-5}) = b^3$ for some integral ideals $a,b$. But the class number is $2$ from earlier calculation, so $[a] = [a^3] = [(1)]$ so $a$ must be principal (same goes for $b$). So choose a generator, $a = (a +b\sqrt{-5})$, generators are same up to a unit. 

Then $y+\sqrt{-5} = (a+b\sqrt{-5})^3 = (a^3 -15ab^2) + (3a^2b-5b^3)\sqrt{-5}$. So $b=\pm 1$ by equating components, but $3a^2-5 = \pm 1$ has no solutions. $\square$



Similar arguments will be mimicked for Fermat's Last Theorem.



## Bonus

Define Grothendieck group of a ring ($k$ theory) $K_O(O_k) = Z \oplus \text{Cl}_k$. Monoid of finite projective modules, modded out by stuff. $[P] + [Q] = [P \oplus Q]$.

If $R$ is dedekind,

- Every fractional ideal is a finitely generated projective module
- Every f.g. proj. module $a_1 \oplus \cdots \oplus a_r$ a fractional ideal.

Theorem from Steinitz:

If $a_1 \oplus \cdots a_r \cong b_1 \oplus \cdots b_s$ then $r=s$ and ideal classes are the same.

Using theorem, apply map $[a_1 \oplus \cdots a_r] \mapsto (r, [a_1 \cdots a_r])$