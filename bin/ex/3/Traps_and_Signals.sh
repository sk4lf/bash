#!/bin/bash
# Exercise: Traps and Signals
# We need to create a menu for our users. Display a menu containing three choices 
# AND a choice to allow them to exit. Display that menu and prompt for a choice. 
# Upon choosing the value, it should simply clear the screen and redisplay the menu 
# (loop until the exit choice is given).
# HOWEVER, we need to be sure that the end user cannot use CTL-C, CTL-Z or a KILL 
# command to terminate the application. Add a 'trap' in the script to capture those 
# attempts and provide instructions on how to exit the script using the menu choice 
# instead.

trap 'echo "Warning! - Please press Q to Exit!.."' SIGINT SIGTERM SIGTSTP

while [ "$MENU" != "q" ] && [ "$MENU" != "Q" ]; do
  clear
  echo "+==============+"
  echo "|     MENU     |"
  echo "+==============+"
  echo "| 1) 1         |"
  echo "| 2) 2         |"
  echo "| 3) 3         |"
  echo "| Q) Exit      |"
  echo "+==============+"

  read MENU

  case $MENU in
    1) 
      echo "Ok! - 1"
      sleep 1
      ;;
    2)
      echo "Ok! - 2"
      sleep 1
      ;;
    3)
      echo "Ok! - 3"
      sleep 1
      ;;
    Q)
      echo "Nice! Exiting!"
      ;;
    q)
      echo "Nice! Exiting!"
      ;;
    *)
      echo "Please press Q to Exit!.."
      sleep 1
      ;;
  esac

done
