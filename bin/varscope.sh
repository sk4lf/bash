#!/bin/bash
# demonstrating variable scope

# global variables declaration
GLOBALVAR='Globally Visible'

# function difinition - start

# sample function for function variable scope
funcExample () {
  # Local variable to the function
  LOCALVAR='Locally Visible'
  
  echo "From within the function, the variable is $LOCALVAR..."
}

# functions definition - stop

# script - start
clear

echo "This step happens first..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCAL variable = $LOCALVAR (beforew the function call)"
echo ""
echo "Calling Function - funcExample()"

funcExample

echo ""
echo "Function has been called..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (after the function call)"
echo "LOCAL variable = $LOCALVAR (after the function call)"
