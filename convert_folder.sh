#!/bin/bash

# Directory containing the input files
input_dir=~/Downloads/jun11recordings
# Output directory
output_dir=./local-data/items/jun11rec
# Base URL
url_root=http://localhost:8686/items/jun11rec

# Iterate over all files in the input directory
for input_file in "$input_dir"/*; do
    # Execute the python command for each file
    python3 -m scalabel.tools.prepare_data -i "$input_file" -o "$output_dir" --fps 10 --url-root "$url_root"
done
