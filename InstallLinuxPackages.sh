#!/bin/bash
###/Script Documentation:
#Script depends on the existance of a txt file named "LinuxPackages.txt" 
#which must be readable from the working dir BASH is in when executing this script.
#SOOO: place LinuxPackages.txt in the same wd as the shell when executing script from cli
#after navigating to it with cd.  OR for autorunning of the script, mv LinuxPackages.txt
#to whatever BASH's default working directory is whenever the script is invoked.
	### CHOICE IS YOURS!!! ###

#LinuxPackages.txt is a list of packages you want APT to install or update
#place each apt package name on a new line 
###End Documentation /###

#Begin Script Code:
#Stores scripts working dir as var cur_path
cur_path=$(pwd)
#changes dir to cur_path
pip_path=$(pwd)/LinuxPackages.txt

#updates packages headers?
echo "Want to update apt packages library first? (y/n)?"
read aptchoice
if [ $aptchoice = "y" ]
then
	sudo apt-get update
fi

#update current distro?
echo "Want to update this distro? (APT updates for current release) (y/n)?"
read aptchoice2
if [ $aptchoice2 = "y" ]
then
	sudo apt-get upgrade
fi


xargs -a "$pip_path" sudo apt-get install

echo " "
#reboot?
echo "Want to (r)eboot or (p)oweroff now or (n)either? (r/p/n)"
read bootchoice
if [ $bootchoice = "r" ]
then
	sudo reboot
elif [ $bootchoice = "p" ]
then
	sudo poweroff
fi

exit
$SHELL
