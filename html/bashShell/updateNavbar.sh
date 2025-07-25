#!/bin/bash

HTML_DIR="./projects/cvision"

LINE_NUMBER=28

for file in "$HTML_DIR"/*.html; do
	echo "Updating line $LINE_NUMBER in $file..."

	sed -i '27c 	<li><a href="../../../../index.html">Home</a></li>' "$file"
	
done

echo "Deleted line 28!"
