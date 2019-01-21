#!/bin/bash
# Exercise: Functions with Parameters
#
# Write a script that takes a single command line parameter intended to be the 
# user's first name. Prompt the user for their age and read that into a variable. 
# Using the appropriate method to make that command line parameter visible to a 
# function, pass the age captured to the function and display a message to the user 
# addressing them by name and confirming their age, add a calculation of their age 
# in number of days.

# GLOBALVARS {

USERNAME=$1

# GLOBALVARS }

# FUNC {

funcAge () {

echo "$USERNAME's Age is - $1 Years"
echo "In 10 Years $USERNAME's age will be - `expr $1 + 10` Yearsi Old"

return 0
}

# FUNC }

# SCRIPT {

echo "Hello, $USERNAME, please enter your Age: "
read AGE

funcAge $AGE

# SCRIPT }
