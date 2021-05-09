
**Definition (Liouville Vector Field):**
Let $(W, \lambda)$ be exact symplectic.
The Liouville vector field on $(W, \omega = d\lambda)$ is the (unique) vector field $X$ such that $\iota_x \omega = \lambda$.

> Remark:
> $X$ induces a flow $\psi^{X, t}$, and for any compact embedded surface $\Sigma_g \injects W$ we have
\begin{align*}
\psi^{X, t *} d \lambda&= e^{t} d \lambda \implies \\
\operatorname{Area}_{d \lambda}\left(\psi^{X, t}(S)\right)
&:=\int_{\psi^{X, t}(S)} d \lambda\\
&=\int_{S} (\psi^{X, t})^* d \lambda\\
&=e^{t} \operatorname{Area}_{d \lambda}(S)
\end{align*}
>
> This says that the flow lines of $X$ "dilate" the areas of surfaces at an exponential rate, or that $X$ is an "infinitesimal generator" of a canonical dilation..

> Remark:
> This is useful because even if $W$ isn't compact, we can obtain $W$ as the "limit" of compact submanifolds where we inflate along this flow.

**Theorem:**
A Liouville vector field $X$ satisfies $\mathcal{L}_X \omega = \omega$, where $\mathcal{L}_X$ is the Lie Derivative.

*Proof:*
\begin{align*}
\mathcal{L}_X \omega = [d, \iota_X] \omega = \iota_X(d\omega) + d(\iota_x \omega) = \iota_x(d\omega) + d\lambda = \iota_X(0) + d\lambda = d\lambda = \omega
.\end{align*}

> Use the fact that $\omega$ is closed, so $d\omega = 0$.

**Definition (Liouville Domain):**
$(W, \lambda)$ is a Liouville domain iff $W$ is a *compact* exact symplectic manifold with boundary such that the Liouville vector field $X$ points outwards on $\bd W$ transversally.

> Remark:
> This condition implies that $\bd W$ is a contact manifold with contact form $\alpha = \restrictionof{\lambda}{\bd W}$.