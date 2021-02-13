#!/bin/sh

set -ex;

mkdir -p deft

for f in ./index.md
do
    pandoc --standalone --mathjax -f markdown -t html \
           --metadata pagetitle="$f" \
           --css https://imath-topology.github.io/gothic.css \
           $f -o ./$(basename ${f%.*}).html
done

for f in ./courses/*.md
do
    pandoc --standalone --mathjax -f markdown -t html \
           --metadata pagetitle="$f" \
           --css https://imath-topology.github.io/gothic.css \
           $f -o ./courses/$(basename ${f%.*}).html
done

