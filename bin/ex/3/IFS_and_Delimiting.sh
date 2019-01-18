#!/bin/bash
# Exercise: IFS and Delimiting
# Create a simple text file at the command prompt. This file should contain three 
# values - CPU, Memory and Disk space for an imaginary system, all on one line and 
# delimited with a '|' character.
# Write a script to read that file and prompt the user for the delimiter value. Use 
# that delimiter along with the IFS variable and read those delimited values into 
# three appropriately named variables. Finally, display them with labels, one each 
# per line.

FILENAME="delimeter.txt"

echo "Enter delimeter: "
read DELIM
IFS="$DELIM"

while read -r CPU RAM HDD; do
  echo "CPU: $CPU"
  echo "RAM: $RAM"
  echo "HDD: $HDD"
done <$FILENAME
