Most content is in `sections` subdirectory.

The main tex file can be compiled with `pdflatex`.
Some extra packages may need to be installed, see `preamble.tex`.

See `makePDF.sh` for Pandoc compilation script, and `makeLatex.sh` for how to generate raw Latex. 
(Note: once Latex is generated, it can be compiled with `pdflatex` directly.)

Makes use of the [Python Pandoc-Include Filter](https://pypi.org/project/pandoc-include/).
