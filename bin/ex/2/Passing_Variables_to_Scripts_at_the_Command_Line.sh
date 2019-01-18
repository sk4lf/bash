#!/bin/bash
# Exercise: Passing Variables to Scripts at the Command Line
# Create a script that, when run, will accept two command line values as arguments.
# These arguments should be a username and password and assigned to two variables 
# in the script named appropriately. Finally, echo those values out to the terminal 
# when run to indicate they were read and assigned as expected.

USERNAME=$1
PASSWORD=$2

echo "Username is: $USERNAME"
echo "Password is: $PASSWORD"

