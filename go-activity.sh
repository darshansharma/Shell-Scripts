#! /bin/bash

url="https://gateoverflow.in/activity"

#echo $url
rm activity* 
eval wget $url
html_data=`cat activity`

if echo $html_data | grep -q "qa-q-item-main"; then
	echo "substring found !!"
else
	echo "No substring"
fi

subindex=`echo $html_data | grep -aob "qa-q-item-main" | head -n 1 | grep -o [0-9] | tr -d "\n"`

echo $subindex
count=0

'for x in echo $html_data
do
	'if  $x | grep -q "qa-q-item-main" ; then
		count=$((count+1))
	fi
	if  $count -eq 1 ; then
		cat $x
	fi
	if $count -gt 1 ; then
		break
	fi'
	#cat $x
	#cat $x
	
		
done
'
