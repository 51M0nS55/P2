#!/bin/bash

# Loop through all files in the current directory
for file in *; do
    # Extract the numerical index from the filename
    if [[ $file =~ index_([0-9]+) ]]; then
        index=${BASH_REMATCH[1]}

        # Determine if the index is odd or even
        if (( index % 2 == 0 )); then
            mv "$file" even/
        else
            mv "$file" odd/
        fi
    fi
done

echo "Files have been separated into 'odd' and 'even' directories."
