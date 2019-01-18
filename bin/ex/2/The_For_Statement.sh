#!/bin/bash
# Exercise: The For Statement
# Write a script that assigns a variable that contains a list of all shell scripts 
# (*.sh) in the current directory (command redirection). Using the 'for'statement 
# from the course, iterate through that list of files and display the filename of 
# each and cat out the contents to the terminal.

FILELIST=`ls *.sh`
echo "------------"
echo "  FILELIST  "
echo "------------"
echo "$FILELIST"
echo ""
echo "-------------"
echo "   CONTENT   "
echo "-------------"

for FILENAME in $FILELIST; do
  echo $FILENAME
  echo "--------------------------------"
  FILECONTENT=`cat $FILENAME`
  echo "$FILECONTENT"
done
