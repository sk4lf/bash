#!/bin/bash
# while loop example

echo "Enter the number to display 'Hello World' message"
read DISPLAYNUMBER

COUNT=1

while [ $COUNT -le $DISPLAYNUMBER ]
  do
    echo "Hello World - $COUNT"
    COUNT="`expr $COUNT + 1`"
done
