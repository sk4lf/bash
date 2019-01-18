#!/bin/bash
# Exercise: Reading Files
# Create a simple text file containing a list of super heros (or some names if 
# preferred), use at least four values, one per line in the file.
# Write a bash shell script that then reads that file and displays it line by line 
# on the terminal window.

FILENAME="Reading_Files.txt"

while read -r STRING; do
  echo "String: $STRING"
done <"$FILENAME"
