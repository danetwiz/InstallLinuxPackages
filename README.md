# InstallLinuxPackages
An interactive BASH script that pulls from a list of APT package names the user keeps in a simple txt file to keep automatically installed and updated
Never Again will you Sudo apt-get update && sudo apt upgrade && sudo apt install foo-package
Just add the package name to the txt file list than ./InstallLinuxPackages

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
