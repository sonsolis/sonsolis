#!/bin/bash

HTML_DIR="./"

for file in "$HTML_DIR"/*.html; do
	echo "Deleting lines in $file..."
	sed -i -e '100d' -e '102d' -e '103d' -e '106d' "$file"
done

echo "Lines Deleted!"

