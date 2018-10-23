# Intro

* Typesetting language
* Tex is greek 'chi', pronounced "ch" as in "Loch Ness"
* Not exactly WYSIWYG
* Handles position, text wrapping, flowing images around text. You describe the structure, it handles the layout
* Advantages:
  * Easy way to type math
  * Professional templates and layouts (journals, theses)
  * Allows for complex structure - footnotes, references, TOC, bibliographies
  * Almost plain text format, easy to version control
  * Save your own macros and templates
  * Focus on content over layout
  * Looks good!

Here's an outline of what we'll go over

1. Basic syntax, mostly how to produce common symbols
2. Other handy features
3. Overview of how to install and set up latex
4. References, websites to check out, and handy tools

**Demo Links:**

https://www.sharelatex.com/project/58325f95df9b7fc83bc62aec

https://www.diffchecker.com/diff

# Syntax

Here's what a full latex document usually looks like:

```latex
\documentclass{article}
\title{Cartesian closed categories and the price of eggs}
\author{Jane Doe}
\date{September 1994}
\begin{document}
   \maketitle
   Hello world!
\end{document}
```

For this workshop, to simplify things a bit we're going to be using a subset of the full capabilities of latex. Normally, writing a latex document involves installing a number of programs and packages on your system, writing a text document like the one seen above, and running it through a compiler to produce an output document (like a PDF).

This process is somewhat technical, error-prone, and rather involved, so we'll be using a slightly different typesetting language called **markdown** that has similar syntax, but a much lower learning curve. Markdown is mostly commonly used on websites, along with a javascript plugin called **mathjax** that renders the embedded bits of latex - you'll see it used on nearly every math blog in existence, as well as sites like math stackexchange and stackoverflow. In particular, for this workshop we'll be using a variant called **github-flavored markdown**.

(P.S. latex/markdown documents pair very well with version control! Perhaps we'll cover this in a future workshop.)

That being said, being able to use latex with markdown is becoming a very important skill on its own, especially if you want to communicate any mathematics online. However, markdown still only has a small subset of the features of full-blown latex, and if you're creating a more complicated documents such as a thesis, a journal publication, or a book, you'll probably want the power of a complete latex environment.

So we'll cover the basic syntax using markdown first, and then near the end we'll go over how to transfer your knowledge to documents that are completely latex-oriented.

## Basic Overview

* Ignores multiple spaces

* Most commands start with backslash
  * \command[optional parameter]{parameter}


## Math mode vs text mode

* The document is in text mode by default
* There are two types of math mode:
  * Inline: enclose with $
    ​
    In physics, the mass-energy equivalence is stated by the equation $E=mc^2$, discovered in 1905 by Albert Einstein.
    ​

  * Display: enclose with \$\$

    ​
    The mass-energy equivalence is described by the famous equation $$E=mc^2$$ discovered in 1905 by Albert Einstein. In natural units ($c$ = 1), the formula expresses the identity

## Examples

### The Basics

* ^ for superscript, _ for subscripts

  * $x^n k + y^n = z^n$
  * $x_i + y_i = z_i$
  * Both can be combined: $x_i^n + y_i^n = z_i^n$
* Use {} to group items: $x^{2n+1}$
* Greek letters: $$\theta, \psi$$ (Also see Detixify)
  * Just capitalize the commands to get capital letter: $\Theta, \Psi$
  * There are a few oddballs:
    * $\epsilon$ vs $\varepsilon$
    * $\phi$ vs $\varphi$
* Arithmetic:
  - $a < b$ and $b > a$
  - $a \leq b$  and $b \geq a$
  - $0.999 \neq 1$, but $0.999 \approx 1$ and $0.999\ldots \not= 1$
  - $$\frac{3}{2} = 1.5$$
* Basic functions
  * Square roots: $y = \sqrt{3x +4}$
  * Some trig functions are built in: $sin(t), \sin(\theta), \cos(\theta), \tan(\theta)$
  * Use \text $\text{colspace}\:A$

### Calculus

* Infinity: $\infty$
* Limits: $$\lim_{x\rightarrow 0} f(x)$$ or $$\lim_{t\rightarrow \infty} g(t)$$
* Derivatives
  * Leibniz Notation: $\frac{d}{dx}$
  * Partial derivatives: $\frac{\partial}{\partial x}$
  * Exponentiate anything: $\frac{\partial^2}{\partial x^2}$
  * Lagrange's notation: $f'(x)$
  * Newton's notation: $a(t) = \dot v(t)$
* Sums: $$\sum_{i=0}^\infty 2^{-i} = 1 + \frac{1}{2} + \frac{1}{4} + \dots$$
  * (This equals 2 by the way!)
* Integrals:
  $$\int_a^b f(x) dx = F(b) - F(a)$$
  * Improper integrals are fine.
    $$\int_0^\infty f(x) dx$$
  * All integrals, all day!
    $$\int_0^1\int_0^{2\pi} \int_0^{\pi/2} f(\psi, \theta, \rho)~d\psi~d\theta d\rho$$
  * You can make it more compact:
    $$\iint f(x,y)~dA$$, $$\iiint f(x,y,z)~dV$$
  * But the limits are a little different:
    $$\iint\limits_A f(x,y)~dA$$, $$\iiint\limits_V f(x,y,z)~dV$$
  * Path integrals!
    $$\oint ydx + xdy$$

### Linear Algebra

* Matrices:
  $$A = \left( \begin{array}{rr} a & b \\ b & c \end{array}\right)$$
* Determinants:
  $$\mathbf{V}_1 \times \mathbf{V}_2 =  \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0 \\\end{vmatrix}$$
* Systems of equations:
  $$\begin{cases} a_1x+&b_1y+&c_1z&=d_1 \\ &b_2y+&c_2z&=d_2 \\ &~&c_3z&=d_3\end{cases}$$
* Absolute values: $\lvert x\rvert$
* Vector norms: $\left\lVert v \right\rVert$

### Math 109 and Beyond

#### Modular Arithmetic

* $3 \equiv -1 \mod 4$
  - Or $3 \equiv_4 -1$
  - Or $3 \cong-1 \mod 4$
  - Or just $3 = -1 \mod 4$

#### Proofs

* Implication: $A \Rightarrow B$
  * But $B \not\implies A$
* Iff: $A \iff B$
* Quantifiers: $\forall \varepsilon, \exists \delta$
* Negation: $\not\exists\delta$
* Logical and/or: $\wedge, \vee$
* QED: $\Box, \blacksquare$

#### Set Operations

* Membership: $a \in A$


* Union: $A \cup B$ or $A \bigcup B$
  * Or even $$\bigcup_{i=1}^n A_i$$
* Intersection: $A \cap B$, $A \bigcap B$
  * Or $$\bigcap_{i=1}^n A_i$$
* Complement: $A^c​$ or $\bar{A}​$
* Difference: $X-A$
* Empty set: $X^c = \emptyset$
* Comprehension: $\{ x \in S \mid x^2 =1 \}$
  * Infinite sets: $\{2,4,6,\dots\}$
  * Using text: $\{x \mid x \text{ is positive and even}\}$

#### Various Other Things

* Number Systems
  - $$\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R}\subset \mathbb{C} \subset \mathbb{H} \subset \mathbb{O}$$
* Defining functions:
  $$f: A \rightarrow B \\ a \mapsto b$$
* Functions by cases:
  $$ f(n) =\begin{cases}n/2,  & \text{if $n$ is even} \\3n+1, & \text{if $n$ is odd}\end{cases}$$
* Binomial coefficients: $$n\choose k$$

# Other Features

## Images

It's often useful to include images or figures in your documents. For markdown documents, it's relatively easy - you just use an image tag. If it's a remote image, it points to the url:

![img](http://www.math.kth.se/math/GRU/2015.2016/SF2735/images/boysurface.jpg)




If it's a local image, then you'll most likely need to supply the full path:

![torus](C:\Users\Zack\Desktop\Presentation\torus.png)

If you're using a full latex distribution, it's a little different. You can generally only use local files, in which case you need to save your image to the same directory as your .tex file. Say it's `imageName.png`, then you can include it anywhere in your document using the **figure** command:

```latex
\begin{figure}
  \caption{A picture of a gull.}
  \centering
    \includegraphics[width=0.5\textwidth]{imageName}
\end{figure}
```

(Note that you don't need to specify the full file name `imageName.png`, the latex compiler can usually figure out the image format on its own.)

## References

In longer calculations or proofs, it's handy to refer back to a previous result. This can be done by just making an equation, then giving it a "tag" (this is what's displayed on the actual document) as well as a "label" (which you'll use to refer back to it.) Then, later in your text, use the "eqref" or "ref" command to link to it. (This produces hyperlinks in your PDF!)

$$ a := x^2-y^3 \tag{1}\label{myEquationName1} $$

"As defined in equation $\eqref{myEquationName1}​$, we have...."

## Making Macros

If you find yourself rewriting lots of long expressions all of the time, you can define your own shortcuts! You can just define them at the beginning of your document, and use them anywhere within it. (In fact, it's not a bad idea to just keep a list of macros you use throughout your classes, and reference them when you need them again)

Here's a simple example: let's say you're doing algebra or topology and you have to keep writing out this long thing called a "short exact sequence", which always looks something like this:
$0 \to A \to B \to C \to 0$

Then it's pretty easy to parameterize this command, so it behaves more like a function with variables inputs.

You start off by defining a command: $ \newcommand{\myNewCommand}[3]{ 0 \to #1 \to #2 \to #3 \to 0 }\text{(invisible embedded math here)}$. You just give it a name, specify how many arguments it takes (here 3), and use #1, #2, etc to reference those variables in your command.

Now you can use it anywhere, just using the name you gave it above and passing in some arguments:
$\myNewCommand{A}{B}{C}$
$\myNewCommand{R}{R/Z}{Z}$

## Long Equations

Occasionally, you'll want to do long calculations that involve a string of equalities. These can be done inline, as in
$0 = a0 = a (0 + 0) = a0 + a0 = (a+a)0 = (2a)0 = \cdots$

However, this can quickly become hard to read, so an alternative is to do a longer vertical equation and align the equals signs. In this case, you'll want to start an "align" environment - inside this environment, you can use \\\\ to force a line break, and then place the & symbol in each line to determine the "anchor" to which each line will vertically align.

Example:

$$\begin{align}\sqrt{37} &= \sqrt{\frac{73^2-1}{12^2}} \\ &= \sqrt{\frac{73^2}{12^2}\cdot\frac{73^2-1}{73^2}} \\  &= \sqrt{\frac{73^2}{12^2}}\sqrt{\frac{73^2-1}{73^2}} \\ &= \frac{73}{12}\sqrt{1 - \frac{1}{73^2}} \\  &\approx \frac{73}{12}\left(1 - \frac{1}{2\cdot73^2}\right)\end{align}$$

## Version Control

Just a brief note on just how handy version control is: if you're not using something like Github currently, I would highly recommend learning it. Not only is it an invaluable tool, used in nearly every tech job imaginable, but it can seriously simplify your digital life.

The most useful example offhand is diff checking, see https://www.diffchecker.com/diff

# Using a Full Latex Environment

Once you have the basics down, transitioning to a full Latex environment isn't terribly difficult, but there are a handful of technical steps you'll need to go through.

I'm personally a big advocate of using markdown over full Latex for simple documents, so the easiest option there is to either download a markdown editor that supports mathjax, or use one of the online editors linked in the references section. However, markdown has a few disadvantages - mainly that there are many latex features it doesn't easily support, such as latex packages and styles.

The second-easiest option is to use one of the online latex environments, which takes cares of most of the upfront work of installing compilers and packages. This is a great option that also requires very little setup. The only downside is that this usually involves storing your data remotely, and it may be difficult to add custom styles or packages outside of what the website supplies you.

The remaining option is to set up a local latex distribution. For complex or long-term projects like theses or books, this is almost undoubtedly the way to go. Your options are never limited, since you can install any packages or styles you'd like. You can organize your files however you wish, keep backups in multiple places.

Perhaps the biggest advantage, though, is that if you ever run into trouble, nearly every Google-able answer will apply to you. If you run into hard niche issues, it is often the case that you can install a package, copy a snippet or two from stackoverflow, and be on your merry way. The downside is that maintaining your environment over time can involve some work, and reproducing it on different computers can be troublesome.

I'll come back to the markdown and online editor options in the references section later on. Here, I'll just give a brief overview of what installing Latex entails; you can of course find much more detailed guides by just Googling "How to Install Latex on Windows" (or whatever your operating system is).

## Installing a Tex Distribution

Latex is a compiled language, which means you'll need a compiler at some point.

Your best bet is to go to a site like https://www.latex-project.org/get/ and follow directions for your operating system.
On Windows systems, MikTex is a good option.
For Mac, MacTex.
For Linux, it depends on your distribution, but you'ĥll mostly just want to look for some variant of the `texlive-full` package.

## Creating a .tex file

This is the relatively easy part - a **.tex** file is really just a text file, written using latex syntax. As we noted near the beginning of the document, the basic structure looks something like this:

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}

\title{Basic Demo}
\author{Zack Garza}
\date{November 2016}

\begin{document}

\maketitle

\section{Introduction}
Here, you can just type normal text.

You can create new paragraphs by just pressing Enter twice.

\section{Body}
Here's a new section.

Have fun!

\end{document}
```

You can see a demo using this structure at https://www.sharelatex.com/project/58325f95df9b7fc83bc62aec

Here's a rundown of what everything means:

* **Document class**
  This just indicates what kind of document you're making. On the backend, Latex sets a bunch of presets for how the final document will look - the layout, the margins, how text is broken up, etc.

  Most of the time, the **article** class suffices. From the docs, it's described as:

  *For articles in scientific journals, presentations, short reports, program documentation, invitations, ...*

  Of course, there are other options like **report**, **book**, **slides**, **letter**, and more. Also, it is often the case that academic journals will provide their own document classes that must be used for all submissions, in which case you'd use something more customized.

* **usepackage**
  One of the huge benefits of using a full latex environment is the access to *packages*. Packages extend latex functionality in tons of ways, by providing things like new layouts, symbols, fonts, macros, and much much more. For example, the AMS (American Mathematical Society) provides a package that provides new commands like "Theorem" and "Lemma" and overhauls the styles for equations to make them look professional and publication-worthy. Installing packages is a tricky business, but once they're installed, including them is a simple matter of passing the package name to this statement.

* **title, author, date**
  This is all setup for the **mktitle** command, which produces the first page on the document (see the demo).

* **begin{document}**
  This command informs that compiler that all of the following text will be actually rendered on the document. Anything outside of the begin/end document command isn't regarded as actual content; instead they are for setting up the document, initializing variables, that kind of thing. Everything inside these two commands will usually appear in the final output in some way or another.

* **mktitle**
  As seen in the demo, this produces a nice title page for your document that includes a few bits of relevant info.

* **section**
  Most document classes provide some sort of agreed-upon structure for your document. As a result, the class provides a bunch of commands to structure and style your document.
  ​
  The *article* class is used very broadly, so it provides a structure like this:

  ```latex
  \chapter{Introduction}
  This chapter's content...

  \section{Structure}
  This section's content...

  \subsection{Top Matter}
  This subsection's content...

  \subsubsection{Article Information}
  This subsubsection's content...
  ```

  These are partly used for your own organization, but also provide helpful hints to the compiler about the structure of your document and how best to style it. In this case, the *article* class will style the headers slightly differently, and will also take care of numbering.

  For example, you'll have chapters 1,2,3, and so on, and your sections will get numbers like 1.1, 1.2, 1.3; subsections will be 1.1.1, 1.1.2, and so on.

  Also note that the bit within brackets, like \{Introduction\}, is usually something like a title or section name that you can choose.

* **end{document}**
  This is pretty self-explanatory, but it's worth noting that this really should be the end of your document - as in, nothing should come after this! The compiler will almost surely complain if this is not the case.

## Compiling

If you're working with a GUI program, most have an option to export as PDF/HTML/whatever.

In any other case, you can always just compile directly from the command line by running `pdflatex myDocument.tex`, which produces `myDocument.pdf` as an output if it succeeds. Note that if you're including external resources, such as other PDFs or images/figures, you'll probably need them in the same directory.

Also, if you're including things like bibliographies or references, there are many "gotchas" to worry about. If there are syntax errors, you'll be able to see them in the output of pdflatex. Other examples include references rendering as question marks, or section/equation numbering being incorrect - most of these can be solved by compiling twice.

# Helpful Tools and Recommendations

* Online Latex Environments:
  Also extremely useful, because they take the hassle out of downloading a latex distribution, installing it, etc. Some also have features such as collaboration, version control, documents hosting, and more - super useful for group projects.

  * ShareLatex: https://www.sharelatex.com/
    Collaboration, chat, Dropbox/Google Drive save, TONS of templates

* Offline Latex Editors

  * TexMaker: http://www.xm1math.net/texmaker/
  * TexStudio: https://sourceforge.net/projects/texstudio/

* Online Markdown Editors

  * Dilinger: http://dillinger.io/
  * StackEdit: https://stackedit.io/

* Offline Markdown Editors

  * Typora: http://www.typora.io/

* Tools

  * Detexify: http://detexify.kirelabs.org/classify.html

    - An extremely useful tool that lets you find out what latex commands are needed for a symbol by just drawing it in a box! Caveat: you need pretty good handwriting to get good results.

  * http://www.tablesgenerator.com/

    * Making tables in Latex can be quirky at times, so this provides a GUI for making tables that generates latex code you can just drop into your document.

      (Note - not applicable to markdown!)
