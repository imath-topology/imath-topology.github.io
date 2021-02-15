#!/bin/sh

set -ex;

mkdir -p deft

for f in ./index.md
do
    pandoc --standalone --mathjax -f markdown -t latex \
           --metadata pagetitle="$f" \
           --css https://imath-topology.github.io/gothic.css \
           $f -o ./$(basename ${f%.*}).pdf
done

for f in ./courses/*.md
do
    pandoc --standalone --mathjax -f markdown -t latex \
           --metadata pagetitle="$f" \
           --css https://imath-topology.github.io/gothic.css \
           $f -o ./courses/$(basename ${f%.*}).pdf
done

