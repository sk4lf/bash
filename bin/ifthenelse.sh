#!/usr/local/bin/bash
# simple example of if then else and nested if statement

clear 

echo "Enter a number between 1 and 3: "
read VALUE

#if [ "$VALUE" -eq "1" ] 2>/dev/null || [ "$VALUE" -eq 2 ] 2>/dev/null || [ "$VALUE" -eq 3 ] 2>/dev/null; then
#    echo "You enteref $VALUE"
#else
#  echo "You didn't follow directions!"
#fi

if [ "$VALUE" -eq "1" ] 2>/dev/null; then
  echo "You entered #1"
elif [ "$VALUE" -eq 2 ] 2>/dev/null; then
  echo "You successfully entered #2"
elif [ "$VALUE" -eq 3 ] 2>/dev/null; then
  echo "You entered the 3rd number"
else
  echo "You didn't follow the directions!"
fi 
