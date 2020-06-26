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

