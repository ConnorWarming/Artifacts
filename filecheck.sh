#!/bin/bash
# Connor Warming
# N01491851

# Check if both positional parameters are provided
if [ "$#" -ne 2 ]; then
    if [ "$#" -eq 0 ]; then
        echo "1st parameter file path missing"
    elif [ "$#" -eq 1 ]; then
        echo "2nd parameter file name missing"
    fi
    exit 42
fi

directory_path=$1
file_name=$2
file_path="$directory_path/$file_name"

# Check if the file exists
if [ ! -e "$file_path" ]; then
    echo "File $file_path does not exist"
    exit 1
fi

# Print file properties
echo "File Properties:"
ls -l "$file_path"

# Print the number of lines in the file
echo "Number of Lines:"
wc -l < "$file_path"

# Print the last 10 lines of the file
echo "Last 10 lines:"
tail -n 10 "$file_path"