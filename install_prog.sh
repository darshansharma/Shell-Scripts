#!/bin/bash

clear

echo "Hi, $USER!"

os_name=$(cat /etc/*release | grep ^NAME | tr -d 'NAME="')
ins_deb="sudo dpkg -i "
py_pkgs="pip install --user requests; pip install --user bs4; pip install --user numpy"
ins_cmds="sudo apt update; sudo apt install vim; sudo apt install shutter; sudo apt install python-pip; sudo apt install weka; sudo apt install screenfetch; sudo apt install "
if [ "$os_name" = Ubuntu ]
then
	echo "ubuntu detected."
	echo "Lets begin the installation"
	echo "Starting with Chrome"
	echo "\n"
	eval "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
	eval "sudo dpkg -i google-chrome-stable_current_amd64.deb; sudo apt install -f"
	echo -e "\033[0;32m Chrome Successfully Installed\e[m"
	echo "\n"
	eval $ins_cmds
fi

