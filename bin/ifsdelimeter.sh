#!/bin/bash
# delimeter example using IFS

echo "Enter filename to parse: "
read FILE

echo "Enter the Delimeter: "
read DELIM

IFS="$DELIM"

while read -r CPU MEMORY DISK; do
  echo "CPU: $CPU"
  echo "Memory: $MEMORY"
  echo "Disk: $DISK"
done <"$FILE"
