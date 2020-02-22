#!/bin/bash -x

echo *******************Welcome to the Future**********************

#CONSTANTS
STARTPOSITION=0
WINPOSITION=100

#VARIABLE
position=0

#CHECKS THE NUMBER BETWEEN 1-6
randomRoll=$((RANDOM%6+1))
randomOption=$((RANDOM%3))
NOPLAY=0
LADDER=1
SNAKE=2

#SWITCH CASE FOR RANDOM OPTION
case $randomOption in
	$NOPLAY)
		position=$position
		echo "No play for the user"
	;;
	$LADDER)
		position=$(($positon+$randomRoll))
		echo "Position of a user is $position"
	;;
	$SNAKE)
		position=$(($position-$randomRoll))
		echo "Position after Bitting is $position"
	;;
esac
