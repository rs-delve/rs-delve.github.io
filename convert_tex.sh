#!/bin/bash



pandoc --number-sections $1 --to html --atx-headers --filter pandoc-citeproc -o $2 --bibliography $3 
