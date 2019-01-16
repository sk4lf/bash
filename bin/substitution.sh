#!/bin/bash
# This script is intended to show how to do somple sunstitution

shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find /Users/kl/bin -user kl"

TODAYSDATE=`date`
USERFILES=`find /Users/kl/bin -user kl`

echo "Today's Date: $TODAYSDATE"
echo "All Files Owned by USER: $USERFILES"

A=`TODAY`
B=`UFILES`

echo "With Alias, TODAY is: $A"
echo "With Alias, UFILES is:: $B"
