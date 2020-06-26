#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:

#  the sum of the 3 numbers with a label
#  the product of the 3 numbers with a label

echo "Enter first number:"
read firstnumber 
echo "Enter second number:"
read secondnumber
echo "Enter third number:"
read thirdnumber
sum=$(($firstnumber + $secondnumber + $thirdnumber))
product=$(($firstnumber * $secondnumber * $thirdnumber))

cat <<EOF
$firstnumber plus $secondnumber plus $thirdnumber is $sum
product of $firstnumber,$secondnumber and $thirdnumber is $product
EOF

# here echo command is used to print statement as it is in terminal.
# here read command reads the contents of a line into a variable.
# here cat command concatenate files and redirect output in terminal or files.

