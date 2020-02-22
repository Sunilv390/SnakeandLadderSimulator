#!bin/bash -x

#CONSTANTS
STARTPOSITION=0
WINPOSITION=100
COUNT=0

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
      echo "No play for the user" $position
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
      ;;
   esac
echo " "
((COUNT++))
echo "Position of a Dice is "$COUNT
done
echo "User win "$position
echo "For winning Game $COUNT times dice rolled"

