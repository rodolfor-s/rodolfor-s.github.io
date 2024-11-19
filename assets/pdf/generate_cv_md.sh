#!/bin/bash

# File path to the PDF
pdf_file="cv_rsoldati.pdf"

# Check if the PDF file exists
if [ ! -f "$pdf_file" ]; then
  echo "Error: File '$pdf_file' not found."
  exit 1
fi

# Get the last modified date of the PDF
last_modified=$(date -r "$pdf_file" "+%d-%m-%Y")

# Generate the Markdown file
cat <<EOF > ../../_pages/cv.md
---
layout: cv
permalink: /cv/
title: cv
nav: true
nav_order: 5
cv_pdf: $pdf_file
cv_last_modified: $last_modified
description: See PDF file. Page under construction.
toc:
  sidebar: left
---
EOF

echo "Markdown file 'cv.md' generated with cv_last_modified: $last_modified"
