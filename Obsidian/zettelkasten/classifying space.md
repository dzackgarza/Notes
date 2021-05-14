---
date: 2021-04-26T10:40
aliases: ["classifying spaces", "BG"]
---

Tags: #homotopy 

# Topics

- [classifying stack](classifying%20stack.md)
- [principal bundle](principal%20bundle.md)

# Notes

- $\B G = K(G, 1)$ when $G$ is discrete.

![](attachments/Pasted%20image%2020210505015056.png)
![](attachments/Pasted%20image%2020210505015233.png)

# Definitions


**Definition:** 
Given $G\in \Top\Grp$, a **classifying space** for $G$, denoted $\B G$, is the base space of a universal [principal](principal%20bundle.md) $G\dash$ bundle
$$
G \to EG \mapsvia{\pi} \B G
$$
making $\B G$ a quotient of the contractible space $EG$ by a free $G\dash$ action, so $\B G \cong EG/G$. Call this the **the classifying bundle**.

Any other [principal](principal%20bundle.md) $G\dash$ bundle over a space $X$ is isomorphic to a [pullback](pullback.md) of the classifying bundle along a map $X \to \B G$.

Let $I(G, X)$ denote the set of isomorphism classes of principal $G\dash$ bundles over a base space $X$, then
$$
I(G, X) \cong \hoTop(X, \B G)
$$
So in other words, isomorphism classes of principal $G\dash$ bundles over a base $X$ are equivalent to homotopy classes of maps from $X$ into the classifying space of $G$.

**Proposition**: 
[Grassmannians](Grassmannian.md) are classifying spaces for [vector bundles](vector%20bundles.md). That is, there is a bijection:
$$
\hoTop(X, \Gr_n(\RR)) \cong \theset{\text{rank $n$ $\RR\dash$vector bundles over $X$}} / \sim
$$
- Every such vector bundle is a pullback of the principal bundle
$$
\GL(n, \RR) \to V_n(\RR^\infty) \to \Gr(n, \RR)
$$

# Notes

- It is useful to think of $\B G$ as a space whose points are copies of $G$, so the classifying map $X \mapsvia{f} BG$ assigns each $x \in X$ to the fiber above $x$, which is a copy of $G$.
- For a discrete group $G$, we have $\B G = K(G,1)$, so that $\pi_1(\B G) = G$ and $\pi_k(\B G) = 0$ for $k \neq 1$.
	- Follows from contractibility of $EG$ ?
- $\Loop \B X \homotopic X$?


## Constructions

- Standard procedure for constructing a classifying space for any group:
	- Construct a 2-complex with the given fundamental group, and then one inductively attaches higher dimensional cells to kill all higher homotopy groups. 
	- Each element $c\in \pi_n(X_{n−1})$ is represented by some continuous map $\gamma_c:S^n\to X_{n−1}$ with image in the $n\dash$-skeleton. 
	- Let $X_n$ be obtained from $X_{n−1}$ by attaching an $(n+1)\dash$cell along $\gamma_c$, for each $c\in π_n(X_{n−1})$.




# Further Reading

- Any [Eilenberg-MacLane space](Eilenberg-MacLane%20space.md) can be realized as a [classifying space](classifying%20space.md).

- $\pi_{i+k}\B^k G = \pi_i G$.
	- Proof: If $G$ is a topological group, there is a universal principal $G\dash$bundle $EG \to BG$ which induces a LES in homotopy. 
	- Since $EG$ is contractible, $$\pi_i EG = \pi_{i+1}EG = 0\implies \pi_{i+1}BG \cong \pi_i G.$$ 
	- When $G$ is an $E_2$ space, $BG$ is a topological group, and so $$\pi_{i+2}(B^2G) = \pi_{i+2}(B(BG)) = \pi_{i+1}(BG) = \pi_i(G).$$
- Corollary: If $G$ is a discrete group, $\B^k G \homotopic K(G, n)$.
	- Proof: $\pi_0 G = G$ and $\pi_i G = 0$ for $i > 0$, so $\pi_k \B^k G = G$.

- One can take classifying spaces of [stacks](stack.md). 
	- There is a stack that classifies [principal bundles](principal%20bundles) *with [connections](connection.md)*, but it has issues: 
	- It is not a [[presentable stack]], i.e. , so an associated [sheaf](sheaf.md) is not [representable](representable).

- $EG$ can be constructed as 
$$
EG \cong \bigcup_n G \ast G \ast \cdots \ast G
,$$ 
where $\ast$ is join of two spaces: the suspension of the smash product. For example, $G = \ZZ_2$ implies 
$$
EG \cong \bigcup_n \ZZ_2 \ast \cdots = \bigcup_n S^{n-1} = S^\infty
.$$

# Unknown?

- What is $\pi_* \B G$?
	- What is the stable homotopy $\pi_* \Suspend^\infty \B G$?

- Conjecture: $\B (G \oplus H) = \B G \cross \B H$
	- Proof outline: $EG \cross EH$ is contractible, and $G \cross H$ acts freely on it with quotient equal to the RHS?
- Conjecture: $\B(G \ast H) = BG \vee BH$
- Conjecture: $\B(G \tensor_\ZZ H) = ?$ for $G, H\in \Ab$?
- Conjecture: $\B(G \semidirect_\phi H) = ?$