#!/bin/bash
# Write a script that will use command substitution to dynamically set variable values:
# TODAYSDATE - should contain date/time stamp when executed
# USERFILES - the results of a find run on the /home directory to list all files owned by 'user' account
# Additionally, set two aliases:
# TODAY - should be an alias for the 'date' command
# UFILES - should be an alias to the full command used to set the variable USERFILES above
# Finally, display all variables and alias values when the script is run.

shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find /Users/kl/bin -user kl"

TODAYSDATE=`date`
USERFILES=`find /Users/kl/bin -user kl`

echo "Today's Date: $TODAYSDATE"
echo "All Files Owned by USER: $USERFILES"

echo "With Alias, TODAY is: `TODAY`"
echo "With Alias, UFILES is: `UFILES`"
