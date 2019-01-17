#!/bin/bash
# Exercise: Using Arrays
# Write a script intended to iterate through an array called SERVERLIST containing 
# at least four values (server names). Display all four values to the terminal 
# when run.

SERVERLIST=("web01" "web02" "web03" "web04")

for INDEX in ${SERVERLIST[@]}; do
  echo $INDEX
done
