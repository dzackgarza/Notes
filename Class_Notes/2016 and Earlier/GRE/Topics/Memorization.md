- Stuff I often get wrong:
	- $-x^{-2} \neq \int x^{-1} = \int \frac{1}{x} = \ln x$
	- $\frac{1}{x} \neq \int \ln x = x\ln x - x$
	- $\int x^{-k} = \frac{1}{-k+1}x^{-k+1} \neq \frac{1}{-(k+1)}x^{-(k+1)}$
		- e.g. $\int x^{-2} = -x^{-1} \neq -\frac{1}{3}x^{-3}$
	- $\lim_{n\to\infty} \frac{n}{n+1} = 1 \neq 0$
- $\frac{\partial}{\partial x}a^x = \frac{\partial}{\partial x}e^{x\ln a} = e^{x\ln a} \ln a = a^x \ln a.$
- Exponentials: when in doubt, write $a^b = e^{b\ln a}$
- $\frac{\partial}{\partial x} x^{f(x)} = ?$
- $\sum x^k = \frac{1}{1-x} \neq \frac{1}{1+x} = \sum (-1)^k x^k$

---

$$
\begin{array}{c|ccc}
&& \sin && \cos && \tan \\ \hline \\
0 && \frac{\sqrt 0}{2} && \frac{\sqrt 4}{2} && 0\\ \\
\frac{\pi}{6} && \frac{\sqrt 1}{2} && \frac{\sqrt 3}{2} && \frac{1}{\sqrt 3}\\ \\
\frac{\pi}{4} && \frac{\sqrt 2}{2} && \frac{\sqrt{2}}{2} && 1 \\ \\
\frac{\pi}{3} && \frac{\sqrt 3}{2} && \frac{\sqrt 1}{2} && \frac{\sqrt 3}{1}\\ \\
\frac{\pi}{2} && \frac{\sqrt 4}{2} && \frac{\sqrt 0}{2} && \infty
\end{array}
$$

$$
\begin{align*}
(a+b)^2 = && \hspace{20em} a^2 + b^2 + 2ab \\
(a-b)^2 = && a^2 + b^2 - 2ab \\
a^2+b^2 = && (a+b)^2 + 2ab \\
a^2- b^2 = && (a+b)(a-b) \\
(a+b)^3 = &&  a^3 + b^3 + 3(a^2b + ab^2) \\
(a-b)^3 = &&  a^3 -b^3 + 3(-a^2b +ab^2) \\
a^3 + b^3 = &&  (a+b)(a^2+b^2-ab) \\
a^3 - b^3 = &&  (a-b)(a^2+ b^2 + ab) \\
(\sqrt a + \sqrt b)^2 = &&  a + b + 2\sqrt{ab} \\
(\sqrt a - \sqrt b)^2 = &&  a + b - 2\sqrt{ab} \\
(a+\sqrt{b})(a-\sqrt{b}) = &&  a^2 - b \\
(a+i\sqrt{b})(a-i\sqrt{b}) = &&  a^2 + b \\
(a+b)(a-b) = && a^2 + b^2
\end{align*}
$$

$$
\begin{align*}  
\frac{\partial f}{\partial{x}}\Leftarrow && f && \Rightarrow\int f dx   \\
\hline \\
\frac{1}{2\sqrt{x}} && \sqrt{x} && \frac{2}{3}x^{\frac{3}{2}} \\
nx^{n-1} && x^n, n \neq -1 && \frac{1}{n+1}x^{n+1} \\
\frac{1}{x} && \bbox[yellow]{\ln(x)} && x\ln(x) - x \\
a^x\ln(a) && a^x && \frac{a^x}{\ln a} \\
\cos(x) && \sin(x)  && -\cos(x) \\
-\sin(x) && \cos(x)  && \sin(x) \\
2\sec^2(x)\tan(x) && \sec^2(x)  && \tan(x) \\
2\csc^2(x)\cot(x) && \csc^2(x)  && -\cot(x) \\
\sec^2(x) && \tan(x) &&  \ln\abs{\sec(x)} \\
\sec(x)\tan(x) && \sec(x) && \ln\abs{\sec(x) + \tan(x)} \\
-\csc(x)\cot(x) && \csc(x)  && \ln\abs{\csc(x)-\cot(x)} \\
\frac{1}{1+x^2} && \bbox[yellow]{\tan^{-1}(x)}  && x\tan^{-1}x - \frac{1}{2}\ln(1+x^2) \\
\frac{1}{\sqrt{1-x^2}} && \bbox[yellow]{\sin^{-1}(x)} && x\sin^{-1}x+ \sqrt{1-x^2} \\
-\frac{1}{\sqrt{1-x^2}} && \bbox[yellow]{\cos^{-1}(x)} && x\cos^{-1}x -\sqrt{1-x^2} \\
\frac{1}{\sqrt{x^2+a}} && \ln\abs{x+\sqrt{x^2+a}} && \cdot\\
-\csc^2(x) && \cot(x) && ? \\
? && \cos^2(x) && ? \\
? && \sin^2(x) && ? \\
? && ? && ? \\
? && ? && ? \\
? && ? && ? \\
? && ? && ? \\
? && ? && ? \\
? && ? && ? \\
? && ? && ? \\
? && xe^{ax} && \frac { 1 } { a ^ { 2 } } ( a x - 1 ) e ^ { a x } \\
? && e^{ax}\sin(bx) && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x - b \cos b x ) \\
? && e^{ax}\cos(bx) && \frac { 1 } { a ^ { 2 } + b ^ { 2 } } e ^ { a x } ( a \sin b x + b \cos b x ) \\
? && ? && ? \\
\end{align*}
$$

$$
\begin{align*}
\sqrt{a^2-x^2} && \Rightarrow && x = a\sin(\theta) &&dx = a\cos(\theta)~d\theta \\
\sqrt{a^2+x^2} && \Rightarrow && x = a\tan(\theta) &&dx = a\sec^2(\theta)~d\theta \\
\sqrt{x^2 - a^2} && \Rightarrow && x = a \sec(\theta) &&dx = a\sec(\theta)\tan(\theta)~d\theta
\end{align*}
$$

$$
\begin{align*}
p(y)y' = q(x) && \hspace{10em} \text{separable} \\ \\
y'+p(x)y = q(x) && \text{integrating factor} \\ \\
y' = f(x,y), f(tx,ty) = f(x,y) && y = xV(x)\text{ COV reduces to separable} \\ \\
y' +p(x)y = q(x)y^n && \text{Bernoulli, divide by $y^n$ and COV $u = y^{1-n}$} \\ \\
M(x,y)dx + N(x,y)dy = 0 && M_y = N_x: \phi(x,y) = c (\phi_x =M, \phi_y = N) \\ \\
P(D)y = f(x,y) && x^ke^{rx} \text{ for each root }
\end{align*}
$$
