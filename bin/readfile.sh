#!/bin/bash
# simple file reading (non-binary) and displaying one line at a time

echo "Enter a file to read: "
read FILE

while read -r SUPERHERO; do
  echo "Superhero Name: $SUPERHERO"
done < "$FILE"
