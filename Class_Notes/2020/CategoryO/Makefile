SHELL:=/bin/zsh

define compile_md = 
	{echo "---\n title: Category O\n---\n\n" && fd --full-path ./sections | sort -nr | sed 'N;s/\(.*\)\n\(.*\)/\2\n\1/' | grep "md" | sort -n | awk -F ":" '{print "!include " $$1 "\n";}' } > FullNotes.md 2>&1;
	latex_preview -f ./FullNotes.md -j
endef


compile: ; @$(compile_md); echo "Done"

view: 
	latex_preview -f ./FullNotes.md -v

.ONESHELL:
