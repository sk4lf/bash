#!/bin/bash
# Write a script that evaluates and displays the following arithmetic operations:
# 1. Add two numbers
# 2. Add two numbers and multiply by a third, do not group anything 
# 3. Add two numbers, grouped (changing order of precedence) and multiply by a third
# Keep in mind special characters and/or escape characters as needed.

expr 2 + 2
 
expr 2 + 2 \* 4
 
expr \( 2 + 2 \) \* 4
