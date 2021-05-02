SHELL:=/bin/zsh
FILENAME="LeeManifolds"

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
	touch $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  > $(FILENAME).md;

watch: markdown
	latex_preview -f $(FILENAME).md -z

view: markdown
	latex_preview -f $(FILENAME).md -v -z


## LaTeX Output
latex: markdown
	cat data.md $(FILENAME).md | pandoc \
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
	latexmk --shell-escape -pdf $(FILENAME).tex;
	echo "Make done";


## HTML Output
html: markdown
	touch $(FILENAME).bib;
	cat ~/Notes/Latex/latexmacs.tex $(FILENAME).md \
		> combined.temp ;
	cat combined.temp | pandoc \
		--from=markdown \
		--to=markdown \
		-r markdown+latex_macros+tex_math_single_backslash \
		--lua-filter=/home/zack/Dropbox/rmcodeblocks.lua \
		--lua-filter /home/zack/dotfiles/bin/warning-div.lua \
		| sed '/^\\\%/d' > out1.temp ;
	cat data.md out1.temp | pandoc \
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
	rm out1.temp combined.temp *.svg -f || true;

.SILENT:

clean:
	rm $(addprefix $(FILENAME),.aux .bbl .loe .pre .run.xml .tdo .aux .log .out.ps .bcf .blg .fdb_latexmk .fls .toc .lof) -f || true;
	rm *.svg -f || true;
	rm *.temp -f || true;


reset:
	rm $(FILENAME).md -f || true;
	rm $(FILENAME).tex -f || true;
	rm $(FILENAME).html -f || true;
	rm $(FILENAME).pdf -f || true;

.PHONY: clean

.ONESHELL:
