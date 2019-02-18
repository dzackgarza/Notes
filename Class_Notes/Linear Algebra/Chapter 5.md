# Chapter 5: Orthogonality

## Inner Products and Norms
The point of this chapter is to show how an inner product can induce a notion of "angle", which agrees with our intuition in Euclidean spaces such as $\RR^n$, but can be extended to much less intuitive things, like spaces of functions.

Given an inner product 
$$
\inner{\wait}{\wait}: \RR^n \cross \RR^n \to \RR,
$$

we can define a **norm**
$$
\norm {\vector x} = \sqrt{\inner{\vector x}{\vector x}},
$$

which has the often useful alternative formulation

$$
\inner{\vector x}{\vector x} = \norm{\vector x}^2
$$

We can define a notion of angle:
$$
\inner{\vector x}{\vector y} = \norm{\vector x} \norm{\vector y} \cos\theta_{x,y}
\implies \cos \theta_{x,y} \definedas \frac{\inner{\vector x}{\vector y}}{\norm{\vector x} \norm{\vector y}} = \inner{\hat{\vector x}}{\hat{\vector y}}
$$

where $\theta_{x,y}$ denotes the angle between the vectors $\vector x$ and $\vector y$.

Note that $\cos \theta=0$ exactly when $\theta = \pm \frac \pi 2$. We can thus can declare two vectors to be **orthogonal** exactly in this case:
$$
\vector x \perp \vector y \iff \inner{\vector x}{\vector y} = 0
$$

## Projections
With an inner product in hand and a notion of orthogonality, we can define a notion of **orthogonal projection** of one vector onto another, and more generally of a vector onto a subspace spanned by multiple vectors.

 Say we have two vectors $\vector x$ and $\vector y$, and we want to define "the component of $\vector x$ that lies along $\vector y$", which we'll call $\vector p$. We can work out what the formula should be using a simple model:

 **Figure Here**

We notice that whatever $p$ is, it will in the direction of $\vector y$, and thus $\vector p = \lambda \hat {\vector y}$ for some scalar $\lambda$, where in fact $\lambda = \norm {\vector p}$ since $\norm{\hat{\vector y}} = 1$. We will find that \lambda = $\inner{\vector x}{\hat{\vector y}}$, and so
$$
\vector p = \inner{\vector x}{\hat{\vector y}}\hat{\vector y} = \frac{\inner{\vector x}{\vector y}}{\inner{\vector y}{\vector y}} \vector y
$$

Notice that we can then form a "residual" vector $\vector r = \vector x - \vector p$, which should satisfy $\vector r \perp \vector p$. If we were to let $\lambda$ vary as a function of a parameter $t$ (making $\vector r$ a function of $t$ as well) we would find that this particular choice minimizes $\norm{\vector r (t)}$.

## Subspaces

Equation of a plane: given a point $\vector p_0$ on a plane and a normal vector $\vector n$, any vector $\vector x$ on the plane satisfies
$$
\inner{\vector x - \vector p_0}{\vector n} =
$$

