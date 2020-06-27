# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

myString="TestString"
referenceString="password"

[ $myString = $referenceString ] && echo "Correct!" || echo "Incorrect."

echo "Enter random guessing password"
read myString
referenceString="password"
if [ $myString = $referenceString ]
then
  echo ""
  echo "Yes! Your entered password is correct"
  echo ""
else
  echo "You have entered incorrect password. Please try again"
  read myString1
  if [ $myString1 = $referenceString ]
  then
    echo ""
    echo "Yes! Your entered password is correct"
    echo ""
  else
    echo "You have entered incorrect password. Please try again"
    read myString2
    if [ $myString2 = $referenceString ]
    then
      echo ""
      echo "Yes! Your entered password is correct"
      echo ""
    else
      echo "You have entered incorrect password. Please try again"
      read myString3
      if [ $myString3 = $referenceString ]
      then
        echo ""
        echo "Yes! Your entered password is correct"
        echo ""
      else
        echo "You have entered incorrect password. Please try again"
        read myString4
        if [ $myString4 = $referenceString ]
        then
          echo ""
          echo "Yes! Your entered password is correct"
          echo ""
        else
          echo "You have enetered incorrect password five times. please try again later"
        fi
      fi
    fi
  fi
fi 

########## Comments for the lab are as bellow ##########

#This lab is unique. Loops allow us to take a series of commands and keep re-running them until a particular situation is reached. Since we are instructed not to use loop here, I am using if condition for 5 times for getting correct password.
#here we are using echo command to display a line of text/string on standard output or a file.
#here we are using read command which is used to read the contents of a line into a variable. In line 17, read is reading user input and storing value in myString respectively.
#here we are using if statement which allow us to make decisions in our Bash scripts. In line 19, if is checking whether declared password is same as user's entered input.
#If the given conditional expression is true, it enters and executes the statements enclosed between the keywords. Therefore, then statement is used.
#here "fi" is fundamental control statement. It indicates the end of the inner if statement and all if statement should end with the keyword “fi” respectively.
