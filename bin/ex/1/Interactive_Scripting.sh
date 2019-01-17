#!/bin/bash
# Exercise: Interactive Scripting
# Create a script that interacts with the user. You will want to prompt the user 
# to enter the following information (which you will capture and place into the 
# following variables):
# FIRSTNAME
# LASTNAME
# USERAGE
# Greet the user with their name and current age displayed and then calculate and 
# display their age in 10 years.

echo "Enter Your First Name: "
read FIRSTNAME
echo "Enter Your Last Name: "
read LASTNAME
echo "Enter Your Age: "
read USERAGE

echo "Your First Name is: $FIRSTNAME"
echo "Your Last Name is: $LASTNAME"
echo "Your Age in 10 Years will be: `expr $USERAGE + 10`"
