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

OUTPUT
------
1 - standart output
2 - error

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

/dev/null
---------
null.sh >> /dev/null

The Read Statement
------------------
read

Shell Expansion
---------------
❯ echo sh{ot,ort,oot}
shot short shoot

export $PATH=$PATH:~/bin

❯ echo "$[2 * 2]"
4

Types of Variables
------------------
❯ MYVAR=4
❯ echo $MYVAR
4
❯ echo `expr $MYVAR + 5`
9
❯ declare -p MYVAR
typeset MYVAR=4
❯ MYVAR1="Name"
❯ echo "`expr $MYVAR1 + 5`"
expr: not a decimal number: 'Name'
Setting VAR Type as INTEGER
❯ declare -i NEWVAR=10
❯ declare -p NEWVAR
typeset -i NEWVAR=10
❯ MYVAR="New Value"
❯ echo $MYVAR
New Value
❯ NEWVAR="Something"
❯ echo $NEWVAR
0
❯ declare -p NEWVAR
typeset -i NEWVAR=0
❯ NEWVAR=111
❯ echo $NEWVAR
111
❯ declare +i NEWVAR
❯ declare -p NEWVAR
typeset NEWVAR=111
❯ NEWVAR="Something"
❯ echo $NEWVAR
Something
❯ declare -r READONLY="This is a string we cannot overwrite"
❯ declare -p READONLY
typeset -r READONLY='This is a string we cannot overwrite'
❯ declare +r READONLY
❯ READONLY="New Value"
❯ declare -p READONLY
typeset READONLY='New Value'

Arrays
------
bash-5.0$ MYARRAY=("First" "Second" "Third") # Through spaces
bash-5.0$ echo $MYARRAY
First
bash-5.0$ echo ${MYARRAY[1]}
Second
bash-5.0$ MYARRAY[3]="Fourth"
bash-5.0$ echo ${MYARRAY[*]}
First Second Third Fourth

Can't decrease number of elements

Passing Variables to Scripts at the Command Line
------------------------------------------------
$1 $2
# starting from 1
