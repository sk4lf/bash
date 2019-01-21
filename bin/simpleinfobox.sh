#!/bin/bash
# demo of a simple infobox with dialog and ncurses

# ---------------------------------------------------------------------------------
# VAR {

INFOBOX=${INFOBOX=dialog}
TITLE="Default"
MESSAGE="Something to say"
XCOORD=10
YCOORD=20

# VAR }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# FUNC {

# display the infobox and our message
funcDisplayInfoBox () {

  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5"
}

# FUNC }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# SCRIPT {

if [ "$1" == "shutdown" ]; then
  funcDisplayInfoBox "WARNING!" "We are SHUTTING DOWN the System..." "11" "21" "5"
else
  funcDisplayInfoBox "Information..." "You are not doing anything fun..." "11" "21" "5"
fi

# SCRIPT }
