#!/bin/bash
# Write a script that runs three commands:
# 1. Evaluate an arithmetic expression
# 2. Attempt to remove a file that does not exist in the current directory
# 3. Evaluate another arithmetic expression
# Immediately after each command, echo the exit status of that command to the 
# terminal using the appropriate variable to show success and failure exit codes.

expr 1 + 2
echo $?

rm doesnotexist.sh
echo $?

expr 1 + 2
echo $?
