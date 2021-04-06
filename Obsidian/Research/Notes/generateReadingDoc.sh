OIFS="$IFS"
IFS=$'\n'

if [ $# -ne 2 ]; then
  echo "Usage: thisScipt.sh directoryToLookIn outFileName"
  exit 1;
fi


filenames=$(find "$1" -name "*.md" | sort)
echo "" > $2

for f in $filenames; do
  cat "$f" >> $2
done

#sed -i "1s/^/[toc]\n\n#Reading Notes\n\n/" ReadingNotes.md
