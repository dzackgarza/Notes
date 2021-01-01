```{=tex}
\newcommand{\textoperatorname}[1]{%
  \operatorname{\textnormal{#1}}%
}
\newcommand{\et}{\text{ét}}
\newcommand{\Et}{\text{Ét}}
```
\% {top}{bottom}{symbol}
```{=tex}
\newcommand\stacksymbol[3]{%
  \mathrel{\stackunder[2pt]{\stackon[4pt]{$#3$}{$\scriptscriptstyle#1$}}{%
  $\scriptscriptstyle#2$}}}
```
```{=tex}
\newcommand{\ext}{\operatorname{Ext}}
\newcommand{\Ext}{\operatorname{Ext}}
\newcommand{\Endo}{\operatorname{End}}
\newcommand{\Ind}{\operatorname{Ind}}
\newcommand{\ind}{\operatorname{Ind}}
\newcommand{\coind}{\operatorname{Coind}}
\newcommand{\proj}{\operatorname{Proj}}
\newcommand{\Proj}{\operatorname{Proj}}
\newcommand{\res}{\operatorname{Res}}
\newcommand{\Res}{\operatorname{Res}}
\newcommand{\Hol}{\operatorname{Hol}}
\newcommand{\Br}{\operatorname{Br}}
\newcommand{\coh}{\operatorname{coh}}
\newcommand{\colspace}{\operatorname{colspace}}
\newcommand{\rowspace}{\operatorname{rowspace}}
\newcommand{\codom}{\operatorname{codom}}
\newcommand{\range}{\operatorname{range}}
\newcommand{\nullspace}{\operatorname{nullspace}}
\newcommand{\nullity}{\operatorname{nullspace}}
\newcommand{\projection}{\operatorname{Proj}}
\renewcommand{\AA}[0]{{\mathbb{A}}}
\newcommand{\Af}[0]{{\mathbb{A}}}
\newcommand{\CC}[0]{{\mathbb{C}}}
\newcommand{\CP}[0]{{\mathbb{CP}}}
\newcommand{\DD}[0]{{\mathbb{D}}}
\newcommand{\FF}[0]{{\mathbb{F}}}
\newcommand{\fq}[0]{{\mathbb{F}_{q}}}
\newcommand{\fqr}[0]{{\mathbb{F}_{q^r}}}
\newcommand{\GF}[0]{{\mathbb{GF}}}
\newcommand{\GG}[0]{{\mathbb{G}}}
\newcommand{\HH}[0]{{\mathbb{H}}}
\newcommand{\HP}[0]{{\mathbb{HP}}}
\newcommand{\KK}[0]{{\mathbb{K}}}
\newcommand{\kk}[0]{{\Bbbk}}
\newcommand{\bbm}[0]{{\mathbb{M}}}
\newcommand{\NN}[0]{{\mathbb{N}}}
\newcommand{\OP}[0]{{\mathbb{OP}}}
\newcommand{\PP}[0]{{\mathbb{P}}}
\newcommand{\QQ}[0]{{\mathbb{Q}}}
\newcommand{\RP}[0]{{\mathbb{RP}}}
\newcommand{\RR}[0]{{\mathbb{R}}}
\newcommand{\SpSp}[0]{{\mathbb{S}}}
\renewcommand{\SS}[0]{{\mathbb{S}}}
\newcommand{\TT}[0]{{\mathbb{T}}}
\newcommand{\ZZ}[0]{{\mathbb{Z}}}
\newcommand{\znz}[0]{\mathbb{Z}/n\mathbb{Z}}
\newcommand{\zpz}[0]{\mathbb{Z}/p\mathbb{Z}}
\newcommand{\zlz}[0]{\mathbb{Z}/\ell\mathbb{Z}}
\newcommand{\zlnz}[0]{\mathbb{Z}/\ell^n\mathbb{Z}}
\newcommand{\Qp}[0]{\mathbb{Q}_{(p)}}
\newcommand{\Zp}[0]{\mathbb{Z}_{(p)}}
\newcommand{\Arg}[0]{\operatorname{Arg}}
\newcommand{\PGL}[0]{\operatorname{PGL}}
\newcommand{\GL}[0]{\operatorname{GL}}
\newcommand{\Gl}[0]{\operatorname{GL}}
\newcommand{\gl}[0]{\operatorname{GL}}
\newcommand{\mat}[0]{\operatorname{Mat}}
\newcommand{\Mat}[0]{\operatorname{Mat}}
\newcommand{\Rat}[0]{\operatorname{Rat}}
\newcommand{\Perv}[0]{\operatorname{Perv}}
\newcommand{\Gal}[0]{\operatorname{Gal}}
\newcommand{\Hilb}[0]{\operatorname{Hilb}}
\newcommand{\Quot}[0]{\operatorname{Quot}}
\newcommand{\Art}[0]{\operatorname{Art}}
\newcommand{\red}[0]{\operatorname{red}}
\newcommand{\Pic}[0]{{\operatorname{Pic}}}
\newcommand{\lcm}[0]{\operatorname{lcm}}
\newcommand{\maps}[0]{\operatorname{Maps}}
\newcommand{\maxspec}[0]{{\operatorname{maxSpec}}}
\newcommand{\Tr}[0]{\operatorname{Tr}}
\newcommand{\adj}[0]{\operatorname{adj}}
\newcommand{\ad}[0]{\operatorname{ad}}
\newcommand{\ann}[0]{\operatorname{Ann}}
\newcommand{\Ann}[0]{\operatorname{Ann}}
\newcommand{\arcsec}[0]{\operatorname{arcsec}}
\newcommand{\ch}[0]{\operatorname{ch}}
\newcommand{\Sp}[0]{{\operatorname{Sp}}}
\newcommand{\syl}[0]{{\operatorname{Syl}}}
\newcommand{\ff}[0]{\operatorname{ff}}
\newcommand{\txand}[0]{{\operatorname{ and }}}
\newcommand{\fppf}[0]{\mathrm{\operatorname{fppf}}}
\newcommand{\Fppf}[0]{\mathrm{\operatorname{Fppf}}}
\newcommand{\zar}[0]{{\mathrm{zar}}}
\newcommand{\Zar}[0]{{\mathrm{Zar}}}
\newcommand{\qcoh}[0]{{\mathrm{QCoh}}}
\newcommand{\Qcoh}[0]{{\mathrm{QCoh}}}
\newcommand{\QCoh}[0]{{\mathrm{QCoh}}}
\newcommand{\codim}[0]{\operatorname{codim}}
\newcommand{\coim}[0]{\operatorname{coim}}
\newcommand{\ssets}[0]{\operatorname{sSets}}
\newcommand{\dom}[0]{\operatorname{dom}}
\newcommand{\txor}[0]{{\operatorname{ or }}}
\newcommand{\txt}[1]{{\operatorname{ {#1} }}}
\newcommand{\Gr}[0]{{\operatorname{Gr}}}
\newcommand{\gr}[0]{{\operatorname{gr}}}
\newcommand{\dcoset}[3]{% 
    {\textstyle #1}
    \mkern-4mu\scalebox{1.5}{$\diagdown$}\mkern-5mu^{\textstyle #2}%
    \mkern-4mu\scalebox{1.5}{$\diagup$}\mkern-5mu{\textstyle #3} }
\newcommand{\grdim}[0]{{\operatorname{gr\,dim}}}
\newcommand{\Aut}[0]{{\operatorname{Aut}}}
\newcommand{\aut}[0]{\operatorname{Aut}}
\newcommand{\Inn}[0]{{\operatorname{Inn}}}
\newcommand{\Out}[0]{{\operatorname{Out}}}
\newcommand{\mltext}[1]{\left\{\begin{array}{c}#1\end{array}\right\}}
\newcommand{\Fun}[0]{{\operatorname{Fun}}}
\newcommand{\SL}[0]{{\operatorname{SL}}}
\newcommand{\PSL}[0]{{\operatorname{PSL}}}
\newcommand{\SO}[0]{{\operatorname{SO}}}
\newcommand{\SU}[0]{{\operatorname{SU}}}
\newcommand{\SP}[0]{{\operatorname{SP}}}
\newcommand{\per}[0]{{\operatorname{Per}}}
\newcommand{\loc}[0]{{\operatorname{loc}}}
\newcommand{\Top}[0]{{\operatorname{Top}}}
\newcommand{\Ab}[0]{{\operatorname{Ab}}}
\newcommand{\mcTop}[0]{\mathcal{T}\operatorname{op}}
\newcommand{\hoTop}[0]{{\operatorname{hoTop}}}
\newcommand{\Sch}[0]{{\operatorname{Sch}}}
\newcommand{\sch}[0]{{\operatorname{Sch}}}
\newcommand{\Sing}[0]{{\operatorname{Sing}}}
\newcommand{\alg}[0]{\mathrm{Alg}}
\newcommand{\scalg}[0]{\mathrm{sCAlg}}
\newcommand{\calg}[0]{\mathrm{CAlg}}
\newcommand{\dR}[0]{\mathrm{dR}}
\newcommand{\poly}[0]{\operatorname{poly}}
\newcommand{\Vect}[0]{{\operatorname{Vect}}}
\newcommand{\Sh}[0]{{\operatorname{Sh}}}
\newcommand{\presh}[0]{{\operatorname{Presh}}}
\newcommand{\Presh}[0]{{\operatorname{Presh}}}
\newcommand{\ab}[0]{{\operatorname{ab}}}
\newcommand{\Op}[0]{{\operatorname{Op}}}
\newcommand{\Ob}[0]{{\operatorname{Ob}}}
\newcommand{\prim}[0]{{\operatorname{prim}}}
\newcommand{\Set}[0]{{\operatorname{Set}}}
\newcommand{\Sets}[0]{{\operatorname{Set}}}
\newcommand{\Grp}[0]{{\operatorname{Grp}}}
\newcommand{\Groups}[0]{{\operatorname{Groups}}}
\newcommand{\Homeo}[0]{{\operatorname{Homeo}}}
\newcommand{\Diffeo}[0]{{\operatorname{Diffeo}}}
\newcommand{\MCG}[0]{{\operatorname{MCG}}}
\newcommand{\set}[0]{{\operatorname{Set}}}
\newcommand{\Tor}[0]{\operatorname{Tor}}
\newcommand{\sets}[0]{{\operatorname{Set}}}
\newcommand{\Sm}[0]{{\operatorname{Sm}_k}}
\newcommand{\orr}[0]{{\operatorname{ or }}}
\newcommand{\annd}[0]{{\operatorname{ and }}}
\newcommand{\bung}[0]{\operatorname{Bun}_G}
\newcommand{\const}[0]{{\operatorname{const.}}}
\newcommand{\disc}[0]{{\operatorname{disc}}}
\newcommand{\op}[0]{^\operatorname{op}}
\newcommand{\id}[0]{\operatorname{id}}
\newcommand{\im}[0]{\operatorname{im}}
\newcommand{\pt}[0]{{\{\operatorname{pt}\}}}
\newcommand{\sep}[0]{^\operatorname{sep}}
\newcommand{\tors}[0]{{\operatorname{tors}}}
\newcommand{\tor}[0]{\operatorname{Tor}}
\newcommand{\height}[0]{\operatorname{ht}}
\newcommand{\cpt}[0]{\operatorname{compact}}
\newcommand{\abs}[1]{{\left\lvert {#1} \right\rvert}}
\newcommand{\stack}[1]{\mathclap{\substack{ #1 }}} 
\newcommand{\qtext}[1]{{\quad \operatorname{#1} \quad}}
\newcommand{\qst}[0]{{\quad \operatorname{such that} \quad}}
\newcommand{\actsonl}[0]{\curvearrowleft}
\newcommand{\actson}[0]{\curvearrowright}
\newcommand{\bd}[0]{{\del}}
\newcommand{\bigast}[0]{{\mathop{\Large \ast}}}
\newcommand{\coker}[0]{\operatorname{coker}}
\newcommand{\cok}[0]{\operatorname{coker}}
\newcommand{\conjugate}[1]{{\overline{{#1}}}}
\newcommand{\converges}[1]{\overset{#1}}
\newcommand{\correspond}[1]{\theset{\substack{#1}}}
\newcommand{\cross}[0]{\times}
\newcommand{\by}[0]{\times}
\newcommand{\dash}[0]{{\hbox{-}}}
\newcommand{\dd}[2]{{\frac{\partial #1}{\partial #2}\,}}
\newcommand{\definedas}[0]{\coloneqq}
\newcommand{\da}[0]{\coloneqq}
\newcommand{\del}[0]{{\partial}}
\newcommand{\directlim}[0]{\varinjlim}
\newcommand{\inverselim}[0]{\varprojlim}
\newcommand{\disjoint}[0]{{\coprod}}
\newcommand{\Disjoint}[0]{\displaystyle\coprod}
```
\%
```{=tex}
\newcommand{\divides}[0]{{~\Bigm|~}}
\newcommand{\dual}[0]{^\vee}
\newcommand{\sm}[0]{\setminus}
\newcommand{\smz}[0]{\setminus\theset{0}}
\newcommand{\eps}[0]{\varepsilon}
\newcommand{\equalsbecause}[1] {\stackrel{\mathclap{\scriptscriptstyle{#1}}}{=}}
\newcommand{\floor}[1]{{\left\lfloor #1 \right\rfloor}}
\newcommand{\up}[0]{\uparrow}
\newcommand{\generators}[1]{\left\langle{#1}\right\rangle}
\newcommand{\gs}[1]{\left\langle{#1}\right\rangle}
\newcommand{\homotopic}[0]{\simeq}
\newcommand{\injectivelim}[0]{\varinjlim}
\newcommand{\inner}[2]{{\left\langle {#1},~{#2} \right\rangle}}
\newcommand{\ip}[2]{{\left\langle {#1},~{#2} \right\rangle}}
\newcommand{\union}[0]{\cup}
\newcommand{\Union}[0]{\bigcup}
\newcommand{\intersect}[0]{\cap}
\newcommand{\Intersect}[0]{\bigcap}
\newcommand{\into}[0]{\to}
\newcommand{\inv}[0]{^{-1}}
\newcommand{\mfa}[0]{{\mathfrak{a}}}
\newcommand{\mfb}[0]{{\mathfrak{b}}}
\newcommand{\mfc}[0]{{\mathfrak{c}}}
\newcommand{\mff}[0]{{\mathfrak{f}}}
\newcommand{\mfi}[0]{{\mathfrak{I}}}
\newcommand{\mfm}[0]{{\mathfrak{m}}}
\newcommand{\mfn}[0]{{\mathfrak{n}}}
\newcommand{\mfp}[0]{{\mathfrak{p}}}
\newcommand{\mfq}[0]{{\mathfrak{q}}}
\newcommand{\mfr}[0]{{\mathfrak{r}}}
\newcommand{\lieb}[0]{{\mathfrak{b}}}
\newcommand{\liegl}[0]{{\mathfrak{gl}}}
\newcommand{\lieg}[0]{{\mathfrak{g}}}
\newcommand{\lieh}[0]{{\mathfrak{h}}}
\newcommand{\lien}[0]{{\mathfrak{n}}}
\newcommand{\liesl}[0]{{\mathfrak{sl}}}
\newcommand{\lieso}[0]{{\mathfrak{so}}}
\newcommand{\liesp}[0]{{\mathfrak{sp}}}
\newcommand{\lieu}[0]{{\mathfrak{u}}}
\newcommand{\Lie}[0]{\operatorname{Lie}}
\newcommand{\nilrad}[0]{{\mathfrak{N}}}
\newcommand{\jacobsonrad}[0]{{\mathfrak{J}}}
\newcommand{\mm}[0]{{\mathfrak{m}}}
\newcommand{\pr}[0]{{\operatorname{pr}}}
\newcommand{\mapsvia}[1]{\xrightarrow{#1}}
\newcommand{\fromvia}[1]{\xleftarrow{#1}}
\newcommand{\mapstovia}[1]{\xmapsto{#1}}
\newcommand{\ms}[0]{\xrightarrow{\sim}}
\newcommand{\from}[0]{\leftarrow}
\newcommand{\mapstofrom}[0]{\rightleftharpoons}
\DeclareMathOperator*{\mapbackforth}{\rightleftharpoons}
\newcommand{\mapscorrespond}[2]{\mathrel{\operatorname*{\rightleftharpoons}_{#1}^{#2}}}
\newcommand{\injects}[0]{\hookrightarrow}
\newcommand{\injectsvia}[1]{\xhookrightarrow{#1}}
\newcommand{\surjects}[0]{\twoheadrightarrow}
\newcommand{\surjectsvia}[2][]{%
  \xrightarrow[#1]{#2}\mathrel{\mkern-14mu}\rightarrow
}
\newcommand{\adjoint}[0]{\leftrightarrows}
\newcommand{\kx}[1]{k[x_1, \cdots, x_{#1}]}
\newcommand{\kxn}[0]{k[x_1, \cdots, x_{n}]}
\newcommand{\MM}[0]{{\mathcal{M}}}
\newcommand{\OO}[0]{{\mathcal{O}}}
\newcommand{\OX}[0]{{\mathcal{O}_X}}
\newcommand{\imaginarypart}[1]{{\mathcal{Im}({#1})}}
\newcommand{\mca}[0]{{\mathcal{A}}}
\newcommand{\mcb}[0]{{\mathcal{B}}}
\newcommand{\mcc}[0]{{\mathcal{C}}}
\newcommand{\mcd}[0]{{\mathcal{D}}}
\newcommand{\mce}[0]{{\mathcal{E}}}
\newcommand{\mcf}[0]{{\mathcal{F}}}
\newcommand{\mcg}[0]{{\mathcal{G}}}
\newcommand{\mch}[0]{{\mathcal{H}}}
\newcommand{\mci}[0]{{\mathcal{I}}}
\newcommand{\mcj}[0]{{\mathcal{J}}}
\newcommand{\mck}[0]{{\mathcal{K}}}
\newcommand{\mcl}[0]{{\mathcal{L}}}
\newcommand{\mcm}[0]{{\mathcal{M}}}
\newcommand{\mcp}[0]{{\mathcal{P}}}
\newcommand{\mcs}[0]{{\mathcal{S}}}
\newcommand{\mct}[0]{{\mathcal{T}}}
\newcommand{\mcu}[0]{{\mathcal{U}}}
\newcommand{\mcv}[0]{{\mathcal{V}}}
\newcommand{\mcx}[0]{{\mathcal{X}}}
\newcommand{\mcz}[0]{{\mathcal{Z}}}
\newcommand{\kfq}[0]{K_{/\mathbb{F}_q}}
\newcommand{\cl}[0]{\operatorname{cl}}
\newcommand{\Cl}[0]{\operatorname{Cl}}
\newcommand{\St}[0]{\operatorname{St}}
\newcommand{\trdeg}[0]{\operatorname{trdeg}}
\newcommand{\dist}[0]{\operatorname{dist}}
\newcommand{\Dist}[0]{\operatorname{Dist}}
\newcommand{\crit}[0]{\operatorname{crit}}
\newcommand{\diam}[0]{{\operatorname{diam}}}
\newcommand{\gal}[0]{\operatorname{Gal}}
\newcommand{\diff}[0]{\operatorname{Diff}}
\newcommand{\diag}[0]{\operatorname{diag}}
\newcommand{\soc}[0]{\operatorname{Soc}}
\newcommand{\hd}[0]{\operatorname{Head}}
\newcommand{\grad}[0]{\operatorname{grad}}
\newcommand{\hilb}[0]{\operatorname{Hilb}}
\newcommand{\minpoly}[0]{{\operatorname{minpoly}}}
\newcommand{\Hom}[0]{{\operatorname{Hom}}}
\newcommand{\shom}{\mathscr{H}\operatorname{\kern -3pt {\calligra\large om}}}
\newcommand{\Map}[0]{{\operatorname{Map}}}
\newcommand{\multinomial}[1]{\left(\!\!{#1}\!\!\right)}
\newcommand{\nil}[0]{{\operatorname{nil}}}
\newcommand{\normalneq}{\mathrel{\reflectbox{$\trianglerightneq$}}}
\newcommand{\normal}[0]{{~\trianglelefteq~}}
\newcommand{\norm}[1]{{\left\lVert {#1} \right\rVert}}
\newcommand{\pnorm}[2]{{\left\lVert {#1} \right\rVert}_{#2}}
\newcommand{\notdivides}[0]{\nmid}
\newcommand{\notimplies}[0]{\centernot\implies}
\newcommand{\onto}[0]{\twoheadhthtarrow}
\newcommand{\ord}[0]{{\operatorname{Ord}}}
\newcommand{\pic}[0]{{\operatorname{Pic}}}
\newcommand{\projectivelim}[0]{\varprojlim}
\newcommand{\rad}[0]{{\operatorname{rad}}}
\newcommand{\ralg}[0]{\operatorname{R-alg}}
\newcommand{\kalg}[0]{k\dash\operatorname{alg}}
\newcommand{\rank}[0]{\operatorname{rank}}
\newcommand{\realpart}[1]{{\mathcal{Re}({#1})}}
\newcommand{\Log}[0]{\operatorname{Log}}
\newcommand{\reg}[0]{\operatorname{Reg}}
\newcommand{\restrictionof}[2]{ {\left.{{#1}} \right|_{{#2}} } }
\newcommand{\ro}[2]{{ \left.{{#1}} \right|_{{#2}} }}
\newcommand{\rk}[0]{{\operatorname{rank}}}
\newcommand{\evalfrom}[0]{\Big|}
\newcommand{\rmod}[0]{{R\dash\operatorname{mod}}}
\newcommand{\mods}[1]{{{#1}\dash\operatorname{mod}}}
\newcommand{\modr}[0]{{\operatorname{mod}}}
\newcommand{\kmod}[0]{{k\dash\operatorname{mod}}}
\newcommand{\Mod}[0]{{\operatorname{Mod}}}
\newcommand{\rotate}[2]{{\style{display: inline-block; transform: rotate(#1deg)}{#2}}}
\newcommand{\selfmap}[0]{{\circlearrowleft}}
\newcommand{\semidirect}[0]{\rtimes}
\newcommand{\sgn}[0]{\operatorname{sgn}}
\newcommand{\sign}[0]{\operatorname{sign}}
\newcommand{\spanof}[0]{{\operatorname{span}}}
\newcommand{\spec}[0]{\operatorname{Spec}}
\newcommand{\mspec}[0]{\operatorname{mSpec}}
\newcommand{\Jac}[0]{\operatorname{Jac}}
\newcommand{\stab}[0]{{\operatorname{Stab}}}
\newcommand{\stirlingfirst}[2]{\genfrac{[}{]}{0pt}{}{#1}{#2}}
\newcommand{\stirling}[2]{\genfrac\{\}{0pt}{}{#1}{#2}}
\newcommand{\strike}[1]{{\enclose{horizontalstrike}{#1}}}
\newcommand{\suchthat}[0]{{~\mathrel{\Big|}~}}
\newcommand{\st}[0]{{~\mathrel{\Big|}~}}
\newcommand{\supp}[0]{{\operatorname{supp}}}
\newcommand{\sym}[0]{\operatorname{Sym}}
\newcommand{\Sym}[0]{\operatorname{Sym}}
\newcommand{\Wedge}[0]{\Lambda}
\newcommand{\tensor}[0]{\otimes}
\newcommand{\connectsum}[0]{\mathop{\Large \#}}
\newcommand{\theset}[1]{\left\{{#1}\right\}}
\newcommand{\ts}[1]{\left\{{#1}\right\}}
\newcommand{\infsum}[1]{\sum_{{#1=0}}^\infty}
\newcommand{\gens}[1]{\left\langle{#1}\right\rangle}
\newcommand{\thevector}[1]{{\left[ {#1} \right]}}
\newcommand{\tv}[1]{{\left[ {#1} \right]}}
\newcommand{\too}[1]{{\xrightarrow{#1}}}
\newcommand{\transverse}[0]{\pitchfork}
\newcommand{\trianglerightneq}{\mathrel{\ooalign{\raisebox{-0.5ex}{\reflectbox{\rotatebox{90}{$\nshortmid$}}}\cr$\triangleright$\cr}\mkern-3mu}}
\newcommand{\tr}[0]{\operatorname{Tr}}
\newcommand{\uniformlyconverges}[0]{\rightrightarrows}
\newcommand{\abuts}[0]{\Rightarrow}
\newcommand{\covers}[0]{\rightrightarrows}
\newcommand{\units}[0]{^{\times}}
\newcommand{\nonzero}[0]{^{\bullet}}
\newcommand{\wait}[0]{{\,\cdot\,}}
\newcommand{\wt}[0]{{\operatorname{wt}}}
\renewcommand{\bar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
\renewcommand{\div}[0]{\operatorname{Div}}
\newcommand{\Div}[0]{\operatorname{Div}}
\newcommand{\Prin}[0]{\operatorname{Prin}}
\newcommand{\Frac}[0]{\operatorname{Frac}}
\renewcommand{\hat}[1]{\widehat{#1}}
\renewcommand{\mid}[0]{\mathrel{\Big|}}
\renewcommand{\qed}[0]{\hfill\blacksquare}
\renewcommand{\too}[0]{\longrightarrow}
\renewcommand{\vector}[1]{\mathbf{#1}}
\let\oldexp\exp
\renewcommand{\exp}[1]{\oldexp\qty{#1}}
\let\oldperp\perp
\renewcommand{\perp}[0]{^\oldperp}
\newcommand*\dif{\mathop{}\!\operatorname{d}}
\newcommand{\ddt}{\tfrac{\dif}{\dif t}}
\newcommand{\ddx}{\tfrac{\dif}{\dif x}}
\renewcommand{\labelitemiii}{$\diamondsuit$}
\renewcommand{\labelitemiv}{$\diamondsuit$}
\newcommand\vecc[2]{\textcolor{#1}{\textbf{#2}}}
\newcommand*{\vertbar}{\rule[-1ex]{0.5pt}{2.5ex}}
\newcommand*{\horzbar}{\rule[.5ex]{2.5ex}{0.5pt}}
\newcommand\aug{\fboxsep=-\fboxrule\!\!\!\fbox{\strut}\!\!\!}
\newcommand\rref{\operatorname{RREF}}
\newcommand{\interior}[0]{^\circ}
\newcommand{\increasesto}[0]{\nearrow}
\newcommand{\decreasesto}[0]{\searrow}
\newcommand\jan{\operatorname{Jan}}
```
\%
```{=tex}
\DeclareMathOperator{\righttriplearrows} {{\; \tikz{ \foreach \y in {0, 0.1, 0.2} { \draw [-stealth] (0, \y) -- +(0.5, 0);}} \; }}
\DeclareMathOperator{\righttriplearrows} {{\; \tikz{ \foreach \y in {0, 0.1, 0.2} { \draw [-stealth] (0, \y) -- +(0.5, 0);}} \; }}
\DeclareMathOperator{\Exists}{\exists}
\DeclareMathOperator{\Forall}{\forall}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclareMathOperator*{\hocolim}{hocolim}
```
```{=tex}
\newcommand{\contains}[0]{\supseteq}
\newcommand{\containing}[0]{\supseteq}
```
```{=tex}
\newcommand{\cat}[1]{\mathcal{#1}}
\newcommand{\thecat}[1]{\mathbf{#1}}
\newcommand{\sheaf}[1]{\operatorname{\mathcal{#1}}}
```
```{=tex}
\newcommand\rrarrows{\rightrightarrows}
\newcommand\rrrarrows{
    \mathrel{\substack{\textstyle\rightarrow\\[-0.6ex]
        \textstyle\rightarrow \\[-0.6ex]
        \textstyle\rightarrow}}
}
```
```{=tex}
\newcommand{\colim}{\operatornamewithlimits{\underset{\longrightarrow}{colim}}}
```
```{=tex}
\newcommand\fp[1]{\underset{\scriptscriptstyle {#1} }{\times}}
\newcommand\ul[1]{\underline{#1}}
```
```{=tex}
\newcommand\Hc[0]{{\check{H}}}
\newcommand\Cc[0]{{\check{C}}}
```
```{=tex}
\newcommand{\textoperatorname}[1]{%
  \operatorname{\textnormal{#1}}%
}
\newcommand{\et}{\text{ét}}
\newcommand{\Et}{\text{Ét}}
```
\% {top}{bottom}{symbol}

```{=tex}
\newcommand\stacksymbol[3]{%
  \mathrel{\stackunder[2pt]{\stackon[4pt]{$#3$}{$\scriptscriptstyle#1$}}{%
  $\scriptscriptstyle#2$}}}
```
```{=tex}
\newcommand{\ext}{\operatorname{Ext}}
\newcommand{\Ext}{\operatorname{Ext}}
\newcommand{\Endo}{\operatorname{End}}
\newcommand{\Ind}{\operatorname{Ind}}
\newcommand{\ind}{\operatorname{Ind}}
\newcommand{\coind}{\operatorname{Coind}}
\newcommand{\proj}{\operatorname{Proj}}
\newcommand{\Proj}{\operatorname{Proj}}
\newcommand{\res}{\operatorname{Res}}
\newcommand{\Res}{\operatorname{Res}}
\newcommand{\Hol}{\operatorname{Hol}}
\newcommand{\Br}{\operatorname{Br}}
\newcommand{\coh}{\operatorname{coh}}
\newcommand{\colspace}{\operatorname{colspace}}
\newcommand{\rowspace}{\operatorname{rowspace}}
\newcommand{\codom}{\operatorname{codom}}
\newcommand{\range}{\operatorname{range}}
\newcommand{\nullspace}{\operatorname{nullspace}}
\newcommand{\nullity}{\operatorname{nullspace}}
\newcommand{\projection}{\operatorname{Proj}}
\renewcommand{\AA}[0]{{\mathbb{A}}}
\newcommand{\Af}[0]{{\mathbb{A}}}
\newcommand{\CC}[0]{{\mathbb{C}}}
\newcommand{\CP}[0]{{\mathbb{CP}}}
\newcommand{\DD}[0]{{\mathbb{D}}}
\newcommand{\FF}[0]{{\mathbb{F}}}
\newcommand{\fq}[0]{{\mathbb{F}_{q}}}
\newcommand{\fqr}[0]{{\mathbb{F}_{q^r}}}
\newcommand{\GF}[0]{{\mathbb{GF}}}
\newcommand{\GG}[0]{{\mathbb{G}}}
\newcommand{\HH}[0]{{\mathbb{H}}}
\newcommand{\HP}[0]{{\mathbb{HP}}}
\newcommand{\KK}[0]{{\mathbb{K}}}
\newcommand{\kk}[0]{{\Bbbk}}
\newcommand{\bbm}[0]{{\mathbb{M}}}
\newcommand{\NN}[0]{{\mathbb{N}}}
\newcommand{\OP}[0]{{\mathbb{OP}}}
\newcommand{\PP}[0]{{\mathbb{P}}}
\newcommand{\QQ}[0]{{\mathbb{Q}}}
\newcommand{\RP}[0]{{\mathbb{RP}}}
\newcommand{\RR}[0]{{\mathbb{R}}}
\newcommand{\SpSp}[0]{{\mathbb{S}}}
\renewcommand{\SS}[0]{{\mathbb{S}}}
\newcommand{\TT}[0]{{\mathbb{T}}}
\newcommand{\ZZ}[0]{{\mathbb{Z}}}
\newcommand{\znz}[0]{\mathbb{Z}/n\mathbb{Z}}
\newcommand{\zpz}[0]{\mathbb{Z}/p\mathbb{Z}}
\newcommand{\zlz}[0]{\mathbb{Z}/\ell\mathbb{Z}}
\newcommand{\zlnz}[0]{\mathbb{Z}/\ell^n\mathbb{Z}}
\newcommand{\Qp}[0]{\mathbb{Q}_{(p)}}
\newcommand{\Zp}[0]{\mathbb{Z}_{(p)}}
\newcommand{\Arg}[0]{\operatorname{Arg}}
\newcommand{\PGL}[0]{\operatorname{PGL}}
\newcommand{\GL}[0]{\operatorname{GL}}
\newcommand{\Gl}[0]{\operatorname{GL}}
\newcommand{\gl}[0]{\operatorname{GL}}
\newcommand{\mat}[0]{\operatorname{Mat}}
\newcommand{\Mat}[0]{\operatorname{Mat}}
\newcommand{\Rat}[0]{\operatorname{Rat}}
\newcommand{\Perv}[0]{\operatorname{Perv}}
\newcommand{\Gal}[0]{\operatorname{Gal}}
\newcommand{\Hilb}[0]{\operatorname{Hilb}}
\newcommand{\Quot}[0]{\operatorname{Quot}}
\newcommand{\Art}[0]{\operatorname{Art}}
\newcommand{\red}[0]{\operatorname{red}}
\newcommand{\Pic}[0]{{\operatorname{Pic}}}
\newcommand{\lcm}[0]{\operatorname{lcm}}
\newcommand{\maps}[0]{\operatorname{Maps}}
\newcommand{\maxspec}[0]{{\operatorname{maxSpec}}}
\newcommand{\Tr}[0]{\operatorname{Tr}}
\newcommand{\adj}[0]{\operatorname{adj}}
\newcommand{\ad}[0]{\operatorname{ad}}
\newcommand{\ann}[0]{\operatorname{Ann}}
\newcommand{\Ann}[0]{\operatorname{Ann}}
\newcommand{\arcsec}[0]{\operatorname{arcsec}}
\newcommand{\ch}[0]{\operatorname{ch}}
\newcommand{\Sp}[0]{{\operatorname{Sp}}}
\newcommand{\syl}[0]{{\operatorname{Syl}}}
\newcommand{\ff}[0]{\operatorname{ff}}
\newcommand{\txand}[0]{{\operatorname{ and }}}
\newcommand{\fppf}[0]{\mathrm{\operatorname{fppf}}}
\newcommand{\Fppf}[0]{\mathrm{\operatorname{Fppf}}}
\newcommand{\zar}[0]{{\mathrm{zar}}}
\newcommand{\Zar}[0]{{\mathrm{Zar}}}
\newcommand{\qcoh}[0]{{\mathrm{QCoh}}}
\newcommand{\Qcoh}[0]{{\mathrm{QCoh}}}
\newcommand{\QCoh}[0]{{\mathrm{QCoh}}}
\newcommand{\codim}[0]{\operatorname{codim}}
\newcommand{\coim}[0]{\operatorname{coim}}
\newcommand{\ssets}[0]{\operatorname{sSets}}
\newcommand{\dom}[0]{\operatorname{dom}}
\newcommand{\txor}[0]{{\operatorname{ or }}}
\newcommand{\txt}[1]{{\operatorname{ {#1} }}}
\newcommand{\Gr}[0]{{\operatorname{Gr}}}
\newcommand{\gr}[0]{{\operatorname{gr}}}
\newcommand{\dcoset}[3]{% 
    {\textstyle #1}
    \mkern-4mu\scalebox{1.5}{$\diagdown$}\mkern-5mu^{\textstyle #2}%
    \mkern-4mu\scalebox{1.5}{$\diagup$}\mkern-5mu{\textstyle #3} }
\newcommand{\grdim}[0]{{\operatorname{gr\,dim}}}
\newcommand{\Aut}[0]{{\operatorname{Aut}}}
\newcommand{\aut}[0]{\operatorname{Aut}}
\newcommand{\Inn}[0]{{\operatorname{Inn}}}
\newcommand{\Out}[0]{{\operatorname{Out}}}
\newcommand{\mltext}[1]{\left\{\begin{array}{c}#1\end{array}\right\}}
\newcommand{\Fun}[0]{{\operatorname{Fun}}}
\newcommand{\SL}[0]{{\operatorname{SL}}}
\newcommand{\PSL}[0]{{\operatorname{PSL}}}
\newcommand{\SO}[0]{{\operatorname{SO}}}
\newcommand{\SU}[0]{{\operatorname{SU}}}
\newcommand{\SP}[0]{{\operatorname{SP}}}
\newcommand{\per}[0]{{\operatorname{Per}}}
\newcommand{\loc}[0]{{\operatorname{loc}}}
\newcommand{\Top}[0]{{\operatorname{Top}}}
\newcommand{\Ab}[0]{{\operatorname{Ab}}}
\newcommand{\mcTop}[0]{\mathcal{T}\operatorname{op}}
\newcommand{\hoTop}[0]{{\operatorname{hoTop}}}
\newcommand{\Sch}[0]{{\operatorname{Sch}}}
\newcommand{\sch}[0]{{\operatorname{Sch}}}
\newcommand{\Sing}[0]{{\operatorname{Sing}}}
\newcommand{\alg}[0]{\mathrm{Alg}}
\newcommand{\scalg}[0]{\mathrm{sCAlg}}
\newcommand{\calg}[0]{\mathrm{CAlg}}
\newcommand{\dR}[0]{\mathrm{dR}}
\newcommand{\poly}[0]{\operatorname{poly}}
\newcommand{\Vect}[0]{{\operatorname{Vect}}}
\newcommand{\Sh}[0]{{\operatorname{Sh}}}
\newcommand{\presh}[0]{{\operatorname{Presh}}}
\newcommand{\Presh}[0]{{\operatorname{Presh}}}
\newcommand{\ab}[0]{{\operatorname{ab}}}
\newcommand{\Op}[0]{{\operatorname{Op}}}
\newcommand{\Ob}[0]{{\operatorname{Ob}}}
\newcommand{\prim}[0]{{\operatorname{prim}}}
\newcommand{\Set}[0]{{\operatorname{Set}}}
\newcommand{\Sets}[0]{{\operatorname{Set}}}
\newcommand{\Grp}[0]{{\operatorname{Grp}}}
\newcommand{\Groups}[0]{{\operatorname{Groups}}}
\newcommand{\Homeo}[0]{{\operatorname{Homeo}}}
\newcommand{\Diffeo}[0]{{\operatorname{Diffeo}}}
\newcommand{\MCG}[0]{{\operatorname{MCG}}}
\newcommand{\set}[0]{{\operatorname{Set}}}
\newcommand{\Tor}[0]{\operatorname{Tor}}
\newcommand{\sets}[0]{{\operatorname{Set}}}
\newcommand{\Sm}[0]{{\operatorname{Sm}_k}}
\newcommand{\orr}[0]{{\operatorname{ or }}}
\newcommand{\annd}[0]{{\operatorname{ and }}}
\newcommand{\bung}[0]{\operatorname{Bun}_G}
\newcommand{\const}[0]{{\operatorname{const.}}}
\newcommand{\disc}[0]{{\operatorname{disc}}}
\newcommand{\op}[0]{^\operatorname{op}}
\newcommand{\id}[0]{\operatorname{id}}
\newcommand{\im}[0]{\operatorname{im}}
\newcommand{\pt}[0]{{\{\operatorname{pt}\}}}
\newcommand{\sep}[0]{^\operatorname{sep}}
\newcommand{\tors}[0]{{\operatorname{tors}}}
\newcommand{\tor}[0]{\operatorname{Tor}}
\newcommand{\height}[0]{\operatorname{ht}}
\newcommand{\cpt}[0]{\operatorname{compact}}
\newcommand{\abs}[1]{{\left\lvert {#1} \right\rvert}}
\newcommand{\stack}[1]{\mathclap{\substack{ #1 }}} 
\newcommand{\qtext}[1]{{\quad \operatorname{#1} \quad}}
\newcommand{\qst}[0]{{\quad \operatorname{such that} \quad}}
\newcommand{\actsonl}[0]{\curvearrowleft}
\newcommand{\actson}[0]{\curvearrowright}
\newcommand{\bd}[0]{{\del}}
\newcommand{\bigast}[0]{{\mathop{\Large \ast}}}
\newcommand{\coker}[0]{\operatorname{coker}}
\newcommand{\cok}[0]{\operatorname{coker}}
\newcommand{\conjugate}[1]{{\overline{{#1}}}}
\newcommand{\converges}[1]{\overset{#1}}
\newcommand{\correspond}[1]{\theset{\substack{#1}}}
\newcommand{\cross}[0]{\times}
\newcommand{\by}[0]{\times}
\newcommand{\dash}[0]{{\hbox{-}}}
\newcommand{\dd}[2]{{\frac{\partial #1}{\partial #2}\,}}
\newcommand{\definedas}[0]{\coloneqq}
\newcommand{\da}[0]{\coloneqq}
\newcommand{\del}[0]{{\partial}}
\newcommand{\directlim}[0]{\varinjlim}
\newcommand{\inverselim}[0]{\varprojlim}
\newcommand{\disjoint}[0]{{\coprod}}
\newcommand{\Disjoint}[0]{\displaystyle\coprod}
```
\%

```{=tex}
\newcommand{\divides}[0]{{~\Bigm|~}}
\newcommand{\dual}[0]{^\vee}
\newcommand{\sm}[0]{\setminus}
\newcommand{\smz}[0]{\setminus\theset{0}}
\newcommand{\eps}[0]{\varepsilon}
\newcommand{\equalsbecause}[1] {\stackrel{\mathclap{\scriptscriptstyle{#1}}}{=}}
\newcommand{\floor}[1]{{\left\lfloor #1 \right\rfloor}}
\newcommand{\up}[0]{\uparrow}
\newcommand{\generators}[1]{\left\langle{#1}\right\rangle}
\newcommand{\gs}[1]{\left\langle{#1}\right\rangle}
\newcommand{\homotopic}[0]{\simeq}
\newcommand{\injectivelim}[0]{\varinjlim}
\newcommand{\inner}[2]{{\left\langle {#1},~{#2} \right\rangle}}
\newcommand{\ip}[2]{{\left\langle {#1},~{#2} \right\rangle}}
\newcommand{\union}[0]{\cup}
\newcommand{\Union}[0]{\bigcup}
\newcommand{\intersect}[0]{\cap}
\newcommand{\Intersect}[0]{\bigcap}
\newcommand{\into}[0]{\to}
\newcommand{\inv}[0]{^{-1}}
\newcommand{\mfa}[0]{{\mathfrak{a}}}
\newcommand{\mfb}[0]{{\mathfrak{b}}}
\newcommand{\mfc}[0]{{\mathfrak{c}}}
\newcommand{\mff}[0]{{\mathfrak{f}}}
\newcommand{\mfi}[0]{{\mathfrak{I}}}
\newcommand{\mfm}[0]{{\mathfrak{m}}}
\newcommand{\mfn}[0]{{\mathfrak{n}}}
\newcommand{\mfp}[0]{{\mathfrak{p}}}
\newcommand{\mfq}[0]{{\mathfrak{q}}}
\newcommand{\mfr}[0]{{\mathfrak{r}}}
\newcommand{\lieb}[0]{{\mathfrak{b}}}
\newcommand{\liegl}[0]{{\mathfrak{gl}}}
\newcommand{\lieg}[0]{{\mathfrak{g}}}
\newcommand{\lieh}[0]{{\mathfrak{h}}}
\newcommand{\lien}[0]{{\mathfrak{n}}}
\newcommand{\liesl}[0]{{\mathfrak{sl}}}
\newcommand{\lieso}[0]{{\mathfrak{so}}}
\newcommand{\liesp}[0]{{\mathfrak{sp}}}
\newcommand{\lieu}[0]{{\mathfrak{u}}}
\newcommand{\Lie}[0]{\operatorname{Lie}}
\newcommand{\nilrad}[0]{{\mathfrak{N}}}
\newcommand{\jacobsonrad}[0]{{\mathfrak{J}}}
\newcommand{\mm}[0]{{\mathfrak{m}}}
\newcommand{\pr}[0]{{\operatorname{pr}}}
\newcommand{\mapsvia}[1]{\xrightarrow{#1}}
\newcommand{\fromvia}[1]{\xleftarrow{#1}}
\newcommand{\mapstovia}[1]{\xmapsto{#1}}
\newcommand{\ms}[0]{\xrightarrow{\sim}}
\newcommand{\from}[0]{\leftarrow}
\newcommand{\mapstofrom}[0]{\rightleftharpoons}
\DeclareMathOperator*{\mapbackforth}{\rightleftharpoons}
\newcommand{\mapscorrespond}[2]{\mathrel{\operatorname*{\rightleftharpoons}_{#1}^{#2}}}
\newcommand{\injects}[0]{\hookrightarrow}
\newcommand{\injectsvia}[1]{\xhookrightarrow{#1}}
\newcommand{\surjects}[0]{\twoheadrightarrow}
\newcommand{\surjectsvia}[2][]{%
  \xrightarrow[#1]{#2}\mathrel{\mkern-14mu}\rightarrow
}
\newcommand{\adjoint}[0]{\leftrightarrows}
\newcommand{\kx}[1]{k[x_1, \cdots, x_{#1}]}
\newcommand{\kxn}[0]{k[x_1, \cdots, x_{n}]}
\newcommand{\MM}[0]{{\mathcal{M}}}
\newcommand{\OO}[0]{{\mathcal{O}}}
\newcommand{\OX}[0]{{\mathcal{O}_X}}
\newcommand{\imaginarypart}[1]{{\mathcal{Im}({#1})}}
\newcommand{\mca}[0]{{\mathcal{A}}}
\newcommand{\mcb}[0]{{\mathcal{B}}}
\newcommand{\mcc}[0]{{\mathcal{C}}}
\newcommand{\mcd}[0]{{\mathcal{D}}}
\newcommand{\mce}[0]{{\mathcal{E}}}
\newcommand{\mcf}[0]{{\mathcal{F}}}
\newcommand{\mcg}[0]{{\mathcal{G}}}
\newcommand{\mch}[0]{{\mathcal{H}}}
\newcommand{\mci}[0]{{\mathcal{I}}}
\newcommand{\mcj}[0]{{\mathcal{J}}}
\newcommand{\mck}[0]{{\mathcal{K}}}
\newcommand{\mcl}[0]{{\mathcal{L}}}
\newcommand{\mcm}[0]{{\mathcal{M}}}
\newcommand{\mcp}[0]{{\mathcal{P}}}
\newcommand{\mcs}[0]{{\mathcal{S}}}
\newcommand{\mct}[0]{{\mathcal{T}}}
\newcommand{\mcu}[0]{{\mathcal{U}}}
\newcommand{\mcv}[0]{{\mathcal{V}}}
\newcommand{\mcx}[0]{{\mathcal{X}}}
\newcommand{\mcz}[0]{{\mathcal{Z}}}
\newcommand{\kfq}[0]{K_{/\mathbb{F}_q}}
\newcommand{\cl}[0]{\operatorname{cl}}
\newcommand{\Cl}[0]{\operatorname{Cl}}
\newcommand{\St}[0]{\operatorname{St}}
\newcommand{\trdeg}[0]{\operatorname{trdeg}}
\newcommand{\dist}[0]{\operatorname{dist}}
\newcommand{\Dist}[0]{\operatorname{Dist}}
\newcommand{\crit}[0]{\operatorname{crit}}
\newcommand{\diam}[0]{{\operatorname{diam}}}
\newcommand{\gal}[0]{\operatorname{Gal}}
\newcommand{\diff}[0]{\operatorname{Diff}}
\newcommand{\diag}[0]{\operatorname{diag}}
\newcommand{\soc}[0]{\operatorname{Soc}}
\newcommand{\hd}[0]{\operatorname{Head}}
\newcommand{\grad}[0]{\operatorname{grad}}
\newcommand{\hilb}[0]{\operatorname{Hilb}}
\newcommand{\minpoly}[0]{{\operatorname{minpoly}}}
\newcommand{\Hom}[0]{{\operatorname{Hom}}}
\newcommand{\shom}{\mathscr{H}\operatorname{\kern -3pt {\calligra\large om}}}
\newcommand{\Map}[0]{{\operatorname{Map}}}
\newcommand{\multinomial}[1]{\left(\!\!{#1}\!\!\right)}
\newcommand{\nil}[0]{{\operatorname{nil}}}
\newcommand{\normalneq}{\mathrel{\reflectbox{$\trianglerightneq$}}}
\newcommand{\normal}[0]{{~\trianglelefteq~}}
\newcommand{\norm}[1]{{\left\lVert {#1} \right\rVert}}
\newcommand{\pnorm}[2]{{\left\lVert {#1} \right\rVert}_{#2}}
\newcommand{\notdivides}[0]{\nmid}
\newcommand{\notimplies}[0]{\centernot\implies}
\newcommand{\onto}[0]{\twoheadhthtarrow}
\newcommand{\ord}[0]{{\operatorname{Ord}}}
\newcommand{\pic}[0]{{\operatorname{Pic}}}
\newcommand{\projectivelim}[0]{\varprojlim}
\newcommand{\rad}[0]{{\operatorname{rad}}}
\newcommand{\ralg}[0]{\operatorname{R-alg}}
\newcommand{\kalg}[0]{k\dash\operatorname{alg}}
\newcommand{\rank}[0]{\operatorname{rank}}
\newcommand{\realpart}[1]{{\mathcal{Re}({#1})}}
\newcommand{\Log}[0]{\operatorname{Log}}
\newcommand{\reg}[0]{\operatorname{Reg}}
\newcommand{\restrictionof}[2]{ {\left.{{#1}} \right|_{{#2}} } }
\newcommand{\ro}[2]{{ \left.{{#1}} \right|_{{#2}} }}
\newcommand{\rk}[0]{{\operatorname{rank}}}
\newcommand{\evalfrom}[0]{\Big|}
\newcommand{\rmod}[0]{{R\dash\operatorname{mod}}}
\newcommand{\mods}[1]{{{#1}\dash\operatorname{mod}}}
\newcommand{\modr}[0]{{\operatorname{mod}}}
\newcommand{\kmod}[0]{{k\dash\operatorname{mod}}}
\newcommand{\Mod}[0]{{\operatorname{Mod}}}
\newcommand{\rotate}[2]{{\style{display: inline-block; transform: rotate(#1deg)}{#2}}}
\newcommand{\selfmap}[0]{{\circlearrowleft}}
\newcommand{\semidirect}[0]{\rtimes}
\newcommand{\sgn}[0]{\operatorname{sgn}}
\newcommand{\sign}[0]{\operatorname{sign}}
\newcommand{\spanof}[0]{{\operatorname{span}}}
\newcommand{\spec}[0]{\operatorname{Spec}}
\newcommand{\mspec}[0]{\operatorname{mSpec}}
\newcommand{\Jac}[0]{\operatorname{Jac}}
\newcommand{\stab}[0]{{\operatorname{Stab}}}
\newcommand{\stirlingfirst}[2]{\genfrac{[}{]}{0pt}{}{#1}{#2}}
\newcommand{\stirling}[2]{\genfrac\{\}{0pt}{}{#1}{#2}}
\newcommand{\strike}[1]{{\enclose{horizontalstrike}{#1}}}
\newcommand{\suchthat}[0]{{~\mathrel{\Big|}~}}
\newcommand{\st}[0]{{~\mathrel{\Big|}~}}
\newcommand{\supp}[0]{{\operatorname{supp}}}
\newcommand{\sym}[0]{\operatorname{Sym}}
\newcommand{\Sym}[0]{\operatorname{Sym}}
\newcommand{\Wedge}[0]{\Lambda}
\newcommand{\tensor}[0]{\otimes}
\newcommand{\connectsum}[0]{\mathop{\Large \#}}
\newcommand{\theset}[1]{\left\{{#1}\right\}}
\newcommand{\ts}[1]{\left\{{#1}\right\}}
\newcommand{\infsum}[1]{\sum_{{#1=0}}^\infty}
\newcommand{\gens}[1]{\left\langle{#1}\right\rangle}
\newcommand{\thevector}[1]{{\left[ {#1} \right]}}
\newcommand{\tv}[1]{{\left[ {#1} \right]}}
\newcommand{\too}[1]{{\xrightarrow{#1}}}
\newcommand{\transverse}[0]{\pitchfork}
\newcommand{\trianglerightneq}{\mathrel{\ooalign{\raisebox{-0.5ex}{\reflectbox{\rotatebox{90}{$\nshortmid$}}}\cr$\triangleright$\cr}\mkern-3mu}}
\newcommand{\tr}[0]{\operatorname{Tr}}
\newcommand{\uniformlyconverges}[0]{\rightrightarrows}
\newcommand{\abuts}[0]{\Rightarrow}
\newcommand{\covers}[0]{\rightrightarrows}
\newcommand{\units}[0]{^{\times}}
\newcommand{\nonzero}[0]{^{\bullet}}
\newcommand{\wait}[0]{{\,\cdot\,}}
\newcommand{\wt}[0]{{\operatorname{wt}}}
\renewcommand{\bar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
\renewcommand{\div}[0]{\operatorname{Div}}
\newcommand{\Div}[0]{\operatorname{Div}}
\newcommand{\Prin}[0]{\operatorname{Prin}}
\newcommand{\Frac}[0]{\operatorname{Frac}}
\renewcommand{\hat}[1]{\widehat{#1}}
\renewcommand{\mid}[0]{\mathrel{\Big|}}
\renewcommand{\qed}[0]{\hfill\blacksquare}
\renewcommand{\too}[0]{\longrightarrow}
\renewcommand{\vector}[1]{\mathbf{#1}}
\let\oldexp\exp
\renewcommand{\exp}[1]{\oldexp\qty{#1}}
\let\oldperp\perp
\renewcommand{\perp}[0]{^\oldperp}
\newcommand*\dif{\mathop{}\!\operatorname{d}}
\newcommand{\ddt}{\tfrac{\dif}{\dif t}}
\newcommand{\ddx}{\tfrac{\dif}{\dif x}}
\renewcommand{\labelitemiii}{$\diamondsuit$}
\renewcommand{\labelitemiv}{$\diamondsuit$}
\newcommand\vecc[2]{\textcolor{#1}{\textbf{#2}}}
\newcommand*{\vertbar}{\rule[-1ex]{0.5pt}{2.5ex}}
\newcommand*{\horzbar}{\rule[.5ex]{2.5ex}{0.5pt}}
\newcommand\aug{\fboxsep=-\fboxrule\!\!\!\fbox{\strut}\!\!\!}
\newcommand\rref{\operatorname{RREF}}
\newcommand{\interior}[0]{^\circ}
\newcommand{\increasesto}[0]{\nearrow}
\newcommand{\decreasesto}[0]{\searrow}
\newcommand\jan{\operatorname{Jan}}
```
\%

```{=tex}
\DeclareMathOperator{\righttriplearrows} {{\; \tikz{ \foreach \y in {0, 0.1, 0.2} { \draw [-stealth] (0, \y) -- +(0.5, 0);}} \; }}
\DeclareMathOperator{\righttriplearrows} {{\; \tikz{ \foreach \y in {0, 0.1, 0.2} { \draw [-stealth] (0, \y) -- +(0.5, 0);}} \; }}
\DeclareMathOperator{\Exists}{\exists}
\DeclareMathOperator{\Forall}{\forall}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\DeclareMathOperator*{\hocolim}{hocolim}
```
```{=tex}
\newcommand{\contains}[0]{\supseteq}
\newcommand{\containing}[0]{\supseteq}
```
```{=tex}
\newcommand{\cat}[1]{\mathcal{#1}}
\newcommand{\thecat}[1]{\mathbf{#1}}
\newcommand{\sheaf}[1]{\operatorname{\mathcal{#1}}}
```
```{=tex}
\newcommand\rrarrows{\rightrightarrows}
\newcommand\rrrarrows{
    \mathrel{\substack{\textstyle\rightarrow\\[-0.6ex]
        \textstyle\rightarrow \\[-0.6ex]
        \textstyle\rightarrow}}
}
```
```{=tex}
\newcommand{\colim}{\operatornamewithlimits{\underset{\longrightarrow}{colim}}}
```
```{=tex}
\newcommand\fp[1]{\underset{\scriptscriptstyle {#1} }{\times}}
\newcommand\ul[1]{\underline{#1}}
```
```{=tex}
\newcommand\Hc[0]{{\check{H}}}
\newcommand\Cc[0]{{\check{C}}}
```
# Lecture 1

## References

-   <https://www.daniellitt.com/tale-cohomology>
-   [@milneLEC], [@milne_2017], [@freitag_kiehl_2013], [@katz]

## Intro

Prerequisites:

-   Homological Algebra
    -   Abelian Categories
    -   Derived Functors
    -   Spectral Sequences (just exposure!)
-   Sheaf theory and sheaf cohomology
-   Schemes (Hartshorne II and III)

Outline/Goals:

-   Basics of etale cohomology
    -   Etale morphism
    -   Grothendieck topologies
    -   The etale topology
    -   Etale cohomology and the basis theorems
    -   Etale cohomology of curves
    -   Comparison theorems to singular cohomology
    -   Focused on the case where coefficients are a constructible
        sheaf.
-   Prove the Weil Conjectures (more than one proof)
    -   Proving the Riemann Hypothesis for varieties over finite fields

    > One of the greatest pieces of 20th century mathematics!
-   Topics
    -   Weil 2 (Strengthening of RH, used in practice)
    -   Formality of algebraic varieties (topological features unique to
        varieties)
    -   Other things (monodromy, refer to Katz' AWS notes)

## What is Etale Cohomology?

Suppose $X/{\mathbb{C}}$ is a quasiprojective variety: a finite type
separated integral ${\mathbb{C}}{\hbox{-}}$scheme. If you take the
complex points, it naturally has the structure of a complex analytic
space $X({\mathbb{C}})^{\text{an}}$: you can give it the Euclidean
topology, which is much finer than the Zariski topology. For a nice
topological space, we can associate the singular cohomology
$H^i(X({\mathbb{C}})^{\text{an}}, {\mathbb{Z}})$, which satisfies
several nice properties:

-   Finitely generated ${\mathbb{Z}}{\hbox{-}}$modules
-   Extra Hodge structure when tensored up to ${\mathbb{C}}$ (same as
    ${\mathbb{C}}$ coefficients)
-   Cycle classes (i.e. associate to a subvariety a class in cohomology)

Goal of etale cohomology: do something similar for much more general
"nice" schemes. Note that some of these properties are special to
complex varieties. (E.g. finitely generated: not true for a random
topological space.)

We'll associate $X$ a "nice scheme"
$\rightsquigarrow H^i(X_{\text{et}}, {\mathbb{Z}}/\ell^n{\mathbb{Z}})$.
Take the inverse limit over all $n$ to obtain the $\ell{\hbox{-}}$adic
cohomology $H^i(X_{\text{et}}, {\mathbb{Z}}_\ell)$. You can tensor with
${\mathbb{Q}}$ to get something with ${\mathbb{Q}}_\ell$ coefficients.
And as in singular cohomology, you can a "twisted coefficient system".

::: {.example title="?"}
What are some nice schemes?

-   $X = \operatorname{Spec}{\mathcal{O}}_k$, the ring of integers over
    a number field.
-   $X$ a variety over an algebraically closed field
    -   Typical, most analogous to taking a variety over ${\mathbb{C}}$.
-   $X$ a variety over a non-algebraically closed field
:::

Some comparisons between the last two cases:

-   For ${\mathbb{C}}{\hbox{-}}$ variety, $H^i_{\text{sing}}$ will
    vanish above $i=2d$.
-   Over a finite field, $H^i$ will vanish for $i>2d+1$ but generally
    not vanish for $i=2d+1$.

In good situations, these are finitely generated
${\mathbb{Z}}/\ell^n{\mathbb{Z}}{\hbox{-}}$modules, have Mayer-Vietoris
and excision sequences, spectral sequences, etc. Related invariants: for
a scheme with a geometric point [^1]

$(X, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu) \rightsquigarrow \pi_1^{\text{étale}}(X, \mkern 1.5mu\overline{\mkern-1.5mux\mkern-1.5mu}\mkern 1.5mu)$,
which is a profinite topological group, which is a profinite topological
group.

::: {.remark}
More invariants beyond the scope of this course:

-   Higher homotopy groups
-   Homotopy type (equivalence class of spaces)

So we want homotopy-theoretic invariants for varieties.
:::

::: {.remark}
This cohomology theory is necessarily weird! The following theorem
explains why. The slogan: there is no cohomology theory with
${\mathbb{Q}}$ coefficients.
:::

::: {.theorem title="Serre"}
There does not exists a cohomology theory for schemes over
$\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q$
with the following properties:

1.  Functorial
2.  Satisfies the Kunneth formula
3.  For $E$ an elliptic curve, $H^1(E) = {\mathbb{Q}}^2$.
:::

::: {.proof}
Take $E$ to be a supersingular elliptic curve. Then
$\operatorname{End}(E) \otimes{\mathbb{Q}}$ is a quaternion algebra, and
use the fact that there are no algebra morphisms
$R\to \operatorname{Mat}_{2\times 2}({\mathbb{Q}})$.
:::

::: {.exercise}
Functoriality and Kunneth implies that
$\operatorname{End}(E)\curvearrowright E$ yields an action on $H^1(E)$,
which is precisely an algebra morphism
$\operatorname{End}(E) \to \operatorname{Mat}_{2\times 2}({\mathbb{Q}})$,
a contradiction.

The content here: the sum of two endomorphisms act via their sum on
$H^1$.
:::

::: {.exercise}
Prove the same thing for ${\mathbb{Q}}_p$ coefficients, where $p$
divides the characteristic of the ground field. Proof the same, just
need to know what quaternion algebras show up.
:::

This forces using some funky type of coefficients.

## What are the Weil Conjectures?

Suppose $X/{\mathbb{F}}_q$ is a variety, then
`\begin{align*}   \zeta_X(t) = \exp\qty{\sum_{n>0} { {{\left\lvert {X({\mathbb{F}}_{q^n})} \right\rvert} \over n} t^n } } .\end{align*}`{=tex}

::: {.remark}
```{=tex}
\envlist
```
-   ${\frac{\partial }{\partial t}\,} \log \zeta_X(t)$ is an ordinary
    generating function for the number of rational points.

-   Slogan: locations of zeros and poles of a meromorphic function
    control the growth rate of the coefficients of the Taylor series of
    the logarithmic derivative.
:::

::: {.exercise}
Make this slogan precise for rational functions, i.e. ratios of two
polynomials.
:::

::: {.theorem title="The Weil Conjectures"}
```{=tex}
\envlist
```
1.  $\zeta_x(t)$ is a rational function.

2.  (Functional equation) For $X$ smooth and proper
    `\begin{align*}       \zeta_X(q^{-n} t^{-1}) = \pm q^{nE \over 2} t^E \zeta_X(t)     .\end{align*}`{=tex}

3.  (RH) All roots and poles of $\zeta_X(t)$ have absolute value
    $q^{i\over 2}$ with $i\in {\mathbb{Z}}$, and these are equal to the
    $i$th Betti numbers if $X$ lifts to characteristic zero.[^2]
:::

::: {.remark}
These are all theorems! The proofs:

1.  Dwork, using $p{\hbox{-}}$adic methods. Proof here will follow from
    the fact that $H^i_{\text{étale} }$ are finite-dimensional. Related
    to the **Lefschetz Trace Formula**, and is how Grothendieck thought
    about it.

2.  Grothendieck, follows from some version of Poincaré duality.

3.  (and 4) Deligne.
:::

### Euler Product

Let ${\left\lvert {X} \right\rvert}$ denote the closed points of $X$,
then there is an Euler product:
`\begin{align*}   \zeta_X(q^{-n} t^{-1}) = \pm q^{nE \over 2} t^E \zeta_X(t) &= \prod_{x\in {\left\lvert {X} \right\rvert}} \exp\qty{t^{\deg (x)} + {t^{2\deg (x)} \over 2} + \cdots} \\ &= \prod_{x\in {\left\lvert {X} \right\rvert}} \exp\qty{-\log(1-t^{\deg(x)})} \\ &= \prod_{x\in {\left\lvert {X} \right\rvert}} {1 \over 1 - t^{\deg(x)}} .\end{align*}`{=tex}

::: {.exercise}
Check the first equality. If you have a point of $\deg(x) = n$, how many
${\mathbb{F}}_{q^n}$ points does this contribute? I.e., how many maps
are there
$\operatorname{Spec}({\mathbb{F}}_{q^n}) \to \operatorname{Spec}({\mathbb{F}}_{q^n})$
over ${\mathbb{F}}_q$?

There are exactly $n$: it's
$\operatorname{Gal}({\mathbb{F}}_{q^n} / {\mathbb{F}}_q)$. But then
division by $n$ drops this contribution to one.
:::

We can keep going by expanding and multiplying out the product:
`\begin{align*}   \prod_{x\in {\left\lvert {X} \right\rvert}} {1 \over 1 - t^{\deg(x)}} &= \prod_{x\in {\left\lvert {X} \right\rvert}} (1 + t^{\deg(x)} + t^{2 \deg(x)}) \\ &= \sum_{n\geq 0} \qty{\text{\# of Galois-stable subset of $X(\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_{q^n})$ of size $n$}}t^n .\end{align*}`{=tex}

Why? If you have a degree $x$ point, it contributes a stable subset of
size $x$: namely the ${\mathbb{F}}_{q^n}$ points of
${\mathbb{F}}_{q^n}$. Taking Galois orbits like that correspond to
multiplying this product. But these are the points of some algebraic
variety:
`\begin{align*}   \cdots  = \sum_{n\geq 0} {\left\lvert {\operatorname{Sym}^n(X)({\mathbb{F}}_q)} \right\rvert} t^n ,\end{align*}`{=tex}
where $\operatorname{Sym}^n(X) \mathrel{\vcenter{:}}= X^n/\Sigma_n$, the
action of the symmetric group. Why is that? A
$\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q$
point of $\operatorname{Sym}^n(X)$ is an unordered $n{\hbox{-}}$tuple of
$\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q$
points without an ordering, and asking them to be Galois stable is the
same as saying that they are an ${\mathbb{F}}_q$ point.

::: {.theorem title="First Weil Conjecture for Curves"}
For $X$ a smooth proper curve over ${\mathbb{F}}_q$, $\zeta_X(t)$ is
rational.
:::

::: {.proof}
::: {.claim}
There is a set map
`\begin{align*}   \operatorname{Sym}^n X &\to {\operatorname{Pic}}^n X \\ D &\mapsto {\mathcal{O}}(D) ,\end{align*}`{=tex}
where here the divisor is an $n{\hbox{-}}$tuple of points.
:::

What are the fibers over a line bundle ${\mathcal{O}}(D)$? A linear
system, i.e. the projectivization of global sections
${\mathbb{P}}\Gamma(X, {\mathcal{O}}(D))$. What is the expected
dimension? To compute the dimension of the space of line bundles on a
curve, use Riemann-Roch:
`\begin{align*}   \dim {\mathbb{P}}\Gamma(X, {\mathcal{O}}(D)) = \deg(D) + 1 - g + \dim H^1(X, {\mathcal{O}}(D)) - 1 .\end{align*}`{=tex}
where the last $-1$ comes from the fact that this is a projective space.

::: {.claim}
If $\deg(D) = 2g-2$, then $H^1(X, {\mathcal{O}}(D)) = 0$.
:::

This is because it's dual to $H^0(X, {\mathcal{O}}(K-D))^\vee$, but this
has negative degree and a line bundle of negative degree can never have
sections.[^3] Thus the fibers are isomorphic to ${\mathbb{P}}^{n-g}$ for
$n>2g-2$. Now make a reduction[^4] and without loss of generality,
assume $X({\mathbb{F}}_q) \neq \emptyset$. In this case,
${\operatorname{Pic}}^n(X) \cong {\operatorname{Pic}}^{n+1}(X)$ for all
$n$, since you can take ${\mathcal{O}}(P)$ for $P$ a point, a degree 1
line bundle, and tensor with it. It's an isomorphism because you can
tensor with the dual bundle to go back. Thus for all $n>2g-2$,
`\begin{align*}   {\left\lvert {\operatorname{Sym}^n(X)({\mathbb{F}}_q)} \right\rvert}  = {\left\lvert {{\mathbb{P}}^{n-g}({\mathbb{F}}_q)} \right\rvert} \cdot {\left\lvert {{\operatorname{Pic}}^n(X)({\mathbb{F}}_q)} \right\rvert} = {\left\lvert {{\mathbb{P}}^{n-g}({\mathbb{F}}_q)} \right\rvert} \cdot {\left\lvert {{\operatorname{Pic}}^0(X)({\mathbb{F}}_q)} \right\rvert} .\end{align*}`{=tex}

Thus $\zeta_X(t)$ is a polynomial plus
$\sum_{n>2g-2} {\left\lvert {{\operatorname{Pic}}^n(X)({\mathbb{F}}_q)} \right\rvert}\qty{1+q+q^2+\cdots+q^{n-g}}t^n$.

::: {.exercise}
Show that this is a rational function using the formula for a geometric
series.
:::
:::

::: {.theorem title="Functional Equation"}
The functional equation in the case of curves:
`\begin{align*}   \zeta_X(q^{-1} t^{-1} ) = \pm q^{2-2g \over 2} t^{2-2g} \zeta_X(t) .\end{align*}`{=tex}
:::

::: {.exercise title="Important"}
Where it comes from in terms of $\operatorname{Sym}^n$: Serre duality.
:::

We'll show the RH later.

::: {.theorem title="Dwork"}
Suppose $X/{\mathbb{F}}_q$ is any variety, then $\zeta_X(t)$ is rational
function.
:::

This was roughly known to Weil, hinted at in original paper

::: {.proof title="Grothendieck"}
Idea: take Frobenius (intentionally vague, arithmetic vs geometric vs
...) $F:X\to X$, then $X({\mathbb{F}}_q)$ are the fixed points of $F$
acting on
$X_{\mkern 1.5mu\overline{\mkern-1.5mu{\mathbb{F}}\mkern-1.5mu}\mkern 1.5mu_q}$,
and the ${\mathbb{F}}_{q^n}$ points are the fixed points of $F^n$. Uses
the Lefschetz fixed point formula, which will say for
$\ell\neq \operatorname{ch}({\mathbb{F}}_q)$,[^5]

`\begin{align*}   {\left\lvert {X({\mathbb{F}}_{q^n})} \right\rvert} = \sum_{i=0}^{2\dim(X)} (-1)^i \operatorname{Tr}(F^n) H^i_c(X_{{\mathbb{F}}_q}, {\mathbb{Q}}_\ell) .\end{align*}`{=tex}

::: {.lemma}
`\begin{align*}   \exp\qty{\sum {\operatorname{Tr}(F^n) \over n}t^n  }\quad\text{is rational} .\end{align*}`{=tex}
:::

This lemma implies the result, because if you plug the trace formula
into the zeta function, you'll get an alternating product
$f \cdots {1\over g} \cdot h \cdot {1\over j} \cdots$ of functions of
the form in the lemma, which is still rational.
:::

::: {.proof title="Of Lemma"}
It suffices to treat the case $\dim(V) = 1$, because otherwise you can
just write this as a sum of powers of eigenvalues. Then you have a
scalar matrix, so you obtain
`\begin{align*}   \exp\qty{ \sum {\alpha^n \over n} t^n} = \exp\qty{ -\log(1 - \alpha t)} = {1 \over 1-\alpha t} ,\end{align*}`{=tex}
which is rational.
:::

This proves rationality, contingent on

1.  The Lefschetz fixed point formula
2.  The finite dimensionality of etale cohomology

::: {.exercise}
Try to figure out how Poincaré duality should give the functional
equation.

*(Hint: try the lemma on a vector space where $F$ scales a bilinear
form.)*
:::

::: {.theorem title="Serre, Kahler Analog"}
Suppose $X/{\mathbb{C}}$ is a smooth projective variety and
$[H] \in H^2(X({\mathbb{C}}), {\mathbb{C}})$ is a hyperplane class
(corresponds to intersection of generic hyperplane or the first Chern
class of an ample line bundle). Suppose $F:X\to X$ is an endomorphism
such that $f^*[H] = q[H]$ for some $q\in {\mathbb{Z}}_{\geq 1}$.

Define
`\begin{align*}   L(F^n) \mathrel{\vcenter{:}}= \sum_{i=0}^{2\dim(X)} (-1)^i \operatorname{Tr}\qty{ F^n {~\mathrel{\Big|}~}H^i(X_{{\mathbb{F}}_q}, {\mathbb{Q}}_\ell)} .\end{align*}`{=tex}
and
`\begin{align*}   \zeta_{X, F}(t) \mathrel{\vcenter{:}}= \exp\qty{\sum_{n=1}^\infty {L(F^n) \over n}t^n } .\end{align*}`{=tex}

Then $\zeta_{X, F}(t)$ satisfies the RH: the zeros and poles are of
absolute value $q^{i\over 2}$. Equivalently, the eigenvalues $\lambda$
of $F^n$ actings on $H^i(X, {\mathbb{C}})$ all satisfy
${\left\lvert {\lambda} \right\rvert} = q^{i\over 2}$.
:::

Next time, to review

-   Étale morphisms
-   Definition of a site

[^1]: A **geometric point** is a map from $\operatorname{Spec}X$ to an
    algebraically closed field.

[^2]: Note that we'll generalize Betti numbers so this makes sense in
    general.

[^3]: You should check to make sure you know why this is true!

[^4]: Exercise: justify why the reduction is valid.

[^5]: Here $H^i_c$ is compactly supported cohomology, we'll define this
    later in the course.
