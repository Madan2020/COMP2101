#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result

echo "Enter your first name :"
read name
length=${#name}
for ((c=1; c<=$length; c++))
do
echo "
Rolling...
$(( RANDOM % 6 + 1)) rolled
"
done

