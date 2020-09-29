SHELL:=/bin/zsh
FILENAME="Algebraic Geometry"

.SILENT:

compile:
	touch $(FILENAME).md
	awk 'FNR==1{print ""}1' ./sections/*.md | pandoc -f markdown -F pandoc-crossref --lua-filter /home/zack/dotfiles/bin/warning-div.lua -r markdown+fenced_divs+tex_math_single_backslash+citations --template=/home/zack/Notes/Latex/pandoc_template.tex --pdf-engine=pdflatex -o $(FILENAME).pdf
	#latex_preview -f $(FILENAME).md -j -z
	echo "Make done"

watch:
	touch $(FILENAME).md
	latex_preview -f $(FILENAME).md -z

view: 
	touch $(FILENAME).md
	latex_preview -f $(FILENAME).md -v -z

tex:
	touch $(FILENAME).md
	latex_preview -f $(FILENAME).md -x -j -z

html:
	touch $(FILENAME).md
	cat ~/Notes/Latex/latexmacs.tex ./sections/*.md | pandoc --from=markdown --to=markdown -r markdown+latex_macros+tex_math_single_backslash+fenced_divs+citations+implicit_figures+raw_html --lua-filter=/home/zack/rmcodeblocks.lua --mathjax -s --lua-filter=/home/zack/dotfiles/bin/warning-div.lua > $



.ONESHELL:
