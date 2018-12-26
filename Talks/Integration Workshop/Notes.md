# Integration Workshop Notes



## Computing Real Integrals Using Complex Analysis

- Goal: compute something like
  $$
  \int_{-\infty}^\infty f(x)~dx \text{or just} \int_0^\infty f(x) ~dx
  $$

- Summary of approach:

  - Use the fact that $\R \hookrightarrow \C​$ as the real line, so this is equivalent to a contour integral along $L_R = \{ x + 0i \mid -R \leq x \leq R\}​$. So we’re equivalently computing this line integral: 
    $$
    \int_{L_R} f(z) ~dz
    $$
    

  - The line integral isn’t any easier to compute, but integrals around a *closed contour* are very easy. So pick a closed contour that includes $L_R$ - in this case, we’ll take half-circle of radius $R$ in the upper half plane

  ![1545857433852](/home/zack/SparkleShare/github.com/Notes/assets/circular_contour.png)

  - We can then write
    $$
    
    $$


