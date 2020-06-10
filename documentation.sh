#!/usr/bin/env bash
# IMPORTANT: Run from inside the "doc" directory

# create rst directories if they do not exist
for d in $(find . -maxdepth 1 -type d)
do
    mkdir "$d/rst"
done

# use pandoc to convert html to rst
for f in $(find . -name '*.html')
do
    old=$(basename -- "$f")
    new=$"`basename "$f" .html`.rst"
    dir=$(dirname -- "$f")
    echo "$f"
    pandoc -o $dir/rst/$base$new $f 
done
