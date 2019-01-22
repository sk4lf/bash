#!/bin/bash
#
# Exercise: Simple Infobox
#
# We want to display a simple Information Box for our end users prior to 
# executing a command. Accept one command line parameter when executing 
# the script. This box should use the dialog control as shown in the 
# course and display for a total of 5 seconds. The title and message in 
# the box should be passed into the function but can be whatever you like
# that will warn the user if the parameter passed in was 'shutdown', 
# otherwise an innocuous message can be displayed.
#
# ---------------------------------------------------------------------------------
# VAR {

INFOBOX=${INFOBOX=dialog}
TITLE="Information Window"
MESSAGE="Here is the notification I would like to show here as an example of something... One more something. Blah-blah-blah..."
XCOORD=20
YCOORD=40

# VAR }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# FUNC {

funcMainMenu () {
  $MENUBOX --title "[ M A I N   M E N U ]" --menu "Use UP/DOWN Arrws to Move and Select or the Number of Your Choice and Enter" 15 45 3 1 "" 2 "Display Goodby World" 3 "Display Nothing" X "Exit" 2>choice.txt
}

# display the infobox and our message
funcDisplayInfoBox () {

  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

# FUNC }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# SCRIPT {

while [ "$EXITFLAG" != "1" ]; do

funcMainMenu

case "`cat choice.txt`" in
  1) echo "Hello World";;
  2) echo "Goodby World";;
  3) echo "Nothing";;
  4) echo "Exit";;
esac

if [ "$1" == "shutdown" ]; then
  funcDisplayInfoBox "WARNING!" "We are SHUTTING DOWN the System..." "3" "40" "3"
else
  funcDisplayInfoBox "Information..." "You are not doing anything fun..." "11" "21" "5"
fi

# SCRIPT }
# ---------------------------------------------------------------------------------
