#!/bin/bash
# this statement prevents quiting the menu via crtl+c input
# 2 is the signal number generated when using ctrl+c
trap '' 2 
while true
do
  clear # remove any previous terminal outputs before displaying the main menu
  echo "Menu" 
  echo "1) Option 1"
  echo "2) Option 2"
  echo "3) option 3"
  echo "Enter q to quit menu"
  echo -e "\n" # -e is used to obtain the line?
  echo -e "Enter your option choice \c" # \c surpresses further output
  read USERINPUT # users input assigned to a variable
  
  # one of the following conditions will be executed if a valid value is assigned to the variable
  case "$USERINPUT" in
    1) echo "This is option1" ;;
    2) echo "This is option2" ;;
    3) echo "This is option3" ;;
    q) exit ;; # stops running the script file
  esac

  # this line provides a pause so the menu option can be seen before returning to the main menu
  echo -e "Press <Enter> to continue \c" 
  read INPUT 
done
