SHELL:=/bin/zsh

define renew_md = 
{echo "---\n title: Commutative Algebra\nbook: true\n---\n\n" && fd --full-path ./sections | sort -nr | sed 'N;s/\(.*\)\n\(.*\)/\2\n\1/' | grep "md" | sort -n | awk -F ":" '{print "!include " $$1 "\n";}' } > FullNotes.md 2>&1
endef

renew: 
	@$(renew_md)
	echo "Done"

compile:
	make renew
	latex_preview -f ./FullNotes.md -j
	cp ./FullNotes.pdf ~/website/assets/pdfs/Algebra_2020.pdf
	echo "Make done"

view: 
	make renew
	latex_preview -f ./FullNotes.md -v

.ONESHELL:

