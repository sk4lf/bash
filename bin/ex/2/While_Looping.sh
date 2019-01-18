#!/bin/bash
# Exercise: While Looping
# Create a script that prompts the user for a number. That number is to be used to 
# display a simple message to the terminal X number of times (where X is the number 
# captured from the user input). The message should include an indication of the 
# number for each count the message is displayed.

echo "Enter the number of iterations: "
read ITERATIONS

if [ "$ITERATIONS" -gt "0" ] 2>/dev/null; then 
  COUNT="1"
elif [ "$ITERATIONS" -eq "0" ] 2>/dev/null; then 
  echo "Note: #0 - means no iterations!"
else
  echo "Note: below the line!" 
fi

while [ $COUNT -le $ITERATIONS ] 
  do
    echo "Iteration - $COUNT"
    COUNT="`expr $COUNT + 1`"
done
