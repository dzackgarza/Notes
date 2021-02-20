SHELL:=/bin/zsh
FILENAME="AlgebraicCurves"

## WARNING: "reset" wipes out this directory!
TEMP_DIR="/tmp/"

all: pdf html clean_bib
	type clr_green 2>&1 >/dev/null || { source "$$DOTFILES_ROOT/.bash_colors";}
	clr_greenb "____________________________________________________"
	clr_greenb "___________  All files compiled.  __________________"
	clr_greenb "____________________________________________________"

## Markdown Output
markdown:
	echo "Combining markdown...";
	if ruby -ryaml -e "p YAML.load(STDIN.read)" < data.yaml 2>&1 >/dev/null; then 
		echo "Valid data.yaml";
		@cp -r $$PANDOC_DIR .;
		@cat "./.pandoc/custom/latexmacs.tex" > $(FILENAME).md;
		@awk 'FNR==1{print ""}1' ./sections/*.md  >> $(FILENAME).md;
		@awk 'FNR==1{print ""}1' ./sections/*.md  | pandoc_stripmacros.sh > $(FILENAME)_stripped.md;
		echo "Markdown done."
	else
		echo "Error parsing data.yaml";
		exit 1;
	fi
	
## LaTeX Output
latex: markdown
	echo "Making LaTeX...";
	pandoc_totex_orpdf.sh -f $(FILENAME).md -x > $(FILENAME).tex;
	echo "Latex done.";

## PDF Output
pdf: markdown test latex
	echo "Making PDF...";
	@mkdir -p tex_tempfiles;
	@latexmk --shell-escape -pdf $(FILENAME).tex -quiet -outdir=tex_tempfiles && cp tex_tempfiles/$(FILENAME).pdf . 2>&1 >/dev/null;
	echo "PDF done.";

## HTML Output
html: markdown
	echo "Making HTML...";
	pandoc_tohtml.sh -f $(FILENAME).md > $(FILENAME).html 

test: markdown latex
	echo "Running tests...";
	type clr_green 2>&1 >/dev/null || { source "$$DOTFILES_ROOT/.bash_colors";}
	if latexrun $(FILENAME).tex --bibtex-cmd biber -W no-scrbase -W no-overfull -W no-spectralsequences; then
		clr_greenb "____________________________________________________"
		clr_greenb "______________    Okay!  ___________________________"
		clr_greenb "____________________________________________________"
	else
		clr_redb "____________________________________________________"
		clr_redb "_________________  Errors.  ________________________"
		clr_redb "____________________________________________________"
		exit 1;
	fi

clean_bib: 
	biber --tool --output_align --output_indent=2 --output_fieldcase=lower $(FILENAME).bib;
	@mv $(FILENAME)_bibertool.bib $(FILENAME).bib || true;
	@rm $(FILENAME).bib.blg || true;

.SILENT:

clean:
	@rm tex_tempfiles -rf || true;
	@rm -rf latex.out || true;

reset: clean
	@rm -f /tmp/* 2>/dev/null || true;
	@rm ./.pandoc -rf || true;
	@rm $(FILENAME).md -f || true;
	@rm $(FILENAME)_stripped.md -f || true;
	@rm $(FILENAME).tex -f || true;
	@rm $(FILENAME).html -f || true;
	@rm $(FILENAME).pdf -f || true;
	@rm -f build.log sections/build.log || true;

.PHONY: clean

.ONESHELL:
