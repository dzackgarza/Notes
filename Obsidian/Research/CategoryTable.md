| Category        | Set                     | Grp             | CRing          | Ring        | Field | Ab                | $\Vect_k$         | R-Mod             | $R\dash$cAlg       | Sch         | Top               | $\Top_*$     |
| --------------- | ----------------------- | --------------- | -------------- | ----------- | ----- | ----------------- | ----------------- | ----------------- | ------------------ | ----------- | ----------------- | ------------ |
| Product         | $\prod_i A_i$           | $\prod_i A_i$   |                |             | None  |                   |                   | $\prod_i A_i$     |                    |             | $\prod_i A_i$     |              |
| Coproduct       | $\coprod_i A_i$         | $A\ast B$       |                | $A\star B $ | None  | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigoplus_i A_i$ | $\bigotimes_i A_i$ |             | $\coprod A_i$     | $\vee_i A_i$ |
| Pullback        | $A\times_C B, A \cap B$ | $A\times_C B$   | $A\times_C B$  |             |       |                   |                   | $A\times_C B$     |                    |             |                   |              |
| Pushout         | $A \coprod B/\sim$      | $A \ast B/\sim$ | $A\otimes_C B$ |             |       |                   |                   |                   |                    |             | $A \coprod_{f} B$ |              |
| Initial Object  | $\emptyset$             | $\ts{1}$        |                | $\ZZ$       | None  |                   |                   | $\ts{1}$          |                    | $\spec(0)$  | $\emptyset$       |              |
| Terminal Object | $\ts{a_1}$              |                 |                | $\ts{0}$    | None  |                   |                   |                   |                    | $\spec \ZZ$ | $\pt$             |              |
| Zero Object     |                         | $\ts{1}$        |                | $\ts{0}$    | None  |                   |                   |                   |                    |             |                   |              |

$$
A\star B \cong A \oplus B \oplus (A \otimes B) \oplus (B \otimes A) \oplus (A \otimes A \otimes B) \oplus (A \oplus B \oplus A) \oplus (B \oplus A \oplus A) \oplus ...
$$

# Notes on Diagram Calculus?

http://mathieu.anel.free.fr/mat/doc/Anel-Semiomaths-HomotopyColimit.pdf

![image-20210218010308802](/home/zack/.config/Typora/typora-user-images/image-20210218010308802.png)

![image-20210218010627345](/home/zack/.config/Typora/typora-user-images/image-20210218010627345.png)

![image-20210218010639958](/home/zack/.config/Typora/typora-user-images/image-20210218010639958.png)

![image-20210218010749422](/home/zack/.config/Typora/typora-user-images/image-20210218010749422.png)

![image-20210218010809139](/home/zack/.config/Typora/typora-user-images/image-20210218010809139.png)

![image-20210218011118003](/home/zack/.config/Typora/typora-user-images/image-20210218011118003.png)

![image-20210218012454677](/home/zack/.config/Typora/typora-user-images/image-20210218012454677.png)

Hocolims are $\infty\dash$groupoids, equivalently homotopy types.
There is a functor $\pi_0: \infty-\Groupoid \to \Set$.



![image-20210218013131244](/home/zack/.config/Typora/typora-user-images/image-20210218013131244.png)

# What is equivariant cohomology?

https://arxiv.org/pdf/1305.4293.pdf

Uses:

- Calculate number of rational curves in a quintic threefold (Kontsevich 1995)
- Calculate characteristic numbers of a compact homogeneous space (Tu 2010)
- Derive Gysin formula for fiber bundles whose fibers are homogeneous spaces (Tu 2011)
- Calculate integrals over manifolds as sums over fixed points

![image-20210218021511916](/home/zack/.config/Typora/typora-user-images/image-20210218021511916.png)

![image-20210218013730610](/home/zack/.config/Typora/typora-user-images/image-20210218013730610.png)

If $G\actson M$ with $G$ a compact connected Lie group, Cartan constructs a chain complex from $M, \lieg$.

![image-20210218013828220](/home/zack/.config/Typora/typora-user-images/image-20210218013828220.png)

$BS^1 = \CP^{\infty}$

![image-20210218014024499](/home/zack/.config/Typora/typora-user-images/image-20210218014024499.png)

![image-20210218014113744](/home/zack/.config/Typora/typora-user-images/image-20210218014113744.png)

![image-20210218014335149](/home/zack/.config/Typora/typora-user-images/image-20210218014335149.png)

![image-20210218014526989](/home/zack/.config/Typora/typora-user-images/image-20210218014526989.png)

# What is a scheme?

https://www.ams.org/publications/journals/notices/201711/rnoti-p1300.pdf

Manifolds are the place to do differential calculus, schemes are the place to do algebra by finding zeros of functions.

Closed points: of the form $V(S) \da \ts{ q\in \spec R \st q\contains S}$