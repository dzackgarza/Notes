#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Supply filename as argument"
  exit 1;
fi

filepath=$(realpath $1)
directory=$(dirname "$filepath")
filename=$(basename -- "$filepath")
extension="${filename##*.}"
filename="${filename%.*}"
first_run=true

echo "File path: $filepath"
echo "Directory: $directory"
echo "File name: $filename"
echo "Extension: $extension"

if [ ! -f "$filepath" ]; then
  echo "Input file not found"
  exit 1;
fi

echo "Starting..."
while true; do

  echo "Extension: $extension"
  case $extension in
    "md")
      outfile="$directory/$filename.pdf"
      echo "Rendering markdown to $outfile"
      pandoc -f markdown -t latex --pdf-engine=xelatex "$filepath" -o "$outfile"
      echo "Rendered."
      ;;
    "asy")
      echo "Re-rendering..."
      outfile="$directory/$filename.eps"
      asy --render 0 "$filepath" -o "$outfile"
      ;;
    "tex")
      outfile="$directory/$filename.pdf"
      pdflatex "$filepath" --output-directory "$directory"
      rm *.{aux,log}
      ;;
  esac

  if [ "$first_run" = true ]; then
    echo "First run"
    xdg-open "$outfile";
    first_run=false;
  fi

  # Block execution until file write
  inotifywait -e CLOSE_WRITE "$filepath";
done
