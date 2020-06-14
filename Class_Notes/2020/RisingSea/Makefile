SHELL:=/bin/zsh
FILENAME="Real_Analysis_Qual_Notes.md"
TITLE="Real Analysis Qualifying Exam Notes"

define renew_md = 
{echo "---\n title: $(TITLE)\n---\n\n" && fd --full-path ./sections | sort -nr | sed 'N;s/\(.*\)\n\(.*\)/\2\n\1/' | grep "md" | sort -n | awk -F ":" '{print "!include " $$1 "\n";}' } > $(FILENAME) 2>&1
endef


renew: 
	@$(renew_md)
	echo "Done"

compile:
	make renew
	latex_preview -f $(FILENAME) -j
	echo "Make done"

watch:
	make renew
	latex_preview -f $(FILENAME) 

view: 
	make renew
	latex_preview -f $(FILENAME) -v

.ONESHELL:

