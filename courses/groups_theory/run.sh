#!/bin/bash
file="groups_theory.tex"
latexmk -pdf  -synctex=1 -verbose -interaction=nonstopmode ${file} > /dev/null 2>&1
rubber-info --check ${file}


