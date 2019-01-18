#!/bin/bash
# demo of using error handling with exit

echo "Change to a directory and list the content"
DIRECTORY=$1

cd $DIRECTORY 2>/dev/null

if [ "$?" = "0"  ]; then
  echo "We can change into the directory $DIRECTORY, and here are the contents"
  echo "`ls -la`"
else
  echo "Cannot chanhe directories, exiting with an error and no listening"
  exit 1
fi
