SHELL:=/bin/zsh
FILENAME="EtaleCohomology"

## Markdown extension (e.g. md, markdown, mdown).
MEXT = md

## Location of Pandoc support files.
PREFIX = /home/zack/.pandoc/pandoc-templates

## Location of your working bibliography file
BIB = $(FILENAME).bib 

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa

all: pdf html	clean

## Markdown Output
markdown:
	cat "$PANDOC_DIR/custom/latexmacs.tex" > $(FILENAME).md
	awk 'FNR==1{print ""}1' ./sections/*.md  >> $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  | pandoc_stripmacros.sh > $(FILENAME)_stripped.md;

## LaTeX Output
latex: markdown
	cat $(FILENAME).md | pandoc \
		--quiet \
		-f markdown \
		-t latex \
		-o $(FILENAME).tex \
		--template /home/zack/Notes/Latex/pandoc_template.tex \
		--lua-filter /home/zack/dotfiles/bin/warning-div.lua \
		-r markdown+fenced_divs+tex_math_single_backslash \
		--biblatex \
		--bibliography=$(BIB) \
		--lua-filter /home/zack/Notes/Latex/tikzcd.lua \
		-V current_date="$$(date +%Y-%m-%d%n)" \
		-F pandoc-crossref;


## PDF Output
pdf: markdown latex
	latexmk --shell-escape -pdf $(FILENAME).tex -quiet;
	echo "Make done";

test: markdown latex
	#latexmk --shell-escape -pdf $(FILENAME).tex -quiet -silent -logfilewarninglist -gg -latexoption="-interaction=batchmode";
	latexrun $(FILENAME).tex --bibtex-cmd biber -W no-scrbase -W no-overfull;
	echo "Tests complete."



## HTML Output
html: markdown
	cat ~/Notes/Latex/latexmacs.tex $(FILENAME).md \
		> combined.temp ;
	cat combined.temp | pandoc \
		--quiet \
		--from=markdown \
		--to=markdown \
		-r markdown+latex_macros+tex_math_single_backslash \
		--lua-filter=/home/zack/Dropbox/rmcodeblocks.lua \
		--lua-filter /home/zack/dotfiles/bin/warning-div.lua \
		| sed '/^\\\%/d' > out1.temp ;
	cat data.md out1.temp | pandoc \
		--quiet \
		-r markdown+simple_tables+table_captions+yaml_metadata_block \
		--to html \
		--mathjax \
		--template=$(PREFIX)/templates/tufte-html-vis.html  \
		--css=$(PREFIX)/marked/kultiad-serif.css \
		--filter pandoc-crossref \
		--filter pandoc-citeproc \
		--lua-filter /home/zack/Notes/Latex/tikzcd.lua \
		--csl=$(PREFIX)/csl/$(CSL).csl \
		--bibliography=$(BIB) \
		--toc \
		-V current_date="$$(date +%Y-%m-%d%n)" \
		--self-contained \
		-o $(FILENAME).html ;
	#rm out1.temp combined.temp *.svg -f || true;

.SILENT:

clean:
	rm $(addprefix $(FILENAME),.aux .bbl .loe .pre .run.xml .tdo .aux .log .out.ps .bcf .blg .fdb_latexmk .fls .toc .lof) -f || true;
	rm *.svg -f || true;
	rm *.temp -f || true;
	rm out1.temp combined.temp || true;
	rm sections/*.pdf || true;
	rm sections/*.svg || true;


reset:
	rm $(FILENAME).md -f || true;
	rm $(FILENAME).tex -f || true;
	rm $(FILENAME).html -f || true;
	rm $(FILENAME).pdf -f || true;

.PHONY: clean

.ONESHELL:
