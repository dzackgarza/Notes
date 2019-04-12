find Reading,\ General -name "*.md" -exec echo @import \"{}\" \; | sort > ReadingNotes.md
sed -i "1s/^/[toc]\n\n#Reading Notes\n\n/" ReadingNotes.md
