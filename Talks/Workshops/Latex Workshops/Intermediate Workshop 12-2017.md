

# Latex Workshop Notes

Let's learn some $\LaTeX$!

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Latex Workshop Notes](#latex-workshop-notes)
	- [Topics](#topics)
- [Cool, but not Today](#cool-but-not-today)

<!-- /TOC -->

## Topics
- amsthm package
  - Theorem, definition, claim, and joke environments
    https://en.wikibooks.org/wiki/LaTeX/Theorems
- Math Mode Secrets
  - Text within math mode
  - Overbrace
  - Cases
  - Script letters
  - Various types of brackets
  - overset
  - Multiline indexing
- References
  - Equation, Section, Figure back-references
      https://www.sharelatex.com/learn/Cross_referencing_sections_and_equations
  - Referencing page numbers
  - Footnotes, Bibliography
- Tables
  - Tab-alignment, aligned environments
    https://en.wikibooks.org/wiki/LaTeX/Tables
- Alternate Document Classes
  - Beamer
      https://www.sharelatex.com/learn/Beamer
  - Posters
      https://www.sharelatex.com/learn/Posters
  - Resume/CV templates
      https://www.sharelatex.com/project/59063b232d1bf37d143652ed
- Including Source Code
  - Plain pseudocode
      https://www.sharelatex.com/learn/Code_listing
  - Adding colors/syntax highlighting, language-specific
      https://www.sharelatex.com/learn/Code_Highlighting_with_minted
  - Including source code directly from a file
- Field-Specific Goodies (Demos)
  - Math: 2D and 3D plots
      https://www.sharelatex.com/learn/Pgfplots_package
  - Bio/Chem: Molecular Diagrams
      https://www.sharelatex.com/learn/Chemistry_formulae
  - EE/Physics: Circuit Diagrams
      https://www.sharelatex.com/learn/CircuiTikz_package
  - TAs/Profs: Typing up Exams
      https://www.sharelatex.com/learn/Typing_exams_in_LaTeX
  - General: Jupyter Notebooks

- Diagrams
  - tikz
      https://www.sharelatex.com/learn/TikZ_package
  - xypic
      https://en.wikibooks.org/wiki/LaTeX/Xy-pic
- Customization
  - Creating your own macros/commands
      https://www.sharelatex.com/learn/Commands


# Cool, but not Today
- Creating your own style file
    https://www.sharelatex.com/learn/Writing_your_own_class
    https://en.wikibooks.org/wiki/LaTeX/Creating_Packages
- Stats: Knitr to include R code
  https://www.sharelatex.com/learn/Knitr

```
\DeclareMathOperator\cis{cis}

\[
 z = \overbrace{
   \underbrace{x}_\text{real} + i
   \underbrace{y}_\text{imaginary}
  }^\text{complex number}
\]

\begin{align*}
 f(x) &= (x+a)(x+b) \\
      &= x^2 + (a+b)x + ab
\end{align*}

\[f(x) = \left\{
  \begin{array}{lr}
    x^2 & : x < 0\\
    x^3 & : x \ge 0
  \end{array}
\right.
\]


\[
 u(x) =
  \begin{cases}
   \exp{x} & \text{if } x \geq 0 \\
   1       & \text{if } x < 0
  \end{cases}
\]

\[
 \operatorname{arg\,max}_a f(a)
 = \operatorname*{arg\,max}_b f(b)
\]
\DeclareMathOperator*{\argmax}{arg\,max}
```


Theorems
https://en.wikibooks.org/wiki/LaTeX/Theorems
```
\usepackage{amsthm}
\newtheorem{mydef}{Definition}

\begin{mydef}
Here is a new definition
\end{mydef}

\begin{proof}
Here is my proof:
\[
a^2 + b^2 = c^2 \qedhere
\]
\end{proof}
```
