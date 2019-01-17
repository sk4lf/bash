#!/bin/bash
# simple array list and loop for display

SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04")
COUNT=0

for INDEX in ${SERVERLIST[@]}; do # @ - means everything, fo through it
  echo "Processing Server: ${SERVERLIST[COUNT]}" # Or INDEX, this case for example
  COUNT="`expr $COUNT + 1`"
done
