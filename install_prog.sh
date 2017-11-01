#!/bin/bash

clear

echo "Hi, $USER!"

os_name=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="')
ins_deb="sudo dpkg -i "
py_pkgs="pip install --user requests; pip install --user bs4; pip install --user numpy"
ins_cmds="sudo apt update; sudo apt install figlet; figlet hello darshanji; sudo apt install vim; sudo apt install shutter; sudo apt install python-pip; sudo apt install weka; sudo apt install screenfetch; sudo apt install octave; "
if [ "$os_name" = Ubuntu ]
then
	echo "ubuntu detected."
	echo "Lets begin the installation"
	echo "\n"
	eval $ins_cmds
fi

