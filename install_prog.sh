#!/bin/bash

clear

echo "Hi, $USER!"

os_name=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="')
$plist = "sudo apt install vim; sudo apt install shutter;"
if [ "$os_name" = Ubuntu ]
then
	echo "OS ubuntu detected."
	echo "Lets begin the installation"
	eval $plist
	
fi

