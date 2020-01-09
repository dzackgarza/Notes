#!/bin/bash
filepath=CourseNotes.md

cat "CourseNotes.md" | pandoc -f markdown --filter pandoc-include -r markdown+tex_math_dollars+simple_tables+table_captions+yaml_metadata_block+smart+blank_before_blockquote+backtick_code_blocks+link_attributes --template=template.tex --pdf-engine=pdflatex -o "CourseNotes.pdf" 

