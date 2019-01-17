#!/bin/bash
# test fpr existence of indicated file name

FILENAME=$1
echo "Testing for the Existence of a File called $FILENAME"

if [ ! -a $FILENAME ]
 then
  echo "File $FILENAME Does NOT Exist!"
fi
