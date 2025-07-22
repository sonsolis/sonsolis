#!/bin/bash

HTML_DIR="../"

for file in "$HTML_DIR"/*.html; do
	echo "Deleting any line with 'poem', 'fiction', 'biography', and 'life lessons' in $file"

	sed -i -e '/Poem/d' -e '/Fiction/d' -e '/Biography/d' -e '/Life Lessons/d' "$file"
done

echo "Deleted lines!"
