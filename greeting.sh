#!/bin/bash

DAY=$(date +'%d')
MONTH=$(date +'%m')


if [ $DAY=="27" ] && [ $MONTH=="03" ];
then 
	echo "----------------------------------------------"
	
	for ((i=31;i<38;i+=1))
	do
		echo -e "\033[0;"$i"mMan Happy Birthday from Bash\033[0m"
		
	done

	echo "-----------------------------------------------"
fi

