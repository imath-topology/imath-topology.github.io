#!/bin/bash
file="pl_topology.tex"
latexmk -pdf -synctex=1 -verbose -interaction=nonstopmode ${file} > /dev/null 2>&1
rubber-info --check ${file}


