# bash

LOGIN
-----
.bash_profile - exec when log in
.bashrc - execs when command prompt comes. like new instance of bash

HISTORY
-------
export HISTCONTROL=ingnoredups
export HISTCONTROL=$HISTRONTROL:ignorespace

LOGOUT
------
.bash_logout

SCRIPT
------
#!/bin/bash - shabang

SUBSTITUTION
------------
shopt -s expand_aliases # to expand allowed finctionality in subshell

EXIT STATUS
-----------
echo $? # last exit status
set -e # exit once error received

Arithmetic Operations
---------------------
expr 10 \* 2 # escape to not to match regexp
expr \( 2 + 2 \) \* 4

Global and Local Environment Variables
--------------------------------------
printenv
env
set

Special Characters - Quotes and Escapes
---------------------------------------
\ - escape
'' - escape all enclosed
"" - escape all except specials
`` - to evaluate

