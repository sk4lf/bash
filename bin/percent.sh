#!/usr/local/bin/bash

# to calculate the page percent in the book
# param 1 - page number
# param 2 - number of pages in the book

if [ "$1" != "" ]; then
#    echo "Positional parameter 1 contains something"
  PAGE=$1
else
    echo "Positional parameter 1 is empty"
fi

if [ "$2" != "" ]; then
#    echo "Positional parameter 1 contains something"
  PAGENUM=$2
else
    echo "Positional parameter 2 is empty"
fi

PERCENT=$(($PAGE*100/$PAGENUM))

echo "Percent: $PERCENT"
