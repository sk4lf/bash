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

Simple Functions
----------------
funcExample () {
  echo "We're now INSODE the finction..."
}

funcExample

Single line function -> +;
funcExample () { echo "We're now INSODE the finction..."; }

Functions Parameters
--------------------

# calculate age in days
funcAgeInDays () {
  echo "Hello $USERNAME, You are $1 Years Old."
  echo "That makes you approximately `expr $1 \* 365` days old..."
}

funcAgeInDays $USERAGE

Nested Functions
----------------
Something like classes and inheritance

# create a human being
funcHuman () {
  ARMS=2
  LEGS=2

  echo "A Human has $ARMS arms and $LEGS legs - but what gender are we?"
  echo ""

  funcMale () {
  BEARD=1

  echo "This man has $ARMS arms and $LEGS legs, with $BEARD beard(s)..."
  }

  funcFemale () {
  BEARD=0

  echo "This woman has $ARMS arms and $LEGS legs, with $BEARD beard(s)..."
  }
}

# function definition - stop

# script - start
clear
echo "Determining the characterictics of the gender $GENDER"
echo ""

# determine the actual gender and display the characteristics
if [ "$GENDER" == "male" ]; then
  funcHuman
  funcMale
else
  funcHuman
  funcFemale
fi

Return and Exit
---------------
#check the command line parameters passed in
funcCheckParms () {
  # did we get three
  if [ ! -z "$THIRD" ]; then
    echo "We got three parms..."
    return $YES
  else
    echo "We did not get three params..."
    return $NO
  fi
}

# script - start
funcCheckParms
RETURN_VALS=$?

# did we get three or not?
if [ "$RETURN_VALS" -eq "$YES" ]; then
  echo "We received three parms and they are: "
  echo "Parm 1: $FIRST"
  echo "Parm 2: $SECOND"
  echo "Parm 3: $THIRD"
else
  echo "Usage: returnval.sh [parm1] [parm2] [parm3]"
  exit 1
fi

InfoBox
-------
INFOBOX=${INFOBOX=dialog}

funcDisplayInfoBox () {

  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

funcDisplayInfoBox "WARNING!" "We are SHUTTING DOWN the System..." "3" "40" "3"

MessageBox
----------
$MSGBOX --title "$1" --msgbox "$2" "$3" "$4"

MENU
----
$MENUBOX --title "[ M A I N   M E N U ]" --menu "Use UP/DOWN Arrws to Move and Select or the Number of Your Choice and Enter" 15 45 4 1 "Display Hello World" 2 "Display Goodby World" 3 "Display Nothing" X "Exit" 2>choice.txt

Overriding
----------

trap 'funcMyExit' EXIT

funcMyExit () {
  echo "Exit Intercepted..."
  echo "Cleaning up the temp files..."
  rm -rf tmpfil*.txt
  exit 255
}
