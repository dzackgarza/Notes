Tags: #todo #floer 

# Reference Material

[Paper: Sarkar-Wang, An algorithm for computing some Heegaard-Floer homologies](https://arxiv.org/pdf/math/0607777.pdf)

[Annals version of the paper](https://annals.math.princeton.edu/wp-content/uploads/annals-v171-n2-p11-s.pdf)

# Intro/Overview

- Goals: 
  - Given $Y$ a closed oriented smooth 3-manifold, compute the Heegaard-Floer homology $\hat{\HF}(Y; \FF_2) \in \gr\Ab$.
  - Given $K \embeds Y$ a knot, compute the knot Floer homology $\hat{\HFK}(Y, K; \FF_2)$
- Strategy: turn **admissible diagrams** into **nice diagrams** using isotopies and handleslides
  - Note: stabilization not used in this paper.
- Main theorem:

![image_2021-05-05-12-26-55](figures/image_2021-05-05-12-26-55.png)

# Definitions


:::{.remark}
Use a cylindrical reformulation of $\hat{\HF}$ due to Lipshitz.
:::


:::{.definition title="Floer chain complex"}
Given a pointed Heegaard diagram 
\[
( \Sigma, \vec \alpha, \vec \beta, w)
,\]
the generators of $\CF$ are formal sums of points $\vector x = \sum_{i=1}^{g-k-1} x_i$ where each \( \alpha \) curve contains some $x_i$ and each \( \beta \) curve contains some $x_j$, and $k$ is the number of basepoints in $\vec w$.
:::


:::{.definition title="Region"}
A **region** is a connected component of the complement of the curves, so
\[
R_i \in \pi_0 \Sigma \sm \ts{\vec \alpha, \vec \beta}
.\]
A formal sum of regions is a **2-chain**.
:::


:::{.definition title="Positive regions"}
Given 2 generators \( \vector x, \vector y \) define \( \pi_2(\vector x, \vector y) \) to be the set of all 2-chains $\phi$ satisfying $\bd^2 \phi = \vector y - \vector x$.
Call such 2-chains **domains**.

Define $n_p(\phi)$ to be the coefficient of the region $R_i \ni p$, then $\phi$ is a **positive domain** if $n_p(\geq 0)$ for all $p \in \Sigma\sm \ts{ \vec \alpha, \vec \beta }$.

:::




:::{.definition title="Admissible diagram"}
Define $\pi_2^0(\vector x, \vector y)$ to be all domains $\phi$ such that $n_{\vec w} = 0$.
A Heegaard diagram \( \mathcal{H}  \) is **admissible** if for every generator \( \vector{x} \in \CF \), every positive domain \( \varphi\in \pi_2^0(\vector x, \vector x) \) is trivial. 
:::


:::{.definition title="Good and bad regions"}
A region is **good** if it is an $n\gon$ with $n\leq 4$, and **bad** if $n\geq 5$.
:::


:::{.definition title="Badness"}
For a disc region $D$, define the **badness**
\[
b(D) \da \max\ts{n-2, 0}
.\]

Note 

- $D\in 2\gon \implies b(D) = 0$
- $D\in 4\gon \implies b(D) = 0$
- $D\in 6\gon \implies b(D) = 1$
- $D\in 8\gon \implies b(D) = 2$

:::



:::{.remark}
Goal: do moves where

- $d(\mathcal{H}' ) \leq d( \mathcal{H}  )$, so total distance doesn't increase.
- $b( \mathcal{H}' ) \leq b( \mathcal{H} ) -1$, so badness decreases.
:::





## Algorithm Overview

- Start from an admissible pointed Heegaard diagram, end up with an admissible *nice* pointed Heegaard diagram using isotopies and handleslides on the $\beta$ curves.

- Overview of strategy:

  - Isotope all regions to disks
  - Define a **complexity** for the diagram
  - Show it's minimized iff all regions *not* containing basepoints are good
  - Do an isotopy or handleslide that strictly decreases the complexity.

- Recipe:

  1. Kill non-disk regions (easier)
  2. Make all but one region bigons or squares (harder)

## Step 1: Killing Non-disk Regions


:::{.proposition title="?"}
Short procedure: ensure every \( \alpha \) curve intersects some \( \beta \) curve and vice-versa

- Fix $j$, what is in between $\alpha_j$ and the nearest $\beta$ curve?
  ![image_2021-05-07-15-39-22](figures/image_2021-05-07-15-39-22.png)
- Case 1: $\alpha, \alpha, \beta$.
  - Connect $p$ to $q$, do a finger move of $\beta$ curve to introduce 2 intersections with chosen $\alpha$
  ![image_2021-05-07-15-40-21](figures/image_2021-05-07-15-40-21.png) 

  - Yields 4 new intersections.

- Case 2: $\alpha, \beta, \beta$.
  - Finger move on $\beta$ curve, pulling all other $\beta$ curves with it.
  ![image_2021-05-07-15-41-23](figures/image_2021-05-07-15-41-23.png)
:::


:::{.remark}
Now every $\alpha_j$ intersects some $\beta_k$
All non-disk regions have $\geq 2$ boundary components, so we'll try to reduce the number of boundary components to one.
Problem: poly-annuli regions

![image_2021-05-07-15-47-09](figures/image_2021-05-07-15-47-09.png)

How to fix:
![image_2021-05-07-15-47-29](figures/image_2021-05-07-15-47-29.png)

- Creates no new non-disks
- Decreases number of boundary components by 1.
- Repeat until equal to 1.
:::


## Step 2: Converting Regions to Bigons or Squares

Now all regions are discs.

:::{.warnings}
$\alpha$ curves should be red, $\beta$ should be blue!
:::

:::{.definition title="Total Distance"}
For a Heegaard diagram \( \mathcal{H}  \) define the **distance** of $D$ as 
\[
d(D) \da \min \ts{ \# (\gamma\intersect \vec\beta) \st w'\in D, w \mapsvia{\gamma} w', \gamma\in \vec\alpha^c } \in \ZZ_{\geq 0}
.\]

This is the smallest number of intersection points on any arc connecting the basepoint $w$ to $w'\in D$.
Define the **total distance** 
\[
d( \mathcal{H}  ) \da \max\ts{ d(D)} \in \ZZ_{\geq 0}
.\]
:::


:::{.example title="?"}
Computing the distance via a path.

![image_2021-05-07-15-49-13](figures/image_2021-05-07-15-49-13.png)

Can only cross $\beta$ curves, need to stay in $\vec \alpha^c$.
:::



:::{.definition title="Distance $d$ complexity"}


For a fixed distance $d$ define the **distance $d$ complexity** as 
\[
c_d \da \tv{ \sum b(D_i), -b(D_1), -b(D_2), \cdots}
&&
b(D_1) \geq b(D_2) \geq \cdots
\]
For a fixed $d$, order various $c_d( \mathcal{H}' )$ lexicographically.
:::



:::{.theorem title="?"}
Main theorem


![image_2021-05-07-15-51-57](figures/image_2021-05-07-15-51-57.png)
:::



:::{.proposition title="?"}
Setup: fix $D_0$ to be the region containing the basepoint, $D_m$ to be the least bad region.
Find an adjacent region $D_*$ with 1 smaller distance:

![image_2021-05-07-15-53-06](figures/image_2021-05-07-15-53-06.png)

Idea: we will finger move $b_*$ through $D_m$ to reduce the badness of $D_m$:

![asdas](figures/image_2021-05-07-15-53-42.png)

Look at what happens locally: we introduce some new regions, usually less bad:

![image_2021-05-07-15-54-37](figures/image_2021-05-07-15-54-37.png)

:::




:::{.proposition title="?"}
We can push through square regions:

![image_2021-05-07-15-54-57](figures/image_2021-05-07-15-54-57.png)

So continue, then do some casework:

![image_2021-05-07-15-55-19](figures/image_2021-05-07-15-55-19.png)
:::



