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
	printf "\n\n# ${0}: NEW PS1: Last folder of current path, and colorized\n" >> ~/.bashrc
	printf "export PS1='\[[38;5;45m\]\\\u@\[[0m\] \[[38;5;221m\]\w\[[0m\] \[[38;5;105m\]$\[[0m\] '\n" >> ${HOME}/.bashrc
fi
