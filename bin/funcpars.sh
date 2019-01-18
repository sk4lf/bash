#!/bin/bash
# this demo is for Functional Parameters passing

# global variables
USERNAME=$1

#function definitions - start

# calculate age in days
funcAgeInDays () {
  echo "Hello $USERNAME, You are $1 Years Old."
  echo "That makes you approximately `expr $1 \* 365` days old..."
}

#function definition - stop

# script - start
clear

echo "Enter Your Age: "
read USERAGE

# calculate the number of days
funcAgeInDays $USERAGE


