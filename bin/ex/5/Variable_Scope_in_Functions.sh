#!/bin/bash
# Exercise: Variable Scope in Functions
#
#Create a script to demonstrate the visibility of variables and when they are 
# available within a script and its functions. Define a global variable, a function 
# that defines a local variable and then display both BEFORE calling the function, 
# call the function, then display both AFTER calling the function.

# VAR {

GLOBALVAR="GLOBALVAR-IS_HERE"

# VAR }

# FUNC {

funcInternalVariables () {

LOCALVAR="INTERNALVAR-IS-HERE"

echo "Here are the variables values inside the function: "
echo ""
echo "GLOBALVAR = $GLOBALVAR"
echo "LOCALVAR = $LOCALVAR"

}

# FUNC }

# SCRIPT {

# checking variables before func run

echo "Here are the variables status BEFORE function run: "
echo ""
echo "GLOBALVAR = $GLOBALVAR"
echo "LOCALVAR = $LOCALBAR"

# running a function

funcInternalVariables

# checking variables after func ran

echo "Here are the variables ststus AFTER function ran: "
echo ""
echo "GLOBALVAR = $GLOBALVAR"
echo "LOCALVAR = $LOCALVAR"

# SCRIPT }
