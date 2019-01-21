#!/bin/bash
# Exercise: Creating a Function
# Create a simple script containing a single function. This function should display 
# a message to clearly indicate it was generated when the function was run. Then, 
# display another message outside the function clearly indicating it was generated 
# outside of it.

# function description section - START

funcDate () {

echo "Function run date: `date`"

return 0

}

# function description section - END

# script - START

echo "Runninc a function... "

funcDate

echo "Script finished..."

# script - END

