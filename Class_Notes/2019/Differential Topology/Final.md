---
title: Proof of Leray-Hirsch Theorem
---

# Preliminaries

**Definition:** 
Fibre Bundle

**Definition:** 
Homology

**Definition:** 
Cup Product

**Definition:** 
Good Cover

**Notation:**
Let $R$ be an arbitrary ring, and let $h$ denote the contravariant functor
$$
h(\wait; R): \mathbf{Top} &\to\mathbf{Ring} \\
X &\mapsto H_{\text{sing}}^*(X; R) \\
(X \mapsvia{f} Y) &\mapsto (H^*(Y; R) \mapsvia{f^*} H^*(X; R))
$$

which corresponds to taking singular cohomology.

> Note that $H^*_{\text{sing}}(X; R)$ is a graded ring with multiplicative structure given by the cup product, and similarly $H^*_{\text{dR}}(X; \RR)$ is graded ring with multiplication induced by the wedge product of forms.


# Statement of the Theorem

Let

```{=latex}
\begin{center}
\begin{tikzcd}
F \arrow[rr, "i", hook] &  & E \arrow[dd, "p", two heads] \\
                        &  &                              \\
                        &  & B                           
\end{tikzcd}
\end{center}
```

be a fibre bundle. Taking cohomology induces maps

```{=latex}
\begin{center}
\begin{tikzcd}
h(F; R) &  & h(E; R) \arrow[ll, "i^*"'] \\
        &  &                            \\
        &  & h(B; R) \arrow[uu, "p^*"']
\end{tikzcd}
\end{center}
```

Suppose that

1. $h(F; R)$ is a finitely-generated free $R\dash$module in each degree $n$, and
2. For every fiber $F$, there exists a collection of chains 
$$
C_F \definedas \theset{c_j \mid j \in J}\subseteq h(E; R) \quad \text{for some index set} J
$$
such that their restrictions $\theset{i^*(c_j) \mid j \in J} \subseteq h(F; R)$ along $i^*$ yield an $R\dash$basis for $h(F; R)$, i.e.
$$
h(F; R) = \spanof_R\left(\theset{i^*(c_j) \mid j\in J}\right)
$$
as an $R\dash$module.

We can then define the following group action:

\begin{align*}
h(B; R) &\actson h(E; R) \\
b \actson e &\definedas p^*(b) \smile e
,\end{align*}

and as a result we have

1. Both $h(E; R)$ and $h(F; R) \tensor_R h(B; R)$ are modules over the ring $h(B; R)$, 
2. Letting $\theset{b_k \mid k\in K} \subseteq h(B; R)$ denote a (not necessarily finite) set of generators,
$$
h(B; R) \tensor_R h(F; R) = \spanof_R\theset{b_i \tensor i^*(c_j) \mid k\in K, j\in J}
$$
3. The following map is an isomorphism in the category of $h(B; R)\dash$modules:
$$
\varphi: h(B; R) \otimes_R h(F; R) &\to \quad h(E; R) \\ 
\sum_{k\in K, j \in J} b_k \otimes_R i^*(c_j) \ 
&\mapsto 
\sum_{k\in K, j \in J} p^*(b_k) \smile c_j
$$

4. As an $h(B; R)$ module, 
$$
h_E(R) = \spanof_{h(B; R)}\left( \theset{c_j \mid j\in J} \right)
$$
so the cohomology of the total space is given by $h(B; R)$ span of these $c_j$.

> Note: this map is not an isomorphism in the category of rings.

**Remark:**

The assumption that each $C_F$ exists is necessary, and can be guaranteed when $E \cong B \cross F$ is homeomorphic to a product.

Letting $p_B: B\cross F \to B$ and $p_F: B\cross F \to F$ be the projections supplied by the universal property of the product, since $h(F; R)$ is a free $R\dash$module, we can take its $R\dash$basis $\theset{f_k \mid j\in K} \subseteq h(F; R)$ and pull it back along $p_F$ to obtain $\theset{p_F^*(f_k)} \subseteq h(F\cross B; R)$. 


```{=latex}
\begin{center}
\begin{tikzcd}
F \arrow[rr, "i", dotted, bend left] &  & F \cross B \arrow[dd, "p_B"] \arrow[ll, "p_F"] &  &&  & h(F; R) \arrow[rr, "p_F^*"'] &  & h(F\cross B; R) \arrow[dd, "p_B^*"] \arrow[ll, "i^*"', dotted, bend right] \\
&  &&  &  &  & &  & \\
&  & B&  &&  &&  & h(B;R)
\end{tikzcd}
\end{center}
```

Then we can note that for a product, $p_F \circ i = \id_{F\cross B}$, and so $i^* \circ p_F^* = \id_F$. Thus defining $c_k \definedas p^*_F(f_k)$ satisfies condition (2), i.e. $i^* (c_k) \definedas (i^* p_F^*)(f_k) = f_k$ is an $R\dash$basis for $h(F; R)$.

**Corollary:**
Let $h(X) = H_{dR}^*(X; \RR)$ denote taking deRham cohomology.

If 

1. $F \to E \to M$ is a fibre bundle of smooth manifolds where $M$ has a good cover, 
2. There exist a set of global forms $\theset{\omega_j} \subseteq E$ such that $h(E)=\spanof_\RR \theset{\omega_j \mid j\in J}$, and
3. For each fiber $F$, the collection of restrictions $\theset{\restrictionof{\omega_j}{F} \mid j\in J}$ freely generated $h(F)$,

then $h(E)$ is a free $h(M)\dash$module and
$$
h(E) = \spanof_\RR \theset{\omega_j \mid j\in J} \tensor h(M) \cong h(F) \tensor h(M).
$$

# Proof 

We'll prove the special case given in the corollary.

Given a fibre bundle $F \to E \to M$, there are projections $p_F$ and $p_M$ which induce maps in the deRham complex,

```{=latex}
\begin{center}
\begin{tikzcd}
F &  & E \arrow[dd, "p_B"] \arrow[ll, "p_F"] &  &&  & \Omega^*(F) \arrow[rr, "p_F^*"'] &  & \Omega^*(E) \arrow[dd, "p_B^*"] \\
&  &    &  &  &  & &  & \\
&  & M  &  &  &  & &  & \Omega^*(M)
\end{tikzcd}
\end{center}
```

This allows us to define a map on forms:

\begin{align*}
\phi: \Omega^*(M) \tensor_\RR \Omega^*(F) &\longrightarrow \Omega^*(E) \\
\omega \tensor_\RR \phi \quad &\mapsto \quad p_B^*(\omega) \wedge p_F^*(\phi)
,\end{align*}

which amounts to pulling the forms back and then wedging them.

**Claim:** 
$\phi$ induces a map on the deRham cohomology $h^*$.

By the claim, we obtain a map

\begin{align*}
\tilde \phi: h(M) \tensor_\RR h(F) &\longrightarrow h(E)\\
[\omega] \tensor_\RR [\phi] \quad &\mapsto \quad [p_B^*(\omega) \wedge p_F^*(\phi)]
.\end{align*}


**Claim:**
$\phi$ is an isomorphism of graded modules (???).

Proof:

We will induct on the cardinality of the good cover $\mathcal U$ of $M$.
For the base case, suppose $\# \mathcal{U} = 2$, so $M = U \union V$.

Noting that here $h^*(X) \definedas H^*_\text{dR}(X; \RR)$ is a graded ring, we can identify 
$$
h(M) \tensor_\RR h(F) = \bigoplus_{i+j = n} h^i(M) \tensor_\RR h^{j}(F)
$$

and so the $k$th graded piece is given by
$$
\left( h(M) \tensor_\RR h(F) \right)^k = \bigoplus_{i+j = k} h^i(M) \tensor_\RR h^{j}(F).
$$

Similarly, $h(E) = \bigoplus_{i=0}^n h^i(E)$, and thus $\phi$ is an isomorphism iff it is an isomorphism between $k$th graded pieces for every $k$. So it suffices to show that the maps


\begin{align*}
\tilde \phi_k : \bigoplus_{i+j = k} h^i(M) \tensor_\RR h^{j}(F) \to h^k(E) \\
.\end{align*}

are isomorphisms for every $0 \leq k \leq n$.


To this end, fix an arbitrary $0\leq k \leq n$ and consider the following diagram:
```{=latex}
\vspace{4em} 
\begin{figure}[!htbp]
\begin{center}
\begin{tikzcd}[transform canvas={scale=0.70}, column sep=1.2em]
0 & 
\bigoplus_{j=0}^{k+1} h^{j}(U\cap V) \tensor_R h^{n-k}(F) \arrow[l] \arrow[dd, "\tilde\phi_{k+1}"]&
\bigoplus_{j=0}^k h^j(U\cup V) \tensor_R h^{n-k}(F) \arrow[l] \arrow[dd, "\tilde \phi_k"]& 
\bigoplus_{j=0}^k 
(h^j(U) \tensor h^{n-k}(F)) \oplus (h^j(V)\tensor h^{n-k}(F)) 
\arrow[l] \arrow[dd, "\tilde \phi_k \oplus \tilde \phi_k"]&  
\bigoplus_{j=0}^k h^j(U\cap V) \tensor_R h^{n-k}(F) \arrow[l] \arrow[dd, "\tilde\phi_k"]&
0 \arrow[l] \\
\\ 
0 & h^{k+1}(U\cap V \cross F) \arrow[l] & \arrow[l] h^k(E) & h^k(U \cross F) \bigoplus h^k(V\cross F) \arrow[l] & h^k(U\cap V \cross F) \arrow[l] & 0 \arrow[l]
\end{tikzcd}
\vspace{4em}
\end{center}
\caption{Main Diagram}
\end{figure}
```

**Claim:**

- The rows in this diagram are exact,
- The diagram commutes, and
- The 1st, 3rd, and 4th maps are isomorphisms.

If this is the case, the 5 lemma can be applied and this will imply that the 2nd map

\begin{align*}
\tilde \phi_k:~\bigoplus_{j=0}^{k} h^{j}(U\cup V) \tensor_R h^{n-k}(F) &\longrightarrow h^{k}(E)
\end{align*}
is an isomorphism. 
Since $k$ was arbitrary, $\tilde \phi_k$ will be an isomorphism for every $k$, which is precisely what we want to show.

## The Top Row is Exact 

By Mayer-Vietoris, there is a long exact sequence:

```{=latex}
\begin{tikzcd}
0 &  & h^n(U\cup V) \arrow[ll]     &  & h^n(U) \oplus h^n(V)  \arrow[ll]         &  & h^n(U\cap V) \arrow[ll]              &  &   \\
             &  &                             &  &                                          &  &                                         &  &   \\
             &  & \arrow[rrrruu, "\delta"] h^{n-1}(U\cup V)  &  & h^{n-1}(U) \oplus h^{n-1}(V)  \arrow[ll] &  & h^{n-1}(U\cap V)  \arrow[ll] &  &   \\
             &  &                             &  &                                          &  &                                         &  &   \\
             &  & \arrow[rrrruu, dashed, "\delta"] h^k(U\cup V) &  & h^k(U) \oplus h^k(V)  \arrow[ll]         &  & h^k(U\cap V) \arrow[ll] &  &   \\
             &  &                             &  &                                          &  &                                         &  &   \\
             &  &\arrow[rrrruu, dashed, "\delta"]      h^0(U\cup V) &  & h^0(U) \oplus h^0(V)  \arrow[ll]         &  & h^0(U\cap V) \arrow[ll]&  & \arrow[ll] 0
\end{tikzcd}
```

where $\delta$ is the connecting map supplied by the Snake Lemma.

Since $h^*(F)$ was assumed to be a free $R\dash$module, the functor $(\wait) \tensor_R h^j(F)$ is exact for any $j$. 

\newpage

Fixing $j$ for the moment, we note that applying $(\wait) \tensor h^j(F)$ to the above sequence yields a new long exact sequence:

```{=latex}
\vspace{8em}
\begin{center}
\begin{tikzcd}[transform canvas={scale=0.90}, column sep=0.6em]
0  &  & \arrow[ll] h^n(U\cup V) \tensor_R h^j(F)       &  & \arrow[ll] h^n(U) \tensor_R h^j(F) \oplus h^n(V) \tensor_R h^j(F)           &  & \arrow[ll] h^n(U\cap V)  \tensor_R h^j(F)              &  &   \\
&  &                                                 &  &                                                               &  &                                                             &  &   \\
&  & \arrow[rrrruu, "\delta \tensor \id_{h^j(F)}"] h^{n-1}(U\cup V)  \tensor_R h^j(F)  &  & h^{n-1}(U) \tensor_R h^j(F) \oplus h^{n-1}(V) \tensor_R h^j(F) \arrow[ll] &  & h^{n-1}(U\cap V)  \tensor_R h^j(F) \arrow[ll] &  &   \\
&  &                                                 &  &                                                               &  &                                                             &  &   \\
&  &\arrow[rrrruu, dashed, "\delta \tensor \id_{h^j(F)}"] h^k(U\cup V)  \tensor_R h^j(F)      &  & h^k(U) \tensor_R h^j(F) \oplus h^k(V) \tensor_R h^j(F) \arrow[ll]        &  & h^k(U\cap V)  \tensor_R h^j(F)  \arrow[ll] &  &   \\
&  &                                                 &  &                                                               &  &                                                             &  &   \\
&  &\arrow[rrrruu, dashed, "\delta \tensor \id_{h^j(F)}"] h^0(U\cup V)  \tensor_R h^j(F)      &  & h^0(U) \tensor_R h^j(F) \oplus h^0(V) \tensor_R h^j(F) \arrow[ll]        &  & h^0(U\cap V)  \tensor_R h^j(F) \arrow[ll]                 &  & \arrow[ll] 0
\
\end{tikzcd}
\vspace{8em}
\end{center}
````

where the tensor product has been distributed across the direct sums in the middle column.

Consider doing this for every $j$; we then obtain a collection of long exact sequences

```{=latex}
\vspace{8em}
\begin{center}
\begin{tikzcd}[transform canvas={scale=0.75}, column sep=0.5em]
j=k+1& 
&& && & 0 \arrow[rr]& &
h^0(U\union V) \tensor h^{k+1}(F) \arrow[rr]
& & \cdots 
\\
%
j=k& 
0 \arrow[rr] & & 
h^0(U \union V) \tensor h^k(F) \arrow[rr]  & & 
h^0(U) \tensor h^k(F) \oplus h^0(V) \tensor h^k(F) \arrow[r] & 
h^0(U \intersect V) \tensor h^k(F) \arrow[rr, "\delta"]  &  &
h^1(U\union V) \tensor h^{k}(F) \arrow[rr]  & & 
\cdots 
\\
%
j=k-1:& 
\cdots \arrow[rr, "\delta"] & & 
h^1(U \union V) \tensor h^{k-1}(F) \arrow[rr] & & 
h^1(U) \tensor h^{k-1}(F) \oplus h^1(V) \tensor h^{k-1}(F) \arrow[r] & 
h^1(U \intersect V) \tensor h^{k-1}(F) \arrow[rr, "\delta"] & & 
h^2(U\union V) \tensor h^{k-1}(F) \arrow[rr]   & & 
\cdots 
\\
%
j=k-2:& 
\cdots \arrow[rr, "\delta"] & & 
h^2(U \union V) \tensor h^{k-2}(F)  \arrow[rr] & & 
h^2(U) \tensor h^{k-2}(F) \oplus h^2(V) \tensor h^{k-2}(F) \arrow[r] & 
h^2(U \intersect V) \tensor h^{k-2}(F) \arrow[rr, "\delta"] & & 
h^2(U\union V) \tensor h^{k-2}(F) \arrow[rr]   & & 
\cdots 
\\
%
\vdots &
& & 
\vdots & & 
\vdots & 
\vdots  &  & 
\vdots & 
 & \vdots         
\\
%
j=0: &
\cdots \arrow[rr, "\delta"] && 
h^k(U \union V) \tensor h^0(F) \arrow[rr]     && 
h^k(U) \tensor h^0(F) \oplus h^k(V) \tensor h^0(F)  \arrow[r] & 
h^k(U \intersect V) \tensor h^0(F)  \arrow[rr, "\delta"]         & & 
h^{k+1}(U\union V) \tensor h^{0}(F)
\arrow[rr]     &&
\cdots 
\\
\end{tikzcd}
\end{center}
\vspace{8em}
```

Then summing along the columns will preserve exactness in each each degree.
Moreover, taking the direct sum down the first, second, third, and fourth columns respectively yields

\begin{align*}
\text{Column 1}: & C_1 \definedas \bigoplus_{j=0}^k h^j(U \union V) \tensor h^{k-j}(F) \\ \\
\text{Column 2}: & C_2 \definedas \bigoplus_{j=0}^k h^j(U) \tensor h^{k-j}(F) \oplus h^j(V) \tensor h^{k-j}(F) \\ \\
\text{Column 3}: & C_3\definedas \bigoplus_{j=0}^k h^j(U \intersect V)\tensor h^{k-j}(F) \\ \\
\text{Column 4}: & C_4 \definedas \bigoplus_{j=0}^{k+1} h^j(U \union V) \tensor h^{k-j}(F) \\ \\
,\end{align*}

and the exactness of the sequence $C_1 \to C_2 \to C_3 \to C_4$ is precisely the exactness of the top row in figure (1).
$$
## The Bottom Row is Exact


