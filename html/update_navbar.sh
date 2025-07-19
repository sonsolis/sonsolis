#!/bin/bash

HTML_DIR="./fields"

for file in "$HTML_DIR"/*.html; do
	echo "Updating multiple line in $file..."


	sed -i \
		-e '39a			<!--|'\
		-e '43a			-->|'\
		"$file"

done

echo "Lines 40-45 replace in all HTML files!"

