#!/bin/bash

# Define the compiled program
PROGRAM="./a.out"

# Define the output file
OUTPUT_FILE="output.txt"

# Loop to run the program five times
for ((i=1; i<=5; i++))
do
    # Run the program with sudo and append output to the file
    echo "Run $i:" >> "$OUTPUT_FILE"
    sudo $PROGRAM >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"  # Add a newline for better separation between runs
    echo "" >> "$OUTPUT_FILE"  # Add a newline for better separation between runs
done

echo "All runs completed. Output saved in $OUTPUT_FILE"