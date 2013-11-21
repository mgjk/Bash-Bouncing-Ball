#!/bin/bash
# updated the comment
x=1
y=1

dx=1
dy=1

maxx=80
maxy=25

while [ 1 ] 
do
	# remove previous character
	echo -en "\033[$y;${x}H "

	x=$((x+dx))
	y=$((y+dy))

	# place new character
	echo -en "\033[$y;${x}Ho"
	
	if [ $x -ge $maxx -o $x -lt 1 ]
	then
		dx=$((-1*dx))
	fi

	if [ $y -ge $maxy -o $y -lt 1 ]
	then
		dy=$((-1*dy))
	fi

	i=0
	while [ $i -lt 100 ]
	do
		i=$((i+1))
	done
#	sleep 1

done

