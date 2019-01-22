#!/bin/bash
# demo of a message box with an OK botton

# ---------------------------------------------------------------------------------
# VAR {

MSGBOX=${MSGBOX=dialog}
TITLE="Default"
MESSAGE="Some Message"
XCOORD=10
YVOORD=20

# VAR }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# FUNC {

# display the message box with our message
funcDisplayMsgBox () {
$MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}

# FUNC }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# SCRIPT {

if [ "$1" == shutdown ]; then
  funcDisplayMsgBox "WARNING!" "Please press OK when you are ready to shut down the system" "10" "20"
  echo "SHUTTING DOWN NOW!!!"
else
  funcDisplayMsgBox "Boring..." "You are not asking for anything fun..." "10" "20"
  echo "Not doing anything, back to regular scripting..."
fi

# SCRIPT }
# ---------------------------------------------------------------------------------
