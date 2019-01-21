#!/bin/bash
# Exercise: Nested Functions
#
# We are going to use nested functions to simulate the kind of abstraction you find 
# in many object oriented languages. Create the following structures in your script:
# * a function that defines two local variables to hole the number of arms and legs 
#   that a human being has
# * nested functions, one for each a male and female, that contain the appropriate 
#   number of beards that each gender has
# * capture the gender as a command line parameter
# * test the command line parameter and call the appropriate functions in order to 
#   display the characteristics of the indicated gender

# ---------------------------------------------------------------------------------
# VAR {

GENDER=$1

# VAR }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# FUNC { 

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

# FUNC }
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------
# SCRIPT {
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

# SCRIPT }
# ---------------------------------------------------------------------------------
