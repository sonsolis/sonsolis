#!/bin/bash

# Folder containing your HTML files
HTML_DIR="./roadmaps"

# The line number you want to replace
LINE_NUMBER=23

# The new line content (e.g., new link or directory path)
NEW_LINE='		<h1 class = "logo-text"><a href="../../index.html"><span>Son</span>Solis</a></h1>'

# Loop through all HTML files in the folder
for file in "$HTML_DIR"/*.html; do
    echo "Updating line $LINE_NUMBER in $file..."
    
    # Replace the entire line at LINE_NUMBER with NEW_LINE
    sed -i "${LINE_NUMBER}s|.*|${NEW_LINE}|" "$file"
done

echo "✅ Line $LINE_NUMBER updated in all HTML files!"

