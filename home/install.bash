#!/bin/bash

#
# INSTALL SCRIPT for resources at user HOME directory
#

source ../common-functions

exitIfSudo

# My aliases
if [ ! -f "${HOME}/bin/.bash_aliases" ]; then
	cp ./userhome/bash_aliases "${HOME}/.bash_aliases"
fi

for file in $(ls ./userhome/bin); do
	echo $file
done

# My customized shell prompt
grep -Fq "# ${0}: NEW PS1: " "${HOME}/.bashrc"

if [ "$?" != "0" ]; then
	#printf "\n\n# ${0}: NEW PS1: Last folder of current path, and colorized\n" >> ~/.bashrc
	#printf "export PS1='\[\e]0;\w\a\]" >> "${HOME}/.bashrc"
	#printf \\  >> "${HOME}/.bashrc"
	#printf "n '" >> "${HOME}/.bashrc"
	#printf "n\[\e[1;32m\]\h \[\e[1;33m\]\w\[\e[1;0m\]\$ '\n" >> "${HOME}/.bashrc"
	printf "\n\n# ${0}: NEW PS1: Last folder of current path, and colorized\n" >> ~/.bashrc
	printf "export PS1='\[\e[38;5;45m\]" >> "${HOME}/.bashrc"
	printf \\ >> "${HOME}/.bashrc"
	printf "u@\[\e[0m\] \[\e[38;5;221m\]\w\[\e[0m\] \[\e[38;5;105m\]\$\[\e[0m\] '" >> "${HOME}/.bashrc"
fi
