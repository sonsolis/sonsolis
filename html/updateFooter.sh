#!/bin/bash

HTML_DIR="./"



for file in "$HTML_DIR"/*.html; do
	# 1. Get the Starting Line Number
	start_num=$(grep -n "Quick Links" $file | cut -d: -f1)

	# 2. Config
	steps=8

	# 3. Build Array
	numbers=()
	for ((i=0; i<$steps; i++)); do
		numbers[$i]=$(( start_num + i))
	done

	echo "${numbers[@]}"

	echo "Deleting Line after Quick Links in $file..."
	for line in "${numbers[@]}"; do
		sed -i "${line}d" "$file"
	done
done

echo "Lines Deleted!"
