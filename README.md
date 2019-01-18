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

Execution Operators (&& and ||)
-------------------------------
&& - if exit 0, command succeeds
|| - if failed
❯ rm superduper 2> /dev/null && echo "File exists and was removed" || echo "File doesn't exist and can't be deleted"

If Statement
------------

Basic If Then:
            if [ "foo" = "foo" ]; then
               echo expression evaluated as true
            fi
Basic If Then Else:
            if [ "foo" = "foo" ]; then
               echo expression evaluated as true
            else
               echo expression evaluated as false
            fi
else if -> elif            

Case Structure
--------------
case $INPUT_STRING in
	hello)
		echo "Hello yourself!"
		;;
	bye)
		echo "See you again!"
		break
		;;
	*)
		echo "Sorry, I don't understand"
		;;
  esac

FOR Loop
--------
        for i in $( ls ); do
            echo item: $i
        done

While Loop
----------
         COUNTER=20
         until [  $COUNTER -lt 10 ]; do
             echo COUNTER $COUNTER
             let COUNTER-=1
         done

Read files
----------
while read -r SUPERHERO; do
  echo "Superhero Name: $SUPERHERO"
done < "$FILE"

Descriptors
-----------
exec 5<>$FILE

while read -r SUPERHERO; do
  echo "Superhero Name: $SUPERHERO"
done <&5

echo "File Was Read On: `date`" >&5

exec 5>&-

IFS and Delimiting
------------------
IFS - internal field separator

IFS="$DELIM"

while read -r CPU MEMORY DISK; do
  echo "CPU: $CPU"
  echo "Memory: $MEMORY"
  echo "Disk: $DISK"
done <"$FILE"

Traps and Signals
-----------------

trap 'echo " - Please Press Q to Exit.."' SIGINT SIGTERM SIGTSTP

DEBUG
-----
1) Debug mode
bash -x script.sh

2) Debug certain pieces
#DEBUG START
set -x
...
sex +x
#DEBUG END

ERROR Handling
--------------
if [ "$?" = "0"  ]; then
  echo "We can change into the directory $DIRECTORY, and here are the contents"
  echo "`ls -la`"
else
  echo "Cannot chanhe directories, exiting with an error and no listening"
  exit 1
fi
