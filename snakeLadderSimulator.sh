#!bin/bash -x

#CONSTANTS
STARTPOSITION=0
WINPOSITION=100

#VARIABLE
position=0
position=$currentPosition
while [[ $position -ne $WINPOSITION ]]
do
   randomRoll=$((RANDOM%6+1))
   randomOption=$((RANDOM%3))
   NOPLAY=0
   LADDER=1
   SNAKE=2
#CASE STATEMENTS FOR CHECKING CONDITION
   case $randomOption in
      $NOPLAY)
      position=$position
      echo "No play for the user"
      ;;
      $LADDER)
      position=$(($position+$randomRoll))
      if [ $position -gt $WINPOSITION ]
      then
         position=$currentPosition
      fi
      echo "Position of the user is "$position
      ;;
      $SNAKE)
      position=$(($position-$randomRoll))
      echo "Position after bitting is "$position
      if [ $position -lt $STARTPOSITION ]
      then
         position=$STARTPOSITION
      fi
      if [ $position -lt $WINPOSITION ]
      then
         currentPosition=$position
      fi
      echo "$position"
      ;;
   esac
done
echo "User win"$position


