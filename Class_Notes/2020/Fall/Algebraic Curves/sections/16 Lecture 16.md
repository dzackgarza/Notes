# Lecture 16


## Weil Bounds

Last time: we finished a discussion of the Hasse-Weil zeta function over a finite ground field $\fq$.

:::{.exercise title="?"}
Let $K/\fq$ be a function field of genus 1.

a. Show 
\[  
Z(t) = { 1-at + qt^2 \over (1-t)(1-qt)}
,\]
  where $a = q+1 - \abs{\Sigma_1(K/\FF_q)}$.

b. Let $L(t) \da (1-\alpha_1 t)(1-\alpha_2 t)$.
  Show that $a = \alpha_1 + \alpha_2$, and that for all $r\in \ZZ^{+}$, 
  \[  
  \abs{\Sigma_1 (K_r / \FF_{q^r}} = q^r +1 - \alpha_1^r - q^r/\alpha_1^r
  .\]
  Thus for elliptic curves $E/\FF_q$, knowing $\abs{E(\FF_q)}$ determines $\abs{E(\FF_{q^r})}$ for all $r\in \ZZ^+$.

c. Suppose $a^r = 0$ and show

  \[  
  r \text{ odd} &\implies \abs{\Sigma_1 (K_r/\FF_{q^r}) } = q^r + 1 \\
  r \equiv 2\mod 4 &\implies \abs{\Sigma_1 (K_r/\FF_{q^r}) } = (q^{r/2} + 1)^2 \\
  r \equiv 0\mod 4 &\implies \abs{\Sigma_1 (K_r/\FF_{q^r}) } =  (q^{r/2} - 1)^2 \\
  .\]
:::

:::{.theorem title="?"}
Let $K/\FF_q$ be a function field of genus $g$ with $L\dash$polynomial $L(t) = \prod_{i=1}^g (1 - \alpha_i t)$.
Then $\abs \alpha_i = \sqrt{q}$ for all $i$.
:::

:::{.remark}
In order to prove this, Weil had to develop foundations for algebraic geometry in positive characteristic.
His original proof used intersection theory on algebraic surfaces.
:::


:::{.corollary title="Weil Bounds"}
If $K/\FF_q$ is a function field of genus $g$, then
\[  
\abs{ \abs{\Sigma_1 (K/\FF_q)} - (q+1) } \leq 2g \sqrt{ q}
.\]
:::

:::{.remark}
This says that the number of $\FF_q$ points is approximately $q+1$< where the error is controlled by the genus.
:::

:::{.proof title="?"}
We know
\[  
\abs{\Sigma_1(K/\FF_q)} = q + 1 - \sum \alpha_i
.\]
Thus 
\[  
\abs{ 
\Sigma_1(K/\FF_q) - (q+1)
}
=
\abs{
\sum \alpha_i
}
\leq
\sum_{i=1}^{2g} \abs{\alpha_i}
=2g\sqrt q
.\]
:::

:::{.corollary title="?"}
For $r\gg 0$, $N_r \da \abs{\Sigma_1(K_r/ \FF_{q^r})} \geq 1$.
:::

:::{.proof title="?"}
The Weil bounds yield
\[  
N_r \geq q^r + 1 - 2g q^{r/2}
\geq 
q^{r/2} \qty{q^{r/2} - 2g} \converges{r\to \infty} \infty
.\]
This can be alternatively phrased as 
\[  
N_r = q^r + O_g(q^{r/2})
.\]
Note that we've used the fact that making any separable extension of a function field will preserve the genus, and so $g$ is fixed.
:::

:::{.remark}
So for $r$ large enough, there is an $\FF_{q^r}\dash$rational point, and $N_r \to \infty$ exponentially fast in $r$.
:::

:::{.remark}
As a consequence, if $\omega\in \Sigma_1(K_r/ \FF_{q^r})$, let $v\da \omega\intersect K$.
We saw that $\deg(v) = d$ which divides $r$, so we can form the divisor $r/d[p] \in \Div^r K$ for any place $p$ below $v$.
So any degree 1 place yields a degree $r$ divisor, which shows that $\Div^r K \neq \emptyset$ for all $r$ large enough and thus $\delta=1$ (which is Schmidt's theorem).
:::

:::{.exercise title="?"}
\envlist

a. Show that there is a constant $C$ depending only on $g$ such that if $r\geq C$ then for all $n\geq 2$, $N_{nr} > N_r$.


b. Use the following fact to show that there exists a constant $D$ depending on $g$ such that for all $d\geq D$, $\Sigma_d(K/\FF_q) \neq \emptyset$:
\[  
N_r = \sum_{d\divides r} d \abs{ \Sigma_d(K/\FF_q) }
.\]
:::

:::{.remark}
Note that this is stronger than Schmidt's theorem: it implies that not only do you have a divisor of degree $d$, but also a place of degree $d$.
:::


:::{.exercise title="?"}
\envlist

a. Use the Weil bounds to show that when $g=0$, $\abs{\Sigma_1(K/\FF_q)} = q+1$.
Deduce that every genus zero function field is rational.

b. Use the Weil bounds to show that if $g=1$, then $\abs{\Sigma_1(K/\FF_q)} \geq \1ty{\sqrt q - 1}^2 > 0$, and thus every genus 1 function field over $\FF_q$ is elliptic.[^def_ell_ff]

[^def_ell_ff]: 
By definition, a genus 1 function field with a degree 1 place, which can be used as the origin for the group structure.

:::

:::{.corollary title="Serre Bounds"}
Let $K/\FF_q$ be a function field of genus $f$, then
\[  
\abs{
\Sigma_1(K/\FF_q) - (q + 1)
}
\leq g \floor{2 \sqrt q}
.\]
::: 


:::{.remark}
We write
\[  
M_q(g) &\da \text{The maximal } \abs{\Sigma(K/\FF_q)} \text{ as $K$ ranges over genus $g$ function fields} \\
m_q(g) &\da \text{The minimal } \abs{\Sigma(K/\FF_q)} \text{ as $K$ ranges over genus $g$ function fields} \\
A(q) &\da \limsup_{g\to \infty} {M_q(g) \over g}
.\]
This is essentially the best constant that can be put in front of $g$ in the bounds.
With these definitions, we have
\[  
A(q) \leq 2\sqrt q && \text{by Weil bounds }\\
A(q) \leq \floor{2\sqrt q} && \text{by Serre bounds }\\
.\]
Note that we can do much better, e.g. $A(2) \leq \sqrt{2} - 1$, but it is not known if this is sharp.
:::

:::{.proof title="of Serre's bound"}
We may assume $g \geq 1$, and write $L(t) = \prod_{i=1}^{2g} (1-\alpha_i t)$, where the $\alpha_i$ may be ordered such that $\alpha_i \alpha_{g+-} = g$ for all $i$.
By the Riemann hypothesis, we have $\abs {\alpha_i} = \sqrt q$, and so for each $i$ we have $\bar{\alpha_i} = q/\alpha_i = \alpha_{g+i}$.
We now pair in the following way: set
\[  
\gamma_i &\da \qty{ \alpha_i + \bar{\alpha_i} } + \floor{2\sqrt q} + 1 \\
\delta  &\da -\qty{ \alpha_i + \bar{\alpha_i} } + \floor{2\sqrt q} + 1 \\
.\]
These are real algebraic integers and by the Riemann hypothesis they are positive.
Since $L\perp(t) \da \prod t-\alpha_i \in \ZZ[t]$, take any complex embedding 
\[  
\sigma: \QQ\qty{\ts{\alpha_i}} \injects \CC
,\]
which preserves the $\alpha_i$. 
If $\sigma(\alpha_i) = \alpha_j$, then we have
\[  
\sigma(\bar{\alpha_i}) = \sigma\qty{q/\alpha_i} = q/\sigma(\alpha_i) = \bar{\sigma(\alpha_i)} = \alpha_j
,\]
and thus $\sigma$ preserves the multisets of the $\gamma_i$ and $\delta_i$.

Now set $\gamma\da \prod \gamma_i$ and $\delta \da \prod \delta_i$, making these both positive real integers that are fixed by every embedding $\sigma$, and thus $\gamma, \delta\in \ZZ^+$.
We can now apply the AM-GM inequality:
\[  
{1\over g} \sum_{i=1}^g \gamma_i 
&\geq \qty{ \prod_{i=1}^g \gamma_i}^{1\over g} 
= \gamma^{1/g} \geq 1
,\]
and thus
\[  
g \leq \sum \gamma_i 
= \sum_{\alpha_i + \bar{\alpha_i}} + g\floor{2\sqrt q} + g 
= \sum \alpha_i  + g\floor{2\sqrt q} + g 
,\]
and we can conclude that $-\sum \alpha_i \leq g\floor{2\sqrt g}$.
Repeating the argument with the $\delta_i$ yields $\sum \alpha_i \leq g \floor{2\sqrt q}$, meaning that $\abs{\sum \alpha_i } \leq g \floor{2\sqrt q}$.
Thus
\[  
\abs{ \abs{\Sigma_1(K/\FF_q)} - (q+1)  } = \abs{\sum \alpha_i} \leq g \floor{2\sqrt q}
.\]
:::

:::{.remark}
An application to class numbers: since $g = L(1)
:::
