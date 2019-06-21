# Notes


## Linear Algebra

Finding the minimal polynomial $m(x)$ of $A$:

1. Find the characteristic polynomai $\chi(x)$; this annihilates $A$ by Cayley-Hamilton. Then $m(x) \mid \chi(x)$, so just test the finitely many products of irreducible factors.

2. Pick any $\vector v$ and compute $T\vector v, T^2\vector v, \cdots T^k\vector v$ until a linear dependence is introduced. Write this as $p(T) = 0$; then $\chi(x) \ p(x)$. 

Proof that when $A_i$ are diagonalizable, $\theset{A_i}$$ commutes $\iff A,B$ are simultaneously diagonalizable: induction on number of operators

  - $A_n$ is diagonalizable, so $V = \bigoplus E_i$ a sum of eigenspaces
  - Restrict all $n-1$ operators $A$ to $E_n$. 
    - The commuted in $V$ so they commute here too
    - (Lemma) They were diagonalizable in $V$, so they're diagonalizable here too
    - $\implies$ they're simultaneously diagonalizable by I.H.
  - But these eigenvectors for the $A_i$ are all in $E_n$, so they're eigenvectors for $A_n$ too.
  - Can do this for each eigenspace. $\qed$
  - Full Details: [here](https://kconrad.math.uconn.edu/blurbs/linmultialg/minpolyandappns.pdf#page=9)