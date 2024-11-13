#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
  echo "Error: Two arguments are required."
  echo "Usage: $0 <writefile> <writestr>"
  exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Extract the directory path from writefile
directory=$(dirname "$writefile")

# Create the directory if it does not exist
mkdir -p "$directory"

# Try to write the string to the file
if echo "$writestr" > "$writefile"; then
  echo "File created successfully at $writefile"
else
  echo "Error: Could not create the file at $writefile"
  exit 1
fi

