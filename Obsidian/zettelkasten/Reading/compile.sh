#!/bin/bash
rm -Rf "html/$item"
files=($(find ${INPUT_FOLDER} -type f -name '*.md'))
for item in ${files[*]}
do
  item2=$(dirname $item)
  fixed_item_dir=${item2:2}
  printf "Current item: %s\n" $fixed_item_dir
  echo "Installing to:"
  echo "html/$fixed_item_dir"
  install -d "html/$fixed_item_dir"
  echo "Making directory: html/$fixed_item_dir"
  #mkdir "${DIR}/html/$item"
  RES_DIR="$(dirname $item)"
  TITLE="$(basename $item)"
  pandoc "$item" -f markdown --self-contained --metadata pagetitle="$TITLE" --to=html --resource-path="$RES_DIR" -o "html/${fixed_item_dir}.html" && echo "Built: $fixed_item_dir";
done
