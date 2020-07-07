#!/bin/bash

# Script for calling pandoc to convert word document to markdown.
pandoc --number-sections $1 --to markdown_github+footnotes --atx-headers -o $2 --extract-media=diagrams --reference-location=document
