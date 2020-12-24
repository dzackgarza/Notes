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
N_r = \sum_{d\divides r} d \abs{ }
.\]
:::
