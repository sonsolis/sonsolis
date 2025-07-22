#!/bin/bash

HTML_DIR="./roadmaps"

LINE_NUMBER=29

for file in "$HTML_DIR"/*.html; do
	echo "Updating line $LINE_NUMBER in $file..."

	sed -i '29d' "$file"
done

echo "Deleted line 29!"
