#!/bin/bash
# Exercise: Setting and Using Variables in Scripts
# Write a script that sets FOUR variables:
# MYUSERNAME
# MYPASSWORD
# STARTOFSCRIPT
# ENDOFSCRIPT
# Populate the first two with some default value and use command redirection 
# to set the third and fourth value to the date/time of when the script was 
# started and completed. Within the script, be sure to disply the values to 
# the terminal when run.

STARTOFSCRIPT=`date`

MYUSERNAME="kl"
MYPASSWORD="Passw00rd"

ENDOFSCRIPT=`date`

echo "My Username: $MYUSERNAME"
echo "My Password: $MYPASSWORD"
echo ""
echo "Script Start Time: $STARTOFSCRIPT"
echo "Script End Time: $ENDOFSCRIPT"
