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
	cat "$$PANDOC_DIR/custom/latexmacs.tex" > $(FILENAME).md
	awk 'FNR==1{print ""}1' ./sections/*.md  >> $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  | pandoc_stripmacros.sh > $(FILENAME)_stripped.md;

## LaTeX Output
latex: markdown
	pandoc_totex_orpdf.sh -f $(FILENAME).md -x > $(FILENAME).tex
	echo "Latex done";

## PDF Output
pdf: markdown latex
	latexmk --shell-escape -pdf $(FILENAME).tex -quiet;
	echo "PDF done";

test: markdown latex
	#latexmk --shell-escape -pdf $(FILENAME).tex -quiet -silent -logfilewarninglist -gg -latexoption="-interaction=batchmode";
	latexrun $(FILENAME).tex --bibtex-cmd biber -W no-scrbase -W no-overfull;
	echo "Tests complete."



## HTML Output
html: markdown
	pandoc_tohtml.sh -f $(FILENAME).md > $(FILENAME).html
	
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
