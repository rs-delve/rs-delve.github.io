# RS-DELVE Publications

Welcome to the publication site for the Royal Society DELVE initiative.

To publish on the site we are making use of Github's [jekyll based static page generation](https://docs.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll). That means that the documents on site are published in the form of [markdown](https://en.wikipedia.org/wiki/Markdown) documents, using ['github flavour markdown'](https://github.github.com/gfm/), that we'll refer to as GFM.

## Formatting the Report in Word

Some tips for preparing the Word document for correct formating.

1. Use Word 'styles' for headings
2. Use endnote/footnote for citations. Citations and footnotes can be interleaved. 
3. Don't place citations inside tables.

## Producing the Report

The production process typically involves mapping from a Word document to GFM. A script for making the initial conversions is available here:

[`convert_doc.sh`](./convert_doc.sh)

To run the script, simply type into a bash command line console.

```
./convert_doc.sh YYYY-MM-DD-report-name.docx YYYY-MM-DD-report-name.md
```

where `YYYY-MM-DD` is the date of report release.

This script is designed for running on bash shell that should be available on an OSX machine.

To run the script, you will need to have installed `pandoc` on your machine locally. You can see how to install `pandoc` for OSX [here](https://pandoc.org/installing.html).

For figures. The script will place each figure into a subdirectory called `diagrams/media/image-file-name.ext`. Move these files into a subdirectory associated with the report here:

[`./diagrams/`](./diagrams/)

Creating a new subdirectory for the report files and store them there. You will need to convert any diagrams that are not in `png` or `jpeg` format into `png` or `jpeg`. One route to doing this in the command line is through [ImageMagick](https://imagemagick.org/).

### Adding Header for a "Report"

Once the converstion is made, you should have a file called `YYYY-MM-DD-report-name.md` with the appropriate date and report name. For a full report, this needs to be placed in the [`_reports`](./_reports/) subdirectory. It also needs to have a header added at the top of the file. Open the file in your prefered text editor and add the following fields:

```
---
title: Report Title Here
layout: report
abstract: 'Report summary goes here'
---
```

Before the main text. Copy and paste the 'report summary' into the abstract field. Once the report is committed into github, you should be good to go.

### Adding Header for a "Addendum"

For technical addendum, the process is similar. Only now, you place the report in the [`_addenda`](./_addenda) folder. Additionally, for addenda we add author names to the header in the following way

```
---
title: 'Addendum Title'
abstract: 'Addendum summary goes here'
published: true
authors:
- given: Jane
  family: Doe
  institute: 
  url: /people/jane-doe.html
- given: John
  family: Doe
  institute: 
  url: /people/john-doe.html
layout: addendum
ref: TDX
report: CODE
---
```

Here `CODE` should be a three letter code representing the 'parent report' (e.g. `MAS` for the masks report). And `TDX` is TD followed by a number representing the number of the technical appendum. E.g. `TD1`.

The entry `published` indicates whether the document should be shown on the site. This can be set to `false` for reports that can only be published after a particular time (due to press release etc.).


