#!/bin/bash
# Exercise: Error Handling with Exit
# Create a script that accepts a command line parameter intended to be the name of a
# directory. With the script, attempt to change to the indicated directory, be sure 
# to redirect errors to /dev/null on the command as we will be providing our own 
# messaging.
# Test the results of the command to change directories. If it was successful, 
# indicate success and display the contents of the directory. If it was not 
# successful, indicate we cannot change directories and exit to the terminal with a 
# custom exit code (less than 200).

echo "Enter directory name to list: "
read DIRNAME

cd $DIRNAME 2>/dev/null

if [ "$?" = "0" ] && [ "$DIRNAME" != "" ]; then
  echo "`ls -la`"
else
  echo "Such DIR doesn't exist!"
  exit 42
fi
