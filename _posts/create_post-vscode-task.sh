#!/bin/bash

# Read arguments from VSCode task
title="$1"
tags="$2"

# Get current date in the required format
current_date=$(date +"%Y-%m-%d %H:%M:%S %z")
date_prefix=$(date +"%Y-%m-%d")

# Format the title into a slug for the filename
slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\{1,\}/-/g' | sed 's/^-//;s/-$//')

# Combine date and slug for filename
filename="${date_prefix}-${slug}.md"

# Full path for the file
filepath="_posts/${filename}"

# Markdown content
content="---
layout: post

title: \"$title\"

date: $current_date

tags: $tags

---

Write your post content here...
"

# Write content to file
echo "$content" > "$filepath"

# Confirm file creation
echo "Markdown file created: $filename"

# Open the file in the current VSCode instance
code "$filepath"
