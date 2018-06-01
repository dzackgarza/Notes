# Warmup (0)
Polynomials, exponentials, extremely obvious $u$-subs that collapse immediately
- $\int (2^x + x^2) \,dx = \frac{2^x}{\ln(2)} + \frac{1}{3}x^3$
    - Warmup, just tests memorization of antiderivatives
- $\int \frac{1}{1+x^2} = \tan^{-1}(x)$
- $\int x^{-2} + 4x^{-1} + 6 + 4x +x^2 = -x^{-1} +4\ln(x) + 6x + 2x^2 + \frac{1}{2}x^3$
    - Polynomials


# Main
## Level 1
- $\int \sqrt{1 -x^2} \,dx$ = $\frac{1}{2}\sin^{-1} \left(x\right)+\frac{1}{4}\sin \left(2\sin^{-1} x\right)$
    - Trig sub $x=\sin u$ followed by a common trig identity
## Level 2
- $\int \frac{7x + 5}{x^2 + x - 2} \,dx = 3\ln(x+2) + 4\ln(x-1)$
    - Also $(7/2)\ln(x^2+x-2) -(1/2)\ln(x+2) + (1/2)\ln(x-1)$
    - Algebra to pull out factors, and/or PFD
- $\int (\tan(x) + \cot(x))^2\,dx$ = $\tan(x)-\cot(x)$
    - Expand and use knowledge of antiderivatives of $\tan^2, \csc^2$
## Level 3
- $\int \frac{x^3 -4x^2 + 2x - 3}{x+2} = (1/3)x^3 -3x^2 + 14x -31\ln(x+2)$
    - Polynomial long division
- $\int \frac{x}{x^2-2x+16}\,dx$ = $\frac{1}{\sqrt{15}} \tan^{-1}(\frac{1}{\sqrt{15}(x-1)})$
    - Completing the square and $u$ sub.
- $\int \frac{1+x^2}{1-x^2} = \ln\frac{x+1}{x-1}$
    - Quasi PFD, knowledge of slightly more uncommon integral $1/(1-x^2)$ OR hyperbolic techniques
- $\int \frac{3}{2}\sin(2x) \left(\sin(x)+\cos(x)\right) \,dx= \sin^3(x)-\cos^3(x)$
    - Double angle identity $\sin(2x)=2\cos(x)\sin(x)$ reduces to integrals of the for $s^2c$ and $c^2 s$, both yield to $u$ sub
- $\int \frac{x^2}{x^2 + 1} \,dx = x + \tan^{-1}(x)$
    - Fraction splitting trick, integrand equals $\frac{-1}{x^2+1} + 1$.
- $\int \frac{1 + \sin(x)}{1 + \cos(x)}\,dx = -\ln(\cos(x) + 1) -\cot(x) + \csc(x)$
    - Split sum, $\frac{\sin}{1+\cos}$ is a $u$ sub, $\frac{1}{1+\cos(x)}$ yields to rationalizing the denominator.
- $\int \frac{1-\sin(x)}{1 + \cos(x)}\,dx = \tan(\frac{x}{2})+\ln(\cos(x)+1)$
    - Split sum, one term is $\int 1/(1+\cos)$ (requires nonobvious trig identity/sub), other term yields to easy $u$ sub.
- $\int \frac{1}{1 + \sin(x) + \cos(x)}\,dx = \ln (\tan(\frac{x}{2}) + 1)$
    - A tricky trig sub followed by a $u$ sub makes it trivial
    - Also $\ln(\sin u + \cos u) -\ln\cos u$ for $u=x/2$
## Level 4
- $\int \frac{2x-3}{x^3 + x}\,dx$ = $2\tan^{-1} \left(x\right)-3\ln (x)-\frac{3}{2}\ln \left(x^2+1\right)$
    - PFD and antiderivative of $\tan^{-1}$
- $\int \frac{2 \tan^{-1}(e^x)}{e^{2x}} \,dx = \tan^{-1}(e^{-x}) + e^{-x} + e^{-2x}\tan^{-1}(e^x)$
    - IBP: differentiate the $\tan^{-1}$ term, then use the fraction splitting trick.
- $\int \frac{\sin^3(x)}{\cos(x) - \cos^3(x)}\,dx$ = $- \ln(\cos(x))$
    - IBP with the $dv = 1$ trick, then IBP again with an $x\sec^2(x)$ integrand.
- $\int \frac{1- \sqrt{x}}{1 + \sqrt{x}}\,dx$ = $4\sqrt{x}- x - 4 \ln(1 + \sqrt{x})$
    - PFD and an integral of the form $a/(b + \sqrt{x})$ that yields to the obvious u-sub
    - Product to Sum formulas to rewrite $\sin(3x), \cos(2x)$ in terms of $\cos^2, \sin^n$ terms, than rewrite $\sin^2$ as $\cos^2$ terms to yield a polynomial in $\cos$ times a $\sin$ term. u sub to finish

## Level 5
- $\int \frac{xe^x}{(e^x + 1)^2}\,dx = \frac{xe^x}{e^x+1} - \ln(e^x  + 1)$
    - Equivalently $\frac{-x}{e^x+1} + x - \ln(e^x + 1)$
    - $u$-sub $u=e^x$ and *reverse* sub $x = \ln u$, then IBP and PFD.
- $\int \frac{e^x x\ln(x) - xe^x}{x\ln^2(x)} = \frac{e^x}{\ln(x)}$
    - Reverse quotient rule
- $\int \frac{2\sin^2(x)}{\cos^3(x)} = \tan(x)\sec(x) -\ln\left(\tan(x) + \sec(x)\right)$
    - Trig identity $\sin^2(x) = 1 - \cos^2(x)$, use $\int \frac{1}{\cos(x)} = \ln(\sec(x) + \tan(x))$, then find $\int \frac{1}{\cos^3(x)} = (1/2)(\sec(x)\tan(x) + \ln(\sec(x) + \tan(x)))$ (mildly challenging on its own!)
- $\int \sqrt{\frac{1+x}{1-x}}\,dx = x\sqrt{\frac{x+1}{1-x}} -\sqrt{\frac{x+1}{1-x}} - \sin^{-1}(-x)$
    - u-sub, IBP, and convoluted appearance of $d/dx \sin^{-1}(x)$.
- $\int \frac{1}{\sin(x) + \cos(x)}\,dx = \frac{\sqrt{2}}{2}\left( \ln(u+1) - \ln(u-1)\right), u = \frac{\sqrt{2}}{2}\left( \tan(x/2) - 1\right)$
    - Yields to extremely nonobvious transformation $u = \tan(x/2)$ to produce $\int\frac{1}{2u+1-u^2}$. Then complete the square, factor out constants, and use knowledge of $\int 1/(1-x^2)$
- $\int \sinh(x)\sin(x) = \frac{1}{2}(\cosh(x)\sin(x) - \sinh(x)\cos(x))$
    - Expand in terms of the form $e^{ix}$


# Tie Breakers

# Minor Tricks

- $\int \frac{1}{1-\sin(x)}\,dx$=$\frac{2sin(\frac{x}{2})}{cos(x/2) - \sin(x/2)}$
- $\int \frac{x}{\sqrt[3]{x+1}}\,dx$=$\frac{3}{10}(1 + x)^{2/3}(-3+2x)$
- $\int \frac{1}{\sqrt{e^{2x}-1}}\,dx$ = $\tan^{-1}(\sqrt{e^{2x}-1})$
- $\int \frac{\sin^2(2x)}{1+\cos(2x)}\,dx$ = $x-\cos(x)\sin(x)$
- $\int \frac{1+e^x}{1-e^x}\,dx$ = $x-2\ln(|e^x-1|)$
- $\int \frac{1}{(x+1)\sqrt{x}}\,dx$ = $2\tan^{-1}(\sqrt{x})$
- $\int \frac{x^2 + 2x + 1}{x\sqrt{x^2-1}}\,dx$ = $2\ln(|\sqrt{x^2-1}+x|)+\tan^{-1}(\sqrt{x^2-1})+\sqrt{x^2-1}$

- $\int x\sin^{-1}\left(\frac{1}{x}\right)\,dx$ = $\frac{x^2\csc^{-1}(x)+\sqrt{x^2-1}}{2}$
- $\int \frac{1}{x(x-1)^2}\,dx$ = $\ln{x}-\frac{1}{x-1}-\ln(x-1)$
- $\int \frac{x+\sin{x}}{1+\cos{x}}\,dx$ = $x\tan{\frac{x}{2}}$
- $\int \frac{1}{x^2}\cos{\frac{1}{x}}\,dx$ = $-\sin{\frac{1}{x}}$
- $\int \frac{1}{x^2\sqrt{4x^2-1}}\,dx$ = $\frac{\sqrt{4x^2-1}}{x}$

### Product to Sum formulas
- $\int \sin(4x)\cos(3x)\,dx$=$\frac{-7cos(x)-cos(7x)}{14}$

- $\int \cos\left(x+\frac{\pi}{4}\right) \cos\left(x- \frac{\pi}{4}\right)\,dx$ = $\frac{sin(2x)}{4}$

### Rational $[\mu(x)]^n$ substitutions
- $\int \frac{1}{\sqrt{x}+2\sqrt[3]{x}}\,dx$ = $2\sqrt{x}-6\sqrt[3]{x}+24\sqrt[6]{x}-48\ln(\sqrt[6]{x}+2)$
- $\int \frac{1}{\sqrt{x} - \sqrt[3]{x}}\,dx$＝$2\sqrt{x}+3\sqrt[3]{x}+6\sqrt[6]{x}+6\ln(1-\sqrt[6]{x})$
- $\int \frac{1}{\sqrt{x} + \sqrt[4]{x}}\,dx$=$2\sqrt{x}-4\sqrt[4]{x}+4\ln(\sqrt[4]{x}+1)$
- $\int \frac{\sqrt[3]{x}+1}{\sqrt[3]{x} - 1}\,dx$=$3x^{2/3}+x+6\sqrt[3]{x}+6\ln(1-\sqrt[3]{x})$
- $\int \frac{x}{1-x^2 + \sqrt{1- x^2}}\,dx$=$-\ln(\sqrt{1-x^2}+1)$


### Interesting u-substitutions


- $\int e^{\sin^2(x)}\sin(2x)\,dx$= $e^{\sin^2(x)}$
- $\int \frac{\sin^3{\sqrt{x}}}{2\sqrt{x}}\,dx$=$\frac{cos(3\sqrt{x})-9cos(\sqrt{x})}{12}$
- $\int \frac{\ln(x)}{x}\,dx$=$\frac{\ln^2(x)}{2}$
- $\int \frac{x}{1+x^4}\,dx$=$\frac{tan^{-1}(x^2)}{2}$
- $\int \frac{x^2}{1+x^6}\,dx$=$\frac{tan^{-1}(x^3)}{3}$
- $\int \frac{x}{x^4-16}\,dx$=$\frac{\ln(4-x^2)-\ln(x^2+4)}{16}$
- $\int \frac{e^x}{1+e^{2x}}\,dx$=$tan^{-1}(e^x)$
- $\int \frac{\sec^2(x)}{1+\tan(x)}\,dx$=$\ln(\sin(x)+cos(x))-\ln(\cos(x))$
- $\int \frac{1}{2x\sqrt{x-1}}\,dx$=$tan^{-1}(\sqrt{x-1})$
- $\int \frac{\sin(\alpha)}{\sqrt{4-\cos^2(\alpha)}}d\alpha$=$-sin^{-1}(\frac{cos(\alpha)}{2})$
- $\int \frac{6-2x}{\sqrt{9-x^2}}\,dx$=$2\sqrt{9-x^2}+6sin^{-1}(\frac{x}{3})$
- $\int \frac{4x^3+2x}{x^4+1}\,dx$=$\ln(x^4+1)+tan^{-1}(x^2)$
- $\int \tan^4(x) + \tan^2(x)\,dx$=$\frac{tan^3(x)}{3}$
- $\int (\cos^2(x))(\sin(x) + 1)\,dx$=$\frac{3x-2cos^3(x)+3sin(x)cos(x)}{6}$
- $\int \frac{\sec^2(x)}{\sqrt{9-\tan^2(x)}}\,dx$=$\frac{\sqrt{5cos(2x)+4}\sec(x)tan^{-1}(\frac{sin(x)}{\sqrt{5cos(2x)+4}})}{\sqrt{9-\tan^2(x)}}$ **way too hard!!
- $\int \frac{2}{x\sqrt{25x^4-1}}\,dx$=$tan^{-1}(\sqrt{25x^4-1})$
- $\int x\sqrt{x+1}\,dx$=$\frac{2}{15}(x+1)^{3/2}(3x-2)$
- $\int \frac{1}{(e^x + e^{-x})}\,dx$=$tan^{-1}(e^x)$
- $\int \frac{1}{\sqrt{x}\sqrt{1-4x}}\,dx$=$\frac{\sqrt{1-4x}\sqrt{x}\sin^{-1}(2\sqrt{x})}{\sqrt{(1-4x)x}}$
- $\int \frac{1}{x\sqrt{4x-1}}\,dx$=$\ln(1-\sqrt{1-4x})-\ln(\sqrt{1-4x}+1)$
- $\int \frac{7-\ln(x)}{x(3+\ln(x))}\,dx$=$10\ln(\ln(x)+3)-\ln(x)$
- $\int \frac{\tan(x)}{\tan(x) + \sec(x)}\,dx$=$x-\frac{2sin(\frac{x}{2})}{sin(\frac{x}{2})+cos(\frac{x}{2})}$
- $\int \ln\sqrt{x^2+1}\,dx$=$\frac{1}{2}x(ln(x^2+1)-2)+tan^{-1}(x)$
- $\int \frac{1}{\sqrt{x\sqrt{x}-x^2}}\,dx$=$2tan^{-1}(\frac{(2\sqrt{x}-1)\sqrt{x^{3/2}-x^2}}{2(\sqrt{x}-1)x})$

### Integration by Parts
- $\int (\ln(x))^2 \,dx$ = $x (2 - 2 \ln(x) + \ln^2(x))$
- $\int x^2e^x \,dx$ = $e^x (2 - 2 x + x^2)$
- $\int x\sin(2x) \,dx$=$1/4 (-2 x \cos(2 x) + \sin(2 x))$
- $\int e^x\cos(x) \,dx$ = $1/2 e^x (\cos(x) + \sin(x))$
- $\int \sqrt{x}\ln(x) \,dx$ = $2/9 x^{3/2} (-2 + 3 \ln(x))$
- $\int x\ln(x) \,dx$ = $1/4 x^2 (-1 + 2 \ln(x))$
- $\int x^2\ln(x) \,dx$ = $1/9 x^3 (-1 + 3 \ln(x))$
- $\int \tan^{-1}(x) \,dx$ = $x \tan^{-1}(x) - 1/2 \ln(1 + x^2)$
- $\int \sec^{-1}(x) \,dx$ = ${cos(x) + x \sin(x)}$
- $\int x\sec^{-1}(x) \,dx$=$1/2 x (-\sqrt{1 - 1/x^2} + x sec^{-1}(x))$
- $\int (\ln(x))^2 \,dx$ = $x (2 - 2 \ln(x) + \ln^2(x))$
- $\int \sin(\ln(x)) \,dx$=$-1/2 x (\cos(\ln(x)) - \sin(\ln(x)))$
- $\int x\tan^{-1}(x) \,dx$ = $1/2 (-x + (1 + x^2) \tan^{-1}(x))$
- $\int e^{\sqrt[3]{x}} \,dx$ = $3e^{x^{1/3}} (2 - 2x^{1/3}+ x^{2/3})$
- $\int \frac{x\tan^{-1}(x)}{(x^2+1)^2} \,dx$ = $(x + (-1 + x^2)tan^{-1}(x))/(4 (1 + x^2))$
- $\int \frac{\sqrt{1+\ln(x)}}{x\ln(x)} \,dx$ = $2\sqrt{1 + \ln(x)} + \ln(1 - \sqrt{1 + \ln(x)}) - \ln(1 + \sqrt{1 + \ln(x)})$
- $\int e^{\sqrt{x}} \,dx$ = $2e^\sqrt{x} (-1 + \sqrt{x})$
- $\int \sec^3(x) \,dx$ = $1/2 (-\ln(\cos(x/2) - \sin(x/2)) + \ln(\cos(x/2) + \sin(x/2)) + sec(x) \tan(x))$
- $\int \sin^{-1}(x) \,dx$=$\sqrt{1 - x^2} + x \sin^{-1}(x)$
- $\int \frac{2\tan^{-1}(e^x)}{e^{2x}}\,dx$=$tan^{-1}(e^{-x}) - e^{-2x}(e^x + \tan^{-1}(e^x))$

### Powers of Trigonometric Functions

- $\int \cos^2 \left (\frac{1}{2}x \right) + \sec \left(\frac{1}{2}x\right)\,dx$= $\frac{1}{2}\left(\sin \left(x\right)+x\right)+2\ln \left|\tan \left(\frac{x}{2}\right)+\sec \left(\frac{x}{2}\right)\right|$
- $\int \sin^3(x) \,dx$= $-\cos \left(x\right)+\frac{\cos ^3\left(x\right)}{3}$
- $\int \cos^3(x) \,dx$= $\sin \left(x\right)-\frac{\sin ^3\left(x\right)}{3}$
- $\int \sec^4(x) \,dx$ = $\frac{\left(\sqrt{\sec ^2\left(x\right)-1}\right)^3}{3}+\sqrt{\sec ^2\left(x\right)-1}$
- $\int \sin^3(x)\cos^5(x) \,dx$ = $-\frac{\cos ^6\left(x\right)}{6}+\frac{\cos ^8\left(x\right)}{8}$
- $\int (\cos(x)+1)^3 \,dx$ = $\frac{5}{2}x-\frac{1}{3}\sin ^3\left(x\right)+4\sin \left(x\right)+\frac{3}{4}\sin \left(2x\right)$
- $\int (\sin(x)+1)^3 \,dx$ = $\frac{5}{2}x+\frac{1}{3}\cos ^3\left(x\right)-4\cos \left(x\right)-\frac{3}{4}\sin \left(2x\right)$
- $\int \sin^3(z)\sqrt{\cos(z)} dz$ = $-\frac{2}{3}\cos ^{\frac{3}{2}}\left(z\right)+\frac{2}{7}\cos ^{\frac{7}{2}}\left(z\right)$
- $\int \sec^3(x)\tan^3(x) \,dx$ = $-\frac{\sec ^3\left(x\right)}{3}+\frac{\sec ^5\left(x\right)}{5}$
- $\int \sqrt{1+\cos(8x)} \,dx$ = $\frac{1}{2\sqrt{2}}\sin \left(4x\right)$
- $\int \sec^3(x)\tan^3(x) \,dx$ = $-\frac{\sec ^3\left(x\right)}{3}+\frac{\sec ^5\left(x\right)}{5}$
- $\int \sin^4(x) + \sin^3(x) \,dx$ = $-\frac{1}{4}\sin ^3\left(x\right)\cos \left(x\right)+\frac{3}{8}\left(x-\frac{1}{2}\sin \left(2x\right)\right)-\cos \left(x\right)+\frac{\cos ^3\left(x\right)}{3}$
- $\int \frac{\sin^2(x)}{\cos^3(x)} \,dx$ = $\frac{\sqrt{1-\cos ^2\left(x\right)}}{2\cos ^2\left(x\right)}-\frac{1}{4}\ln \left|\sqrt{-\cos ^2\left(x\right)+1}+1\right|+\frac{1}{4}\ln \left|\sqrt{-\cos ^2\left(x\right)+1}-1\right|$

### Trigonometric Substitution


- $\int \frac{\sqrt{x^2-9}}{x} \,dx$ = $-3\sec^{-1} \left(\frac{1}{3}x\right)+x\sqrt{1-\frac{9}{x^2}}$
- $\int \frac{1}{x^2\sqrt{x^2-9}} \,dx$ = $\frac{1}{9}\sqrt{1-\frac{9}{x^2}}$
- $\int \frac{1}{2x\sqrt{x^2-16}} \,dx$ = $\frac{1}{8}\sec^{-1} \left(\frac{1}{4}x\right)$
- $\int \frac{1}{x^2\sqrt{x^2-4}} \,dx$ = $\frac{1}{4}\sqrt{1-\frac{4}{x^2}}$
- $\int \frac{x^3}{\sqrt{25-x^2}} \,dx$ = $\frac{\left(\sqrt{25-x^2}\right)^3}{3}-25\sqrt{25-x^2}$
- $\int \frac{\sqrt{x^2-1}}{x} \,dx$ = $-\tan^{-1} \left(\sqrt{x^2-1}\right)+\sqrt{x^2-1}$
- $\int \sqrt{9+4x^2} \,dx$
- $\int \frac{x}{\sqrt{4-x^4}} \,dx$ = $\frac{1}{4}\left(2x\sqrt{4x^2+9}+9\ln \left|\frac{2x+\sqrt{4x^2+9}}{3}\right|\right)$
- $\int \frac{1}{x^2\sqrt{x^2-4}} \,dx$ = $\frac{1}{4}\sqrt{1-\frac{4}{x^2}}$
- $\int \frac{x+16}{\sqrt{x^2-4x+8}} \,dx$ = $\sqrt{x^2-4x+8}+18\ln \left|\frac{1}{2}x-1+\sqrt{\frac{1}{4}x^2-x+2}\right|$
- $\int \frac{x+1}{\sqrt{4-x^2}} \,dx$ = $-\sqrt{4-x^2}+\sin^{-1} \left(\frac{1}{2}x\right)$





### Partial Fraction Decomposition

- $\int \frac{4x^2 + x + 7}{x^2 + 1}$ = $4x+3\tan^{-1} \left(x\right)+\frac{1}{2}\ln \left|x^2+1\right|$
- $\int \frac{x^3 + 4x^2}{x^2 + 4x + 3}\,dx$ = $\frac{1}{2}x^2+\frac{13}{2}\ln \left|x^2+4x+3\right|-11\ln \left|x+3\right|-5\ln \left|x+1\right|-10$
- $\int \frac{x^3 - x^2 - 3x + 1}{x^2 - x - 6}\,dx$
- $\int \frac{2x^3 + 2x^2 - 9x - 1}{x^2 + x - 6}\,dx$
- $\int \frac{3x^3 - 12x^2 + 15x -5}{x^2 - 4x + 4}\,dx$ = $-\frac{3x^3-12x^2+15x-5}{x-2}+\frac{9}{2}x^2-6x+3\ln \left|x-2\right|-6$

- $\int \frac{4x^2 - 11x - 19}{(x-5)(x^2 + 1)}\,dx$ = $\ln \left|x-5\right|+\frac{3}{2}\ln \left|x^2+1\right|+4\tan^{-1} \left(x\right)$
- $\int \frac{3x^2 + 2x - 7}{x^2(x-5) + (x-5)}\,dx$ =
- $\int \frac{x^4 - 2x^3 - 8x^2 + 2x + 10 }{x^2 - 2x - 8}\,dx$
- $\int \frac{3x^2 + x + 3}{x(x^2+1)}\,dx$ = $\tan^{-1} \left(x\right)+3\ln \left|x\right|$
- $\int \frac{-2x+4}{(x^2+1)(x-1)^2}\,dx$ = $\ln \left|x^2+1\right|+\tan^{-1} \left(x\right)-2\ln \left|x-1\right|-\frac{1}{x-1}$
- $\int \frac{2x^5 + 4x^3 + 4x}{(x^4+1)}\,dx$ = $x^2+\tan^{-1} \left(x^2\right)+\ln \left|x^4+1\right|$
- $\int \frac{x^3 + 4x^2}{x^2 + 4x + 3}\,dx$ = $\frac{1}{2}x^2+\frac{13}{2}\ln \left|x^2+4x+3\right|-11\ln \left|x+3\right|-5\ln \left|x+1\right|-10$
- $\int \frac{x(x^2 - 3x + 5)}{x^2 - 2x + 1}\,dx$ = $-\frac{x\left(x^2-3x+5\right)}{x-1}+\frac{3}{2}x^2-3x+\frac{3}{2}+2\ln \left|x-1\right|$
- $\int \frac{x^4 + 2x^3 + 5x^2 + 4x + 6}{x^3 + x^2 + x + 1}\,dx$
