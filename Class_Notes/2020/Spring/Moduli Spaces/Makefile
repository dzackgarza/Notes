SHELL:=/bin/zsh
FILENAME="ModuliSpaces"

all: pdf html

## Markdown Output
markdown:
	cp -r $$PANDOC_DIR .;
	cat "./.pandoc/custom/latexmacs.tex" > $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  >> $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  | pandoc_stripmacros.sh > $(FILENAME)_stripped.md;
	echo "Markdown done."

## LaTeX Output
latex: markdown
	pandoc_totex_orpdf.sh -f $(FILENAME).md -x > $(FILENAME).tex;
	echo "Latex done";

## PDF Output
pdf: markdown latex
	mkdir -p tex_tempfiles;
	latexmk --shell-escape -pdf $(FILENAME).tex -quiet -outdir=tex_tempfiles && cp tex_tempfiles/$(FILENAME).pdf .;
	echo "PDF done";

## HTML Output
html: markdown
	echo "Making HTML..."
	pandoc_tohtml.sh -f $(FILENAME).md > $(FILENAME).html 

test: markdown latex
	latexrun $(FILENAME).tex --bibtex-cmd biber -W no-scrbase -W no-overfull;
	echo "Tests complete."

.SILENT:

clean:
	rm tex_tempfiles -rf || true;
	rm -rf latex.out || true;
	biber --tool --output_align --output_indent=2 --output_fieldcase=lower $(FILENAME).bib;
	mv $(FILENAME)_bibertool.bib $(FILENAME).bib || true;
	rm $(FILENAME).bib.blg $(FILENAME)_bibertoool.bib || true;



reset:
	rm ./.pandoc -rf || true;
	rm $(FILENAME).md -f || true;
	rm $(FILENAME)_stripped.md -f || true;
	rm $(FILENAME).tex -f || true;
	rm $(FILENAME).html -f || true;
	rm $(FILENAME).pdf -f || true;

.PHONY: clean

.ONESHELL:
