SHELL:=/bin/zsh
FILENAME="EtaleCohomology"

all: pdf html	clean

## Markdown Output
markdown:
	mkdir -p custom_templates;
	cp $$CUSTOM_TEX_DIR/* ./custom_templates;
	cat "$$PANDOC_DIR/custom/latexmacs.tex" > $(FILENAME).md
	awk 'FNR==1{print ""}1' ./sections/*.md  >> $(FILENAME).md;
	awk 'FNR==1{print ""}1' ./sections/*.md  | pandoc_stripmacros.sh > $(FILENAME)_stripped.md;
	echo "Markdown done."

## LaTeX Output
latex: markdown
	pandoc_totex_orpdf.sh -f $(FILENAME).md -x > $(FILENAME).tex
	echo "Latex done";

## PDF Output
pdf: markdown latex
	#pandoc_totex_orpdf.sh -f $(FILENAME).md > $(FILENAME).pdf
	mkdir -p tex_tempfiles;
	latexmk --shell-escape -pdf $(FILENAME).tex -quiet -outdir=tex_tempfiles;
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
	#rm *.svg -f || true;
	#rm *.temp -f || true;
	#rm out1.temp combined.temp || true;
	#rm sections/*.pdf || true;
	#rm sections/*.svg || true;
	rm custom_templates/* -rf || true;
	rm tex_tempfiles/* -rf || true;
	rm -rf latex.out || true;


reset:
	rm $(FILENAME).md -f || true;
	rm $(FILENAME)_stripped.md -f || true;
	rm $(FILENAME).tex -f || true;
	rm $(FILENAME).html -f || true;
	rm $(FILENAME).pdf -f || true;

.PHONY: clean

.ONESHELL:
