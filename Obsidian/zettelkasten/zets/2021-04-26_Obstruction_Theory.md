---
date: 2021-04-26
tags: 
  - Unfiled
---

#homotopy #obstruction_theory #characteristic_classes

The rough idea of obstruction theory is simple. 
Suppose we want to construct some kind of function on a CW complex $X$. We do this by induction: if the
function is defined on the k-skeleton $X_k$, we try to extend it over the $(k + 1)\dash$skeleton $X^{k+1}$. The obstruction to extending over a $(k + 1)\dash$cell is an element of $\pi_k$ of something. These obstructions fit together to give a cellular cochain on $X$ with coefficients in this $π_k$. In fact this cochain is a cocycle, so it defines an “obstruction class” in $H_{k+1}(X; π_k(something))$. If this cohomology class is zero, i.e. if there is a cellular $k\dash$cochain $η$ with $0 = δη$, then $η$ prescribes a way to modify our map over the $k\dash$skeleton so that it can be extended over the $(k + 1)\dash$skeleton
