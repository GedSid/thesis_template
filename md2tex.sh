#!/bin/bash

# Find all Markdown files in all subdirectories
find . -name "*.md" -type f | while read -r file; do
    # Get the output path
    output="${file%.md}.tex"
    # Execute the pandoc command
    pandoc -o "$output" "$file"
    # Print a message indicating the completed conversion
    echo "Converted: $file a $output"
done
