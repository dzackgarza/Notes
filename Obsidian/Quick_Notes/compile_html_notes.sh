#!/bin/zsh

cd $NOTES/Obsidian/Quick_Notes;

find . -iname "*.md" -print0 | sort -zr | xargs -r0 awk 'FNR==1{print ""}1' | pandoc_stripmacros.sh | pandoc --quiet --metadata-file=/home/zack/Notes/Obsidian/Quick_Notes/data.yaml -r markdown+simple_tables+table_captions+yaml_metadata_block+tex_math_single_backslash --to html --toc --mathjax --self-contained --number-section --filter=pandoc-crossref --lua-filter=$PANDOC_DIR/filters/tikzcd.lua --lua-filter=$PANDOC_DIR/filters/replace_symbols_html.lua --lua-filter=$PANDOC_DIR/filters/convert_math_delimiters.lua --lua-filter=$PANDOC_DIR/filters/convert_amsthm_envs.lua --template=$PANDOC_TEMPLATES/templates/tufte-html-vis.html --css=$PANDOC_TEMPLATES/marked/kultiad-serif.css --citeproc --metadata link-citations=true --csl=$PANDOC_TEMPLATES/csl/inventiones-mathematicae.csl -V current_date="$(date +%Y-%m-%d)" -o $NOTES/math_journal.html;
