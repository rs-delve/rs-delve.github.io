# RS-DELVE Publications

Welcome to the publication site for the Royal Society DELVE initiative.

To publish on the site we are making use of Github's jekyll based static page generation. That means that the documents on site are published in the form of [markdown]() documents, using ['github flavour markdown'](https://github.github.com/gfm/), that we'll refer to as GFM.

## Formatting the Report in Word

Some tips for preparing the Word document for correct formating.

1. Use Word 'styles' for headings
2. Use endnote/footnote for citations. Citations and footnotes can be interleaved. 
3. Don't place citations inside tables.

## Producing the Report

The production process typically involves mapping from a Word document to GFM. A script for making the initial conversions is available here:

<./convert_doc.sh> 

To run the script, simply type

```
./convert_doc.sh YYYY-MM-DD-report-name.docx YYYY-MM-DD-report-name.md
```

where `YYYY-MM-DD` is the date of report release.

This script is designed for running on bash shell that should be available on an OSX machine.

To run the script, you will need to have installed `pandoc` on your machine locally. You can see how to install `pandoc` for OSX [here](https://pandoc.org/installing.html).


For figures. The script will place each figure into a subdirectory called `diagrams/media/image-file-name.ext`. Move these files into a subdirectory associated with the report here:

<./diagrams/>

Creating a new subdirectory for the report files.



