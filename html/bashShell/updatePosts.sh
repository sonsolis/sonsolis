#!/bin/bash

HOME_DIR="./fields"

for file in "$HOME_DIR"/*.html; do
	start_num=$(grep -n "Experience" "$file" | cut -d: -f1)

	end_array=($(grep -n "</div>" "$file" | cut -d: -f1))

	echo "Start Number: $start_num"
	echo "End Array: ${end_array[@]}"

	for val in "${end_array[@]}"; do
		if [[ $val > $start_num ]]; then
			end_num=$((val - 1))
			break
		fi
	done

	sed -i "${start_num},${end_num}d" "$file"

	echo "$end_num"

	for ((i=0; i<10; i++)); do
		echo "$i"
		if [[ $i -eq 5 ]]; then
			break
		fi
	done

	echo "Deleting experience section"
done

echo "Deleted Experience Sections"
