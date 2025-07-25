#!/bin/bash

HTML_DIR="./projects/cvision"

footer="new_footer.html"

steps=9

for file in "$HTML_DIR"/*.html; do
	if grep -q "Footer" $file; then
		# 1. Get the Starting Line Number
		line_nums=($(grep -n "Footer" $file | cut -d: -f1))

		start_num=${line_nums[0]}
		end_num=${line_nums[1]}
		echo "Deleting lines $start_num -> $end_num in $file..."
		sed -i "${start_num},${end_num}d" "$file"

		end_num=$(($start_num + 35))
		sed -i "${start_num}r $footer" "$file"
	else
		echo "Not in $file."
	fi

done

echo "Lines Deleted!"
