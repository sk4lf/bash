#!/bin/bash
# Exercise: Using the Case Statement
# Develop a simple three item menu to display on the terminal. Your script, upon 
# display of the menu, should prompt the user to choose one of the three available 
# options. Using the 'case' statement from the course, display three unique messages
# depending on which number they chose, with a catch all message letting them know 
# if they went outside the bounds of instructions.

clear

echo "+----------------+"
echo "|      Menu      |"
echo "+----------------+"
echo "|                |"
echo "| 1) 1           |"
echo "| 2) 2           |"
echo "| 3) 3           |"
echo "|                |"
echo "+----------------+"

echo ""
echo "Please chose a menu item: "
read MENUITEM

case $MENUITEM in
  1)
    echo "You chose #1";;
  2)
    echo "You chose #2";;
  3)
    echo "You chose #3";;
  *)
    echo "Wrong!";;
esac
