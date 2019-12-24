# Theorems

## Van Kampen 

If $X = U \union V$ where $U, V, U\intersect V$ are all path-connected then

\begin{align*}
\pi_1(X) = \pi_1 U \ast_{\pi_1(U \intersect V)} \pi_1 V
,\end{align*}

where the amalgamated product can be computed as follows: 
If we have presentations

\begin{align*} 
\pi_{1}(U, w) &=
\left\langle u_{1}, \cdots, u_{k} \suchthat \alpha_{1}, \cdots, \alpha_{l}\right\rangle \\ 
\pi_{1}(V, w) &=\left\langle v_{1}, \cdots, v_{m} \suchthat \beta_{1}, \cdots, \beta_{n}\right\rangle \\ 
\pi_{1}(U \cap V, w) &=\left\langle w_{1}, \cdots, w_{p} \suchthat \gamma_{1}, \cdots, \gamma_{q}\right\rangle 
\end{align*}

then

\begin{align*}
\pi_{1}(X, w) 
&= \left\langle u_{1}, \cdots, u_{k}, v_{1}, \cdots, v_{m}\right\rangle \\ 
&\mod 
\left\langle \alpha_{1}, \cdots, \alpha_{l}, \beta_{1}, \cdots, \beta_{n}, I\left(w_{1}\right) J\left(w_{1}\right)^{-1}, \cdots, I\left(w_{p}\right) J\left(w_{p}\right)^{-1}\right\rangle \\
&= \frac{\pi_1(U) \ast \pi_1(B)} {\generators{\theset{I(w_i) J(w_i)\inv \suchthat 1\leq i \leq p}}}
\end{align*}

where

\begin{align*}
I: \pi_{1}(U \cap V, w) &\rightarrow \pi_{1}(U, w) \\
J: \pi_{1}(U \cap V, w) &\rightarrow \pi_{1}(V, w)
.\end{align*}

