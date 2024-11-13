#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Missing parameters. Usage: finder.sh <directory> <search_string>"
    exit 1
fi

filesdir=$1
searchstr=$2

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

# Count the number of files in the directory and subdirectories
file_count=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines in the files
match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print the result
echo "The number of files are $file_count and the number of matching lines are $match_count"

# Exit with success status
exit 0

