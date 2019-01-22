#!/bin/bash
#
# demo of a dialog box that will display a menu
#
# ---------------------------------------------------------------------------------
# VAR {

MENUBOX=${MENUBOX=dialog}

# VAR }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# FUNC {

# function to display a simple menue
funcDisplayDialogMenu () {
  $MENUBOX --title "[ M A I N   M E N U ]" --menu "Use UP/DOWN Arrws to Move and Select or the Number of Your Choice and Enter" 15 45 4 1 "Display Hello World" 2 "Display Goodby World" 3 "Display Nothing" X "Exit" 2>choice.txt
}

# FUNC }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# SCRIPT {

funcDisplayDialogMenu

case "`cat choice.txt`" in
  1) echo "Hello World";;
  2) echo "Goodby World";;
  3) echo "Nothing";;
  4) echo "Exit";;
esac

# SCRIPT }
# ---------------------------------------------------------------------------------
